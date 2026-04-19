#!/usr/bin/env python3
"""
Extract C++ implementation source code for Nix builtins from the nix source tree.

Scans primops.cc and primops/*.cc for RegisterPrimOp blocks, extracts the builtin
name and its implementation function, and outputs a JSON mapping:

  { "builtinName": { "file": "relative/path.cc", "line": 123, "code": "..." }, ... }
"""

import json
import os
import re
import sys


def find_matching_brace(text, start):
    """Find the position of the closing brace matching the opening brace at `start`."""
    depth = 0
    i = start
    while i < len(text):
        if text[i] == '{':
            depth += 1
        elif text[i] == '}':
            depth -= 1
            if depth == 0:
                return i
        i += 1
    return -1


def find_matching_paren(text, start):
    """Find the position of the closing paren matching the opening paren at `start`."""
    depth = 0
    i = start
    while i < len(text):
        if text[i] == '(':
            depth += 1
        elif text[i] == ')':
            depth -= 1
            if depth == 0:
                return i
        i += 1
    return -1


def extract_register_blocks(text):
    """Find all RegisterPrimOp blocks and extract name + impl info."""
    results = []
    pattern = re.compile(r'static\s+RegisterPrimOp\s+\w+\s*[\({]')

    for m in pattern.finditer(text):
        start = m.start()
        # Find the opening delimiter - could be ( or {
        delim_pos = m.end() - 1
        if text[delim_pos] == '(':
            end = find_matching_paren(text, delim_pos)
        else:
            end = find_matching_brace(text, delim_pos)
        if end == -1:
            continue

        block = text[start:end + 1]

        # Also grab trailing ");" or "});" etc
        rest = text[end + 1:end + 5].strip()
        if rest.startswith(');'):
            block = text[start:end + 1] + text[end + 1:end + 1 + text[end + 1:end + 5].index(';') + 1]

        # Extract .name
        name_match = re.search(r'\.name\s*=\s*"([^"]+)"', block)
        if not name_match:
            continue
        name = name_match.group(1)

        # Extract .impl
        impl_match = re.search(r'\.impl\s*=\s*(\w+)', block)
        if impl_match:
            impl_name = impl_match.group(1)
        else:
            impl_name = None

        line_number = text[:start].count('\n') + 1

        results.append({
            'name': name,
            'impl_name': impl_name,
            'block': block,
            'block_start': start,
            'block_line': line_number,
        })

    return results


def extract_function_body(text, func_name):
    """Find a C++ function definition by name and extract its full body."""
    # Match: static void func_name(EvalState & state, ...) or similar signatures
    # The function could return void or other types
    pattern = re.compile(
        r'^(static\s+\w[\w\s*&]*?\b' + re.escape(func_name) + r'\s*\([^)]*\)\s*\{)',
        re.MULTILINE
    )
    m = pattern.search(text)
    if not m:
        # Try a more permissive pattern (multi-line params)
        pattern2 = re.compile(
            r'((?:static\s+)?\w[\w\s*&]*?\b' + re.escape(func_name) + r'\s*\()',
            re.MULTILINE
        )
        m2 = pattern2.search(text)
        if not m2:
            return None, -1
        # Find the opening brace after the params
        paren_end = find_matching_paren(text, m2.end() - 1)
        if paren_end == -1:
            return None, -1
        # Skip whitespace to find {
        brace_pos = paren_end + 1
        while brace_pos < len(text) and text[brace_pos] in ' \t\n\r':
            brace_pos += 1
        if brace_pos >= len(text) or text[brace_pos] != '{':
            return None, -1
        func_start = m2.start()
        brace_end = find_matching_brace(text, brace_pos)
        if brace_end == -1:
            return None, -1
        line_number = text[:func_start].count('\n') + 1
        return text[func_start:brace_end + 1], line_number

    func_start = m.start()
    # Find the opening brace
    brace_pos = m.end() - 1
    brace_end = find_matching_brace(text, brace_pos)
    if brace_end == -1:
        return None, -1
    line_number = text[:func_start].count('\n') + 1
    return text[func_start:brace_end + 1], line_number


def process_file(filepath, rel_path):
    """Process a single C++ file and extract all builtin implementations."""
    with open(filepath, 'r') as f:
        text = f.read()

    results = {}
    blocks = extract_register_blocks(text)

    for block_info in blocks:
        name = block_info['name']
        # Normalize name: strip leading underscores for the key
        # (builtins like __typeOf are registered as "__typeOf" but accessed as "typeOf")
        key = name.lstrip('_')

        impl_name = block_info['impl_name']

        if impl_name and not impl_name.startswith('['):
            # Named function reference - find the function body
            code, line = extract_function_body(text, impl_name)
            if code:
                results[key] = {
                    'file': rel_path,
                    'line': line,
                    'code': code,
                }
            else:
                # Couldn't find the function, show the RegisterPrimOp block
                results[key] = {
                    'file': rel_path,
                    'line': block_info['block_line'],
                    'code': block_info['block'],
                }
        else:
            # Inline lambda or no impl found - show the full RegisterPrimOp block
            results[key] = {
                'file': rel_path,
                'line': block_info['block_line'],
                'code': block_info['block'],
            }

    return results


def main():
    if len(sys.argv) != 2:
        print(f"Usage: {sys.argv[0]} <nix-source-dir>", file=sys.stderr)
        sys.exit(1)

    nix_src = sys.argv[1]
    primops_dir = os.path.join(nix_src, 'src', 'libexpr')

    all_results = {}

    # Process main primops.cc
    main_file = os.path.join(primops_dir, 'primops.cc')
    if os.path.exists(main_file):
        rel = os.path.relpath(main_file, nix_src)
        all_results.update(process_file(main_file, rel))

    # Process primops/*.cc
    sub_dir = os.path.join(primops_dir, 'primops')
    if os.path.isdir(sub_dir):
        for fname in sorted(os.listdir(sub_dir)):
            if fname.endswith('.cc'):
                fpath = os.path.join(sub_dir, fname)
                rel = os.path.relpath(fpath, nix_src)
                all_results.update(process_file(fpath, rel))

    json.dump(all_results, sys.stdout, indent=2)


if __name__ == '__main__':
    main()
