use comrak::nodes::{AstNode, NodeValue};
use comrak::{parse_document, Arena, Options};

fn iter_nodes<'a, F>(node: &'a AstNode<'a>, f: &mut F)
where
    F: FnMut(&'a AstNode<'a>),
{
    f(node);
    for c in node.children() {
        iter_nodes(c, f);
    }
}

/// Find the type signature
///
/// Looks for any heading "# Type" (case insensitive)
///
/// The first code or code_block in that section is the type signature
pub fn find_type(content: &str) -> Option<String> {
    // The returned nodes are created in the supplied Arena, and are bound by its lifetime.
    let arena = Arena::new();

    let root = parse_document(&arena, content, &Options::default());

    let mut signature: Option<String> = None;
    let mut do_capture = false;
    iter_nodes(root, &mut |node| match &node.data.borrow().value {
        NodeValue::Heading(_) => {
            match node
                .first_child()
                .as_ref()
                .map(|n| n.data.borrow().value.clone())
            {
                Some(NodeValue::Text(text)) if text.trim().to_lowercase() == "type" => {
                    do_capture = true;
                }
                _ => {
                    do_capture = false;
                }
            }
        }
        NodeValue::CodeBlock(code_block) => {
            if signature.is_none() && do_capture {
                signature = Some(code_block.literal.clone());
            }
        }
        _ => (),
    });
    signature
}
