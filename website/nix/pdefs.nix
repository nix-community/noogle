{
  floco = {
    pdefs = {
      "@aashutoshrathi/word-wrap" = {
        "1.2.6" = {
          fetchInfo = {
            narHash = "sha256-vxcOLRTxV2eOJ+ZE4wxnikfcXgDucSspwo0MlbctCHM=";
            type = "tarball";
            url = "https://registry.npmjs.org/@aashutoshrathi/word-wrap/-/word-wrap-1.2.6.tgz";
          };
          ident = "@aashutoshrathi/word-wrap";
          ltype = "file";
          treeInfo = { };
          version = "1.2.6";
        };
      };
      "@babel/code-frame" = {
        "7.18.6" = {
          depInfo = {
            "@babel/highlight" = {
              descriptor = "^7.18.6";
              pin = "7.18.6";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-b/cq1rWfUNYTk9nGnFNgzIOpCj1MwRNZ4XiQflrV2kA=";
            type = "tarball";
            url = "https://registry.npmjs.org/@babel/code-frame/-/code-frame-7.18.6.tgz";
          };
          ident = "@babel/code-frame";
          ltype = "file";
          version = "7.18.6";
        };
      };
      "@babel/helper-module-imports" = {
        "7.22.15" = {
          depInfo = {
            "@babel/types" = {
              descriptor = "^7.22.15";
              pin = "7.23.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-3CMILV0TMIdqwzWYmVN3VOpmPfRPbjyPbmIhcYXf4Fo=";
            type = "tarball";
            url = "https://registry.npmjs.org/@babel/helper-module-imports/-/helper-module-imports-7.22.15.tgz";
          };
          ident = "@babel/helper-module-imports";
          ltype = "file";
          version = "7.22.15";
        };
      };
      "@babel/helper-string-parser" = {
        "7.22.5" = {
          fetchInfo = {
            narHash = "sha256-y/0Rkr/gxq9LKZTCgIy7cdlN/UnU+3GDYvOJS2YKtEQ=";
            type = "tarball";
            url = "https://registry.npmjs.org/@babel/helper-string-parser/-/helper-string-parser-7.22.5.tgz";
          };
          ident = "@babel/helper-string-parser";
          ltype = "file";
          treeInfo = { };
          version = "7.22.5";
        };
      };
      "@babel/helper-validator-identifier" = {
        "7.22.20" = {
          fetchInfo = {
            narHash = "sha256-Gp61aXsrzbY+0rMN2MAMAKBURJZTVzq09an7Tk5rDSU=";
            type = "tarball";
            url = "https://registry.npmjs.org/@babel/helper-validator-identifier/-/helper-validator-identifier-7.22.20.tgz";
          };
          ident = "@babel/helper-validator-identifier";
          ltype = "file";
          treeInfo = { };
          version = "7.22.20";
        };
      };
      "@babel/highlight" = {
        "7.18.6" = {
          depInfo = {
            "@babel/helper-validator-identifier" = {
              descriptor = "^7.18.6";
              pin = "7.22.20";
              runtime = true;
            };
            chalk = {
              descriptor = "^2.0.0";
              pin = "2.4.2";
              runtime = true;
            };
            js-tokens = {
              descriptor = "^4.0.0";
              pin = "4.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-8YM2ZQOKLzibv9H3Y5v4G7TsA5v4Sxz8wD7hsruTrVE=";
            type = "tarball";
            url = "https://registry.npmjs.org/@babel/highlight/-/highlight-7.18.6.tgz";
          };
          ident = "@babel/highlight";
          ltype = "file";
          version = "7.18.6";
        };
      };
      "@babel/runtime" = {
        "7.23.1" = {
          depInfo = {
            regenerator-runtime = {
              descriptor = "^0.14.0";
              pin = "0.14.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-9cpE5simqTgMiGolwsaqShPSVjIjc4wiwhcgQDIcIq4=";
            type = "tarball";
            url = "https://registry.npmjs.org/@babel/runtime/-/runtime-7.23.1.tgz";
          };
          ident = "@babel/runtime";
          ltype = "file";
          version = "7.23.1";
        };
      };
      "@babel/types" = {
        "7.23.0" = {
          depInfo = {
            "@babel/helper-string-parser" = {
              descriptor = "^7.22.5";
              pin = "7.22.5";
              runtime = true;
            };
            "@babel/helper-validator-identifier" = {
              descriptor = "^7.22.20";
              pin = "7.22.20";
              runtime = true;
            };
            to-fast-properties = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-aCd1IvwbdVP/44EJWE6x3aklrFbyX+pPUq7zChZfPto=";
            type = "tarball";
            url = "https://registry.npmjs.org/@babel/types/-/types-7.23.0.tgz";
          };
          ident = "@babel/types";
          ltype = "file";
          version = "7.23.0";
        };
      };
      "@corex/deepmerge" = {
        "4.0.43" = {
          fetchInfo = {
            narHash = "sha256-GlUW2/0Z1wRF1RyrT/La9POas+bv9x+TbbCQy9V3bW8=";
            type = "tarball";
            url = "https://registry.npmjs.org/@corex/deepmerge/-/deepmerge-4.0.43.tgz";
          };
          ident = "@corex/deepmerge";
          ltype = "file";
          treeInfo = { };
          version = "4.0.43";
        };
      };
      "@emotion/babel-plugin" = {
        "11.11.0" = {
          depInfo = {
            "@babel/helper-module-imports" = {
              descriptor = "^7.16.7";
              pin = "7.22.15";
              runtime = true;
            };
            "@babel/runtime" = {
              descriptor = "^7.18.3";
              pin = "7.23.1";
              runtime = true;
            };
            "@emotion/hash" = {
              descriptor = "^0.9.1";
              pin = "0.9.1";
              runtime = true;
            };
            "@emotion/memoize" = {
              descriptor = "^0.8.1";
              pin = "0.8.1";
              runtime = true;
            };
            "@emotion/serialize" = {
              descriptor = "^1.1.2";
              pin = "1.1.2";
              runtime = true;
            };
            babel-plugin-macros = {
              descriptor = "^3.1.0";
              pin = "3.1.0";
              runtime = true;
            };
            convert-source-map = {
              descriptor = "^1.5.0";
              pin = "1.9.0";
              runtime = true;
            };
            escape-string-regexp = {
              descriptor = "^4.0.0";
              pin = "4.0.0";
              runtime = true;
            };
            find-root = {
              descriptor = "^1.1.0";
              pin = "1.1.0";
              runtime = true;
            };
            source-map = {
              descriptor = "^0.5.7";
              pin = "0.5.7";
              runtime = true;
            };
            stylis = {
              descriptor = "4.2.0";
              pin = "4.2.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-Ilo7GVRDjN2dnTTUq56yaE24jM28bNwvhpAcpERkwKc=";
            type = "tarball";
            url = "https://registry.npmjs.org/@emotion/babel-plugin/-/babel-plugin-11.11.0.tgz";
          };
          ident = "@emotion/babel-plugin";
          ltype = "file";
          version = "11.11.0";
        };
      };
      "@emotion/cache" = {
        "11.11.0" = {
          depInfo = {
            "@emotion/memoize" = {
              descriptor = "^0.8.1";
              pin = "0.8.1";
              runtime = true;
            };
            "@emotion/sheet" = {
              descriptor = "^1.2.2";
              pin = "1.2.2";
              runtime = true;
            };
            "@emotion/utils" = {
              descriptor = "^1.2.1";
              pin = "1.2.1";
              runtime = true;
            };
            "@emotion/weak-memoize" = {
              descriptor = "^0.3.1";
              pin = "0.3.1";
              runtime = true;
            };
            stylis = {
              descriptor = "4.2.0";
              pin = "4.2.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-k65/sP2bhz+nfO3GaRggfIjjOHjjQrFlCZxAyr2Jaug=";
            type = "tarball";
            url = "https://registry.npmjs.org/@emotion/cache/-/cache-11.11.0.tgz";
          };
          ident = "@emotion/cache";
          ltype = "file";
          version = "11.11.0";
        };
      };
      "@emotion/hash" = {
        "0.9.1" = {
          fetchInfo = {
            narHash = "sha256-Qs/IZvsViULTvbwX21HS7aOGJhzqhlFWKNQsbSR4CZ0=";
            type = "tarball";
            url = "https://registry.npmjs.org/@emotion/hash/-/hash-0.9.1.tgz";
          };
          ident = "@emotion/hash";
          ltype = "file";
          treeInfo = { };
          version = "0.9.1";
        };
      };
      "@emotion/is-prop-valid" = {
        "1.2.1" = {
          depInfo = {
            "@emotion/memoize" = {
              descriptor = "^0.8.1";
              pin = "0.8.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-We6aMrfU6pWiQ8jkB8+C4rm7kXUMrk77pg6iZSlxnz8=";
            type = "tarball";
            url = "https://registry.npmjs.org/@emotion/is-prop-valid/-/is-prop-valid-1.2.1.tgz";
          };
          ident = "@emotion/is-prop-valid";
          ltype = "file";
          version = "1.2.1";
        };
      };
      "@emotion/memoize" = {
        "0.8.1" = {
          fetchInfo = {
            narHash = "sha256-+K3MxkAdKfq3r1/bvSWKm5T91pYtPRSwU3BxcP+UwbU=";
            type = "tarball";
            url = "https://registry.npmjs.org/@emotion/memoize/-/memoize-0.8.1.tgz";
          };
          ident = "@emotion/memoize";
          ltype = "file";
          treeInfo = { };
          version = "0.8.1";
        };
      };
      "@emotion/react" = {
        "11.11.1" = {
          depInfo = {
            "@babel/runtime" = {
              descriptor = "^7.18.3";
              pin = "7.23.1";
              runtime = true;
            };
            "@emotion/babel-plugin" = {
              descriptor = "^11.11.0";
              pin = "11.11.0";
              runtime = true;
            };
            "@emotion/cache" = {
              descriptor = "^11.11.0";
              pin = "11.11.0";
              runtime = true;
            };
            "@emotion/serialize" = {
              descriptor = "^1.1.2";
              pin = "1.1.2";
              runtime = true;
            };
            "@emotion/use-insertion-effect-with-fallbacks" = {
              descriptor = "^1.0.1";
              pin = "1.0.1";
              runtime = true;
            };
            "@emotion/utils" = {
              descriptor = "^1.2.1";
              pin = "1.2.1";
              runtime = true;
            };
            "@emotion/weak-memoize" = {
              descriptor = "^0.3.1";
              pin = "0.3.1";
              runtime = true;
            };
            hoist-non-react-statics = {
              descriptor = "^3.3.1";
              pin = "3.3.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-ZvH518HQiG5oe8HqovFSq5tDszQ3II0LJuPhc1Vw3D4=";
            type = "tarball";
            url = "https://registry.npmjs.org/@emotion/react/-/react-11.11.1.tgz";
          };
          ident = "@emotion/react";
          ltype = "file";
          peerInfo = {
            "@types/react" = {
              descriptor = "*";
              optional = true;
            };
            react = {
              descriptor = ">=16.8.0";
            };
          };
          version = "11.11.1";
        };
      };
      "@emotion/serialize" = {
        "1.1.2" = {
          depInfo = {
            "@emotion/hash" = {
              descriptor = "^0.9.1";
              pin = "0.9.1";
              runtime = true;
            };
            "@emotion/memoize" = {
              descriptor = "^0.8.1";
              pin = "0.8.1";
              runtime = true;
            };
            "@emotion/unitless" = {
              descriptor = "^0.8.1";
              pin = "0.8.1";
              runtime = true;
            };
            "@emotion/utils" = {
              descriptor = "^1.2.1";
              pin = "1.2.1";
              runtime = true;
            };
            csstype = {
              descriptor = "^3.0.2";
              pin = "3.1.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-IquvCNrJ11jaPXqMWqVpyVIm3dbiHC2AgUEZ5Zu6kqw=";
            type = "tarball";
            url = "https://registry.npmjs.org/@emotion/serialize/-/serialize-1.1.2.tgz";
          };
          ident = "@emotion/serialize";
          ltype = "file";
          version = "1.1.2";
        };
      };
      "@emotion/sheet" = {
        "1.2.2" = {
          fetchInfo = {
            narHash = "sha256-dsxUUek0zrKIwmApTAfPn/hrrLhvvVGtTWfW0MY8exA=";
            type = "tarball";
            url = "https://registry.npmjs.org/@emotion/sheet/-/sheet-1.2.2.tgz";
          };
          ident = "@emotion/sheet";
          ltype = "file";
          treeInfo = { };
          version = "1.2.2";
        };
      };
      "@emotion/styled" = {
        "11.11.0" = {
          depInfo = {
            "@babel/runtime" = {
              descriptor = "^7.18.3";
              pin = "7.23.1";
              runtime = true;
            };
            "@emotion/babel-plugin" = {
              descriptor = "^11.11.0";
              pin = "11.11.0";
              runtime = true;
            };
            "@emotion/is-prop-valid" = {
              descriptor = "^1.2.1";
              pin = "1.2.1";
              runtime = true;
            };
            "@emotion/serialize" = {
              descriptor = "^1.1.2";
              pin = "1.1.2";
              runtime = true;
            };
            "@emotion/use-insertion-effect-with-fallbacks" = {
              descriptor = "^1.0.1";
              pin = "1.0.1";
              runtime = true;
            };
            "@emotion/utils" = {
              descriptor = "^1.2.1";
              pin = "1.2.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-TGTWxQ9dt7yya8O8Dy+EOPtM8vWn+P2kVf2fX4dWwn0=";
            type = "tarball";
            url = "https://registry.npmjs.org/@emotion/styled/-/styled-11.11.0.tgz";
          };
          ident = "@emotion/styled";
          ltype = "file";
          peerInfo = {
            "@emotion/react" = {
              descriptor = "^11.0.0-rc.0";
            };
            "@types/react" = {
              descriptor = "*";
              optional = true;
            };
            react = {
              descriptor = ">=16.8.0";
            };
          };
          version = "11.11.0";
        };
      };
      "@emotion/unitless" = {
        "0.8.1" = {
          fetchInfo = {
            narHash = "sha256-B2djXKZlVIEqf+5TAsGmbeniZgW8903trkistFmAXs4=";
            type = "tarball";
            url = "https://registry.npmjs.org/@emotion/unitless/-/unitless-0.8.1.tgz";
          };
          ident = "@emotion/unitless";
          ltype = "file";
          treeInfo = { };
          version = "0.8.1";
        };
      };
      "@emotion/use-insertion-effect-with-fallbacks" = {
        "1.0.1" = {
          fetchInfo = {
            narHash = "sha256-EUTtLsRTFBboZtLqzTVd2S8BPlUide0xLLi1JbwR1nk=";
            type = "tarball";
            url = "https://registry.npmjs.org/@emotion/use-insertion-effect-with-fallbacks/-/use-insertion-effect-with-fallbacks-1.0.1.tgz";
          };
          ident = "@emotion/use-insertion-effect-with-fallbacks";
          ltype = "file";
          peerInfo = {
            react = {
              descriptor = ">=16.8.0";
            };
          };
          treeInfo = { };
          version = "1.0.1";
        };
      };
      "@emotion/utils" = {
        "1.2.1" = {
          fetchInfo = {
            narHash = "sha256-xTPhx8GzQJhjmY545XGgZLcq1dGBe0Q21XI4xtQYF1k=";
            type = "tarball";
            url = "https://registry.npmjs.org/@emotion/utils/-/utils-1.2.1.tgz";
          };
          ident = "@emotion/utils";
          ltype = "file";
          treeInfo = { };
          version = "1.2.1";
        };
      };
      "@emotion/weak-memoize" = {
        "0.3.1" = {
          fetchInfo = {
            narHash = "sha256-cH/YHQ7TsSbX34aywA+fYK0JbTisNMPqqYkt7t7JFI4=";
            type = "tarball";
            url = "https://registry.npmjs.org/@emotion/weak-memoize/-/weak-memoize-0.3.1.tgz";
          };
          ident = "@emotion/weak-memoize";
          ltype = "file";
          treeInfo = { };
          version = "0.3.1";
        };
      };
      "@eslint-community/eslint-utils" = {
        "4.4.0" = {
          depInfo = {
            eslint-visitor-keys = {
              descriptor = "^3.3.0";
              pin = "3.4.3";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-CrSmqKzWpfViCs3gWz0ZqRC27bfw4wUxnM3OZ9T5e1g=";
            type = "tarball";
            url = "https://registry.npmjs.org/@eslint-community/eslint-utils/-/eslint-utils-4.4.0.tgz";
          };
          ident = "@eslint-community/eslint-utils";
          ltype = "file";
          peerInfo = {
            eslint = {
              descriptor = "^6.0.0 || ^7.0.0 || >=8.0.0";
            };
          };
          version = "4.4.0";
        };
      };
      "@eslint-community/regexpp" = {
        "4.9.0" = {
          fetchInfo = {
            narHash = "sha256-0kKiqhldeqyT+yc9Vl7QvqZS8fHdRMdohyBJqtS7qTs=";
            type = "tarball";
            url = "https://registry.npmjs.org/@eslint-community/regexpp/-/regexpp-4.9.0.tgz";
          };
          ident = "@eslint-community/regexpp";
          ltype = "file";
          treeInfo = { };
          version = "4.9.0";
        };
      };
      "@eslint/eslintrc" = {
        "2.1.2" = {
          depInfo = {
            ajv = {
              descriptor = "^6.12.4";
              pin = "6.12.6";
              runtime = true;
            };
            debug = {
              descriptor = "^4.3.2";
              pin = "4.3.4";
              runtime = true;
            };
            espree = {
              descriptor = "^9.6.0";
              pin = "9.6.1";
              runtime = true;
            };
            globals = {
              descriptor = "^13.19.0";
              pin = "13.22.0";
              runtime = true;
            };
            ignore = {
              descriptor = "^5.2.0";
              pin = "5.2.4";
              runtime = true;
            };
            import-fresh = {
              descriptor = "^3.2.1";
              pin = "3.3.0";
              runtime = true;
            };
            js-yaml = {
              descriptor = "^4.1.0";
              pin = "4.1.0";
              runtime = true;
            };
            minimatch = {
              descriptor = "^3.1.2";
              pin = "3.1.2";
              runtime = true;
            };
            strip-json-comments = {
              descriptor = "^3.1.1";
              pin = "3.1.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-ZxaswEEtIF8dV71nd95lW2dwm8ao6HvfX9mMdxUqW0M=";
            type = "tarball";
            url = "https://registry.npmjs.org/@eslint/eslintrc/-/eslintrc-2.1.2.tgz";
          };
          ident = "@eslint/eslintrc";
          ltype = "file";
          version = "2.1.2";
        };
      };
      "@eslint/js" = {
        "8.50.0" = {
          fetchInfo = {
            narHash = "sha256-woTAx60OV1Em3dm9aBc0ZRCre1oLs/4y/aR3a0EekWI=";
            type = "tarball";
            url = "https://registry.npmjs.org/@eslint/js/-/js-8.50.0.tgz";
          };
          ident = "@eslint/js";
          ltype = "file";
          treeInfo = { };
          version = "8.50.0";
        };
      };
      "@floating-ui/core" = {
        "1.5.0" = {
          depInfo = {
            "@floating-ui/utils" = {
              descriptor = "^0.1.3";
              pin = "0.1.4";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-+s8ahY7BgIsWjzbAEMefToW1X0u6T24tFwRLGfDpX8E=";
            type = "tarball";
            url = "https://registry.npmjs.org/@floating-ui/core/-/core-1.5.0.tgz";
          };
          ident = "@floating-ui/core";
          ltype = "file";
          version = "1.5.0";
        };
      };
      "@floating-ui/dom" = {
        "1.5.3" = {
          depInfo = {
            "@floating-ui/core" = {
              descriptor = "^1.4.2";
              pin = "1.5.0";
              runtime = true;
            };
            "@floating-ui/utils" = {
              descriptor = "^0.1.3";
              pin = "0.1.4";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-2+ZqFQXmW2lCsNE7VpQy1zHV76x6maGMF89TASusVnA=";
            type = "tarball";
            url = "https://registry.npmjs.org/@floating-ui/dom/-/dom-1.5.3.tgz";
          };
          ident = "@floating-ui/dom";
          ltype = "file";
          version = "1.5.3";
        };
      };
      "@floating-ui/react-dom" = {
        "2.0.2" = {
          depInfo = {
            "@floating-ui/dom" = {
              descriptor = "^1.5.1";
              pin = "1.5.3";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-/J03FeebGYuUC6eNMlw29FnC7W5sw/dOkX4gdbuW2yc=";
            type = "tarball";
            url = "https://registry.npmjs.org/@floating-ui/react-dom/-/react-dom-2.0.2.tgz";
          };
          ident = "@floating-ui/react-dom";
          ltype = "file";
          peerInfo = {
            react = {
              descriptor = ">=16.8.0";
            };
            react-dom = {
              descriptor = ">=16.8.0";
            };
          };
          version = "2.0.2";
        };
      };
      "@floating-ui/utils" = {
        "0.1.4" = {
          fetchInfo = {
            narHash = "sha256-x4ARByERFo1qPEErZ0dTLA+s42HVXxQLluPO3E7bd2I=";
            type = "tarball";
            url = "https://registry.npmjs.org/@floating-ui/utils/-/utils-0.1.4.tgz";
          };
          ident = "@floating-ui/utils";
          ltype = "file";
          treeInfo = { };
          version = "0.1.4";
        };
      };
      "@fontsource/roboto" = {
        "5.0.8" = {
          fetchInfo = {
            narHash = "sha256-KE44vZCRCtNZDZCaRLtZvapWxOYAaNH+IqAY5jxHgZs=";
            type = "tarball";
            url = "https://registry.npmjs.org/@fontsource/roboto/-/roboto-5.0.8.tgz";
          };
          ident = "@fontsource/roboto";
          ltype = "file";
          treeInfo = { };
          version = "5.0.8";
        };
      };
      "@humanwhocodes/config-array" = {
        "0.11.11" = {
          depInfo = {
            "@humanwhocodes/object-schema" = {
              descriptor = "^1.2.1";
              pin = "1.2.1";
              runtime = true;
            };
            debug = {
              descriptor = "^4.1.1";
              pin = "4.3.4";
              runtime = true;
            };
            minimatch = {
              descriptor = "^3.0.5";
              pin = "3.1.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-qkXQ8QlFGuytwFGLNdYJt32rtVn9VK7lekOGRdA8DnI=";
            type = "tarball";
            url = "https://registry.npmjs.org/@humanwhocodes/config-array/-/config-array-0.11.11.tgz";
          };
          ident = "@humanwhocodes/config-array";
          ltype = "file";
          version = "0.11.11";
        };
      };
      "@humanwhocodes/module-importer" = {
        "1.0.1" = {
          fetchInfo = {
            narHash = "sha256-Nb94n00/pTJV4WS5mfDfrZZ8nM1AISYpZdus3DdqhCk=";
            type = "tarball";
            url = "https://registry.npmjs.org/@humanwhocodes/module-importer/-/module-importer-1.0.1.tgz";
          };
          ident = "@humanwhocodes/module-importer";
          ltype = "file";
          treeInfo = { };
          version = "1.0.1";
        };
      };
      "@humanwhocodes/object-schema" = {
        "1.2.1" = {
          fetchInfo = {
            narHash = "sha256-Wam8yUjM3QV6WEffbCtEyyUDqU+A4kG9AziFwcdQdyg=";
            type = "tarball";
            url = "https://registry.npmjs.org/@humanwhocodes/object-schema/-/object-schema-1.2.1.tgz";
          };
          ident = "@humanwhocodes/object-schema";
          ltype = "file";
          treeInfo = { };
          version = "1.2.1";
        };
      };
      "@jridgewell/gen-mapping" = {
        "0.3.3" = {
          depInfo = {
            "@jridgewell/set-array" = {
              descriptor = "^1.0.1";
              pin = "1.1.2";
              runtime = true;
            };
            "@jridgewell/sourcemap-codec" = {
              descriptor = "^1.4.10";
              pin = "1.4.15";
              runtime = true;
            };
            "@jridgewell/trace-mapping" = {
              descriptor = "^0.3.9";
              pin = "0.3.20";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-xPrSOTDF2y6CUZYfgGD7G8fPfeuEPHX5u6yI0zGyXm8=";
            type = "tarball";
            url = "https://registry.npmjs.org/@jridgewell/gen-mapping/-/gen-mapping-0.3.3.tgz";
          };
          ident = "@jridgewell/gen-mapping";
          ltype = "file";
          version = "0.3.3";
        };
      };
      "@jridgewell/resolve-uri" = {
        "3.1.1" = {
          fetchInfo = {
            narHash = "sha256-kaOy0d71N7ei+GkyUOOne6CPpMEEbo2hFQsvnSd7N/Y=";
            type = "tarball";
            url = "https://registry.npmjs.org/@jridgewell/resolve-uri/-/resolve-uri-3.1.1.tgz";
          };
          ident = "@jridgewell/resolve-uri";
          ltype = "file";
          treeInfo = { };
          version = "3.1.1";
        };
      };
      "@jridgewell/set-array" = {
        "1.1.2" = {
          fetchInfo = {
            narHash = "sha256-lIY9Ar8hajSi/s4DAlqWj/PD75pWG2HDxJ6x3S3t9bE=";
            type = "tarball";
            url = "https://registry.npmjs.org/@jridgewell/set-array/-/set-array-1.1.2.tgz";
          };
          ident = "@jridgewell/set-array";
          ltype = "file";
          treeInfo = { };
          version = "1.1.2";
        };
      };
      "@jridgewell/source-map" = {
        "0.3.5" = {
          depInfo = {
            "@jridgewell/gen-mapping" = {
              descriptor = "^0.3.0";
              pin = "0.3.3";
              runtime = true;
            };
            "@jridgewell/trace-mapping" = {
              descriptor = "^0.3.9";
              pin = "0.3.20";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-+zYhWJ8HFjS0+3A9QHlgGmGYTVYTQB3DNZKgf7yCE1Y=";
            type = "tarball";
            url = "https://registry.npmjs.org/@jridgewell/source-map/-/source-map-0.3.5.tgz";
          };
          ident = "@jridgewell/source-map";
          ltype = "file";
          version = "0.3.5";
        };
      };
      "@jridgewell/sourcemap-codec" = {
        "1.4.15" = {
          fetchInfo = {
            narHash = "sha256-+ICJJxqNi20xwMu9zCiG5DebMb/42EJfv3UfDYAyJ5k=";
            type = "tarball";
            url = "https://registry.npmjs.org/@jridgewell/sourcemap-codec/-/sourcemap-codec-1.4.15.tgz";
          };
          ident = "@jridgewell/sourcemap-codec";
          ltype = "file";
          treeInfo = { };
          version = "1.4.15";
        };
      };
      "@jridgewell/trace-mapping" = {
        "0.3.20" = {
          depInfo = {
            "@jridgewell/resolve-uri" = {
              descriptor = "^3.1.0";
              pin = "3.1.1";
              runtime = true;
            };
            "@jridgewell/sourcemap-codec" = {
              descriptor = "^1.4.14";
              pin = "1.4.15";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-UJtA+4N6HIVwZSVyDRIsAO12mcGHWXqYgWmg9IHq5Xs=";
            type = "tarball";
            url = "https://registry.npmjs.org/@jridgewell/trace-mapping/-/trace-mapping-0.3.20.tgz";
          };
          ident = "@jridgewell/trace-mapping";
          ltype = "file";
          version = "0.3.20";
        };
      };
      "@jsdevtools/rehype-toc" = {
        "3.0.2" = {
          fetchInfo = {
            narHash = "sha256-8a8Et6Nt3MexYawwfT3+ehHTvG24MSMIVKT8jHLZo+w=";
            type = "tarball";
            url = "https://registry.npmjs.org/@jsdevtools/rehype-toc/-/rehype-toc-3.0.2.tgz";
          };
          ident = "@jsdevtools/rehype-toc";
          ltype = "file";
          treeInfo = { };
          version = "3.0.2";
        };
      };
      "@mdx-js/loader" = {
        "3.0.0" = {
          depInfo = {
            "@mdx-js/mdx" = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
            source-map = {
              descriptor = "^0.7.0";
              pin = "0.7.4";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-qo6bgxB0ohe06g3IU+K7B07LasnSewxFCtuy0VaKdFo=";
            type = "tarball";
            url = "https://registry.npmjs.org/@mdx-js/loader/-/loader-3.0.0.tgz";
          };
          ident = "@mdx-js/loader";
          ltype = "file";
          peerInfo = {
            webpack = {
              descriptor = ">=5";
            };
          };
          version = "3.0.0";
        };
      };
      "@mdx-js/mdx" = {
        "2.3.0" = {
          depInfo = {
            "@types/estree-jsx" = {
              descriptor = "^1.0.0";
              pin = "1.0.3";
              runtime = true;
            };
            "@types/mdx" = {
              descriptor = "^2.0.0";
              pin = "2.0.10";
              runtime = true;
            };
            estree-util-build-jsx = {
              descriptor = "^2.0.0";
              pin = "2.2.2";
              runtime = true;
            };
            estree-util-is-identifier-name = {
              descriptor = "^2.0.0";
              pin = "2.1.0";
              runtime = true;
            };
            estree-util-to-js = {
              descriptor = "^1.1.0";
              pin = "1.2.0";
              runtime = true;
            };
            estree-walker = {
              descriptor = "^3.0.0";
              pin = "3.0.3";
              runtime = true;
            };
            hast-util-to-estree = {
              descriptor = "^2.0.0";
              pin = "2.3.3";
              runtime = true;
            };
            markdown-extensions = {
              descriptor = "^1.0.0";
              pin = "1.1.1";
              runtime = true;
            };
            periscopic = {
              descriptor = "^3.0.0";
              pin = "3.1.0";
              runtime = true;
            };
            remark-mdx = {
              descriptor = "^2.0.0";
              pin = "2.3.0";
              runtime = true;
            };
            remark-parse = {
              descriptor = "^10.0.0";
              pin = "10.0.2";
              runtime = true;
            };
            remark-rehype = {
              descriptor = "^10.0.0";
              pin = "10.1.0";
              runtime = true;
            };
            unified = {
              descriptor = "^10.0.0";
              pin = "10.1.2";
              runtime = true;
            };
            unist-util-position-from-estree = {
              descriptor = "^1.0.0";
              pin = "1.1.2";
              runtime = true;
            };
            unist-util-stringify-position = {
              descriptor = "^3.0.0";
              pin = "3.0.3";
              runtime = true;
            };
            unist-util-visit = {
              descriptor = "^4.0.0";
              pin = "4.1.2";
              runtime = true;
            };
            vfile = {
              descriptor = "^5.0.0";
              pin = "5.3.7";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-N7tdukf5RaN53bVXZ4DH/fb6LL4ue8RmX2xr5PnalZU=";
            type = "tarball";
            url = "https://registry.npmjs.org/@mdx-js/mdx/-/mdx-2.3.0.tgz";
          };
          ident = "@mdx-js/mdx";
          ltype = "file";
          version = "2.3.0";
        };
        "3.0.0" = {
          depInfo = {
            "@types/estree" = {
              descriptor = "^1.0.0";
              pin = "1.0.5";
              runtime = true;
            };
            "@types/estree-jsx" = {
              descriptor = "^1.0.0";
              pin = "1.0.3";
              runtime = true;
            };
            "@types/hast" = {
              descriptor = "^3.0.0";
              pin = "3.0.1";
              runtime = true;
            };
            "@types/mdx" = {
              descriptor = "^2.0.0";
              pin = "2.0.10";
              runtime = true;
            };
            collapse-white-space = {
              descriptor = "^2.0.0";
              pin = "2.1.0";
              runtime = true;
            };
            devlop = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            estree-util-build-jsx = {
              descriptor = "^3.0.0";
              pin = "3.0.1";
              runtime = true;
            };
            estree-util-is-identifier-name = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
            estree-util-to-js = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            estree-walker = {
              descriptor = "^3.0.0";
              pin = "3.0.3";
              runtime = true;
            };
            hast-util-to-estree = {
              descriptor = "^3.0.0";
              pin = "3.1.0";
              runtime = true;
            };
            hast-util-to-jsx-runtime = {
              descriptor = "^2.0.0";
              pin = "2.2.0";
              runtime = true;
            };
            markdown-extensions = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            periscopic = {
              descriptor = "^3.0.0";
              pin = "3.1.0";
              runtime = true;
            };
            remark-mdx = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
            remark-parse = {
              descriptor = "^11.0.0";
              pin = "11.0.0";
              runtime = true;
            };
            remark-rehype = {
              descriptor = "^11.0.0";
              pin = "11.0.0";
              runtime = true;
            };
            source-map = {
              descriptor = "^0.7.0";
              pin = "0.7.4";
              runtime = true;
            };
            unified = {
              descriptor = "^11.0.0";
              pin = "11.0.4";
              runtime = true;
            };
            unist-util-position-from-estree = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            unist-util-stringify-position = {
              descriptor = "^4.0.0";
              pin = "4.0.0";
              runtime = true;
            };
            unist-util-visit = {
              descriptor = "^5.0.0";
              pin = "5.0.0";
              runtime = true;
            };
            vfile = {
              descriptor = "^6.0.0";
              pin = "6.0.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-/QWwGj6lY4oENOb0E2QfdOUs8sh6mjFkwYrixjkO4hc=";
            type = "tarball";
            url = "https://registry.npmjs.org/@mdx-js/mdx/-/mdx-3.0.0.tgz";
          };
          ident = "@mdx-js/mdx";
          ltype = "file";
          version = "3.0.0";
        };
      };
      "@mdx-js/react" = {
        "2.3.0" = {
          depInfo = {
            "@types/mdx" = {
              descriptor = "^2.0.0";
              pin = "2.0.10";
              runtime = true;
            };
            "@types/react" = {
              descriptor = ">=16";
              pin = "18.2.24";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-TlGbWtaKcNqg30k8cJmE7YWYzX5fLuRrK3xZM0d4l+o=";
            type = "tarball";
            url = "https://registry.npmjs.org/@mdx-js/react/-/react-2.3.0.tgz";
          };
          ident = "@mdx-js/react";
          ltype = "file";
          peerInfo = {
            react = {
              descriptor = ">=16";
            };
          };
          version = "2.3.0";
        };
        "3.0.0" = {
          depInfo = {
            "@types/mdx" = {
              descriptor = "^2.0.0";
              pin = "2.0.10";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-azA2/eDavBpdtgKdJuM5ofkAbGbBuTJxcCiS7QeFJ9o=";
            type = "tarball";
            url = "https://registry.npmjs.org/@mdx-js/react/-/react-3.0.0.tgz";
          };
          ident = "@mdx-js/react";
          ltype = "file";
          peerInfo = {
            "@types/react" = {
              descriptor = ">=16";
            };
            react = {
              descriptor = ">=16";
            };
          };
          version = "3.0.0";
        };
      };
      "@mui/base" = {
        "5.0.0-beta.17" = {
          depInfo = {
            "@babel/runtime" = {
              descriptor = "^7.22.15";
              pin = "7.23.1";
              runtime = true;
            };
            "@floating-ui/react-dom" = {
              descriptor = "^2.0.2";
              pin = "2.0.2";
              runtime = true;
            };
            "@mui/types" = {
              descriptor = "^7.2.4";
              pin = "7.2.4";
              runtime = true;
            };
            "@mui/utils" = {
              descriptor = "^5.14.11";
              pin = "5.14.11";
              runtime = true;
            };
            "@popperjs/core" = {
              descriptor = "^2.11.8";
              pin = "2.11.8";
              runtime = true;
            };
            clsx = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            prop-types = {
              descriptor = "^15.8.1";
              pin = "15.8.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-eghwH/fnkD8v6w7t7y6vYKPK3dS1LTIdeWrzepfrymQ=";
            type = "tarball";
            url = "https://registry.npmjs.org/@mui/base/-/base-5.0.0-beta.17.tgz";
          };
          ident = "@mui/base";
          ltype = "file";
          peerInfo = {
            "@types/react" = {
              descriptor = "^17.0.0 || ^18.0.0";
              optional = true;
            };
            react = {
              descriptor = "^17.0.0 || ^18.0.0";
            };
            react-dom = {
              descriptor = "^17.0.0 || ^18.0.0";
            };
          };
          version = "5.0.0-beta.17";
        };
      };
      "@mui/core-downloads-tracker" = {
        "5.14.11" = {
          fetchInfo = {
            narHash = "sha256-+1EEuck4MTH1ZKmqROsOkxrYiEmyH3+wkO+DgzFcV8A=";
            type = "tarball";
            url = "https://registry.npmjs.org/@mui/core-downloads-tracker/-/core-downloads-tracker-5.14.11.tgz";
          };
          ident = "@mui/core-downloads-tracker";
          ltype = "file";
          treeInfo = { };
          version = "5.14.11";
        };
      };
      "@mui/icons-material" = {
        "5.14.11" = {
          depInfo = {
            "@babel/runtime" = {
              descriptor = "^7.22.15";
              pin = "7.23.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-8zGq1TueBpiNHLbZg562B8+SmoSQjivaPWN9cVoWFj4=";
            type = "tarball";
            url = "https://registry.npmjs.org/@mui/icons-material/-/icons-material-5.14.11.tgz";
          };
          ident = "@mui/icons-material";
          ltype = "file";
          peerInfo = {
            "@mui/material" = {
              descriptor = "^5.0.0";
            };
            "@types/react" = {
              descriptor = "^17.0.0 || ^18.0.0";
              optional = true;
            };
            react = {
              descriptor = "^17.0.0 || ^18.0.0";
            };
          };
          version = "5.14.11";
        };
      };
      "@mui/material" = {
        "5.14.11" = {
          depInfo = {
            "@babel/runtime" = {
              descriptor = "^7.22.15";
              pin = "7.23.1";
              runtime = true;
            };
            "@mui/base" = {
              descriptor = "5.0.0-beta.17";
              pin = "5.0.0-beta.17";
              runtime = true;
            };
            "@mui/core-downloads-tracker" = {
              descriptor = "^5.14.11";
              pin = "5.14.11";
              runtime = true;
            };
            "@mui/system" = {
              descriptor = "^5.14.11";
              pin = "5.14.11";
              runtime = true;
            };
            "@mui/types" = {
              descriptor = "^7.2.4";
              pin = "7.2.4";
              runtime = true;
            };
            "@mui/utils" = {
              descriptor = "^5.14.11";
              pin = "5.14.11";
              runtime = true;
            };
            "@types/react-transition-group" = {
              descriptor = "^4.4.6";
              pin = "4.4.7";
              runtime = true;
            };
            clsx = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            csstype = {
              descriptor = "^3.1.2";
              pin = "3.1.2";
              runtime = true;
            };
            prop-types = {
              descriptor = "^15.8.1";
              pin = "15.8.1";
              runtime = true;
            };
            react-is = {
              descriptor = "^18.2.0";
              pin = "18.2.0";
              runtime = true;
            };
            react-transition-group = {
              descriptor = "^4.4.5";
              pin = "4.4.5";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-tckSHn+Zy2TOKlNobtubK+HzlUWmQy/dlNT8uF5eFEk=";
            type = "tarball";
            url = "https://registry.npmjs.org/@mui/material/-/material-5.14.11.tgz";
          };
          ident = "@mui/material";
          ltype = "file";
          peerInfo = {
            "@emotion/react" = {
              descriptor = "^11.5.0";
              optional = true;
            };
            "@emotion/styled" = {
              descriptor = "^11.3.0";
              optional = true;
            };
            "@types/react" = {
              descriptor = "^17.0.0 || ^18.0.0";
              optional = true;
            };
            react = {
              descriptor = "^17.0.0 || ^18.0.0";
            };
            react-dom = {
              descriptor = "^17.0.0 || ^18.0.0";
            };
          };
          version = "5.14.11";
        };
      };
      "@mui/material-nextjs" = {
        "5.15.0" = {
          fetchInfo = {
            narHash = "sha256-4RvxiZFF+bL+mlttOzR5F/B4H7676KS2OOrNVVOqfVM=";
            type = "tarball";
            url = "https://registry.npmjs.org/@mui/material-nextjs/-/material-nextjs-5.15.0.tgz";
          };
          ident = "@mui/material-nextjs";
          ltype = "file";
          peerInfo = {
            "@emotion/cache" = {
              descriptor = "^11.11.0";
              optional = true;
            };
            "@emotion/server" = {
              descriptor = "^11.11.0";
              optional = true;
            };
            "@mui/material" = {
              descriptor = "^5.0.0";
            };
            "@types/react" = {
              descriptor = "^17.0.0 || ^18.0.0";
              optional = true;
            };
            next = {
              descriptor = "^13.0.0 || ^14.0.0";
            };
            react = {
              descriptor = "^17.0.0 || ^18.0.0";
            };
          };
          treeInfo = { };
          version = "5.15.0";
        };
      };
      "@mui/private-theming" = {
        "5.14.11" = {
          depInfo = {
            "@babel/runtime" = {
              descriptor = "^7.22.15";
              pin = "7.23.1";
              runtime = true;
            };
            "@mui/utils" = {
              descriptor = "^5.14.11";
              pin = "5.14.11";
              runtime = true;
            };
            prop-types = {
              descriptor = "^15.8.1";
              pin = "15.8.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-gNaHZEXNfryILHQxXhY99T2lQJZRoTxi3L+AEcgHkJg=";
            type = "tarball";
            url = "https://registry.npmjs.org/@mui/private-theming/-/private-theming-5.14.11.tgz";
          };
          ident = "@mui/private-theming";
          ltype = "file";
          peerInfo = {
            "@types/react" = {
              descriptor = "^17.0.0 || ^18.0.0";
              optional = true;
            };
            react = {
              descriptor = "^17.0.0 || ^18.0.0";
            };
          };
          version = "5.14.11";
        };
      };
      "@mui/styled-engine" = {
        "5.14.11" = {
          depInfo = {
            "@babel/runtime" = {
              descriptor = "^7.22.15";
              pin = "7.23.1";
              runtime = true;
            };
            "@emotion/cache" = {
              descriptor = "^11.11.0";
              pin = "11.11.0";
              runtime = true;
            };
            csstype = {
              descriptor = "^3.1.2";
              pin = "3.1.2";
              runtime = true;
            };
            prop-types = {
              descriptor = "^15.8.1";
              pin = "15.8.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-gVHHXoIdPd9SJJCgB74gqoC8msTrINTNicIsZZnd4O8=";
            type = "tarball";
            url = "https://registry.npmjs.org/@mui/styled-engine/-/styled-engine-5.14.11.tgz";
          };
          ident = "@mui/styled-engine";
          ltype = "file";
          peerInfo = {
            "@emotion/react" = {
              descriptor = "^11.4.1";
              optional = true;
            };
            "@emotion/styled" = {
              descriptor = "^11.3.0";
              optional = true;
            };
            react = {
              descriptor = "^17.0.0 || ^18.0.0";
            };
          };
          version = "5.14.11";
        };
      };
      "@mui/system" = {
        "5.14.11" = {
          depInfo = {
            "@babel/runtime" = {
              descriptor = "^7.22.15";
              pin = "7.23.1";
              runtime = true;
            };
            "@mui/private-theming" = {
              descriptor = "^5.14.11";
              pin = "5.14.11";
              runtime = true;
            };
            "@mui/styled-engine" = {
              descriptor = "^5.14.11";
              pin = "5.14.11";
              runtime = true;
            };
            "@mui/types" = {
              descriptor = "^7.2.4";
              pin = "7.2.4";
              runtime = true;
            };
            "@mui/utils" = {
              descriptor = "^5.14.11";
              pin = "5.14.11";
              runtime = true;
            };
            clsx = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            csstype = {
              descriptor = "^3.1.2";
              pin = "3.1.2";
              runtime = true;
            };
            prop-types = {
              descriptor = "^15.8.1";
              pin = "15.8.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-v988IJPUy3rCCZiwzWfAZQ1WAt5Ro5FDEs/sH/Lr8MU=";
            type = "tarball";
            url = "https://registry.npmjs.org/@mui/system/-/system-5.14.11.tgz";
          };
          ident = "@mui/system";
          ltype = "file";
          peerInfo = {
            "@emotion/react" = {
              descriptor = "^11.5.0";
              optional = true;
            };
            "@emotion/styled" = {
              descriptor = "^11.3.0";
              optional = true;
            };
            "@types/react" = {
              descriptor = "^17.0.0 || ^18.0.0";
              optional = true;
            };
            react = {
              descriptor = "^17.0.0 || ^18.0.0";
            };
          };
          version = "5.14.11";
        };
      };
      "@mui/types" = {
        "7.2.4" = {
          fetchInfo = {
            narHash = "sha256-vtMIrL4OoMnfvIlXr96iQ9+HB8uO9YY4eqaqcDLCiyo=";
            type = "tarball";
            url = "https://registry.npmjs.org/@mui/types/-/types-7.2.4.tgz";
          };
          ident = "@mui/types";
          ltype = "file";
          peerInfo = {
            "@types/react" = {
              descriptor = "*";
              optional = true;
            };
          };
          treeInfo = { };
          version = "7.2.4";
        };
      };
      "@mui/utils" = {
        "5.14.11" = {
          depInfo = {
            "@babel/runtime" = {
              descriptor = "^7.22.15";
              pin = "7.23.1";
              runtime = true;
            };
            "@types/prop-types" = {
              descriptor = "^15.7.5";
              pin = "15.7.5";
              runtime = true;
            };
            prop-types = {
              descriptor = "^15.8.1";
              pin = "15.8.1";
              runtime = true;
            };
            react-is = {
              descriptor = "^18.2.0";
              pin = "18.2.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-0coCPn5ZfrYktnguGlfrfvP7sWik2yq0iFeFZ+gdomY=";
            type = "tarball";
            url = "https://registry.npmjs.org/@mui/utils/-/utils-5.14.11.tgz";
          };
          ident = "@mui/utils";
          ltype = "file";
          peerInfo = {
            "@types/react" = {
              descriptor = "^17.0.0 || ^18.0.0";
              optional = true;
            };
            react = {
              descriptor = "^17.0.0 || ^18.0.0";
            };
          };
          version = "5.14.11";
        };
      };
      "@next/env" = {
        "13.5.6" = {
          fetchInfo = {
            narHash = "sha256-cnPBR7oxytxWT2UpNiAkLp59z3ZQFnfbvWKY1r1kUyk=";
            type = "tarball";
            url = "https://registry.npmjs.org/@next/env/-/env-13.5.6.tgz";
          };
          ident = "@next/env";
          ltype = "file";
          treeInfo = { };
          version = "13.5.6";
        };
        "14.0.3" = {
          fetchInfo = {
            narHash = "sha256-ek4Om3Y3BOkIV3SWNCIyObHTfreim7liNDDEfJuLf3E=";
            type = "tarball";
            url = "https://registry.npmjs.org/@next/env/-/env-14.0.3.tgz";
          };
          ident = "@next/env";
          ltype = "file";
          treeInfo = { };
          version = "14.0.3";
        };
      };
      "@next/eslint-plugin-next" = {
        "14.0.3" = {
          depInfo = {
            glob = {
              descriptor = "7.1.7";
              pin = "7.1.7";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-trKQQGH7HbETBGUakfq9fjEXUF2UQDRooAzZEhZF5tE=";
            type = "tarball";
            url = "https://registry.npmjs.org/@next/eslint-plugin-next/-/eslint-plugin-next-14.0.3.tgz";
          };
          ident = "@next/eslint-plugin-next";
          ltype = "file";
          version = "14.0.3";
        };
      };
      "@next/mdx" = {
        "14.0.4" = {
          depInfo = {
            source-map = {
              descriptor = "^0.7.0";
              pin = "0.7.4";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-LEVT1pkXbeTPkrmoLjJFW0P1Oy8Z33AImSDFLhjj+2o=";
            type = "tarball";
            url = "https://registry.npmjs.org/@next/mdx/-/mdx-14.0.4.tgz";
          };
          ident = "@next/mdx";
          ltype = "file";
          peerInfo = {
            "@mdx-js/loader" = {
              descriptor = ">=0.15.0";
              optional = true;
            };
            "@mdx-js/react" = {
              descriptor = ">=0.15.0";
              optional = true;
            };
          };
          version = "14.0.4";
        };
      };
      "@next/swc-darwin-arm64" = {
        "14.0.3" = {
          fetchInfo = {
            narHash = "sha256-Sr4QnFjmaWO+V74I9w8xJJSgxjMbcrhjBXzih3dKUng=";
            type = "tarball";
            url = "https://registry.npmjs.org/@next/swc-darwin-arm64/-/swc-darwin-arm64-14.0.3.tgz";
          };
          ident = "@next/swc-darwin-arm64";
          ltype = "file";
          sysInfo = {
            cpu = [
              "aarch64"
            ];
            os = [
              "darwin"
            ];
          };
          treeInfo = { };
          version = "14.0.3";
        };
      };
      "@next/swc-darwin-x64" = {
        "14.0.3" = {
          fetchInfo = {
            narHash = "sha256-xjHt9wejiXRPxYP+GxGXYrxF3QmZ16eRbcrMTleMq6o=";
            type = "tarball";
            url = "https://registry.npmjs.org/@next/swc-darwin-x64/-/swc-darwin-x64-14.0.3.tgz";
          };
          ident = "@next/swc-darwin-x64";
          ltype = "file";
          sysInfo = {
            cpu = [
              "x86_64"
            ];
            os = [
              "darwin"
            ];
          };
          treeInfo = { };
          version = "14.0.3";
        };
      };
      "@next/swc-linux-arm64-gnu" = {
        "14.0.3" = {
          fetchInfo = {
            narHash = "sha256-tOhQcwJwsmdOeOxo4mXzGd5puh0w9GY0AH+PkPZ3aqw=";
            type = "tarball";
            url = "https://registry.npmjs.org/@next/swc-linux-arm64-gnu/-/swc-linux-arm64-gnu-14.0.3.tgz";
          };
          ident = "@next/swc-linux-arm64-gnu";
          ltype = "file";
          sysInfo = {
            cpu = [
              "aarch64"
            ];
            os = [
              "linux"
            ];
          };
          treeInfo = { };
          version = "14.0.3";
        };
      };
      "@next/swc-linux-arm64-musl" = {
        "14.0.3" = {
          fetchInfo = {
            narHash = "sha256-y25pXcg+OnSEyj7D517ZNGlq3luHqjRqIhZ093+kGwU=";
            type = "tarball";
            url = "https://registry.npmjs.org/@next/swc-linux-arm64-musl/-/swc-linux-arm64-musl-14.0.3.tgz";
          };
          ident = "@next/swc-linux-arm64-musl";
          ltype = "file";
          sysInfo = {
            cpu = [
              "aarch64"
            ];
            os = [
              "linux"
            ];
          };
          treeInfo = { };
          version = "14.0.3";
        };
      };
      "@next/swc-linux-x64-gnu" = {
        "14.0.3" = {
          fetchInfo = {
            narHash = "sha256-dUTPPjzGKPN7Z/KVjaIc3rDN4FZ+oY1BUPGpX2AACWo=";
            type = "tarball";
            url = "https://registry.npmjs.org/@next/swc-linux-x64-gnu/-/swc-linux-x64-gnu-14.0.3.tgz";
          };
          ident = "@next/swc-linux-x64-gnu";
          ltype = "file";
          sysInfo = {
            cpu = [
              "x86_64"
            ];
            os = [
              "linux"
            ];
          };
          treeInfo = { };
          version = "14.0.3";
        };
      };
      "@next/swc-linux-x64-musl" = {
        "14.0.3" = {
          fetchInfo = {
            narHash = "sha256-BkgsaiTrIsjCDp3RoTpB6nhUoZoZMH/LcoGZ50OTPDs=";
            type = "tarball";
            url = "https://registry.npmjs.org/@next/swc-linux-x64-musl/-/swc-linux-x64-musl-14.0.3.tgz";
          };
          ident = "@next/swc-linux-x64-musl";
          ltype = "file";
          sysInfo = {
            cpu = [
              "x86_64"
            ];
            os = [
              "linux"
            ];
          };
          treeInfo = { };
          version = "14.0.3";
        };
      };
      "@next/swc-win32-arm64-msvc" = {
        "14.0.3" = {
          fetchInfo = {
            narHash = "sha256-drbw0ZbEfkx6RpoPMLe3u5dqk5u6qnMG1FBVAkYATY8=";
            type = "tarball";
            url = "https://registry.npmjs.org/@next/swc-win32-arm64-msvc/-/swc-win32-arm64-msvc-14.0.3.tgz";
          };
          ident = "@next/swc-win32-arm64-msvc";
          ltype = "file";
          sysInfo = {
            cpu = [
              "aarch64"
            ];
            os = [
              "win32"
            ];
          };
          treeInfo = { };
          version = "14.0.3";
        };
      };
      "@next/swc-win32-ia32-msvc" = {
        "14.0.3" = {
          fetchInfo = {
            narHash = "sha256-Hd6yfuK8Ugej5GJ5eMdSa4IvWSOd/abGoF2kHCK/S+M=";
            type = "tarball";
            url = "https://registry.npmjs.org/@next/swc-win32-ia32-msvc/-/swc-win32-ia32-msvc-14.0.3.tgz";
          };
          ident = "@next/swc-win32-ia32-msvc";
          ltype = "file";
          sysInfo = {
            cpu = [
              "i686"
            ];
            os = [
              "win32"
            ];
          };
          treeInfo = { };
          version = "14.0.3";
        };
      };
      "@next/swc-win32-x64-msvc" = {
        "14.0.3" = {
          fetchInfo = {
            narHash = "sha256-S+4Q8vZ5E3a5U0k8YvJvJN71k+VUy11TVgWW7SY2u6I=";
            type = "tarball";
            url = "https://registry.npmjs.org/@next/swc-win32-x64-msvc/-/swc-win32-x64-msvc-14.0.3.tgz";
          };
          ident = "@next/swc-win32-x64-msvc";
          ltype = "file";
          sysInfo = {
            cpu = [
              "x86_64"
            ];
            os = [
              "win32"
            ];
          };
          treeInfo = { };
          version = "14.0.3";
        };
      };
      "@nodelib/fs.scandir" = {
        "2.1.5" = {
          depInfo = {
            "@nodelib/fs.stat" = {
              descriptor = "2.0.5";
              pin = "2.0.5";
              runtime = true;
            };
            run-parallel = {
              descriptor = "^1.1.9";
              pin = "1.2.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-XkaO6o9trImz7QHxNe8P0l09Kmn8rsFIP5W/s1+HV7w=";
            type = "tarball";
            url = "https://registry.npmjs.org/@nodelib/fs.scandir/-/fs.scandir-2.1.5.tgz";
          };
          ident = "@nodelib/fs.scandir";
          ltype = "file";
          version = "2.1.5";
        };
      };
      "@nodelib/fs.stat" = {
        "2.0.5" = {
          fetchInfo = {
            narHash = "sha256-9D6qDZ0i0QJCngfEgCsDkX1/BFc1UpQ7Yy8b3jMLDCk=";
            type = "tarball";
            url = "https://registry.npmjs.org/@nodelib/fs.stat/-/fs.stat-2.0.5.tgz";
          };
          ident = "@nodelib/fs.stat";
          ltype = "file";
          treeInfo = { };
          version = "2.0.5";
        };
      };
      "@nodelib/fs.walk" = {
        "1.2.8" = {
          depInfo = {
            "@nodelib/fs.scandir" = {
              descriptor = "2.1.5";
              pin = "2.1.5";
              runtime = true;
            };
            fastq = {
              descriptor = "^1.6.0";
              pin = "1.13.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-kB5uDfcwF+SIjAkm1mY/corry0eyTrSmQsacQjtgf5U=";
            type = "tarball";
            url = "https://registry.npmjs.org/@nodelib/fs.walk/-/fs.walk-1.2.8.tgz";
          };
          ident = "@nodelib/fs.walk";
          ltype = "file";
          version = "1.2.8";
        };
      };
      "@pagefind/darwin-arm64" = {
        "1.0.4" = {
          fetchInfo = {
            narHash = "sha256-o/oMMAYsCf+PmG09RpgAqjnLT7Lu0CH3BZ6Z17aBxpw=";
            type = "tarball";
            url = "https://registry.npmjs.org/@pagefind/darwin-arm64/-/darwin-arm64-1.0.4.tgz";
          };
          ident = "@pagefind/darwin-arm64";
          ltype = "file";
          sysInfo = {
            cpu = [
              "aarch64"
            ];
            os = [
              "darwin"
            ];
          };
          treeInfo = { };
          version = "1.0.4";
        };
      };
      "@pagefind/darwin-x64" = {
        "1.0.4" = {
          fetchInfo = {
            narHash = "sha256-l40TrcY7HP+CODILTSkBGgTjik7mvDqWnXeClSdjyCI=";
            type = "tarball";
            url = "https://registry.npmjs.org/@pagefind/darwin-x64/-/darwin-x64-1.0.4.tgz";
          };
          ident = "@pagefind/darwin-x64";
          ltype = "file";
          sysInfo = {
            cpu = [
              "x86_64"
            ];
            os = [
              "darwin"
            ];
          };
          treeInfo = { };
          version = "1.0.4";
        };
      };
      "@pagefind/linux-arm64" = {
        "1.0.4" = {
          fetchInfo = {
            narHash = "sha256-GBM6/zgBcOuvShPJMLns2ZdeJYXoRV8lGFNm79V8z+s=";
            type = "tarball";
            url = "https://registry.npmjs.org/@pagefind/linux-arm64/-/linux-arm64-1.0.4.tgz";
          };
          ident = "@pagefind/linux-arm64";
          ltype = "file";
          sysInfo = {
            cpu = [
              "aarch64"
            ];
            os = [
              "linux"
            ];
          };
          treeInfo = { };
          version = "1.0.4";
        };
      };
      "@pagefind/linux-x64" = {
        "1.0.4" = {
          fetchInfo = {
            narHash = "sha256-JgjSyGXVxBn+HuLg4rROB4Jn8uiQEgmIRwYpdPA3OZE=";
            type = "tarball";
            url = "https://registry.npmjs.org/@pagefind/linux-x64/-/linux-x64-1.0.4.tgz";
          };
          ident = "@pagefind/linux-x64";
          ltype = "file";
          sysInfo = {
            cpu = [
              "x86_64"
            ];
            os = [
              "linux"
            ];
          };
          treeInfo = { };
          version = "1.0.4";
        };
      };
      "@pagefind/windows-x64" = {
        "1.0.4" = {
          fetchInfo = {
            narHash = "sha256-eBFUQEDyMn7EOYlCTV4HdWi4l7iN/CnKemyPbA96kKg=";
            type = "tarball";
            url = "https://registry.npmjs.org/@pagefind/windows-x64/-/windows-x64-1.0.4.tgz";
          };
          ident = "@pagefind/windows-x64";
          ltype = "file";
          sysInfo = {
            cpu = [
              "x86_64"
            ];
            os = [
              "win32"
            ];
          };
          treeInfo = { };
          version = "1.0.4";
        };
      };
      "@popperjs/core" = {
        "2.11.8" = {
          fetchInfo = {
            narHash = "sha256-jS4xEBxSW+1dOEArwszzst82cxfP/bM/EZyj+WaeNfk=";
            type = "tarball";
            url = "https://registry.npmjs.org/@popperjs/core/-/core-2.11.8.tgz";
          };
          ident = "@popperjs/core";
          ltype = "file";
          treeInfo = { };
          version = "2.11.8";
        };
      };
      "@rushstack/eslint-patch" = {
        "1.5.1" = {
          fetchInfo = {
            narHash = "sha256-RegZjrP1x2RIAVmu10+UC2U7MJiizasVfsiRtC9t9KE=";
            type = "tarball";
            url = "https://registry.npmjs.org/@rushstack/eslint-patch/-/eslint-patch-1.5.1.tgz";
          };
          ident = "@rushstack/eslint-patch";
          ltype = "file";
          treeInfo = { };
          version = "1.5.1";
        };
      };
      "@swc/helpers" = {
        "0.5.2" = {
          depInfo = {
            tslib = {
              descriptor = "^2.4.0";
              pin = "2.4.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-9fw0jPmDt5HVvzx95/jymSCKezNt/QkDq3RxqfiJyTs=";
            type = "tarball";
            url = "https://registry.npmjs.org/@swc/helpers/-/helpers-0.5.2.tgz";
          };
          ident = "@swc/helpers";
          ltype = "file";
          version = "0.5.2";
        };
      };
      "@types/acorn" = {
        "4.0.6" = {
          depInfo = {
            "@types/estree" = {
              descriptor = "*";
              pin = "1.0.5";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-A19OhC9NpNQNBAQnyAXazU5AhlpqmqJqJss0+mZD1AU=";
            type = "tarball";
            url = "https://registry.npmjs.org/@types/acorn/-/acorn-4.0.6.tgz";
          };
          ident = "@types/acorn";
          ltype = "file";
          version = "4.0.6";
        };
      };
      "@types/debug" = {
        "4.1.9" = {
          depInfo = {
            "@types/ms" = {
              descriptor = "*";
              pin = "0.7.32";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-6GXU5NDbXWvd9i70QDm5e/WDBRvnyCBRmQn/xZbD1Fk=";
            type = "tarball";
            url = "https://registry.npmjs.org/@types/debug/-/debug-4.1.9.tgz";
          };
          ident = "@types/debug";
          ltype = "file";
          version = "4.1.9";
        };
      };
      "@types/eslint" = {
        "8.44.8" = {
          depInfo = {
            "@types/estree" = {
              descriptor = "*";
              pin = "1.0.5";
              runtime = true;
            };
            "@types/json-schema" = {
              descriptor = "*";
              pin = "7.0.13";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-Ierbz4XpJy33fIlzeVr86RSNnMEvFNBrcLjz72ToZ9s=";
            type = "tarball";
            url = "https://registry.npmjs.org/@types/eslint/-/eslint-8.44.8.tgz";
          };
          ident = "@types/eslint";
          ltype = "file";
          version = "8.44.8";
        };
      };
      "@types/eslint-scope" = {
        "3.7.7" = {
          depInfo = {
            "@types/eslint" = {
              descriptor = "*";
              pin = "8.44.8";
              runtime = true;
            };
            "@types/estree" = {
              descriptor = "*";
              pin = "1.0.5";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-01oBaE3SUeVx9G2YcsabAykBOy5uR5ElW84bM1qwSiM=";
            type = "tarball";
            url = "https://registry.npmjs.org/@types/eslint-scope/-/eslint-scope-3.7.7.tgz";
          };
          ident = "@types/eslint-scope";
          ltype = "file";
          version = "3.7.7";
        };
      };
      "@types/estree" = {
        "1.0.5" = {
          fetchInfo = {
            narHash = "sha256-wbjeywoSej6QHCC/WU1ut2v65OkDlLyB0jSGIE65k7k=";
            type = "tarball";
            url = "https://registry.npmjs.org/@types/estree/-/estree-1.0.5.tgz";
          };
          ident = "@types/estree";
          ltype = "file";
          treeInfo = { };
          version = "1.0.5";
        };
      };
      "@types/estree-jsx" = {
        "1.0.3" = {
          depInfo = {
            "@types/estree" = {
              descriptor = "*";
              pin = "1.0.5";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-37nTlOeSCmlH0Mu+lyBCADMYTuVNOYPUeLtzg7d/rGQ=";
            type = "tarball";
            url = "https://registry.npmjs.org/@types/estree-jsx/-/estree-jsx-1.0.3.tgz";
          };
          ident = "@types/estree-jsx";
          ltype = "file";
          version = "1.0.3";
        };
      };
      "@types/hast" = {
        "2.3.8" = {
          depInfo = {
            "@types/unist" = {
              descriptor = "^2";
              pin = "2.0.10";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-N54z0Sc4ykIV97depJP4uADwo1MmFinwxvLGfEb/xB0=";
            type = "tarball";
            url = "https://registry.npmjs.org/@types/hast/-/hast-2.3.8.tgz";
          };
          ident = "@types/hast";
          ltype = "file";
          version = "2.3.8";
        };
        "3.0.1" = {
          depInfo = {
            "@types/unist" = {
              descriptor = "*";
              pin = "3.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-/PDfJyVwLUeoNfPfmFoudb3fTsYxYipvzo8JaWpShSY=";
            type = "tarball";
            url = "https://registry.npmjs.org/@types/hast/-/hast-3.0.1.tgz";
          };
          ident = "@types/hast";
          ltype = "file";
          version = "3.0.1";
        };
      };
      "@types/js-yaml" = {
        "4.0.9" = {
          fetchInfo = {
            narHash = "sha256-WjKB36BuF4eiOSaHjVjAz0a9kxBQCKyCuJZakpVYtaI=";
            type = "tarball";
            url = "https://registry.npmjs.org/@types/js-yaml/-/js-yaml-4.0.9.tgz";
          };
          ident = "@types/js-yaml";
          ltype = "file";
          treeInfo = { };
          version = "4.0.9";
        };
      };
      "@types/json-schema" = {
        "7.0.13" = {
          fetchInfo = {
            narHash = "sha256-hk7S6sDpUn6z0hSZpVO3Yp6dlHrDlfduZvI77UKb/H8=";
            type = "tarball";
            url = "https://registry.npmjs.org/@types/json-schema/-/json-schema-7.0.13.tgz";
          };
          ident = "@types/json-schema";
          ltype = "file";
          treeInfo = { };
          version = "7.0.13";
        };
      };
      "@types/json5" = {
        "0.0.29" = {
          fetchInfo = {
            narHash = "sha256-ue+RJD8oMMzvouy4/nkfTgtKZsVs9U6YR3XbWAXsuBA=";
            type = "tarball";
            url = "https://registry.npmjs.org/@types/json5/-/json5-0.0.29.tgz";
          };
          ident = "@types/json5";
          ltype = "file";
          treeInfo = { };
          version = "0.0.29";
        };
      };
      "@types/mdast" = {
        "3.0.15" = {
          depInfo = {
            "@types/unist" = {
              descriptor = "^2";
              pin = "2.0.10";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-XCi9mTmLhmbuda5mfZKitBeqpivm3siWo7c0io48I6w=";
            type = "tarball";
            url = "https://registry.npmjs.org/@types/mdast/-/mdast-3.0.15.tgz";
          };
          ident = "@types/mdast";
          ltype = "file";
          version = "3.0.15";
        };
        "4.0.1" = {
          depInfo = {
            "@types/unist" = {
              descriptor = "*";
              pin = "3.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-2pjqef2QuUla7wkCoOxYTbZKa2tLNd+a3wF6Cq3s3Wc=";
            type = "tarball";
            url = "https://registry.npmjs.org/@types/mdast/-/mdast-4.0.1.tgz";
          };
          ident = "@types/mdast";
          ltype = "file";
          version = "4.0.1";
        };
      };
      "@types/mdx" = {
        "2.0.10" = {
          fetchInfo = {
            narHash = "sha256-WkOgsOMAO1hxMWxoSRWQl2YHn45WZtDQu2HUqfdwraI=";
            type = "tarball";
            url = "https://registry.npmjs.org/@types/mdx/-/mdx-2.0.10.tgz";
          };
          ident = "@types/mdx";
          ltype = "file";
          treeInfo = { };
          version = "2.0.10";
        };
      };
      "@types/ms" = {
        "0.7.32" = {
          fetchInfo = {
            narHash = "sha256-OZPFTHhEMNznIHsPw1rEcBRH/Vbi1i5v7+QY/fDvt50=";
            type = "tarball";
            url = "https://registry.npmjs.org/@types/ms/-/ms-0.7.32.tgz";
          };
          ident = "@types/ms";
          ltype = "file";
          treeInfo = { };
          version = "0.7.32";
        };
      };
      "@types/node" = {
        "18.18.1" = {
          fetchInfo = {
            narHash = "sha256-ZCpB8z7s30dZoER0V87ZnkVSagl2cJAsv/7C3fQJLK4=";
            type = "tarball";
            url = "https://registry.npmjs.org/@types/node/-/node-18.18.1.tgz";
          };
          ident = "@types/node";
          ltype = "file";
          treeInfo = { };
          version = "18.18.1";
        };
      };
      "@types/parse-json" = {
        "4.0.0" = {
          fetchInfo = {
            narHash = "sha256-xZ8I656yZfg8U8CJFzcyJ1vRoa3zUsB/xti1O/x8fPU=";
            type = "tarball";
            url = "https://registry.npmjs.org/@types/parse-json/-/parse-json-4.0.0.tgz";
          };
          ident = "@types/parse-json";
          ltype = "file";
          treeInfo = { };
          version = "4.0.0";
        };
      };
      "@types/prop-types" = {
        "15.7.5" = {
          fetchInfo = {
            narHash = "sha256-IIwBpZ3ztJ6m80W2eTuNe8LLkxICa2AL0kbAZoLyMEA=";
            type = "tarball";
            url = "https://registry.npmjs.org/@types/prop-types/-/prop-types-15.7.5.tgz";
          };
          ident = "@types/prop-types";
          ltype = "file";
          treeInfo = { };
          version = "15.7.5";
        };
      };
      "@types/react" = {
        "18.2.24" = {
          depInfo = {
            "@types/prop-types" = {
              descriptor = "*";
              pin = "15.7.5";
              runtime = true;
            };
            "@types/scheduler" = {
              descriptor = "*";
              pin = "0.16.2";
              runtime = true;
            };
            csstype = {
              descriptor = "^3.0.2";
              pin = "3.1.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-bBICPW8wsTtPlWWCrfhlaKlRxyn2AuvcmdKscreipa8=";
            type = "tarball";
            url = "https://registry.npmjs.org/@types/react/-/react-18.2.24.tgz";
          };
          ident = "@types/react";
          ltype = "file";
          version = "18.2.24";
        };
      };
      "@types/react-dom" = {
        "18.2.8" = {
          depInfo = {
            "@types/react" = {
              descriptor = "*";
              pin = "18.2.24";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-VNNg0qISUjg+p+NlY/VbVybvDXcyPC4Czje+QKGkB3s=";
            type = "tarball";
            url = "https://registry.npmjs.org/@types/react-dom/-/react-dom-18.2.8.tgz";
          };
          ident = "@types/react-dom";
          ltype = "file";
          version = "18.2.8";
        };
      };
      "@types/react-highlight" = {
        "0.12.6" = {
          depInfo = {
            "@types/react" = {
              descriptor = "*";
              pin = "18.2.24";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-NQVNinZ6h4UHfpTEnXDri74ySG7FQ2nP0JXGxsHEb2M=";
            type = "tarball";
            url = "https://registry.npmjs.org/@types/react-highlight/-/react-highlight-0.12.6.tgz";
          };
          ident = "@types/react-highlight";
          ltype = "file";
          version = "0.12.6";
        };
      };
      "@types/react-transition-group" = {
        "4.4.7" = {
          depInfo = {
            "@types/react" = {
              descriptor = "*";
              pin = "18.2.24";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-/TcCq9tfMlX1LU8hiU+c8soJp6/k8shmoyIeBoLgxtE=";
            type = "tarball";
            url = "https://registry.npmjs.org/@types/react-transition-group/-/react-transition-group-4.4.7.tgz";
          };
          ident = "@types/react-transition-group";
          ltype = "file";
          version = "4.4.7";
        };
      };
      "@types/scheduler" = {
        "0.16.2" = {
          fetchInfo = {
            narHash = "sha256-8QGoLK1Nijc5HQDWKNnEyaaSJ6RRv65Im5DKJZOHLyk=";
            type = "tarball";
            url = "https://registry.npmjs.org/@types/scheduler/-/scheduler-0.16.2.tgz";
          };
          ident = "@types/scheduler";
          ltype = "file";
          treeInfo = { };
          version = "0.16.2";
        };
      };
      "@types/seedrandom" = {
        "3.0.6" = {
          fetchInfo = {
            narHash = "sha256-LfQ/qUhFkTDjLM9Tt6qYEafsk2m0zsvlgYBY2lh9+D8=";
            type = "tarball";
            url = "https://registry.npmjs.org/@types/seedrandom/-/seedrandom-3.0.6.tgz";
          };
          ident = "@types/seedrandom";
          ltype = "file";
          treeInfo = { };
          version = "3.0.6";
        };
      };
      "@types/semver" = {
        "7.5.3" = {
          fetchInfo = {
            narHash = "sha256-MTL4wb6XDYxJap+lCOeAKcu6sm8zKyZlcD9hvxhUdyc=";
            type = "tarball";
            url = "https://registry.npmjs.org/@types/semver/-/semver-7.5.3.tgz";
          };
          ident = "@types/semver";
          ltype = "file";
          treeInfo = { };
          version = "7.5.3";
        };
      };
      "@types/unist" = {
        "2.0.10" = {
          fetchInfo = {
            narHash = "sha256-7ODjtCH0mqwhV9pDfAYR76QrIB5uCjuZI2R6Z4iSU3g=";
            type = "tarball";
            url = "https://registry.npmjs.org/@types/unist/-/unist-2.0.10.tgz";
          };
          ident = "@types/unist";
          ltype = "file";
          treeInfo = { };
          version = "2.0.10";
        };
        "3.0.0" = {
          fetchInfo = {
            narHash = "sha256-QwSQHx5Awp9lMAuadgXZRgDx1+euAzOg+Gx8+Nu7aok=";
            type = "tarball";
            url = "https://registry.npmjs.org/@types/unist/-/unist-3.0.0.tgz";
          };
          ident = "@types/unist";
          ltype = "file";
          treeInfo = { };
          version = "3.0.0";
        };
      };
      "@typescript-eslint/eslint-plugin" = {
        "6.7.3" = {
          depInfo = {
            "@eslint-community/regexpp" = {
              descriptor = "^4.5.1";
              pin = "4.9.0";
              runtime = true;
            };
            "@typescript-eslint/scope-manager" = {
              descriptor = "6.7.3";
              pin = "6.7.3";
              runtime = true;
            };
            "@typescript-eslint/type-utils" = {
              descriptor = "6.7.3";
              pin = "6.7.3";
              runtime = true;
            };
            "@typescript-eslint/utils" = {
              descriptor = "6.7.3";
              pin = "6.7.3";
              runtime = true;
            };
            "@typescript-eslint/visitor-keys" = {
              descriptor = "6.7.3";
              pin = "6.7.3";
              runtime = true;
            };
            debug = {
              descriptor = "^4.3.4";
              pin = "4.3.4";
              runtime = true;
            };
            graphemer = {
              descriptor = "^1.4.0";
              pin = "1.4.0";
              runtime = true;
            };
            ignore = {
              descriptor = "^5.2.4";
              pin = "5.2.4";
              runtime = true;
            };
            natural-compare = {
              descriptor = "^1.4.0";
              pin = "1.4.0";
              runtime = true;
            };
            semver = {
              descriptor = "^7.5.4";
              pin = "7.5.4";
              runtime = true;
            };
            ts-api-utils = {
              descriptor = "^1.0.1";
              pin = "1.0.3";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-sid46gI8TAVL1rJJ4RIy/tcTXWxm2YWFj9Tn04ZP/MU=";
            type = "tarball";
            url = "https://registry.npmjs.org/@typescript-eslint/eslint-plugin/-/eslint-plugin-6.7.3.tgz";
          };
          ident = "@typescript-eslint/eslint-plugin";
          ltype = "file";
          peerInfo = {
            "@typescript-eslint/parser" = {
              descriptor = "^6.0.0 || ^6.0.0-alpha";
            };
            eslint = {
              descriptor = "^7.0.0 || ^8.0.0";
            };
            typescript = {
              descriptor = "*";
              optional = true;
            };
          };
          version = "6.7.3";
        };
      };
      "@typescript-eslint/parser" = {
        "6.7.3" = {
          depInfo = {
            "@typescript-eslint/scope-manager" = {
              descriptor = "6.7.3";
              pin = "6.7.3";
              runtime = true;
            };
            "@typescript-eslint/types" = {
              descriptor = "6.7.3";
              pin = "6.7.3";
              runtime = true;
            };
            "@typescript-eslint/typescript-estree" = {
              descriptor = "6.7.3";
              pin = "6.7.3";
              runtime = true;
            };
            "@typescript-eslint/visitor-keys" = {
              descriptor = "6.7.3";
              pin = "6.7.3";
              runtime = true;
            };
            debug = {
              descriptor = "^4.3.4";
              pin = "4.3.4";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-l5Rl8EEjeCtWK1ys0TYibJLinlyCuoLL6MXzWSfWkH0=";
            type = "tarball";
            url = "https://registry.npmjs.org/@typescript-eslint/parser/-/parser-6.7.3.tgz";
          };
          ident = "@typescript-eslint/parser";
          ltype = "file";
          peerInfo = {
            eslint = {
              descriptor = "^7.0.0 || ^8.0.0";
            };
            typescript = {
              descriptor = "*";
              optional = true;
            };
          };
          version = "6.7.3";
        };
      };
      "@typescript-eslint/scope-manager" = {
        "6.7.3" = {
          depInfo = {
            "@typescript-eslint/types" = {
              descriptor = "6.7.3";
              pin = "6.7.3";
              runtime = true;
            };
            "@typescript-eslint/visitor-keys" = {
              descriptor = "6.7.3";
              pin = "6.7.3";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-edbiwNh1guPqbjfhn+Az3SntL0rlNXJNSrsEc4KUiTA=";
            type = "tarball";
            url = "https://registry.npmjs.org/@typescript-eslint/scope-manager/-/scope-manager-6.7.3.tgz";
          };
          ident = "@typescript-eslint/scope-manager";
          ltype = "file";
          version = "6.7.3";
        };
      };
      "@typescript-eslint/type-utils" = {
        "6.7.3" = {
          depInfo = {
            "@typescript-eslint/typescript-estree" = {
              descriptor = "6.7.3";
              pin = "6.7.3";
              runtime = true;
            };
            "@typescript-eslint/utils" = {
              descriptor = "6.7.3";
              pin = "6.7.3";
              runtime = true;
            };
            debug = {
              descriptor = "^4.3.4";
              pin = "4.3.4";
              runtime = true;
            };
            ts-api-utils = {
              descriptor = "^1.0.1";
              pin = "1.0.3";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-CFZyi/iJe0BUECjQisIK1821gRszIJuOUn+vjcGDnwE=";
            type = "tarball";
            url = "https://registry.npmjs.org/@typescript-eslint/type-utils/-/type-utils-6.7.3.tgz";
          };
          ident = "@typescript-eslint/type-utils";
          ltype = "file";
          peerInfo = {
            eslint = {
              descriptor = "^7.0.0 || ^8.0.0";
            };
            typescript = {
              descriptor = "*";
              optional = true;
            };
          };
          version = "6.7.3";
        };
      };
      "@typescript-eslint/types" = {
        "6.7.3" = {
          fetchInfo = {
            narHash = "sha256-7Z37KPON9kUnOPTSiC46wZ7JFIEe6XISVi3ldNGmIm0=";
            type = "tarball";
            url = "https://registry.npmjs.org/@typescript-eslint/types/-/types-6.7.3.tgz";
          };
          ident = "@typescript-eslint/types";
          ltype = "file";
          treeInfo = { };
          version = "6.7.3";
        };
      };
      "@typescript-eslint/typescript-estree" = {
        "6.7.3" = {
          depInfo = {
            "@typescript-eslint/types" = {
              descriptor = "6.7.3";
              pin = "6.7.3";
              runtime = true;
            };
            "@typescript-eslint/visitor-keys" = {
              descriptor = "6.7.3";
              pin = "6.7.3";
              runtime = true;
            };
            debug = {
              descriptor = "^4.3.4";
              pin = "4.3.4";
              runtime = true;
            };
            globby = {
              descriptor = "^11.1.0";
              pin = "11.1.0";
              runtime = true;
            };
            is-glob = {
              descriptor = "^4.0.3";
              pin = "4.0.3";
              runtime = true;
            };
            semver = {
              descriptor = "^7.5.4";
              pin = "7.5.4";
              runtime = true;
            };
            ts-api-utils = {
              descriptor = "^1.0.1";
              pin = "1.0.3";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-hvCd+2Jtp7W8HNxIemlH6XPVWrdMXh9x2/2mqk552/g=";
            type = "tarball";
            url = "https://registry.npmjs.org/@typescript-eslint/typescript-estree/-/typescript-estree-6.7.3.tgz";
          };
          ident = "@typescript-eslint/typescript-estree";
          ltype = "file";
          peerInfo = {
            typescript = {
              descriptor = "*";
              optional = true;
            };
          };
          version = "6.7.3";
        };
      };
      "@typescript-eslint/utils" = {
        "6.7.3" = {
          depInfo = {
            "@eslint-community/eslint-utils" = {
              descriptor = "^4.4.0";
              pin = "4.4.0";
              runtime = true;
            };
            "@types/json-schema" = {
              descriptor = "^7.0.12";
              pin = "7.0.13";
              runtime = true;
            };
            "@types/semver" = {
              descriptor = "^7.5.0";
              pin = "7.5.3";
              runtime = true;
            };
            "@typescript-eslint/scope-manager" = {
              descriptor = "6.7.3";
              pin = "6.7.3";
              runtime = true;
            };
            "@typescript-eslint/types" = {
              descriptor = "6.7.3";
              pin = "6.7.3";
              runtime = true;
            };
            "@typescript-eslint/typescript-estree" = {
              descriptor = "6.7.3";
              pin = "6.7.3";
              runtime = true;
            };
            semver = {
              descriptor = "^7.5.4";
              pin = "7.5.4";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-+7DyFoeUGjm7JLhMnjs6W+HW0p82s4czuW+T7pfsOgE=";
            type = "tarball";
            url = "https://registry.npmjs.org/@typescript-eslint/utils/-/utils-6.7.3.tgz";
          };
          ident = "@typescript-eslint/utils";
          ltype = "file";
          peerInfo = {
            eslint = {
              descriptor = "^7.0.0 || ^8.0.0";
            };
          };
          version = "6.7.3";
        };
      };
      "@typescript-eslint/visitor-keys" = {
        "6.7.3" = {
          depInfo = {
            "@typescript-eslint/types" = {
              descriptor = "6.7.3";
              pin = "6.7.3";
              runtime = true;
            };
            eslint-visitor-keys = {
              descriptor = "^3.4.1";
              pin = "3.4.3";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-BvYDap5e1Unm4JQnuYPXQvzGfWY+GhHTiT66jjfQUTg=";
            type = "tarball";
            url = "https://registry.npmjs.org/@typescript-eslint/visitor-keys/-/visitor-keys-6.7.3.tgz";
          };
          ident = "@typescript-eslint/visitor-keys";
          ltype = "file";
          version = "6.7.3";
        };
      };
      "@ungap/structured-clone" = {
        "1.2.0" = {
          fetchInfo = {
            narHash = "sha256-4UIXElv7wCnuVlBrO5TLtuvs6reg2FVdxZ3DrGoDZ6s=";
            type = "tarball";
            url = "https://registry.npmjs.org/@ungap/structured-clone/-/structured-clone-1.2.0.tgz";
          };
          ident = "@ungap/structured-clone";
          ltype = "file";
          treeInfo = { };
          version = "1.2.0";
        };
      };
      "@vcarl/remark-headings" = {
        "0.1.0" = {
          depInfo = {
            mdast-util-to-string = {
              descriptor = "^3.1.0";
              pin = "3.2.0";
              runtime = true;
            };
            unist-util-visit = {
              descriptor = "^4.0.0";
              pin = "4.1.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-APyvNgpyfdtSWfe6wLFKm+emKsQMslahLj+HmADdh38=";
            type = "tarball";
            url = "https://registry.npmjs.org/@vcarl/remark-headings/-/remark-headings-0.1.0.tgz";
          };
          ident = "@vcarl/remark-headings";
          ltype = "file";
          version = "0.1.0";
        };
      };
      "@webassemblyjs/ast" = {
        "1.11.6" = {
          depInfo = {
            "@webassemblyjs/helper-numbers" = {
              descriptor = "1.11.6";
              pin = "1.11.6";
              runtime = true;
            };
            "@webassemblyjs/helper-wasm-bytecode" = {
              descriptor = "1.11.6";
              pin = "1.11.6";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-5NDWtD0bJMsO1qHk+Go5jCCuEnxbw0wrPVuyRITaqUU=";
            type = "tarball";
            url = "https://registry.npmjs.org/@webassemblyjs/ast/-/ast-1.11.6.tgz";
          };
          ident = "@webassemblyjs/ast";
          ltype = "file";
          version = "1.11.6";
        };
      };
      "@webassemblyjs/floating-point-hex-parser" = {
        "1.11.6" = {
          fetchInfo = {
            narHash = "sha256-VLFFzju5TYiQ825lWQiaVTGhFJr8QNgjddjFety8EI0=";
            type = "tarball";
            url = "https://registry.npmjs.org/@webassemblyjs/floating-point-hex-parser/-/floating-point-hex-parser-1.11.6.tgz";
          };
          ident = "@webassemblyjs/floating-point-hex-parser";
          ltype = "file";
          treeInfo = { };
          version = "1.11.6";
        };
      };
      "@webassemblyjs/helper-api-error" = {
        "1.11.6" = {
          fetchInfo = {
            narHash = "sha256-CIVwB9LhhKKWVoCgF6GTUTVaAYEF4PeBwsM7bnOTkdg=";
            type = "tarball";
            url = "https://registry.npmjs.org/@webassemblyjs/helper-api-error/-/helper-api-error-1.11.6.tgz";
          };
          ident = "@webassemblyjs/helper-api-error";
          ltype = "file";
          treeInfo = { };
          version = "1.11.6";
        };
      };
      "@webassemblyjs/helper-buffer" = {
        "1.11.6" = {
          fetchInfo = {
            narHash = "sha256-s5WLTV1xZnWV3N7Bc2FLhNJtIgseVs74ENncKIZDQRY=";
            type = "tarball";
            url = "https://registry.npmjs.org/@webassemblyjs/helper-buffer/-/helper-buffer-1.11.6.tgz";
          };
          ident = "@webassemblyjs/helper-buffer";
          ltype = "file";
          treeInfo = { };
          version = "1.11.6";
        };
      };
      "@webassemblyjs/helper-numbers" = {
        "1.11.6" = {
          depInfo = {
            "@webassemblyjs/floating-point-hex-parser" = {
              descriptor = "1.11.6";
              pin = "1.11.6";
              runtime = true;
            };
            "@webassemblyjs/helper-api-error" = {
              descriptor = "1.11.6";
              pin = "1.11.6";
              runtime = true;
            };
            "@xtuc/long" = {
              descriptor = "4.2.2";
              pin = "4.2.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-hi1QEM+9rG7fjSaN9ChbJ4KkoqWR3U+sUCBZ86Fadho=";
            type = "tarball";
            url = "https://registry.npmjs.org/@webassemblyjs/helper-numbers/-/helper-numbers-1.11.6.tgz";
          };
          ident = "@webassemblyjs/helper-numbers";
          ltype = "file";
          version = "1.11.6";
        };
      };
      "@webassemblyjs/helper-wasm-bytecode" = {
        "1.11.6" = {
          fetchInfo = {
            narHash = "sha256-2cVHtm66D5xd0e2Y6QZBmPQKX91yQb0QvU0/540JA7w=";
            type = "tarball";
            url = "https://registry.npmjs.org/@webassemblyjs/helper-wasm-bytecode/-/helper-wasm-bytecode-1.11.6.tgz";
          };
          ident = "@webassemblyjs/helper-wasm-bytecode";
          ltype = "file";
          treeInfo = { };
          version = "1.11.6";
        };
      };
      "@webassemblyjs/helper-wasm-section" = {
        "1.11.6" = {
          depInfo = {
            "@webassemblyjs/ast" = {
              descriptor = "1.11.6";
              pin = "1.11.6";
              runtime = true;
            };
            "@webassemblyjs/helper-buffer" = {
              descriptor = "1.11.6";
              pin = "1.11.6";
              runtime = true;
            };
            "@webassemblyjs/helper-wasm-bytecode" = {
              descriptor = "1.11.6";
              pin = "1.11.6";
              runtime = true;
            };
            "@webassemblyjs/wasm-gen" = {
              descriptor = "1.11.6";
              pin = "1.11.6";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-tqBuFL5m5LUPFF9yBLeCMbZWRyRHm3o2j3MxDUIw380=";
            type = "tarball";
            url = "https://registry.npmjs.org/@webassemblyjs/helper-wasm-section/-/helper-wasm-section-1.11.6.tgz";
          };
          ident = "@webassemblyjs/helper-wasm-section";
          ltype = "file";
          version = "1.11.6";
        };
      };
      "@webassemblyjs/ieee754" = {
        "1.11.6" = {
          depInfo = {
            "@xtuc/ieee754" = {
              descriptor = "^1.2.0";
              pin = "1.2.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-JXEtqxyQvOVZV3hZw/06JCWrsQwCNCD33v8Wik2i+bk=";
            type = "tarball";
            url = "https://registry.npmjs.org/@webassemblyjs/ieee754/-/ieee754-1.11.6.tgz";
          };
          ident = "@webassemblyjs/ieee754";
          ltype = "file";
          version = "1.11.6";
        };
      };
      "@webassemblyjs/leb128" = {
        "1.11.6" = {
          depInfo = {
            "@xtuc/long" = {
              descriptor = "4.2.2";
              pin = "4.2.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-qezB3UClo5V1MIWIJW70BhlRqURJlQ5XxXTSwQAMbY0=";
            type = "tarball";
            url = "https://registry.npmjs.org/@webassemblyjs/leb128/-/leb128-1.11.6.tgz";
          };
          ident = "@webassemblyjs/leb128";
          ltype = "file";
          version = "1.11.6";
        };
      };
      "@webassemblyjs/utf8" = {
        "1.11.6" = {
          fetchInfo = {
            narHash = "sha256-FIlVeTbTDsoK70XJQWk6z35SyHzyBtaEF6XVGhnbzj8=";
            type = "tarball";
            url = "https://registry.npmjs.org/@webassemblyjs/utf8/-/utf8-1.11.6.tgz";
          };
          ident = "@webassemblyjs/utf8";
          ltype = "file";
          treeInfo = { };
          version = "1.11.6";
        };
      };
      "@webassemblyjs/wasm-edit" = {
        "1.11.6" = {
          depInfo = {
            "@webassemblyjs/ast" = {
              descriptor = "1.11.6";
              pin = "1.11.6";
              runtime = true;
            };
            "@webassemblyjs/helper-buffer" = {
              descriptor = "1.11.6";
              pin = "1.11.6";
              runtime = true;
            };
            "@webassemblyjs/helper-wasm-bytecode" = {
              descriptor = "1.11.6";
              pin = "1.11.6";
              runtime = true;
            };
            "@webassemblyjs/helper-wasm-section" = {
              descriptor = "1.11.6";
              pin = "1.11.6";
              runtime = true;
            };
            "@webassemblyjs/wasm-gen" = {
              descriptor = "1.11.6";
              pin = "1.11.6";
              runtime = true;
            };
            "@webassemblyjs/wasm-opt" = {
              descriptor = "1.11.6";
              pin = "1.11.6";
              runtime = true;
            };
            "@webassemblyjs/wasm-parser" = {
              descriptor = "1.11.6";
              pin = "1.11.6";
              runtime = true;
            };
            "@webassemblyjs/wast-printer" = {
              descriptor = "1.11.6";
              pin = "1.11.6";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-VaHEGMSFZKf6okUZmT2dTqAAsAAz/uuDi/41c1ezBn0=";
            type = "tarball";
            url = "https://registry.npmjs.org/@webassemblyjs/wasm-edit/-/wasm-edit-1.11.6.tgz";
          };
          ident = "@webassemblyjs/wasm-edit";
          ltype = "file";
          version = "1.11.6";
        };
      };
      "@webassemblyjs/wasm-gen" = {
        "1.11.6" = {
          depInfo = {
            "@webassemblyjs/ast" = {
              descriptor = "1.11.6";
              pin = "1.11.6";
              runtime = true;
            };
            "@webassemblyjs/helper-wasm-bytecode" = {
              descriptor = "1.11.6";
              pin = "1.11.6";
              runtime = true;
            };
            "@webassemblyjs/ieee754" = {
              descriptor = "1.11.6";
              pin = "1.11.6";
              runtime = true;
            };
            "@webassemblyjs/leb128" = {
              descriptor = "1.11.6";
              pin = "1.11.6";
              runtime = true;
            };
            "@webassemblyjs/utf8" = {
              descriptor = "1.11.6";
              pin = "1.11.6";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-jHIdmfstcZQ9q4Bd2fKjX9Ob5mQ0XScigrvRkXeIVmo=";
            type = "tarball";
            url = "https://registry.npmjs.org/@webassemblyjs/wasm-gen/-/wasm-gen-1.11.6.tgz";
          };
          ident = "@webassemblyjs/wasm-gen";
          ltype = "file";
          version = "1.11.6";
        };
      };
      "@webassemblyjs/wasm-opt" = {
        "1.11.6" = {
          depInfo = {
            "@webassemblyjs/ast" = {
              descriptor = "1.11.6";
              pin = "1.11.6";
              runtime = true;
            };
            "@webassemblyjs/helper-buffer" = {
              descriptor = "1.11.6";
              pin = "1.11.6";
              runtime = true;
            };
            "@webassemblyjs/wasm-gen" = {
              descriptor = "1.11.6";
              pin = "1.11.6";
              runtime = true;
            };
            "@webassemblyjs/wasm-parser" = {
              descriptor = "1.11.6";
              pin = "1.11.6";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-BwCEqkQE7J0C9iCSa+4RwA6d2HIqCNyJtQTd9sDrv10=";
            type = "tarball";
            url = "https://registry.npmjs.org/@webassemblyjs/wasm-opt/-/wasm-opt-1.11.6.tgz";
          };
          ident = "@webassemblyjs/wasm-opt";
          ltype = "file";
          version = "1.11.6";
        };
      };
      "@webassemblyjs/wasm-parser" = {
        "1.11.6" = {
          depInfo = {
            "@webassemblyjs/ast" = {
              descriptor = "1.11.6";
              pin = "1.11.6";
              runtime = true;
            };
            "@webassemblyjs/helper-api-error" = {
              descriptor = "1.11.6";
              pin = "1.11.6";
              runtime = true;
            };
            "@webassemblyjs/helper-wasm-bytecode" = {
              descriptor = "1.11.6";
              pin = "1.11.6";
              runtime = true;
            };
            "@webassemblyjs/ieee754" = {
              descriptor = "1.11.6";
              pin = "1.11.6";
              runtime = true;
            };
            "@webassemblyjs/leb128" = {
              descriptor = "1.11.6";
              pin = "1.11.6";
              runtime = true;
            };
            "@webassemblyjs/utf8" = {
              descriptor = "1.11.6";
              pin = "1.11.6";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-yQX7ijcIR/j8eZs4SyQcyYtvh1uexb1/rmVbckNqtW4=";
            type = "tarball";
            url = "https://registry.npmjs.org/@webassemblyjs/wasm-parser/-/wasm-parser-1.11.6.tgz";
          };
          ident = "@webassemblyjs/wasm-parser";
          ltype = "file";
          version = "1.11.6";
        };
      };
      "@webassemblyjs/wast-printer" = {
        "1.11.6" = {
          depInfo = {
            "@webassemblyjs/ast" = {
              descriptor = "1.11.6";
              pin = "1.11.6";
              runtime = true;
            };
            "@xtuc/long" = {
              descriptor = "4.2.2";
              pin = "4.2.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-08Hc0J9WmChsjm4fov3zvUxhHcyf1GFFSo1oiEGPtow=";
            type = "tarball";
            url = "https://registry.npmjs.org/@webassemblyjs/wast-printer/-/wast-printer-1.11.6.tgz";
          };
          ident = "@webassemblyjs/wast-printer";
          ltype = "file";
          version = "1.11.6";
        };
      };
      "@xtuc/ieee754" = {
        "1.2.0" = {
          fetchInfo = {
            narHash = "sha256-Yt8ZF8eXBXzygW9YljgZ+PMQqxW5S4qIUwrSPj5MZjU=";
            type = "tarball";
            url = "https://registry.npmjs.org/@xtuc/ieee754/-/ieee754-1.2.0.tgz";
          };
          ident = "@xtuc/ieee754";
          ltype = "file";
          treeInfo = { };
          version = "1.2.0";
        };
      };
      "@xtuc/long" = {
        "4.2.2" = {
          fetchInfo = {
            narHash = "sha256-vHExajnTeupP2HOcy4djS3gGA+9wJg6McK8dad3Y//8=";
            type = "tarball";
            url = "https://registry.npmjs.org/@xtuc/long/-/long-4.2.2.tgz";
          };
          ident = "@xtuc/long";
          ltype = "file";
          treeInfo = { };
          version = "4.2.2";
        };
      };
      acorn = {
        "8.10.0" = {
          binInfo = {
            binPairs = {
              acorn = "bin/acorn";
            };
          };
          fetchInfo = {
            narHash = "sha256-vmLiR0CeNXcvOY/qgxmfBWzUOTxz6rXJcp5EMe7rR3o=";
            type = "tarball";
            url = "https://registry.npmjs.org/acorn/-/acorn-8.10.0.tgz";
          };
          ident = "acorn";
          ltype = "file";
          treeInfo = { };
          version = "8.10.0";
        };
      };
      acorn-import-assertions = {
        "1.9.0" = {
          fetchInfo = {
            narHash = "sha256-jFmP3/kAsYouBzA85Xrzef/dhsYyG3jry48w6FF/snQ=";
            type = "tarball";
            url = "https://registry.npmjs.org/acorn-import-assertions/-/acorn-import-assertions-1.9.0.tgz";
          };
          ident = "acorn-import-assertions";
          ltype = "file";
          peerInfo = {
            acorn = {
              descriptor = "^8";
            };
          };
          treeInfo = { };
          version = "1.9.0";
        };
      };
      acorn-jsx = {
        "5.3.2" = {
          fetchInfo = {
            narHash = "sha256-AleG2zYzv9doV8blgXmOhx7ExOUJ+0hofIUgxOID8Q8=";
            type = "tarball";
            url = "https://registry.npmjs.org/acorn-jsx/-/acorn-jsx-5.3.2.tgz";
          };
          ident = "acorn-jsx";
          ltype = "file";
          peerInfo = {
            acorn = {
              descriptor = "^6.0.0 || ^7.0.0 || ^8.0.0";
            };
          };
          treeInfo = { };
          version = "5.3.2";
        };
      };
      ajv = {
        "6.12.6" = {
          depInfo = {
            fast-deep-equal = {
              descriptor = "^3.1.1";
              pin = "3.1.3";
              runtime = true;
            };
            fast-json-stable-stringify = {
              descriptor = "^2.0.0";
              pin = "2.1.0";
              runtime = true;
            };
            json-schema-traverse = {
              descriptor = "^0.4.1";
              pin = "0.4.1";
              runtime = true;
            };
            uri-js = {
              descriptor = "^4.2.2";
              pin = "4.4.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-J73Yar5PwP9cRfKNYKEbHIVHuvfSEfLuSmkdbF8WeYI=";
            type = "tarball";
            url = "https://registry.npmjs.org/ajv/-/ajv-6.12.6.tgz";
          };
          ident = "ajv";
          ltype = "file";
          version = "6.12.6";
        };
      };
      ajv-keywords = {
        "3.5.2" = {
          fetchInfo = {
            narHash = "sha256-ZO+DRbAK9Ji2muXlfGLzBYidi9tf85m8CJnUJ0yjCtU=";
            type = "tarball";
            url = "https://registry.npmjs.org/ajv-keywords/-/ajv-keywords-3.5.2.tgz";
          };
          ident = "ajv-keywords";
          ltype = "file";
          peerInfo = {
            ajv = {
              descriptor = "^6.9.1";
            };
          };
          treeInfo = { };
          version = "3.5.2";
        };
      };
      ansi-regex = {
        "5.0.1" = {
          fetchInfo = {
            narHash = "sha256-8FjueDq8OfpA4/cbcsda1vVcNseZPDYf+YqM56zD03Y=";
            type = "tarball";
            url = "https://registry.npmjs.org/ansi-regex/-/ansi-regex-5.0.1.tgz";
          };
          ident = "ansi-regex";
          ltype = "file";
          treeInfo = { };
          version = "5.0.1";
        };
      };
      ansi-styles = {
        "3.2.1" = {
          depInfo = {
            color-convert = {
              descriptor = "^1.9.0";
              pin = "1.9.3";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-3VeRGkKqu2VUHvybLgjuzuTVZIYL6b4bwCEAhRF/Fzw=";
            type = "tarball";
            url = "https://registry.npmjs.org/ansi-styles/-/ansi-styles-3.2.1.tgz";
          };
          ident = "ansi-styles";
          ltype = "file";
          version = "3.2.1";
        };
        "4.3.0" = {
          depInfo = {
            color-convert = {
              descriptor = "^2.0.1";
              pin = "2.0.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-Kqu6XFQU9/7zx/Nryl7Asi5QsyP1By7Ig4Sn1HbFfdc=";
            type = "tarball";
            url = "https://registry.npmjs.org/ansi-styles/-/ansi-styles-4.3.0.tgz";
          };
          ident = "ansi-styles";
          ltype = "file";
          version = "4.3.0";
        };
      };
      argparse = {
        "2.0.1" = {
          fetchInfo = {
            narHash = "sha256-+v7oJKHcy2HR8XoEtVbDpl5zL5DeGcDB2Q3HO7xJaLc=";
            type = "tarball";
            url = "https://registry.npmjs.org/argparse/-/argparse-2.0.1.tgz";
          };
          ident = "argparse";
          ltype = "file";
          treeInfo = { };
          version = "2.0.1";
        };
      };
      aria-query = {
        "5.3.0" = {
          depInfo = {
            dequal = {
              descriptor = "^2.0.3";
              pin = "2.0.3";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-TkGqLMLh6DwC+zg7RUaNyf6b3SgK+0ylZy4v3n0tgAQ=";
            type = "tarball";
            url = "https://registry.npmjs.org/aria-query/-/aria-query-5.3.0.tgz";
          };
          ident = "aria-query";
          ltype = "file";
          version = "5.3.0";
        };
      };
      array-buffer-byte-length = {
        "1.0.0" = {
          depInfo = {
            call-bind = {
              descriptor = "^1.0.2";
              pin = "1.0.2";
              runtime = true;
            };
            is-array-buffer = {
              descriptor = "^3.0.1";
              pin = "3.0.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-zRY5ti2uSzFiExmvZ4msX/ze2+WOLm4HCO3RrbQOJaE=";
            type = "tarball";
            url = "https://registry.npmjs.org/array-buffer-byte-length/-/array-buffer-byte-length-1.0.0.tgz";
          };
          ident = "array-buffer-byte-length";
          ltype = "file";
          version = "1.0.0";
        };
      };
      array-includes = {
        "3.1.6" = {
          depInfo = {
            call-bind = {
              descriptor = "^1.0.2";
              pin = "1.0.2";
              runtime = true;
            };
            define-properties = {
              descriptor = "^1.1.4";
              pin = "1.2.1";
              runtime = true;
            };
            es-abstract = {
              descriptor = "^1.20.4";
              pin = "1.22.2";
              runtime = true;
            };
            get-intrinsic = {
              descriptor = "^1.1.3";
              pin = "1.2.1";
              runtime = true;
            };
            is-string = {
              descriptor = "^1.0.7";
              pin = "1.0.7";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-dUWv9Vpkm9Q+bTJmKzlqI+YMYLoRdPikvELz3IiPjWY=";
            type = "tarball";
            url = "https://registry.npmjs.org/array-includes/-/array-includes-3.1.6.tgz";
          };
          ident = "array-includes";
          ltype = "file";
          version = "3.1.6";
        };
      };
      array-union = {
        "2.1.0" = {
          fetchInfo = {
            narHash = "sha256-bmQXg345RYsXeeq7IwVxYDrzUr9rWTXu9b8usPViYkk=";
            type = "tarball";
            url = "https://registry.npmjs.org/array-union/-/array-union-2.1.0.tgz";
          };
          ident = "array-union";
          ltype = "file";
          treeInfo = { };
          version = "2.1.0";
        };
      };
      "array.prototype.findlastindex" = {
        "1.2.3" = {
          depInfo = {
            call-bind = {
              descriptor = "^1.0.2";
              pin = "1.0.2";
              runtime = true;
            };
            define-properties = {
              descriptor = "^1.2.0";
              pin = "1.2.1";
              runtime = true;
            };
            es-abstract = {
              descriptor = "^1.22.1";
              pin = "1.22.2";
              runtime = true;
            };
            es-shim-unscopables = {
              descriptor = "^1.0.0";
              pin = "1.0.0";
              runtime = true;
            };
            get-intrinsic = {
              descriptor = "^1.2.1";
              pin = "1.2.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-PuR+7b7loi1pfrvvvnPZYkYRBZy8I2pjSB99c7LReYI=";
            type = "tarball";
            url = "https://registry.npmjs.org/array.prototype.findlastindex/-/array.prototype.findlastindex-1.2.3.tgz";
          };
          ident = "array.prototype.findlastindex";
          ltype = "file";
          version = "1.2.3";
        };
      };
      "array.prototype.flat" = {
        "1.3.1" = {
          depInfo = {
            call-bind = {
              descriptor = "^1.0.2";
              pin = "1.0.2";
              runtime = true;
            };
            define-properties = {
              descriptor = "^1.1.4";
              pin = "1.2.1";
              runtime = true;
            };
            es-abstract = {
              descriptor = "^1.20.4";
              pin = "1.22.2";
              runtime = true;
            };
            es-shim-unscopables = {
              descriptor = "^1.0.0";
              pin = "1.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-WOXmh1ZNKurEfwLXMLzB2GZksE06eMGV1GlGY9hC2n8=";
            type = "tarball";
            url = "https://registry.npmjs.org/array.prototype.flat/-/array.prototype.flat-1.3.1.tgz";
          };
          ident = "array.prototype.flat";
          ltype = "file";
          version = "1.3.1";
        };
      };
      "array.prototype.flatmap" = {
        "1.3.1" = {
          depInfo = {
            call-bind = {
              descriptor = "^1.0.2";
              pin = "1.0.2";
              runtime = true;
            };
            define-properties = {
              descriptor = "^1.1.4";
              pin = "1.2.1";
              runtime = true;
            };
            es-abstract = {
              descriptor = "^1.20.4";
              pin = "1.22.2";
              runtime = true;
            };
            es-shim-unscopables = {
              descriptor = "^1.0.0";
              pin = "1.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-ZwXYyM+OQO61VKBHaokjjwr9dXaGO3lHfoSE+AzqxUU=";
            type = "tarball";
            url = "https://registry.npmjs.org/array.prototype.flatmap/-/array.prototype.flatmap-1.3.1.tgz";
          };
          ident = "array.prototype.flatmap";
          ltype = "file";
          version = "1.3.1";
        };
      };
      "array.prototype.tosorted" = {
        "1.1.2" = {
          depInfo = {
            call-bind = {
              descriptor = "^1.0.2";
              pin = "1.0.2";
              runtime = true;
            };
            define-properties = {
              descriptor = "^1.2.0";
              pin = "1.2.1";
              runtime = true;
            };
            es-abstract = {
              descriptor = "^1.22.1";
              pin = "1.22.2";
              runtime = true;
            };
            es-shim-unscopables = {
              descriptor = "^1.0.0";
              pin = "1.0.0";
              runtime = true;
            };
            get-intrinsic = {
              descriptor = "^1.2.1";
              pin = "1.2.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-8RTkXn0xmEdLJg7p35+EmNXizkgo1Ula5LxyacoZ8Yk=";
            type = "tarball";
            url = "https://registry.npmjs.org/array.prototype.tosorted/-/array.prototype.tosorted-1.1.2.tgz";
          };
          ident = "array.prototype.tosorted";
          ltype = "file";
          version = "1.1.2";
        };
      };
      "arraybuffer.prototype.slice" = {
        "1.0.2" = {
          depInfo = {
            array-buffer-byte-length = {
              descriptor = "^1.0.0";
              pin = "1.0.0";
              runtime = true;
            };
            call-bind = {
              descriptor = "^1.0.2";
              pin = "1.0.2";
              runtime = true;
            };
            define-properties = {
              descriptor = "^1.2.0";
              pin = "1.2.1";
              runtime = true;
            };
            es-abstract = {
              descriptor = "^1.22.1";
              pin = "1.22.2";
              runtime = true;
            };
            get-intrinsic = {
              descriptor = "^1.2.1";
              pin = "1.2.1";
              runtime = true;
            };
            is-array-buffer = {
              descriptor = "^3.0.2";
              pin = "3.0.2";
              runtime = true;
            };
            is-shared-array-buffer = {
              descriptor = "^1.0.2";
              pin = "1.0.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-8+5hudY1lGd60Uj+jGGx4M8DXXvCLzpZKZ3uL9Ny0w8=";
            type = "tarball";
            url = "https://registry.npmjs.org/arraybuffer.prototype.slice/-/arraybuffer.prototype.slice-1.0.2.tgz";
          };
          ident = "arraybuffer.prototype.slice";
          ltype = "file";
          version = "1.0.2";
        };
      };
      ast-types-flow = {
        "0.0.7" = {
          fetchInfo = {
            narHash = "sha256-UcLvjFpq+yr7zoyF1RcMr8cip2SZz+AumqFtZATN3aA=";
            type = "tarball";
            url = "https://registry.npmjs.org/ast-types-flow/-/ast-types-flow-0.0.7.tgz";
          };
          ident = "ast-types-flow";
          ltype = "file";
          treeInfo = { };
          version = "0.0.7";
        };
      };
      astring = {
        "1.8.6" = {
          binInfo = {
            binPairs = {
              astring = "bin/astring";
            };
          };
          fetchInfo = {
            narHash = "sha256-J/rRNKLX2+0MK/WSuh3rmiZ6l8a0TSQ1dntlvTICWhM=";
            type = "tarball";
            url = "https://registry.npmjs.org/astring/-/astring-1.8.6.tgz";
          };
          ident = "astring";
          ltype = "file";
          treeInfo = { };
          version = "1.8.6";
        };
      };
      "asynciterator.prototype" = {
        "1.0.0" = {
          depInfo = {
            has-symbols = {
              descriptor = "^1.0.3";
              pin = "1.0.3";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-ch7QTvU4Mg/svxE4R95MND938HOTEbClJGZ7eg0Dnrc=";
            type = "tarball";
            url = "https://registry.npmjs.org/asynciterator.prototype/-/asynciterator.prototype-1.0.0.tgz";
          };
          ident = "asynciterator.prototype";
          ltype = "file";
          version = "1.0.0";
        };
      };
      available-typed-arrays = {
        "1.0.5" = {
          fetchInfo = {
            narHash = "sha256-2Mhjdq/W76GxYD8IyzTn23Co5WQrIDa0uXHar7RMu0s=";
            type = "tarball";
            url = "https://registry.npmjs.org/available-typed-arrays/-/available-typed-arrays-1.0.5.tgz";
          };
          ident = "available-typed-arrays";
          ltype = "file";
          treeInfo = { };
          version = "1.0.5";
        };
      };
      axe-core = {
        "4.8.2" = {
          fetchInfo = {
            narHash = "sha256-rH09CskMqFfBnqE2Rypq1p/ecgkQYjbrpCaF9i2aaLw=";
            type = "tarball";
            url = "https://registry.npmjs.org/axe-core/-/axe-core-4.8.2.tgz";
          };
          ident = "axe-core";
          ltype = "file";
          treeInfo = { };
          version = "4.8.2";
        };
      };
      axobject-query = {
        "3.2.1" = {
          depInfo = {
            dequal = {
              descriptor = "^2.0.3";
              pin = "2.0.3";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-26bT+62Cse7aRF6ttHjrTVo270PRZwJLQrYVG83TeGE=";
            type = "tarball";
            url = "https://registry.npmjs.org/axobject-query/-/axobject-query-3.2.1.tgz";
          };
          ident = "axobject-query";
          ltype = "file";
          version = "3.2.1";
        };
      };
      babel-plugin-macros = {
        "3.1.0" = {
          depInfo = {
            "@babel/runtime" = {
              descriptor = "^7.12.5";
              pin = "7.23.1";
              runtime = true;
            };
            cosmiconfig = {
              descriptor = "^7.0.0";
              pin = "7.0.1";
              runtime = true;
            };
            resolve = {
              descriptor = "^1.19.0";
              pin = "1.22.6";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-iQ2TOwutifOLnyoUkOPUwHtd4Wq79eGpyFUqJZ2GUNY=";
            type = "tarball";
            url = "https://registry.npmjs.org/babel-plugin-macros/-/babel-plugin-macros-3.1.0.tgz";
          };
          ident = "babel-plugin-macros";
          ltype = "file";
          version = "3.1.0";
        };
      };
      bail = {
        "2.0.2" = {
          fetchInfo = {
            narHash = "sha256-5KjcGU0aOVcyGwx27OVPbaEBOrqvs/8wrsGvyiuV+ZE=";
            type = "tarball";
            url = "https://registry.npmjs.org/bail/-/bail-2.0.2.tgz";
          };
          ident = "bail";
          ltype = "file";
          treeInfo = { };
          version = "2.0.2";
        };
      };
      balanced-match = {
        "1.0.2" = {
          fetchInfo = {
            narHash = "sha256-YH1+osaAiJvWUUR4VCe/Hh4eHhXS0gN3Lnr+Xd3cCzg=";
            type = "tarball";
            url = "https://registry.npmjs.org/balanced-match/-/balanced-match-1.0.2.tgz";
          };
          ident = "balanced-match";
          ltype = "file";
          treeInfo = { };
          version = "1.0.2";
        };
      };
      brace-expansion = {
        "1.1.11" = {
          depInfo = {
            balanced-match = {
              descriptor = "^1.0.0";
              pin = "1.0.2";
              runtime = true;
            };
            concat-map = {
              descriptor = "0.0.1";
              pin = "0.0.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-3iQ502QjW10IEFOh3qnkAIivIbQ1TO1pgQTi7p9eado=";
            type = "tarball";
            url = "https://registry.npmjs.org/brace-expansion/-/brace-expansion-1.1.11.tgz";
          };
          ident = "brace-expansion";
          ltype = "file";
          version = "1.1.11";
        };
      };
      braces = {
        "3.0.2" = {
          depInfo = {
            fill-range = {
              descriptor = "^7.0.1";
              pin = "7.0.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-x3Cs+dWp0z2CXH2OaHCHtF2aWMrrV5/kFWM4+JCkcZ4=";
            type = "tarball";
            url = "https://registry.npmjs.org/braces/-/braces-3.0.2.tgz";
          };
          ident = "braces";
          ltype = "file";
          version = "3.0.2";
        };
      };
      browserslist = {
        "4.22.2" = {
          binInfo = {
            binPairs = {
              browserslist = "cli.js";
            };
          };
          depInfo = {
            caniuse-lite = {
              descriptor = "^1.0.30001565";
              pin = "1.0.30001566";
              runtime = true;
            };
            electron-to-chromium = {
              descriptor = "^1.4.601";
              pin = "1.4.603";
              runtime = true;
            };
            node-releases = {
              descriptor = "^2.0.14";
              pin = "2.0.14";
              runtime = true;
            };
            update-browserslist-db = {
              descriptor = "^1.0.13";
              pin = "1.0.13";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-m9D/Md+rUoP8LhY+CHYvVabhx7YhW+NIyajnk9lPMrM=";
            type = "tarball";
            url = "https://registry.npmjs.org/browserslist/-/browserslist-4.22.2.tgz";
          };
          ident = "browserslist";
          ltype = "file";
          version = "4.22.2";
        };
      };
      buffer-from = {
        "1.1.2" = {
          fetchInfo = {
            narHash = "sha256-8dpJi5qu37MruotYJ6QBjTJbgWOO4eDu3gOoJ6Mi9H0=";
            type = "tarball";
            url = "https://registry.npmjs.org/buffer-from/-/buffer-from-1.1.2.tgz";
          };
          ident = "buffer-from";
          ltype = "file";
          treeInfo = { };
          version = "1.1.2";
        };
      };
      busboy = {
        "1.6.0" = {
          depInfo = {
            streamsearch = {
              descriptor = "^1.1.0";
              pin = "1.1.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-UaGI2Jzv6/ULQAuchHh60T4NNzt04S3Zeh6cenNGXlo=";
            type = "tarball";
            url = "https://registry.npmjs.org/busboy/-/busboy-1.6.0.tgz";
          };
          ident = "busboy";
          ltype = "file";
          version = "1.6.0";
        };
      };
      call-bind = {
        "1.0.2" = {
          depInfo = {
            function-bind = {
              descriptor = "^1.1.1";
              pin = "1.1.1";
              runtime = true;
            };
            get-intrinsic = {
              descriptor = "^1.0.2";
              pin = "1.2.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-CPVK05lbDE13hYj/VV8H6ZqkqCgqqP2XQL+amU5arbI=";
            type = "tarball";
            url = "https://registry.npmjs.org/call-bind/-/call-bind-1.0.2.tgz";
          };
          ident = "call-bind";
          ltype = "file";
          version = "1.0.2";
        };
      };
      callsites = {
        "3.1.0" = {
          fetchInfo = {
            narHash = "sha256-1p0bBJdAZstGAys+wy86rAwOMZr6w8gyM4+dFOe62Ao=";
            type = "tarball";
            url = "https://registry.npmjs.org/callsites/-/callsites-3.1.0.tgz";
          };
          ident = "callsites";
          ltype = "file";
          treeInfo = { };
          version = "3.1.0";
        };
      };
      caniuse-lite = {
        "1.0.30001566" = {
          fetchInfo = {
            narHash = "sha256-bDfkT255+HIToCugIDcT9Ht0uCUGI2PkYuMv7TrTnNc=";
            type = "tarball";
            url = "https://registry.npmjs.org/caniuse-lite/-/caniuse-lite-1.0.30001566.tgz";
          };
          ident = "caniuse-lite";
          ltype = "file";
          treeInfo = { };
          version = "1.0.30001566";
        };
      };
      ccount = {
        "2.0.1" = {
          fetchInfo = {
            narHash = "sha256-Oc2cfDUEXrPNWag23ih+2yA7mtS2NtFDZRMpFpjANFk=";
            type = "tarball";
            url = "https://registry.npmjs.org/ccount/-/ccount-2.0.1.tgz";
          };
          ident = "ccount";
          ltype = "file";
          treeInfo = { };
          version = "2.0.1";
        };
      };
      chalk = {
        "2.4.2" = {
          depInfo = {
            ansi-styles = {
              descriptor = "^3.2.1";
              pin = "3.2.1";
              runtime = true;
            };
            escape-string-regexp = {
              descriptor = "^1.0.5";
              pin = "1.0.5";
              runtime = true;
            };
            supports-color = {
              descriptor = "^5.3.0";
              pin = "5.5.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-epyiOfJKhuYWuMNymawywjS+lFfsQvbhON+b8du38TQ=";
            type = "tarball";
            url = "https://registry.npmjs.org/chalk/-/chalk-2.4.2.tgz";
          };
          ident = "chalk";
          ltype = "file";
          version = "2.4.2";
        };
        "4.1.2" = {
          depInfo = {
            ansi-styles = {
              descriptor = "^4.1.0";
              pin = "4.3.0";
              runtime = true;
            };
            supports-color = {
              descriptor = "^7.1.0";
              pin = "7.2.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-dxAbdhq8BxCb4ae3E1eYjt6zC/nsq3c18/ZAOIXKiT8=";
            type = "tarball";
            url = "https://registry.npmjs.org/chalk/-/chalk-4.1.2.tgz";
          };
          ident = "chalk";
          ltype = "file";
          version = "4.1.2";
        };
      };
      character-entities = {
        "2.0.2" = {
          fetchInfo = {
            narHash = "sha256-jK/EpyIGEf7fXiNp+OFMxvoAh76A9pel+NS4ZUXDNJY=";
            type = "tarball";
            url = "https://registry.npmjs.org/character-entities/-/character-entities-2.0.2.tgz";
          };
          ident = "character-entities";
          ltype = "file";
          treeInfo = { };
          version = "2.0.2";
        };
      };
      character-entities-html4 = {
        "2.1.0" = {
          fetchInfo = {
            narHash = "sha256-DhpXWE7m0xBHAIujCy3Bp1jjUqwks79lMJ767t8RPQ8=";
            type = "tarball";
            url = "https://registry.npmjs.org/character-entities-html4/-/character-entities-html4-2.1.0.tgz";
          };
          ident = "character-entities-html4";
          ltype = "file";
          treeInfo = { };
          version = "2.1.0";
        };
      };
      character-entities-legacy = {
        "3.0.0" = {
          fetchInfo = {
            narHash = "sha256-n/jJxn9GASGq0I+SqFB9Vlm0rwqa6l1GwThDX+1Rb64=";
            type = "tarball";
            url = "https://registry.npmjs.org/character-entities-legacy/-/character-entities-legacy-3.0.0.tgz";
          };
          ident = "character-entities-legacy";
          ltype = "file";
          treeInfo = { };
          version = "3.0.0";
        };
      };
      character-reference-invalid = {
        "2.0.1" = {
          fetchInfo = {
            narHash = "sha256-4oajzbVpCHoMhQziClxOx3WKgvw8460/8QYKpDKM+E0=";
            type = "tarball";
            url = "https://registry.npmjs.org/character-reference-invalid/-/character-reference-invalid-2.0.1.tgz";
          };
          ident = "character-reference-invalid";
          ltype = "file";
          treeInfo = { };
          version = "2.0.1";
        };
      };
      chrome-trace-event = {
        "1.0.3" = {
          fetchInfo = {
            narHash = "sha256-PmxLk7mgt1635onxVIWccdrdSpBOFGa7MsoMag5lt/c=";
            type = "tarball";
            url = "https://registry.npmjs.org/chrome-trace-event/-/chrome-trace-event-1.0.3.tgz";
          };
          ident = "chrome-trace-event";
          ltype = "file";
          treeInfo = { };
          version = "1.0.3";
        };
      };
      client-only = {
        "0.0.1" = {
          fetchInfo = {
            narHash = "sha256-3KQxAPiD7OwuAQLV0+nIKTdzdufYucw4OT1mcv2lhUA=";
            type = "tarball";
            url = "https://registry.npmjs.org/client-only/-/client-only-0.0.1.tgz";
          };
          ident = "client-only";
          ltype = "file";
          treeInfo = { };
          version = "0.0.1";
        };
      };
      clsx = {
        "1.2.1" = {
          fetchInfo = {
            narHash = "sha256-WEAV9N4OVLHG5OXzZxDVM67DaLVxmuau4NW7rFTI20A=";
            type = "tarball";
            url = "https://registry.npmjs.org/clsx/-/clsx-1.2.1.tgz";
          };
          ident = "clsx";
          ltype = "file";
          treeInfo = { };
          version = "1.2.1";
        };
        "2.0.0" = {
          fetchInfo = {
            narHash = "sha256-p5l3z48Wal/uauFo+vlLuGF1h0go8ImS6BrVOJnG6kM=";
            type = "tarball";
            url = "https://registry.npmjs.org/clsx/-/clsx-2.0.0.tgz";
          };
          ident = "clsx";
          ltype = "file";
          treeInfo = { };
          version = "2.0.0";
        };
      };
      collapse-white-space = {
        "2.1.0" = {
          fetchInfo = {
            narHash = "sha256-OpaGEMLzcLvh61gHrqNFToMynIZENO820Sdy990+n9g=";
            type = "tarball";
            url = "https://registry.npmjs.org/collapse-white-space/-/collapse-white-space-2.1.0.tgz";
          };
          ident = "collapse-white-space";
          ltype = "file";
          treeInfo = { };
          version = "2.1.0";
        };
      };
      color-convert = {
        "1.9.3" = {
          depInfo = {
            color-name = {
              descriptor = "1.1.3";
              pin = "1.1.3";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-o/p0tqrXMvGg2VduYwUNx05gEWI11GuHgyq9nrd6khM=";
            type = "tarball";
            url = "https://registry.npmjs.org/color-convert/-/color-convert-1.9.3.tgz";
          };
          ident = "color-convert";
          ltype = "file";
          version = "1.9.3";
        };
        "2.0.1" = {
          depInfo = {
            color-name = {
              descriptor = "~1.1.4";
              pin = "1.1.4";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-EU7d3q55UXpfbMmk+wu8nYaxXGBK3Pwu2pIe5TVZiwc=";
            type = "tarball";
            url = "https://registry.npmjs.org/color-convert/-/color-convert-2.0.1.tgz";
          };
          ident = "color-convert";
          ltype = "file";
          version = "2.0.1";
        };
      };
      color-name = {
        "1.1.3" = {
          fetchInfo = {
            narHash = "sha256-Z7+qlowBfxZNeitMCENEfKBRnaxqLWi4+ms5SIKafc0=";
            type = "tarball";
            url = "https://registry.npmjs.org/color-name/-/color-name-1.1.3.tgz";
          };
          ident = "color-name";
          ltype = "file";
          treeInfo = { };
          version = "1.1.3";
        };
        "1.1.4" = {
          fetchInfo = {
            narHash = "sha256-mAOvtcDAZ05q6KP5tRgaO5D4jeb+/AcbIE1Z2nBG1uk=";
            type = "tarball";
            url = "https://registry.npmjs.org/color-name/-/color-name-1.1.4.tgz";
          };
          ident = "color-name";
          ltype = "file";
          treeInfo = { };
          version = "1.1.4";
        };
      };
      comma-separated-tokens = {
        "2.0.3" = {
          fetchInfo = {
            narHash = "sha256-FEp1Fhre0gZUo/o525N6RFrrsdFButHHUAdmS4ZY4Wo=";
            type = "tarball";
            url = "https://registry.npmjs.org/comma-separated-tokens/-/comma-separated-tokens-2.0.3.tgz";
          };
          ident = "comma-separated-tokens";
          ltype = "file";
          treeInfo = { };
          version = "2.0.3";
        };
      };
      commander = {
        "2.20.3" = {
          fetchInfo = {
            narHash = "sha256-Lhil45v7SD12GmCv/klyoXGnkisKbobmN4XYw1g8l54=";
            type = "tarball";
            url = "https://registry.npmjs.org/commander/-/commander-2.20.3.tgz";
          };
          ident = "commander";
          ltype = "file";
          treeInfo = { };
          version = "2.20.3";
        };
      };
      concat-map = {
        "0.0.1" = {
          fetchInfo = {
            narHash = "sha256-ZY5/rMtzNK56p81EGaPcoIRr+J9j7yWh4szGxIOFYFA=";
            type = "tarball";
            url = "https://registry.npmjs.org/concat-map/-/concat-map-0.0.1.tgz";
          };
          ident = "concat-map";
          ltype = "file";
          treeInfo = { };
          version = "0.0.1";
        };
      };
      convert-source-map = {
        "1.9.0" = {
          fetchInfo = {
            narHash = "sha256-9zjFbAgTFN8PnaoIBuarc6354vYjJomgtng2vak3ERQ=";
            type = "tarball";
            url = "https://registry.npmjs.org/convert-source-map/-/convert-source-map-1.9.0.tgz";
          };
          ident = "convert-source-map";
          ltype = "file";
          treeInfo = { };
          version = "1.9.0";
        };
      };
      cosmiconfig = {
        "7.0.1" = {
          depInfo = {
            "@types/parse-json" = {
              descriptor = "^4.0.0";
              pin = "4.0.0";
              runtime = true;
            };
            import-fresh = {
              descriptor = "^3.2.1";
              pin = "3.3.0";
              runtime = true;
            };
            parse-json = {
              descriptor = "^5.0.0";
              pin = "5.2.0";
              runtime = true;
            };
            path-type = {
              descriptor = "^4.0.0";
              pin = "4.0.0";
              runtime = true;
            };
            yaml = {
              descriptor = "^1.10.0";
              pin = "1.10.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-dGJQtN3vsSsmxi7O8GN7IO27TjiN//ZpPEnPVhsCTUg=";
            type = "tarball";
            url = "https://registry.npmjs.org/cosmiconfig/-/cosmiconfig-7.0.1.tgz";
          };
          ident = "cosmiconfig";
          ltype = "file";
          version = "7.0.1";
        };
      };
      cross-spawn = {
        "7.0.3" = {
          depInfo = {
            path-key = {
              descriptor = "^3.1.0";
              pin = "3.1.1";
              runtime = true;
            };
            shebang-command = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            which = {
              descriptor = "^2.0.1";
              pin = "2.0.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-JZEEsKxB3BAGF+e9rlh4d9UUa8JEz4dSjfAvIXrerzY=";
            type = "tarball";
            url = "https://registry.npmjs.org/cross-spawn/-/cross-spawn-7.0.3.tgz";
          };
          ident = "cross-spawn";
          ltype = "file";
          version = "7.0.3";
        };
      };
      csstype = {
        "3.1.2" = {
          fetchInfo = {
            narHash = "sha256-gTHlTxB3UvjA/rIxygU25qSI5I59psA2Afiku7bneo4=";
            type = "tarball";
            url = "https://registry.npmjs.org/csstype/-/csstype-3.1.2.tgz";
          };
          ident = "csstype";
          ltype = "file";
          treeInfo = { };
          version = "3.1.2";
        };
      };
      damerau-levenshtein = {
        "1.0.8" = {
          fetchInfo = {
            narHash = "sha256-ztLc9UYtOBIyFKSJ7WnN2JwOWKNgfPO4AQC+mkEE3rY=";
            type = "tarball";
            url = "https://registry.npmjs.org/damerau-levenshtein/-/damerau-levenshtein-1.0.8.tgz";
          };
          ident = "damerau-levenshtein";
          ltype = "file";
          treeInfo = { };
          version = "1.0.8";
        };
      };
      debug = {
        "3.2.7" = {
          depInfo = {
            ms = {
              descriptor = "^2.1.1";
              pin = "2.1.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-I/6cOvNxwUL2s2jkzM902xCRra9lubfqNuobyY3+deI=";
            type = "tarball";
            url = "https://registry.npmjs.org/debug/-/debug-3.2.7.tgz";
          };
          ident = "debug";
          ltype = "file";
          version = "3.2.7";
        };
        "4.3.4" = {
          depInfo = {
            ms = {
              descriptor = "2.1.2";
              pin = "2.1.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-S6cB3bQG4QiKORndkECqPyzcgJwPgetsh/AcbjSrW3I=";
            type = "tarball";
            url = "https://registry.npmjs.org/debug/-/debug-4.3.4.tgz";
          };
          ident = "debug";
          ltype = "file";
          peerInfo = {
            supports-color = {
              descriptor = "*";
              optional = true;
            };
          };
          version = "4.3.4";
        };
      };
      decode-named-character-reference = {
        "1.0.2" = {
          depInfo = {
            character-entities = {
              descriptor = "^2.0.0";
              pin = "2.0.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-p7iDUqcfz+axnu9v3pYM0YWVeudS4ffys4X8LROb3/I=";
            type = "tarball";
            url = "https://registry.npmjs.org/decode-named-character-reference/-/decode-named-character-reference-1.0.2.tgz";
          };
          ident = "decode-named-character-reference";
          ltype = "file";
          version = "1.0.2";
        };
      };
      deep-is = {
        "0.1.4" = {
          fetchInfo = {
            narHash = "sha256-lCUSf2gkAHrLYjZ2TnOMaZM+uviLCB/UwkWf/dAZ5BE=";
            type = "tarball";
            url = "https://registry.npmjs.org/deep-is/-/deep-is-0.1.4.tgz";
          };
          ident = "deep-is";
          ltype = "file";
          treeInfo = { };
          version = "0.1.4";
        };
      };
      define-data-property = {
        "1.1.0" = {
          depInfo = {
            get-intrinsic = {
              descriptor = "^1.2.1";
              pin = "1.2.1";
              runtime = true;
            };
            gopd = {
              descriptor = "^1.0.1";
              pin = "1.0.1";
              runtime = true;
            };
            has-property-descriptors = {
              descriptor = "^1.0.0";
              pin = "1.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-7WakClIeZlz8KA0k7TgnDz5L/Ku7JffIRylF+bFPFxQ=";
            type = "tarball";
            url = "https://registry.npmjs.org/define-data-property/-/define-data-property-1.1.0.tgz";
          };
          ident = "define-data-property";
          ltype = "file";
          version = "1.1.0";
        };
      };
      define-properties = {
        "1.2.1" = {
          depInfo = {
            define-data-property = {
              descriptor = "^1.0.1";
              pin = "1.1.0";
              runtime = true;
            };
            has-property-descriptors = {
              descriptor = "^1.0.0";
              pin = "1.0.0";
              runtime = true;
            };
            object-keys = {
              descriptor = "^1.1.1";
              pin = "1.1.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-/h9DtDPtMtpjeRGz7lmpBXiptU5rIIYVG5tqMtKRhHE=";
            type = "tarball";
            url = "https://registry.npmjs.org/define-properties/-/define-properties-1.2.1.tgz";
          };
          ident = "define-properties";
          ltype = "file";
          version = "1.2.1";
        };
      };
      dequal = {
        "2.0.3" = {
          fetchInfo = {
            narHash = "sha256-GF9YabxZ1aw5srUlFpZEbKyc+cuNz1vJGKtR+vSE7Yc=";
            type = "tarball";
            url = "https://registry.npmjs.org/dequal/-/dequal-2.0.3.tgz";
          };
          ident = "dequal";
          ltype = "file";
          treeInfo = { };
          version = "2.0.3";
        };
      };
      devlop = {
        "1.1.0" = {
          depInfo = {
            dequal = {
              descriptor = "^2.0.0";
              pin = "2.0.3";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-LaC5dmQ+akLYj4aAy8G3l+up4YxGhQgoULoVw++6x8A=";
            type = "tarball";
            url = "https://registry.npmjs.org/devlop/-/devlop-1.1.0.tgz";
          };
          ident = "devlop";
          ltype = "file";
          version = "1.1.0";
        };
      };
      diff = {
        "5.1.0" = {
          fetchInfo = {
            narHash = "sha256-yNDIwajXaEerClmryFlqMOWvNJjdON2mIORdvEuu2iA=";
            type = "tarball";
            url = "https://registry.npmjs.org/diff/-/diff-5.1.0.tgz";
          };
          ident = "diff";
          ltype = "file";
          treeInfo = { };
          version = "5.1.0";
        };
      };
      dir-glob = {
        "3.0.1" = {
          depInfo = {
            path-type = {
              descriptor = "^4.0.0";
              pin = "4.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-VBtlDAN9t0rKKmCQqhsZEe7+FBMkKgQ+qSMH+0UgQuk=";
            type = "tarball";
            url = "https://registry.npmjs.org/dir-glob/-/dir-glob-3.0.1.tgz";
          };
          ident = "dir-glob";
          ltype = "file";
          version = "3.0.1";
        };
      };
      doctrine = {
        "2.1.0" = {
          depInfo = {
            esutils = {
              descriptor = "^2.0.2";
              pin = "2.0.3";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-o5ERIuLV9oK9ID5yxwoD1cP2RddXaAXkSdS/LwRT2BA=";
            type = "tarball";
            url = "https://registry.npmjs.org/doctrine/-/doctrine-2.1.0.tgz";
          };
          ident = "doctrine";
          ltype = "file";
          version = "2.1.0";
        };
        "3.0.0" = {
          depInfo = {
            esutils = {
              descriptor = "^2.0.2";
              pin = "2.0.3";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-o01Hdcu2uhZR8r2cI2b7geXXkLjjXze+96vyIoMiNzU=";
            type = "tarball";
            url = "https://registry.npmjs.org/doctrine/-/doctrine-3.0.0.tgz";
          };
          ident = "doctrine";
          ltype = "file";
          version = "3.0.0";
        };
      };
      dom-helpers = {
        "5.2.1" = {
          depInfo = {
            "@babel/runtime" = {
              descriptor = "^7.8.7";
              pin = "7.23.1";
              runtime = true;
            };
            csstype = {
              descriptor = "^3.0.2";
              pin = "3.1.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-DkzZGz1U902BcMC2nssAs+hULM4tJ17H+3dVUzwMopg=";
            type = "tarball";
            url = "https://registry.npmjs.org/dom-helpers/-/dom-helpers-5.2.1.tgz";
          };
          ident = "dom-helpers";
          ltype = "file";
          version = "5.2.1";
        };
      };
      electron-to-chromium = {
        "1.4.603" = {
          fetchInfo = {
            narHash = "sha256-oHBTzAndW/5KD1FbxiwfSze8iW7iChTkodbhTI9GF8k=";
            type = "tarball";
            url = "https://registry.npmjs.org/electron-to-chromium/-/electron-to-chromium-1.4.603.tgz";
          };
          ident = "electron-to-chromium";
          ltype = "file";
          treeInfo = { };
          version = "1.4.603";
        };
      };
      emoji-regex = {
        "9.2.2" = {
          fetchInfo = {
            narHash = "sha256-xe6KVH2H1EXdHa5Y6sUeVZkWIZ4UESKkgS8f+/ZRNB4=";
            type = "tarball";
            url = "https://registry.npmjs.org/emoji-regex/-/emoji-regex-9.2.2.tgz";
          };
          ident = "emoji-regex";
          ltype = "file";
          treeInfo = { };
          version = "9.2.2";
        };
      };
      enhanced-resolve = {
        "5.15.0" = {
          depInfo = {
            graceful-fs = {
              descriptor = "^4.2.4";
              pin = "4.2.11";
              runtime = true;
            };
            tapable = {
              descriptor = "^2.2.0";
              pin = "2.2.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-tzy2nj3A/cTD+7OyLXCa5jI9Q17uPski3MiPA1adNJA=";
            type = "tarball";
            url = "https://registry.npmjs.org/enhanced-resolve/-/enhanced-resolve-5.15.0.tgz";
          };
          ident = "enhanced-resolve";
          ltype = "file";
          version = "5.15.0";
        };
      };
      entities = {
        "4.5.0" = {
          fetchInfo = {
            narHash = "sha256-FRBvf+mPKHQu5H1bjJ1+DdlCx54TUNx89/GH7z8F5Ik=";
            type = "tarball";
            url = "https://registry.npmjs.org/entities/-/entities-4.5.0.tgz";
          };
          ident = "entities";
          ltype = "file";
          treeInfo = { };
          version = "4.5.0";
        };
      };
      error-ex = {
        "1.3.2" = {
          depInfo = {
            is-arrayish = {
              descriptor = "^0.2.1";
              pin = "0.2.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-daqjq1BAM46eXv0Nt+56+SGe+PTSy7sK4X6E66WwGSw=";
            type = "tarball";
            url = "https://registry.npmjs.org/error-ex/-/error-ex-1.3.2.tgz";
          };
          ident = "error-ex";
          ltype = "file";
          version = "1.3.2";
        };
      };
      es-abstract = {
        "1.22.2" = {
          depInfo = {
            array-buffer-byte-length = {
              descriptor = "^1.0.0";
              pin = "1.0.0";
              runtime = true;
            };
            "arraybuffer.prototype.slice" = {
              descriptor = "^1.0.2";
              pin = "1.0.2";
              runtime = true;
            };
            available-typed-arrays = {
              descriptor = "^1.0.5";
              pin = "1.0.5";
              runtime = true;
            };
            call-bind = {
              descriptor = "^1.0.2";
              pin = "1.0.2";
              runtime = true;
            };
            es-set-tostringtag = {
              descriptor = "^2.0.1";
              pin = "2.0.1";
              runtime = true;
            };
            es-to-primitive = {
              descriptor = "^1.2.1";
              pin = "1.2.1";
              runtime = true;
            };
            "function.prototype.name" = {
              descriptor = "^1.1.6";
              pin = "1.1.6";
              runtime = true;
            };
            get-intrinsic = {
              descriptor = "^1.2.1";
              pin = "1.2.1";
              runtime = true;
            };
            get-symbol-description = {
              descriptor = "^1.0.0";
              pin = "1.0.0";
              runtime = true;
            };
            globalthis = {
              descriptor = "^1.0.3";
              pin = "1.0.3";
              runtime = true;
            };
            gopd = {
              descriptor = "^1.0.1";
              pin = "1.0.1";
              runtime = true;
            };
            has = {
              descriptor = "^1.0.3";
              pin = "1.0.3";
              runtime = true;
            };
            has-property-descriptors = {
              descriptor = "^1.0.0";
              pin = "1.0.0";
              runtime = true;
            };
            has-proto = {
              descriptor = "^1.0.1";
              pin = "1.0.1";
              runtime = true;
            };
            has-symbols = {
              descriptor = "^1.0.3";
              pin = "1.0.3";
              runtime = true;
            };
            internal-slot = {
              descriptor = "^1.0.5";
              pin = "1.0.5";
              runtime = true;
            };
            is-array-buffer = {
              descriptor = "^3.0.2";
              pin = "3.0.2";
              runtime = true;
            };
            is-callable = {
              descriptor = "^1.2.7";
              pin = "1.2.7";
              runtime = true;
            };
            is-negative-zero = {
              descriptor = "^2.0.2";
              pin = "2.0.2";
              runtime = true;
            };
            is-regex = {
              descriptor = "^1.1.4";
              pin = "1.1.4";
              runtime = true;
            };
            is-shared-array-buffer = {
              descriptor = "^1.0.2";
              pin = "1.0.2";
              runtime = true;
            };
            is-string = {
              descriptor = "^1.0.7";
              pin = "1.0.7";
              runtime = true;
            };
            is-typed-array = {
              descriptor = "^1.1.12";
              pin = "1.1.12";
              runtime = true;
            };
            is-weakref = {
              descriptor = "^1.0.2";
              pin = "1.0.2";
              runtime = true;
            };
            object-inspect = {
              descriptor = "^1.12.3";
              pin = "1.12.3";
              runtime = true;
            };
            object-keys = {
              descriptor = "^1.1.1";
              pin = "1.1.1";
              runtime = true;
            };
            "object.assign" = {
              descriptor = "^4.1.4";
              pin = "4.1.4";
              runtime = true;
            };
            "regexp.prototype.flags" = {
              descriptor = "^1.5.1";
              pin = "1.5.1";
              runtime = true;
            };
            safe-array-concat = {
              descriptor = "^1.0.1";
              pin = "1.0.1";
              runtime = true;
            };
            safe-regex-test = {
              descriptor = "^1.0.0";
              pin = "1.0.0";
              runtime = true;
            };
            "string.prototype.trim" = {
              descriptor = "^1.2.8";
              pin = "1.2.8";
              runtime = true;
            };
            "string.prototype.trimend" = {
              descriptor = "^1.0.7";
              pin = "1.0.7";
              runtime = true;
            };
            "string.prototype.trimstart" = {
              descriptor = "^1.0.7";
              pin = "1.0.7";
              runtime = true;
            };
            typed-array-buffer = {
              descriptor = "^1.0.0";
              pin = "1.0.0";
              runtime = true;
            };
            typed-array-byte-length = {
              descriptor = "^1.0.0";
              pin = "1.0.0";
              runtime = true;
            };
            typed-array-byte-offset = {
              descriptor = "^1.0.0";
              pin = "1.0.0";
              runtime = true;
            };
            typed-array-length = {
              descriptor = "^1.0.4";
              pin = "1.0.4";
              runtime = true;
            };
            unbox-primitive = {
              descriptor = "^1.0.2";
              pin = "1.0.2";
              runtime = true;
            };
            which-typed-array = {
              descriptor = "^1.1.11";
              pin = "1.1.11";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-1oUG4jpXb/fPjZgYZwc96FeP3eUhbf1R+uwfZAOuJCk=";
            type = "tarball";
            url = "https://registry.npmjs.org/es-abstract/-/es-abstract-1.22.2.tgz";
          };
          ident = "es-abstract";
          ltype = "file";
          version = "1.22.2";
        };
      };
      es-iterator-helpers = {
        "1.0.15" = {
          depInfo = {
            "asynciterator.prototype" = {
              descriptor = "^1.0.0";
              pin = "1.0.0";
              runtime = true;
            };
            call-bind = {
              descriptor = "^1.0.2";
              pin = "1.0.2";
              runtime = true;
            };
            define-properties = {
              descriptor = "^1.2.1";
              pin = "1.2.1";
              runtime = true;
            };
            es-abstract = {
              descriptor = "^1.22.1";
              pin = "1.22.2";
              runtime = true;
            };
            es-set-tostringtag = {
              descriptor = "^2.0.1";
              pin = "2.0.1";
              runtime = true;
            };
            function-bind = {
              descriptor = "^1.1.1";
              pin = "1.1.1";
              runtime = true;
            };
            get-intrinsic = {
              descriptor = "^1.2.1";
              pin = "1.2.1";
              runtime = true;
            };
            globalthis = {
              descriptor = "^1.0.3";
              pin = "1.0.3";
              runtime = true;
            };
            has-property-descriptors = {
              descriptor = "^1.0.0";
              pin = "1.0.0";
              runtime = true;
            };
            has-proto = {
              descriptor = "^1.0.1";
              pin = "1.0.1";
              runtime = true;
            };
            has-symbols = {
              descriptor = "^1.0.3";
              pin = "1.0.3";
              runtime = true;
            };
            internal-slot = {
              descriptor = "^1.0.5";
              pin = "1.0.5";
              runtime = true;
            };
            "iterator.prototype" = {
              descriptor = "^1.1.2";
              pin = "1.1.2";
              runtime = true;
            };
            safe-array-concat = {
              descriptor = "^1.0.1";
              pin = "1.0.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-dTcRk4yIfwTn2Fkyuhre4eKvby9b6g3X1/jPpE9KfVE=";
            type = "tarball";
            url = "https://registry.npmjs.org/es-iterator-helpers/-/es-iterator-helpers-1.0.15.tgz";
          };
          ident = "es-iterator-helpers";
          ltype = "file";
          version = "1.0.15";
        };
      };
      es-module-lexer = {
        "1.4.1" = {
          fetchInfo = {
            narHash = "sha256-QsLxJN9LfNQlt7SnzBP8nJdjlzd1ruVYfhfyHoXcUSs=";
            type = "tarball";
            url = "https://registry.npmjs.org/es-module-lexer/-/es-module-lexer-1.4.1.tgz";
          };
          ident = "es-module-lexer";
          ltype = "file";
          treeInfo = { };
          version = "1.4.1";
        };
      };
      es-set-tostringtag = {
        "2.0.1" = {
          depInfo = {
            get-intrinsic = {
              descriptor = "^1.1.3";
              pin = "1.2.1";
              runtime = true;
            };
            has = {
              descriptor = "^1.0.3";
              pin = "1.0.3";
              runtime = true;
            };
            has-tostringtag = {
              descriptor = "^1.0.0";
              pin = "1.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-oHVOAUcBNvm2jp6ZOAqrqqv8FIyjU3akaUjhjiuAVbg=";
            type = "tarball";
            url = "https://registry.npmjs.org/es-set-tostringtag/-/es-set-tostringtag-2.0.1.tgz";
          };
          ident = "es-set-tostringtag";
          ltype = "file";
          version = "2.0.1";
        };
      };
      es-shim-unscopables = {
        "1.0.0" = {
          depInfo = {
            has = {
              descriptor = "^1.0.3";
              pin = "1.0.3";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-p1PtxubOfdj79colMq6VF+9oAdvtCb4eGb9X7tuymn8=";
            type = "tarball";
            url = "https://registry.npmjs.org/es-shim-unscopables/-/es-shim-unscopables-1.0.0.tgz";
          };
          ident = "es-shim-unscopables";
          ltype = "file";
          version = "1.0.0";
        };
      };
      es-to-primitive = {
        "1.2.1" = {
          depInfo = {
            is-callable = {
              descriptor = "^1.1.4";
              pin = "1.2.7";
              runtime = true;
            };
            is-date-object = {
              descriptor = "^1.0.1";
              pin = "1.0.5";
              runtime = true;
            };
            is-symbol = {
              descriptor = "^1.0.2";
              pin = "1.0.4";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-J2bNBFeEP8hzunktaqsjfxzXlnzq9qNVtOBWm7bAXMk=";
            type = "tarball";
            url = "https://registry.npmjs.org/es-to-primitive/-/es-to-primitive-1.2.1.tgz";
          };
          ident = "es-to-primitive";
          ltype = "file";
          version = "1.2.1";
        };
      };
      escalade = {
        "3.1.1" = {
          fetchInfo = {
            narHash = "sha256-5BSRjy0hMk0+ydgMP5t57Y4ea7VnLGGH3YIkNT9a11E=";
            type = "tarball";
            url = "https://registry.npmjs.org/escalade/-/escalade-3.1.1.tgz";
          };
          ident = "escalade";
          ltype = "file";
          treeInfo = { };
          version = "3.1.1";
        };
      };
      escape-string-regexp = {
        "1.0.5" = {
          fetchInfo = {
            narHash = "sha256-jI2WTcziWydQXDepnqeq9ZLmmJeODhVO2w1qLvZc90Q=";
            type = "tarball";
            url = "https://registry.npmjs.org/escape-string-regexp/-/escape-string-regexp-1.0.5.tgz";
          };
          ident = "escape-string-regexp";
          ltype = "file";
          treeInfo = { };
          version = "1.0.5";
        };
        "4.0.0" = {
          fetchInfo = {
            narHash = "sha256-d7WCjjMj36VTWLhrU8YwNOQ0ed2OBaAQBxvuLKvsONc=";
            type = "tarball";
            url = "https://registry.npmjs.org/escape-string-regexp/-/escape-string-regexp-4.0.0.tgz";
          };
          ident = "escape-string-regexp";
          ltype = "file";
          treeInfo = { };
          version = "4.0.0";
        };
        "5.0.0" = {
          fetchInfo = {
            narHash = "sha256-xzzlpQuOkm2zURrzzeXxR/GYWEPS5veyXzS6sOzK3gw=";
            type = "tarball";
            url = "https://registry.npmjs.org/escape-string-regexp/-/escape-string-regexp-5.0.0.tgz";
          };
          ident = "escape-string-regexp";
          ltype = "file";
          treeInfo = { };
          version = "5.0.0";
        };
      };
      eslint = {
        "8.50.0" = {
          binInfo = {
            binPairs = {
              eslint = "bin/eslint.js";
            };
          };
          depInfo = {
            "@eslint-community/eslint-utils" = {
              descriptor = "^4.2.0";
              pin = "4.4.0";
              runtime = true;
            };
            "@eslint-community/regexpp" = {
              descriptor = "^4.6.1";
              pin = "4.9.0";
              runtime = true;
            };
            "@eslint/eslintrc" = {
              descriptor = "^2.1.2";
              pin = "2.1.2";
              runtime = true;
            };
            "@eslint/js" = {
              descriptor = "8.50.0";
              pin = "8.50.0";
              runtime = true;
            };
            "@humanwhocodes/config-array" = {
              descriptor = "^0.11.11";
              pin = "0.11.11";
              runtime = true;
            };
            "@humanwhocodes/module-importer" = {
              descriptor = "^1.0.1";
              pin = "1.0.1";
              runtime = true;
            };
            "@nodelib/fs.walk" = {
              descriptor = "^1.2.8";
              pin = "1.2.8";
              runtime = true;
            };
            ajv = {
              descriptor = "^6.12.4";
              pin = "6.12.6";
              runtime = true;
            };
            chalk = {
              descriptor = "^4.0.0";
              pin = "4.1.2";
              runtime = true;
            };
            cross-spawn = {
              descriptor = "^7.0.2";
              pin = "7.0.3";
              runtime = true;
            };
            debug = {
              descriptor = "^4.3.2";
              pin = "4.3.4";
              runtime = true;
            };
            doctrine = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
            escape-string-regexp = {
              descriptor = "^4.0.0";
              pin = "4.0.0";
              runtime = true;
            };
            eslint-scope = {
              descriptor = "^7.2.2";
              pin = "7.2.2";
              runtime = true;
            };
            eslint-visitor-keys = {
              descriptor = "^3.4.3";
              pin = "3.4.3";
              runtime = true;
            };
            espree = {
              descriptor = "^9.6.1";
              pin = "9.6.1";
              runtime = true;
            };
            esquery = {
              descriptor = "^1.4.2";
              pin = "1.5.0";
              runtime = true;
            };
            esutils = {
              descriptor = "^2.0.2";
              pin = "2.0.3";
              runtime = true;
            };
            fast-deep-equal = {
              descriptor = "^3.1.3";
              pin = "3.1.3";
              runtime = true;
            };
            file-entry-cache = {
              descriptor = "^6.0.1";
              pin = "6.0.1";
              runtime = true;
            };
            find-up = {
              descriptor = "^5.0.0";
              pin = "5.0.0";
              runtime = true;
            };
            glob-parent = {
              descriptor = "^6.0.2";
              pin = "6.0.2";
              runtime = true;
            };
            globals = {
              descriptor = "^13.19.0";
              pin = "13.22.0";
              runtime = true;
            };
            graphemer = {
              descriptor = "^1.4.0";
              pin = "1.4.0";
              runtime = true;
            };
            ignore = {
              descriptor = "^5.2.0";
              pin = "5.2.4";
              runtime = true;
            };
            imurmurhash = {
              descriptor = "^0.1.4";
              pin = "0.1.4";
              runtime = true;
            };
            is-glob = {
              descriptor = "^4.0.0";
              pin = "4.0.3";
              runtime = true;
            };
            is-path-inside = {
              descriptor = "^3.0.3";
              pin = "3.0.3";
              runtime = true;
            };
            js-yaml = {
              descriptor = "^4.1.0";
              pin = "4.1.0";
              runtime = true;
            };
            json-stable-stringify-without-jsonify = {
              descriptor = "^1.0.1";
              pin = "1.0.1";
              runtime = true;
            };
            levn = {
              descriptor = "^0.4.1";
              pin = "0.4.1";
              runtime = true;
            };
            "lodash.merge" = {
              descriptor = "^4.6.2";
              pin = "4.6.2";
              runtime = true;
            };
            minimatch = {
              descriptor = "^3.1.2";
              pin = "3.1.2";
              runtime = true;
            };
            natural-compare = {
              descriptor = "^1.4.0";
              pin = "1.4.0";
              runtime = true;
            };
            optionator = {
              descriptor = "^0.9.3";
              pin = "0.9.3";
              runtime = true;
            };
            strip-ansi = {
              descriptor = "^6.0.1";
              pin = "6.0.1";
              runtime = true;
            };
            text-table = {
              descriptor = "^0.2.0";
              pin = "0.2.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-I6MO3HGlLYR+TuiMiQluFlrIY6M26OinyGyBXQQ9UiE=";
            type = "tarball";
            url = "https://registry.npmjs.org/eslint/-/eslint-8.50.0.tgz";
          };
          ident = "eslint";
          ltype = "file";
          version = "8.50.0";
        };
      };
      eslint-config-next = {
        "14.0.3" = {
          depInfo = {
            "@next/eslint-plugin-next" = {
              descriptor = "14.0.3";
              pin = "14.0.3";
              runtime = true;
            };
            "@rushstack/eslint-patch" = {
              descriptor = "^1.3.3";
              pin = "1.5.1";
              runtime = true;
            };
            "@typescript-eslint/parser" = {
              descriptor = "^5.4.2 || ^6.0.0";
              pin = "6.7.3";
              runtime = true;
            };
            eslint-import-resolver-node = {
              descriptor = "^0.3.6";
              pin = "0.3.9";
              runtime = true;
            };
            eslint-import-resolver-typescript = {
              descriptor = "^3.5.2";
              pin = "3.6.1";
              runtime = true;
            };
            eslint-plugin-import = {
              descriptor = "^2.28.1";
              pin = "2.28.1";
              runtime = true;
            };
            eslint-plugin-jsx-a11y = {
              descriptor = "^6.7.1";
              pin = "6.7.1";
              runtime = true;
            };
            eslint-plugin-react = {
              descriptor = "^7.33.2";
              pin = "7.33.2";
              runtime = true;
            };
            eslint-plugin-react-hooks = {
              descriptor = "^4.5.0 || 5.0.0-canary-7118f5dd7-20230705";
              pin = "4.6.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-7KPSjvD1ge1LBLC8JoTePiM9FO0O3RaCxLyy1bUJ0uY=";
            type = "tarball";
            url = "https://registry.npmjs.org/eslint-config-next/-/eslint-config-next-14.0.3.tgz";
          };
          ident = "eslint-config-next";
          ltype = "file";
          peerInfo = {
            eslint = {
              descriptor = "^7.23.0 || ^8.0.0";
            };
            typescript = {
              descriptor = ">=3.3.1";
              optional = true;
            };
          };
          version = "14.0.3";
        };
      };
      eslint-import-resolver-node = {
        "0.3.9" = {
          depInfo = {
            debug = {
              descriptor = "^3.2.7";
              pin = "3.2.7";
              runtime = true;
            };
            is-core-module = {
              descriptor = "^2.13.0";
              pin = "2.13.0";
              runtime = true;
            };
            resolve = {
              descriptor = "^1.22.4";
              pin = "1.22.6";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-ooMgMmq3zJ+rHArFE+eoC7w34g0YPO/RsEkPdGlSwiY=";
            type = "tarball";
            url = "https://registry.npmjs.org/eslint-import-resolver-node/-/eslint-import-resolver-node-0.3.9.tgz";
          };
          ident = "eslint-import-resolver-node";
          ltype = "file";
          version = "0.3.9";
        };
      };
      eslint-import-resolver-typescript = {
        "3.6.1" = {
          depInfo = {
            debug = {
              descriptor = "^4.3.4";
              pin = "4.3.4";
              runtime = true;
            };
            enhanced-resolve = {
              descriptor = "^5.12.0";
              pin = "5.15.0";
              runtime = true;
            };
            eslint-module-utils = {
              descriptor = "^2.7.4";
              pin = "2.8.0";
              runtime = true;
            };
            fast-glob = {
              descriptor = "^3.3.1";
              pin = "3.3.1";
              runtime = true;
            };
            get-tsconfig = {
              descriptor = "^4.5.0";
              pin = "4.7.2";
              runtime = true;
            };
            is-core-module = {
              descriptor = "^2.11.0";
              pin = "2.13.0";
              runtime = true;
            };
            is-glob = {
              descriptor = "^4.0.3";
              pin = "4.0.3";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-Q8Jei1m1bxYoXXQTz/I8GIYU+Jttj6can+0QPH3fRCY=";
            type = "tarball";
            url = "https://registry.npmjs.org/eslint-import-resolver-typescript/-/eslint-import-resolver-typescript-3.6.1.tgz";
          };
          ident = "eslint-import-resolver-typescript";
          ltype = "file";
          peerInfo = {
            eslint = {
              descriptor = "*";
            };
            eslint-plugin-import = {
              descriptor = "*";
            };
          };
          version = "3.6.1";
        };
      };
      eslint-module-utils = {
        "2.8.0" = {
          depInfo = {
            debug = {
              descriptor = "^3.2.7";
              pin = "3.2.7";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-gALdH2ZFeHchXffpyUaS47byHnmq8/+RnuTuJjL6fVU=";
            type = "tarball";
            url = "https://registry.npmjs.org/eslint-module-utils/-/eslint-module-utils-2.8.0.tgz";
          };
          ident = "eslint-module-utils";
          ltype = "file";
          peerInfo = {
            eslint = {
              descriptor = "*";
              optional = true;
            };
          };
          version = "2.8.0";
        };
      };
      eslint-plugin-import = {
        "2.28.1" = {
          depInfo = {
            array-includes = {
              descriptor = "^3.1.6";
              pin = "3.1.6";
              runtime = true;
            };
            "array.prototype.findlastindex" = {
              descriptor = "^1.2.2";
              pin = "1.2.3";
              runtime = true;
            };
            "array.prototype.flat" = {
              descriptor = "^1.3.1";
              pin = "1.3.1";
              runtime = true;
            };
            "array.prototype.flatmap" = {
              descriptor = "^1.3.1";
              pin = "1.3.1";
              runtime = true;
            };
            debug = {
              descriptor = "^3.2.7";
              pin = "3.2.7";
              runtime = true;
            };
            doctrine = {
              descriptor = "^2.1.0";
              pin = "2.1.0";
              runtime = true;
            };
            eslint-import-resolver-node = {
              descriptor = "^0.3.7";
              pin = "0.3.9";
              runtime = true;
            };
            eslint-module-utils = {
              descriptor = "^2.8.0";
              pin = "2.8.0";
              runtime = true;
            };
            has = {
              descriptor = "^1.0.3";
              pin = "1.0.3";
              runtime = true;
            };
            is-core-module = {
              descriptor = "^2.13.0";
              pin = "2.13.0";
              runtime = true;
            };
            is-glob = {
              descriptor = "^4.0.3";
              pin = "4.0.3";
              runtime = true;
            };
            minimatch = {
              descriptor = "^3.1.2";
              pin = "3.1.2";
              runtime = true;
            };
            "object.fromentries" = {
              descriptor = "^2.0.6";
              pin = "2.0.6";
              runtime = true;
            };
            "object.groupby" = {
              descriptor = "^1.0.0";
              pin = "1.0.1";
              runtime = true;
            };
            "object.values" = {
              descriptor = "^1.1.6";
              pin = "1.1.6";
              runtime = true;
            };
            semver = {
              descriptor = "^6.3.1";
              pin = "6.3.1";
              runtime = true;
            };
            tsconfig-paths = {
              descriptor = "^3.14.2";
              pin = "3.14.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-8vIUFQPPnFM5du7k4UYIdHZURqv7mce2V3+VTafLilk=";
            type = "tarball";
            url = "https://registry.npmjs.org/eslint-plugin-import/-/eslint-plugin-import-2.28.1.tgz";
          };
          ident = "eslint-plugin-import";
          ltype = "file";
          peerInfo = {
            eslint = {
              descriptor = "^2 || ^3 || ^4 || ^5 || ^6 || ^7.2.0 || ^8";
            };
          };
          version = "2.28.1";
        };
      };
      eslint-plugin-jsx-a11y = {
        "6.7.1" = {
          depInfo = {
            "@babel/runtime" = {
              descriptor = "^7.20.7";
              pin = "7.23.1";
              runtime = true;
            };
            aria-query = {
              descriptor = "^5.1.3";
              pin = "5.3.0";
              runtime = true;
            };
            array-includes = {
              descriptor = "^3.1.6";
              pin = "3.1.6";
              runtime = true;
            };
            "array.prototype.flatmap" = {
              descriptor = "^1.3.1";
              pin = "1.3.1";
              runtime = true;
            };
            ast-types-flow = {
              descriptor = "^0.0.7";
              pin = "0.0.7";
              runtime = true;
            };
            axe-core = {
              descriptor = "^4.6.2";
              pin = "4.8.2";
              runtime = true;
            };
            axobject-query = {
              descriptor = "^3.1.1";
              pin = "3.2.1";
              runtime = true;
            };
            damerau-levenshtein = {
              descriptor = "^1.0.8";
              pin = "1.0.8";
              runtime = true;
            };
            emoji-regex = {
              descriptor = "^9.2.2";
              pin = "9.2.2";
              runtime = true;
            };
            has = {
              descriptor = "^1.0.3";
              pin = "1.0.3";
              runtime = true;
            };
            jsx-ast-utils = {
              descriptor = "^3.3.3";
              pin = "3.3.3";
              runtime = true;
            };
            language-tags = {
              descriptor = "=1.0.5";
              pin = "1.0.5";
              runtime = true;
            };
            minimatch = {
              descriptor = "^3.1.2";
              pin = "3.1.2";
              runtime = true;
            };
            "object.entries" = {
              descriptor = "^1.1.6";
              pin = "1.1.6";
              runtime = true;
            };
            "object.fromentries" = {
              descriptor = "^2.0.6";
              pin = "2.0.6";
              runtime = true;
            };
            semver = {
              descriptor = "^6.3.0";
              pin = "6.3.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-Q9S6Zx3k3uHus3GXEUSfQM9oetRrNHIwUCMi6tU9hRA=";
            type = "tarball";
            url = "https://registry.npmjs.org/eslint-plugin-jsx-a11y/-/eslint-plugin-jsx-a11y-6.7.1.tgz";
          };
          ident = "eslint-plugin-jsx-a11y";
          ltype = "file";
          peerInfo = {
            eslint = {
              descriptor = "^3 || ^4 || ^5 || ^6 || ^7 || ^8";
            };
          };
          version = "6.7.1";
        };
      };
      eslint-plugin-react = {
        "7.33.2" = {
          depInfo = {
            array-includes = {
              descriptor = "^3.1.6";
              pin = "3.1.6";
              runtime = true;
            };
            "array.prototype.flatmap" = {
              descriptor = "^1.3.1";
              pin = "1.3.1";
              runtime = true;
            };
            "array.prototype.tosorted" = {
              descriptor = "^1.1.1";
              pin = "1.1.2";
              runtime = true;
            };
            doctrine = {
              descriptor = "^2.1.0";
              pin = "2.1.0";
              runtime = true;
            };
            es-iterator-helpers = {
              descriptor = "^1.0.12";
              pin = "1.0.15";
              runtime = true;
            };
            estraverse = {
              descriptor = "^5.3.0";
              pin = "5.3.0";
              runtime = true;
            };
            jsx-ast-utils = {
              descriptor = "^2.4.1 || ^3.0.0";
              pin = "3.3.3";
              runtime = true;
            };
            minimatch = {
              descriptor = "^3.1.2";
              pin = "3.1.2";
              runtime = true;
            };
            "object.entries" = {
              descriptor = "^1.1.6";
              pin = "1.1.6";
              runtime = true;
            };
            "object.fromentries" = {
              descriptor = "^2.0.6";
              pin = "2.0.6";
              runtime = true;
            };
            "object.hasown" = {
              descriptor = "^1.1.2";
              pin = "1.1.2";
              runtime = true;
            };
            "object.values" = {
              descriptor = "^1.1.6";
              pin = "1.1.6";
              runtime = true;
            };
            prop-types = {
              descriptor = "^15.8.1";
              pin = "15.8.1";
              runtime = true;
            };
            resolve = {
              descriptor = "^2.0.0-next.4";
              pin = "2.0.0-next.4";
              runtime = true;
            };
            semver = {
              descriptor = "^6.3.1";
              pin = "6.3.1";
              runtime = true;
            };
            "string.prototype.matchall" = {
              descriptor = "^4.0.8";
              pin = "4.0.8";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-z3Rpvr+PpF7D2tBkwIe7mtytyz3+GeG3RcDec5k6xcU=";
            type = "tarball";
            url = "https://registry.npmjs.org/eslint-plugin-react/-/eslint-plugin-react-7.33.2.tgz";
          };
          ident = "eslint-plugin-react";
          ltype = "file";
          peerInfo = {
            eslint = {
              descriptor = "^3 || ^4 || ^5 || ^6 || ^7 || ^8";
            };
          };
          version = "7.33.2";
        };
      };
      eslint-plugin-react-hooks = {
        "4.6.0" = {
          fetchInfo = {
            narHash = "sha256-R4ajERUfJ6QKydepzEYJebcUG8Wi3RFso+iyBm+b6zc=";
            type = "tarball";
            url = "https://registry.npmjs.org/eslint-plugin-react-hooks/-/eslint-plugin-react-hooks-4.6.0.tgz";
          };
          ident = "eslint-plugin-react-hooks";
          ltype = "file";
          peerInfo = {
            eslint = {
              descriptor = "^3.0.0 || ^4.0.0 || ^5.0.0 || ^6.0.0 || ^7.0.0 || ^8.0.0-0";
            };
          };
          treeInfo = { };
          version = "4.6.0";
        };
      };
      eslint-scope = {
        "5.1.1" = {
          depInfo = {
            esrecurse = {
              descriptor = "^4.3.0";
              pin = "4.3.0";
              runtime = true;
            };
            estraverse = {
              descriptor = "^4.1.1";
              pin = "4.3.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-CgRo1pE7/MbHG++8ScYxF7FOxqJW+C5DDER02bSG7FM=";
            type = "tarball";
            url = "https://registry.npmjs.org/eslint-scope/-/eslint-scope-5.1.1.tgz";
          };
          ident = "eslint-scope";
          ltype = "file";
          version = "5.1.1";
        };
        "7.2.2" = {
          depInfo = {
            esrecurse = {
              descriptor = "^4.3.0";
              pin = "4.3.0";
              runtime = true;
            };
            estraverse = {
              descriptor = "^5.2.0";
              pin = "5.3.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-t93ep+f1vmtCw+/t5EJxSBx0pgSNk7RcZppk5poBQWc=";
            type = "tarball";
            url = "https://registry.npmjs.org/eslint-scope/-/eslint-scope-7.2.2.tgz";
          };
          ident = "eslint-scope";
          ltype = "file";
          version = "7.2.2";
        };
      };
      eslint-visitor-keys = {
        "3.4.3" = {
          fetchInfo = {
            narHash = "sha256-kZy6Qi4xSU1uHD4vzFgn8MC4DaNQPLVqA6/O8VhmTzk=";
            type = "tarball";
            url = "https://registry.npmjs.org/eslint-visitor-keys/-/eslint-visitor-keys-3.4.3.tgz";
          };
          ident = "eslint-visitor-keys";
          ltype = "file";
          treeInfo = { };
          version = "3.4.3";
        };
      };
      espree = {
        "9.6.1" = {
          depInfo = {
            acorn = {
              descriptor = "^8.9.0";
              pin = "8.10.0";
              runtime = true;
            };
            acorn-jsx = {
              descriptor = "^5.3.2";
              pin = "5.3.2";
              runtime = true;
            };
            eslint-visitor-keys = {
              descriptor = "^3.4.1";
              pin = "3.4.3";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-MmLjL+4VVeLurXw+/6Byf4S6KvOotFT34h1UKIr/hN0=";
            type = "tarball";
            url = "https://registry.npmjs.org/espree/-/espree-9.6.1.tgz";
          };
          ident = "espree";
          ltype = "file";
          version = "9.6.1";
        };
      };
      esquery = {
        "1.5.0" = {
          depInfo = {
            estraverse = {
              descriptor = "^5.1.0";
              pin = "5.3.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-XY6uS/pUiPUL7jX+6aJKsTvIrnexv2DBGC66WzzjZ5w=";
            type = "tarball";
            url = "https://registry.npmjs.org/esquery/-/esquery-1.5.0.tgz";
          };
          ident = "esquery";
          ltype = "file";
          version = "1.5.0";
        };
      };
      esrecurse = {
        "4.3.0" = {
          depInfo = {
            estraverse = {
              descriptor = "^5.2.0";
              pin = "5.3.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-L2yCPwe2ilGsbvyZlJ+BZPHW5GTO7tz1uJwtojcSr9Y=";
            type = "tarball";
            url = "https://registry.npmjs.org/esrecurse/-/esrecurse-4.3.0.tgz";
          };
          ident = "esrecurse";
          ltype = "file";
          version = "4.3.0";
        };
      };
      estraverse = {
        "4.3.0" = {
          fetchInfo = {
            narHash = "sha256-ekB0YUgzdakntluHF3FoHv9+GZr7QJEua1FF32TYBaQ=";
            type = "tarball";
            url = "https://registry.npmjs.org/estraverse/-/estraverse-4.3.0.tgz";
          };
          ident = "estraverse";
          ltype = "file";
          treeInfo = { };
          version = "4.3.0";
        };
        "5.3.0" = {
          fetchInfo = {
            narHash = "sha256-Vb6OEwicNHaYjRSLyES24y4OJtyPPb/7ecZpH6ZOGFg=";
            type = "tarball";
            url = "https://registry.npmjs.org/estraverse/-/estraverse-5.3.0.tgz";
          };
          ident = "estraverse";
          ltype = "file";
          treeInfo = { };
          version = "5.3.0";
        };
      };
      estree-util-attach-comments = {
        "2.1.1" = {
          depInfo = {
            "@types/estree" = {
              descriptor = "^1.0.0";
              pin = "1.0.5";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-rjw35K1HS7qwEpW4ud0VfbX/X7Mmecd29UaH2+/h2/c=";
            type = "tarball";
            url = "https://registry.npmjs.org/estree-util-attach-comments/-/estree-util-attach-comments-2.1.1.tgz";
          };
          ident = "estree-util-attach-comments";
          ltype = "file";
          version = "2.1.1";
        };
        "3.0.0" = {
          depInfo = {
            "@types/estree" = {
              descriptor = "^1.0.0";
              pin = "1.0.5";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-yfIbIdbs6m6dSqXLevb13dd9w8j9DXJ+2Np2gdb7Koo=";
            type = "tarball";
            url = "https://registry.npmjs.org/estree-util-attach-comments/-/estree-util-attach-comments-3.0.0.tgz";
          };
          ident = "estree-util-attach-comments";
          ltype = "file";
          version = "3.0.0";
        };
      };
      estree-util-build-jsx = {
        "2.2.2" = {
          depInfo = {
            "@types/estree-jsx" = {
              descriptor = "^1.0.0";
              pin = "1.0.3";
              runtime = true;
            };
            estree-util-is-identifier-name = {
              descriptor = "^2.0.0";
              pin = "2.1.0";
              runtime = true;
            };
            estree-walker = {
              descriptor = "^3.0.0";
              pin = "3.0.3";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-3b3Nxwu6U9fE3iFYdipVYHmPZogn4rAwBxJ5FNNeaKc=";
            type = "tarball";
            url = "https://registry.npmjs.org/estree-util-build-jsx/-/estree-util-build-jsx-2.2.2.tgz";
          };
          ident = "estree-util-build-jsx";
          ltype = "file";
          version = "2.2.2";
        };
        "3.0.1" = {
          depInfo = {
            "@types/estree-jsx" = {
              descriptor = "^1.0.0";
              pin = "1.0.3";
              runtime = true;
            };
            devlop = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            estree-util-is-identifier-name = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
            estree-walker = {
              descriptor = "^3.0.0";
              pin = "3.0.3";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-vIFhuju0jr4BbRYhwkz1qUO3hszBYx+2EOerkOIE7Sk=";
            type = "tarball";
            url = "https://registry.npmjs.org/estree-util-build-jsx/-/estree-util-build-jsx-3.0.1.tgz";
          };
          ident = "estree-util-build-jsx";
          ltype = "file";
          version = "3.0.1";
        };
      };
      estree-util-is-identifier-name = {
        "2.1.0" = {
          fetchInfo = {
            narHash = "sha256-vxlaQsA5ly1EOk4wjuhdM0Uo6fYH/1MN1fGbLBmZgKA=";
            type = "tarball";
            url = "https://registry.npmjs.org/estree-util-is-identifier-name/-/estree-util-is-identifier-name-2.1.0.tgz";
          };
          ident = "estree-util-is-identifier-name";
          ltype = "file";
          treeInfo = { };
          version = "2.1.0";
        };
        "3.0.0" = {
          fetchInfo = {
            narHash = "sha256-0R7FLdYyXYSScZpFVPi9UnUS9GqsSiFJzP+im8g1n+s=";
            type = "tarball";
            url = "https://registry.npmjs.org/estree-util-is-identifier-name/-/estree-util-is-identifier-name-3.0.0.tgz";
          };
          ident = "estree-util-is-identifier-name";
          ltype = "file";
          treeInfo = { };
          version = "3.0.0";
        };
      };
      estree-util-to-js = {
        "1.2.0" = {
          depInfo = {
            "@types/estree-jsx" = {
              descriptor = "^1.0.0";
              pin = "1.0.3";
              runtime = true;
            };
            astring = {
              descriptor = "^1.8.0";
              pin = "1.8.6";
              runtime = true;
            };
            source-map = {
              descriptor = "^0.7.0";
              pin = "0.7.4";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-OhpBhngDq3Sm8d6NTNIt0eC3P/izadx83qs8kV8FZ7c=";
            type = "tarball";
            url = "https://registry.npmjs.org/estree-util-to-js/-/estree-util-to-js-1.2.0.tgz";
          };
          ident = "estree-util-to-js";
          ltype = "file";
          version = "1.2.0";
        };
        "2.0.0" = {
          depInfo = {
            "@types/estree-jsx" = {
              descriptor = "^1.0.0";
              pin = "1.0.3";
              runtime = true;
            };
            astring = {
              descriptor = "^1.8.0";
              pin = "1.8.6";
              runtime = true;
            };
            source-map = {
              descriptor = "^0.7.0";
              pin = "0.7.4";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-I20WZojq62NV+MOOtej5/87IfX5yMTmu0R2Z031y0E4=";
            type = "tarball";
            url = "https://registry.npmjs.org/estree-util-to-js/-/estree-util-to-js-2.0.0.tgz";
          };
          ident = "estree-util-to-js";
          ltype = "file";
          version = "2.0.0";
        };
      };
      estree-util-visit = {
        "1.2.1" = {
          depInfo = {
            "@types/estree-jsx" = {
              descriptor = "^1.0.0";
              pin = "1.0.3";
              runtime = true;
            };
            "@types/unist" = {
              descriptor = "^2.0.0";
              pin = "2.0.10";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-LMzENDCrPywL0HgcRgkgHXN6Yp8e/DNVsdNMKUDqeZ4=";
            type = "tarball";
            url = "https://registry.npmjs.org/estree-util-visit/-/estree-util-visit-1.2.1.tgz";
          };
          ident = "estree-util-visit";
          ltype = "file";
          version = "1.2.1";
        };
        "2.0.0" = {
          depInfo = {
            "@types/estree-jsx" = {
              descriptor = "^1.0.0";
              pin = "1.0.3";
              runtime = true;
            };
            "@types/unist" = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-9LDAYe835TnKYjxTGxPiW0u3/iUG98S4yzKmBQMwj70=";
            type = "tarball";
            url = "https://registry.npmjs.org/estree-util-visit/-/estree-util-visit-2.0.0.tgz";
          };
          ident = "estree-util-visit";
          ltype = "file";
          version = "2.0.0";
        };
      };
      estree-walker = {
        "3.0.3" = {
          depInfo = {
            "@types/estree" = {
              descriptor = "^1.0.0";
              pin = "1.0.5";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-p+WRNa42ZBLhwYWGLsuPdynJNITZuUfEqd/2pL2LrTo=";
            type = "tarball";
            url = "https://registry.npmjs.org/estree-walker/-/estree-walker-3.0.3.tgz";
          };
          ident = "estree-walker";
          ltype = "file";
          version = "3.0.3";
        };
      };
      esutils = {
        "2.0.3" = {
          fetchInfo = {
            narHash = "sha256-5ELIsVusYd9/R/gTN89JTtg9quxfu170hXVKuwceIdg=";
            type = "tarball";
            url = "https://registry.npmjs.org/esutils/-/esutils-2.0.3.tgz";
          };
          ident = "esutils";
          ltype = "file";
          treeInfo = { };
          version = "2.0.3";
        };
      };
      events = {
        "3.3.0" = {
          fetchInfo = {
            narHash = "sha256-vyCUI7EY87lECH1RNaWXgIceirsdiolbBOIkW4MREp8=";
            type = "tarball";
            url = "https://registry.npmjs.org/events/-/events-3.3.0.tgz";
          };
          ident = "events";
          ltype = "file";
          treeInfo = { };
          version = "3.3.0";
        };
      };
      extend = {
        "3.0.2" = {
          fetchInfo = {
            narHash = "sha256-fMaYYzkBS/Ut/IEysYn5eAUvOswEP/rcpCah/joRGBM=";
            type = "tarball";
            url = "https://registry.npmjs.org/extend/-/extend-3.0.2.tgz";
          };
          ident = "extend";
          ltype = "file";
          treeInfo = { };
          version = "3.0.2";
        };
      };
      fast-deep-equal = {
        "3.1.3" = {
          fetchInfo = {
            narHash = "sha256-KpUhRWsLDBdqgjClgxbRoAtbWsUvY7JhVil6+dMUqwE=";
            type = "tarball";
            url = "https://registry.npmjs.org/fast-deep-equal/-/fast-deep-equal-3.1.3.tgz";
          };
          ident = "fast-deep-equal";
          ltype = "file";
          treeInfo = { };
          version = "3.1.3";
        };
      };
      fast-glob = {
        "3.3.1" = {
          depInfo = {
            "@nodelib/fs.stat" = {
              descriptor = "^2.0.2";
              pin = "2.0.5";
              runtime = true;
            };
            "@nodelib/fs.walk" = {
              descriptor = "^1.2.3";
              pin = "1.2.8";
              runtime = true;
            };
            glob-parent = {
              descriptor = "^5.1.2";
              pin = "5.1.2";
              runtime = true;
            };
            merge2 = {
              descriptor = "^1.3.0";
              pin = "1.4.1";
              runtime = true;
            };
            micromatch = {
              descriptor = "^4.0.4";
              pin = "4.0.5";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-5nqC11gSSkfExDdLdMBzSaydhIbFVw3jjzTT9OWZ/bg=";
            type = "tarball";
            url = "https://registry.npmjs.org/fast-glob/-/fast-glob-3.3.1.tgz";
          };
          ident = "fast-glob";
          ltype = "file";
          version = "3.3.1";
        };
      };
      fast-json-stable-stringify = {
        "2.1.0" = {
          fetchInfo = {
            narHash = "sha256-nvrcRKamdCbRlzJK0Bh6NkK5zpCoFhkizKEov4yK2oI=";
            type = "tarball";
            url = "https://registry.npmjs.org/fast-json-stable-stringify/-/fast-json-stable-stringify-2.1.0.tgz";
          };
          ident = "fast-json-stable-stringify";
          ltype = "file";
          treeInfo = { };
          version = "2.1.0";
        };
      };
      fast-levenshtein = {
        "2.0.6" = {
          fetchInfo = {
            narHash = "sha256-ecbIyMHylbbr7yuhLAsB/amPAPjjzF0rZw6qZDni7b8=";
            type = "tarball";
            url = "https://registry.npmjs.org/fast-levenshtein/-/fast-levenshtein-2.0.6.tgz";
          };
          ident = "fast-levenshtein";
          ltype = "file";
          treeInfo = { };
          version = "2.0.6";
        };
      };
      fastq = {
        "1.13.0" = {
          depInfo = {
            reusify = {
              descriptor = "^1.0.4";
              pin = "1.0.4";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-KRCnH3+xuadp/ULow/EsM7P9k6q/iQbifqDjvLR+JPw=";
            type = "tarball";
            url = "https://registry.npmjs.org/fastq/-/fastq-1.13.0.tgz";
          };
          ident = "fastq";
          ltype = "file";
          version = "1.13.0";
        };
      };
      fault = {
        "2.0.1" = {
          depInfo = {
            format = {
              descriptor = "^0.2.0";
              pin = "0.2.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-4wxcR3hPD5MlJlFPefQ0Pz315pCfIjivxqUApVAbUbI=";
            type = "tarball";
            url = "https://registry.npmjs.org/fault/-/fault-2.0.1.tgz";
          };
          ident = "fault";
          ltype = "file";
          version = "2.0.1";
        };
      };
      file-entry-cache = {
        "6.0.1" = {
          depInfo = {
            flat-cache = {
              descriptor = "^3.0.4";
              pin = "3.0.4";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-MwVItPdMFD5YC4DfaF68o699xdGokviC2VW6Z0rw1Hs=";
            type = "tarball";
            url = "https://registry.npmjs.org/file-entry-cache/-/file-entry-cache-6.0.1.tgz";
          };
          ident = "file-entry-cache";
          ltype = "file";
          version = "6.0.1";
        };
      };
      fill-range = {
        "7.0.1" = {
          depInfo = {
            to-regex-range = {
              descriptor = "^5.0.1";
              pin = "5.0.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-1Cy9dyWlI0TnadlFR9TSryNYjR27SRRWtTT6oDiUHps=";
            type = "tarball";
            url = "https://registry.npmjs.org/fill-range/-/fill-range-7.0.1.tgz";
          };
          ident = "fill-range";
          ltype = "file";
          version = "7.0.1";
        };
      };
      find-root = {
        "1.1.0" = {
          fetchInfo = {
            narHash = "sha256-grIQ6Ml6cBttYVMYj34V1G9PrquEAh5ygziquXEkSTE=";
            type = "tarball";
            url = "https://registry.npmjs.org/find-root/-/find-root-1.1.0.tgz";
          };
          ident = "find-root";
          ltype = "file";
          treeInfo = { };
          version = "1.1.0";
        };
      };
      find-up = {
        "5.0.0" = {
          depInfo = {
            locate-path = {
              descriptor = "^6.0.0";
              pin = "6.0.0";
              runtime = true;
            };
            path-exists = {
              descriptor = "^4.0.0";
              pin = "4.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-WZuEghlt11JSbLWajuil1Gnm7yIUKnq2vCUvT7Xydrg=";
            type = "tarball";
            url = "https://registry.npmjs.org/find-up/-/find-up-5.0.0.tgz";
          };
          ident = "find-up";
          ltype = "file";
          version = "5.0.0";
        };
      };
      flat-cache = {
        "3.0.4" = {
          depInfo = {
            flatted = {
              descriptor = "^3.1.0";
              pin = "3.2.7";
              runtime = true;
            };
            rimraf = {
              descriptor = "^3.0.2";
              pin = "3.0.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-AQ5bUXhq/Y5gpPJWh2PcKocLZ4KPYGtJ0iLVrr6Rxn8=";
            type = "tarball";
            url = "https://registry.npmjs.org/flat-cache/-/flat-cache-3.0.4.tgz";
          };
          ident = "flat-cache";
          ltype = "file";
          version = "3.0.4";
        };
      };
      flatted = {
        "3.2.7" = {
          fetchInfo = {
            narHash = "sha256-1wHd6K1UO8pxAb5P31QO68je15eMyrcYloG1VHylH8U=";
            type = "tarball";
            url = "https://registry.npmjs.org/flatted/-/flatted-3.2.7.tgz";
          };
          ident = "flatted";
          ltype = "file";
          treeInfo = { };
          version = "3.2.7";
        };
      };
      for-each = {
        "0.3.3" = {
          depInfo = {
            is-callable = {
              descriptor = "^1.1.3";
              pin = "1.2.7";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-k807WSABZLSTmLKtziFXu5hqnm9YlWMP9X8K8kOdgpc=";
            type = "tarball";
            url = "https://registry.npmjs.org/for-each/-/for-each-0.3.3.tgz";
          };
          ident = "for-each";
          ltype = "file";
          version = "0.3.3";
        };
      };
      format = {
        "0.2.2" = {
          fetchInfo = {
            narHash = "sha256-FjeJUHKpyK0utVzBFwtdIYEUQoPK8rYjAglQVUzz2XQ=";
            type = "tarball";
            url = "https://registry.npmjs.org/format/-/format-0.2.2.tgz";
          };
          ident = "format";
          ltype = "file";
          treeInfo = { };
          version = "0.2.2";
        };
      };
      "fs.realpath" = {
        "1.0.0" = {
          fetchInfo = {
            narHash = "sha256-oPk2F5VP+ECdKr8qs3h0dziW0mK71uwTUrbgulLI/ks=";
            type = "tarball";
            url = "https://registry.npmjs.org/fs.realpath/-/fs.realpath-1.0.0.tgz";
          };
          ident = "fs.realpath";
          ltype = "file";
          treeInfo = { };
          version = "1.0.0";
        };
      };
      function-bind = {
        "1.1.1" = {
          fetchInfo = {
            narHash = "sha256-9SZTeDBJ87ogdiEHyC3b2/wr1Bv8qb8rCJeD+OYvf9A=";
            type = "tarball";
            url = "https://registry.npmjs.org/function-bind/-/function-bind-1.1.1.tgz";
          };
          ident = "function-bind";
          ltype = "file";
          treeInfo = { };
          version = "1.1.1";
        };
      };
      "function.prototype.name" = {
        "1.1.6" = {
          depInfo = {
            call-bind = {
              descriptor = "^1.0.2";
              pin = "1.0.2";
              runtime = true;
            };
            define-properties = {
              descriptor = "^1.2.0";
              pin = "1.2.1";
              runtime = true;
            };
            es-abstract = {
              descriptor = "^1.22.1";
              pin = "1.22.2";
              runtime = true;
            };
            functions-have-names = {
              descriptor = "^1.2.3";
              pin = "1.2.3";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-HqA13yz3gEd4qt+aeHBJUvhzyBg6zpoz1c1GaHov/Go=";
            type = "tarball";
            url = "https://registry.npmjs.org/function.prototype.name/-/function.prototype.name-1.1.6.tgz";
          };
          ident = "function.prototype.name";
          ltype = "file";
          version = "1.1.6";
        };
      };
      functions-have-names = {
        "1.2.3" = {
          fetchInfo = {
            narHash = "sha256-dVfHQ/TWDvhFrCqSX2JEBlW2wJ3THV0pbZ0zt7I0Olk=";
            type = "tarball";
            url = "https://registry.npmjs.org/functions-have-names/-/functions-have-names-1.2.3.tgz";
          };
          ident = "functions-have-names";
          ltype = "file";
          treeInfo = { };
          version = "1.2.3";
        };
      };
      get-intrinsic = {
        "1.2.1" = {
          depInfo = {
            function-bind = {
              descriptor = "^1.1.1";
              pin = "1.1.1";
              runtime = true;
            };
            has = {
              descriptor = "^1.0.3";
              pin = "1.0.3";
              runtime = true;
            };
            has-proto = {
              descriptor = "^1.0.1";
              pin = "1.0.1";
              runtime = true;
            };
            has-symbols = {
              descriptor = "^1.0.3";
              pin = "1.0.3";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-9no1EKud/J4wr6WSN//rpyQqByB0HGgY/jmykJNpyvU=";
            type = "tarball";
            url = "https://registry.npmjs.org/get-intrinsic/-/get-intrinsic-1.2.1.tgz";
          };
          ident = "get-intrinsic";
          ltype = "file";
          version = "1.2.1";
        };
      };
      get-symbol-description = {
        "1.0.0" = {
          depInfo = {
            call-bind = {
              descriptor = "^1.0.2";
              pin = "1.0.2";
              runtime = true;
            };
            get-intrinsic = {
              descriptor = "^1.1.1";
              pin = "1.2.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-bp4YseOAXEN7IU9lE2OGbqZeZUYyPwtPftsSD3ZyTsk=";
            type = "tarball";
            url = "https://registry.npmjs.org/get-symbol-description/-/get-symbol-description-1.0.0.tgz";
          };
          ident = "get-symbol-description";
          ltype = "file";
          version = "1.0.0";
        };
      };
      get-tsconfig = {
        "4.7.2" = {
          depInfo = {
            resolve-pkg-maps = {
              descriptor = "^1.0.0";
              pin = "1.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-TgllxJ3mDHuDTeeG8Lj5wraa2qaocTutbnU4CaDwd/U=";
            type = "tarball";
            url = "https://registry.npmjs.org/get-tsconfig/-/get-tsconfig-4.7.2.tgz";
          };
          ident = "get-tsconfig";
          ltype = "file";
          version = "4.7.2";
        };
      };
      github-slugger = {
        "2.0.0" = {
          fetchInfo = {
            narHash = "sha256-pYFvgrCdJwK0cDSvTfOdiFCsaVHcg2g+S0RCxe+KD4E=";
            type = "tarball";
            url = "https://registry.npmjs.org/github-slugger/-/github-slugger-2.0.0.tgz";
          };
          ident = "github-slugger";
          ltype = "file";
          treeInfo = { };
          version = "2.0.0";
        };
      };
      glob = {
        "7.1.7" = {
          depInfo = {
            "fs.realpath" = {
              descriptor = "^1.0.0";
              pin = "1.0.0";
              runtime = true;
            };
            inflight = {
              descriptor = "^1.0.4";
              pin = "1.0.6";
              runtime = true;
            };
            inherits = {
              descriptor = "2";
              pin = "2.0.4";
              runtime = true;
            };
            minimatch = {
              descriptor = "^3.0.4";
              pin = "3.1.2";
              runtime = true;
            };
            once = {
              descriptor = "^1.3.0";
              pin = "1.4.0";
              runtime = true;
            };
            path-is-absolute = {
              descriptor = "^1.0.0";
              pin = "1.0.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-7ZgNyQIpMqqC4/B3Hyt21dl5d0mnSAu/rtglBTS6Y4E=";
            type = "tarball";
            url = "https://registry.npmjs.org/glob/-/glob-7.1.7.tgz";
          };
          ident = "glob";
          ltype = "file";
          version = "7.1.7";
        };
        "7.2.3" = {
          depInfo = {
            "fs.realpath" = {
              descriptor = "^1.0.0";
              pin = "1.0.0";
              runtime = true;
            };
            inflight = {
              descriptor = "^1.0.4";
              pin = "1.0.6";
              runtime = true;
            };
            inherits = {
              descriptor = "2";
              pin = "2.0.4";
              runtime = true;
            };
            minimatch = {
              descriptor = "^3.1.1";
              pin = "3.1.2";
              runtime = true;
            };
            once = {
              descriptor = "^1.3.0";
              pin = "1.4.0";
              runtime = true;
            };
            path-is-absolute = {
              descriptor = "^1.0.0";
              pin = "1.0.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-QWp5le1Zd7QYp0SXrWVhX3TLZylTpU48NZ+D04pf6b4=";
            type = "tarball";
            url = "https://registry.npmjs.org/glob/-/glob-7.2.3.tgz";
          };
          ident = "glob";
          ltype = "file";
          version = "7.2.3";
        };
      };
      glob-parent = {
        "5.1.2" = {
          depInfo = {
            is-glob = {
              descriptor = "^4.0.1";
              pin = "4.0.3";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-mBzP81bqsUi8ynclBz+RKWEXbDPwkIyeOayR4oTzrsI=";
            type = "tarball";
            url = "https://registry.npmjs.org/glob-parent/-/glob-parent-5.1.2.tgz";
          };
          ident = "glob-parent";
          ltype = "file";
          version = "5.1.2";
        };
        "6.0.2" = {
          depInfo = {
            is-glob = {
              descriptor = "^4.0.3";
              pin = "4.0.3";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-vvuqFaFPDyQ16dP8E52w8+seROdq79wwdXAV/g2BLPo=";
            type = "tarball";
            url = "https://registry.npmjs.org/glob-parent/-/glob-parent-6.0.2.tgz";
          };
          ident = "glob-parent";
          ltype = "file";
          version = "6.0.2";
        };
      };
      glob-to-regexp = {
        "0.4.1" = {
          fetchInfo = {
            narHash = "sha256-PPP4pb8uF1bYQXXMlu0YHg/8v61VEvxwqlv8HFvF1vQ=";
            type = "tarball";
            url = "https://registry.npmjs.org/glob-to-regexp/-/glob-to-regexp-0.4.1.tgz";
          };
          ident = "glob-to-regexp";
          ltype = "file";
          treeInfo = { };
          version = "0.4.1";
        };
      };
      globals = {
        "13.22.0" = {
          depInfo = {
            type-fest = {
              descriptor = "^0.20.2";
              pin = "0.20.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-ZJAF/jKNiDrXhozqTBa2XBfsbZH4L9tIu/pQQuWZ5eY=";
            type = "tarball";
            url = "https://registry.npmjs.org/globals/-/globals-13.22.0.tgz";
          };
          ident = "globals";
          ltype = "file";
          version = "13.22.0";
        };
      };
      globalthis = {
        "1.0.3" = {
          depInfo = {
            define-properties = {
              descriptor = "^1.1.3";
              pin = "1.2.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-1IG9q5XPzjamsW5fTagVpUVQtVhpqqKn2SrQFtEtCF0=";
            type = "tarball";
            url = "https://registry.npmjs.org/globalthis/-/globalthis-1.0.3.tgz";
          };
          ident = "globalthis";
          ltype = "file";
          version = "1.0.3";
        };
      };
      globby = {
        "11.1.0" = {
          depInfo = {
            array-union = {
              descriptor = "^2.1.0";
              pin = "2.1.0";
              runtime = true;
            };
            dir-glob = {
              descriptor = "^3.0.1";
              pin = "3.0.1";
              runtime = true;
            };
            fast-glob = {
              descriptor = "^3.2.9";
              pin = "3.3.1";
              runtime = true;
            };
            ignore = {
              descriptor = "^5.2.0";
              pin = "5.2.4";
              runtime = true;
            };
            merge2 = {
              descriptor = "^1.4.1";
              pin = "1.4.1";
              runtime = true;
            };
            slash = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-pDQt3eQJagRiZZ3o4V+Jnlbnwb4u03qB4/v0axxMp/A=";
            type = "tarball";
            url = "https://registry.npmjs.org/globby/-/globby-11.1.0.tgz";
          };
          ident = "globby";
          ltype = "file";
          version = "11.1.0";
        };
      };
      goober = {
        "2.1.13" = {
          fetchInfo = {
            narHash = "sha256-Ta5XFdBjCxiVFBIHCTjgJD2x/8SWo6pr1UwDDvX5ljI=";
            type = "tarball";
            url = "https://registry.npmjs.org/goober/-/goober-2.1.13.tgz";
          };
          ident = "goober";
          ltype = "file";
          peerInfo = {
            csstype = {
              descriptor = "^3.0.10";
            };
          };
          treeInfo = { };
          version = "2.1.13";
        };
      };
      gopd = {
        "1.0.1" = {
          depInfo = {
            get-intrinsic = {
              descriptor = "^1.1.3";
              pin = "1.2.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-wknwzCUDVb/wjP+hhlq6AA5gqrQzPfozD37C6FNPj44=";
            type = "tarball";
            url = "https://registry.npmjs.org/gopd/-/gopd-1.0.1.tgz";
          };
          ident = "gopd";
          ltype = "file";
          version = "1.0.1";
        };
      };
      graceful-fs = {
        "4.2.11" = {
          fetchInfo = {
            narHash = "sha256-fH5Hc6M2zHaGeId+SmUwYBdGE4mmjA/Sg/Jj5Jh+P8g=";
            type = "tarball";
            url = "https://registry.npmjs.org/graceful-fs/-/graceful-fs-4.2.11.tgz";
          };
          ident = "graceful-fs";
          ltype = "file";
          treeInfo = { };
          version = "4.2.11";
        };
      };
      graphemer = {
        "1.4.0" = {
          fetchInfo = {
            narHash = "sha256-DZyl/8fBRXZUVwvxbPufo9mhgQw5epZJaC2RI+BjdgA=";
            type = "tarball";
            url = "https://registry.npmjs.org/graphemer/-/graphemer-1.4.0.tgz";
          };
          ident = "graphemer";
          ltype = "file";
          treeInfo = { };
          version = "1.4.0";
        };
      };
      has = {
        "1.0.3" = {
          depInfo = {
            function-bind = {
              descriptor = "^1.1.1";
              pin = "1.1.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-z8QWvFmgxmKtQJ34TpRAZljXFJmXY0WUMPj1K64SHx4=";
            type = "tarball";
            url = "https://registry.npmjs.org/has/-/has-1.0.3.tgz";
          };
          ident = "has";
          ltype = "file";
          version = "1.0.3";
        };
      };
      has-bigints = {
        "1.0.2" = {
          fetchInfo = {
            narHash = "sha256-LbPq15+J8usV8bCOrccIRtzh4ZyiUjLqzaflRX9w4bo=";
            type = "tarball";
            url = "https://registry.npmjs.org/has-bigints/-/has-bigints-1.0.2.tgz";
          };
          ident = "has-bigints";
          ltype = "file";
          treeInfo = { };
          version = "1.0.2";
        };
      };
      has-flag = {
        "3.0.0" = {
          fetchInfo = {
            narHash = "sha256-6FPI3mvzeaWOqNs71lre0tBCY/xdSo+7lBMqw1c9lM4=";
            type = "tarball";
            url = "https://registry.npmjs.org/has-flag/-/has-flag-3.0.0.tgz";
          };
          ident = "has-flag";
          ltype = "file";
          treeInfo = { };
          version = "3.0.0";
        };
        "4.0.0" = {
          fetchInfo = {
            narHash = "sha256-vPSUFfMlEN5g/4ID+ZlkxJd2xcrLd2zb1zB0uEfVeKE=";
            type = "tarball";
            url = "https://registry.npmjs.org/has-flag/-/has-flag-4.0.0.tgz";
          };
          ident = "has-flag";
          ltype = "file";
          treeInfo = { };
          version = "4.0.0";
        };
      };
      has-property-descriptors = {
        "1.0.0" = {
          depInfo = {
            get-intrinsic = {
              descriptor = "^1.1.1";
              pin = "1.2.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-4ifPgOoeFgucRb9lxIJmJo2IZdx4Agfb6/y7EBR2f0U=";
            type = "tarball";
            url = "https://registry.npmjs.org/has-property-descriptors/-/has-property-descriptors-1.0.0.tgz";
          };
          ident = "has-property-descriptors";
          ltype = "file";
          version = "1.0.0";
        };
      };
      has-proto = {
        "1.0.1" = {
          fetchInfo = {
            narHash = "sha256-ISNmtDgUP0rItqrzD4aR/XFTe2Pnr6iUaMaJ0iajpe0=";
            type = "tarball";
            url = "https://registry.npmjs.org/has-proto/-/has-proto-1.0.1.tgz";
          };
          ident = "has-proto";
          ltype = "file";
          treeInfo = { };
          version = "1.0.1";
        };
      };
      has-symbols = {
        "1.0.3" = {
          fetchInfo = {
            narHash = "sha256-UwYczbYNNKbZcyCkiLt8e3ASAghJIM72pdCV7DH0XQk=";
            type = "tarball";
            url = "https://registry.npmjs.org/has-symbols/-/has-symbols-1.0.3.tgz";
          };
          ident = "has-symbols";
          ltype = "file";
          treeInfo = { };
          version = "1.0.3";
        };
      };
      has-tostringtag = {
        "1.0.0" = {
          depInfo = {
            has-symbols = {
              descriptor = "^1.0.2";
              pin = "1.0.3";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-EjwjgT5bnHi8aoxdUvSdR4A0YWGKRF5K2VfwACp5VPQ=";
            type = "tarball";
            url = "https://registry.npmjs.org/has-tostringtag/-/has-tostringtag-1.0.0.tgz";
          };
          ident = "has-tostringtag";
          ltype = "file";
          version = "1.0.0";
        };
      };
      hast = {
        "1.0.0" = {
          fetchInfo = {
            narHash = "sha256-S+LfJO+BjiJg8xoRb0vjrWMDUuKxkdDGTS+251kcIaU=";
            type = "tarball";
            url = "https://registry.npmjs.org/hast/-/hast-1.0.0.tgz";
          };
          ident = "hast";
          ltype = "file";
          treeInfo = { };
          version = "1.0.0";
        };
      };
      hast-util-from-html = {
        "2.0.1" = {
          depInfo = {
            "@types/hast" = {
              descriptor = "^3.0.0";
              pin = "3.0.1";
              runtime = true;
            };
            devlop = {
              descriptor = "^1.1.0";
              pin = "1.1.0";
              runtime = true;
            };
            hast-util-from-parse5 = {
              descriptor = "^8.0.0";
              pin = "8.0.1";
              runtime = true;
            };
            parse5 = {
              descriptor = "^7.0.0";
              pin = "7.1.2";
              runtime = true;
            };
            vfile = {
              descriptor = "^6.0.0";
              pin = "6.0.1";
              runtime = true;
            };
            vfile-message = {
              descriptor = "^4.0.0";
              pin = "4.0.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-JTt/KbfZwGN1Pth4OogjoHXsNwDLrwwRX1UTlro43UY=";
            type = "tarball";
            url = "https://registry.npmjs.org/hast-util-from-html/-/hast-util-from-html-2.0.1.tgz";
          };
          ident = "hast-util-from-html";
          ltype = "file";
          version = "2.0.1";
        };
      };
      hast-util-from-parse5 = {
        "8.0.1" = {
          depInfo = {
            "@types/hast" = {
              descriptor = "^3.0.0";
              pin = "3.0.1";
              runtime = true;
            };
            "@types/unist" = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
            devlop = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            hastscript = {
              descriptor = "^8.0.0";
              pin = "8.0.0";
              runtime = true;
            };
            property-information = {
              descriptor = "^6.0.0";
              pin = "6.2.0";
              runtime = true;
            };
            vfile = {
              descriptor = "^6.0.0";
              pin = "6.0.1";
              runtime = true;
            };
            vfile-location = {
              descriptor = "^5.0.0";
              pin = "5.0.2";
              runtime = true;
            };
            web-namespaces = {
              descriptor = "^2.0.0";
              pin = "2.0.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-NBUYxbmSTkmzp8MIMk1jspgol6jb3T7RiYdy/6loz7I=";
            type = "tarball";
            url = "https://registry.npmjs.org/hast-util-from-parse5/-/hast-util-from-parse5-8.0.1.tgz";
          };
          ident = "hast-util-from-parse5";
          ltype = "file";
          version = "8.0.1";
        };
      };
      hast-util-heading-rank = {
        "3.0.0" = {
          depInfo = {
            "@types/hast" = {
              descriptor = "^3.0.0";
              pin = "3.0.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-u7tHU8cgRDFs2pcRWrPDmMtpzPyCjjkQOg2o8au54AM=";
            type = "tarball";
            url = "https://registry.npmjs.org/hast-util-heading-rank/-/hast-util-heading-rank-3.0.0.tgz";
          };
          ident = "hast-util-heading-rank";
          ltype = "file";
          version = "3.0.0";
        };
      };
      hast-util-is-element = {
        "3.0.0" = {
          depInfo = {
            "@types/hast" = {
              descriptor = "^3.0.0";
              pin = "3.0.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-JZXIETcruDB4CWj+hO+RH/Pf6qRccLl0NDIJQPgpbKk=";
            type = "tarball";
            url = "https://registry.npmjs.org/hast-util-is-element/-/hast-util-is-element-3.0.0.tgz";
          };
          ident = "hast-util-is-element";
          ltype = "file";
          version = "3.0.0";
        };
      };
      hast-util-parse-selector = {
        "4.0.0" = {
          depInfo = {
            "@types/hast" = {
              descriptor = "^3.0.0";
              pin = "3.0.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-8nSQUEPalxD5eb/5L7TjVyK/B+ma1eafXzZNJ5RqxG4=";
            type = "tarball";
            url = "https://registry.npmjs.org/hast-util-parse-selector/-/hast-util-parse-selector-4.0.0.tgz";
          };
          ident = "hast-util-parse-selector";
          ltype = "file";
          version = "4.0.0";
        };
      };
      hast-util-raw = {
        "9.0.1" = {
          depInfo = {
            "@types/hast" = {
              descriptor = "^3.0.0";
              pin = "3.0.1";
              runtime = true;
            };
            "@types/unist" = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
            "@ungap/structured-clone" = {
              descriptor = "^1.0.0";
              pin = "1.2.0";
              runtime = true;
            };
            hast-util-from-parse5 = {
              descriptor = "^8.0.0";
              pin = "8.0.1";
              runtime = true;
            };
            hast-util-to-parse5 = {
              descriptor = "^8.0.0";
              pin = "8.0.0";
              runtime = true;
            };
            html-void-elements = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
            mdast-util-to-hast = {
              descriptor = "^13.0.0";
              pin = "13.0.2";
              runtime = true;
            };
            parse5 = {
              descriptor = "^7.0.0";
              pin = "7.1.2";
              runtime = true;
            };
            unist-util-position = {
              descriptor = "^5.0.0";
              pin = "5.0.0";
              runtime = true;
            };
            unist-util-visit = {
              descriptor = "^5.0.0";
              pin = "5.0.0";
              runtime = true;
            };
            vfile = {
              descriptor = "^6.0.0";
              pin = "6.0.1";
              runtime = true;
            };
            web-namespaces = {
              descriptor = "^2.0.0";
              pin = "2.0.1";
              runtime = true;
            };
            zwitch = {
              descriptor = "^2.0.0";
              pin = "2.0.4";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-HMOkgksb6fnlF6d88qgkDf5Te0L/oBwJ/gkeuKaX23c=";
            type = "tarball";
            url = "https://registry.npmjs.org/hast-util-raw/-/hast-util-raw-9.0.1.tgz";
          };
          ident = "hast-util-raw";
          ltype = "file";
          version = "9.0.1";
        };
      };
      hast-util-to-estree = {
        "2.3.3" = {
          depInfo = {
            "@types/estree" = {
              descriptor = "^1.0.0";
              pin = "1.0.5";
              runtime = true;
            };
            "@types/estree-jsx" = {
              descriptor = "^1.0.0";
              pin = "1.0.3";
              runtime = true;
            };
            "@types/hast" = {
              descriptor = "^2.0.0";
              pin = "2.3.8";
              runtime = true;
            };
            "@types/unist" = {
              descriptor = "^2.0.0";
              pin = "2.0.10";
              runtime = true;
            };
            comma-separated-tokens = {
              descriptor = "^2.0.0";
              pin = "2.0.3";
              runtime = true;
            };
            estree-util-attach-comments = {
              descriptor = "^2.0.0";
              pin = "2.1.1";
              runtime = true;
            };
            estree-util-is-identifier-name = {
              descriptor = "^2.0.0";
              pin = "2.1.0";
              runtime = true;
            };
            hast-util-whitespace = {
              descriptor = "^2.0.0";
              pin = "2.0.1";
              runtime = true;
            };
            mdast-util-mdx-expression = {
              descriptor = "^1.0.0";
              pin = "1.3.2";
              runtime = true;
            };
            mdast-util-mdxjs-esm = {
              descriptor = "^1.0.0";
              pin = "1.3.1";
              runtime = true;
            };
            property-information = {
              descriptor = "^6.0.0";
              pin = "6.2.0";
              runtime = true;
            };
            space-separated-tokens = {
              descriptor = "^2.0.0";
              pin = "2.0.2";
              runtime = true;
            };
            style-to-object = {
              descriptor = "^0.4.1";
              pin = "0.4.2";
              runtime = true;
            };
            unist-util-position = {
              descriptor = "^4.0.0";
              pin = "4.0.4";
              runtime = true;
            };
            zwitch = {
              descriptor = "^2.0.0";
              pin = "2.0.4";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-mgUa3ylnfubSoESwA9qW7zhcqt/O+JyfKN2i9PQ8AGI=";
            type = "tarball";
            url = "https://registry.npmjs.org/hast-util-to-estree/-/hast-util-to-estree-2.3.3.tgz";
          };
          ident = "hast-util-to-estree";
          ltype = "file";
          version = "2.3.3";
        };
        "3.1.0" = {
          depInfo = {
            "@types/estree" = {
              descriptor = "^1.0.0";
              pin = "1.0.5";
              runtime = true;
            };
            "@types/estree-jsx" = {
              descriptor = "^1.0.0";
              pin = "1.0.3";
              runtime = true;
            };
            "@types/hast" = {
              descriptor = "^3.0.0";
              pin = "3.0.1";
              runtime = true;
            };
            comma-separated-tokens = {
              descriptor = "^2.0.0";
              pin = "2.0.3";
              runtime = true;
            };
            devlop = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            estree-util-attach-comments = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
            estree-util-is-identifier-name = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
            hast-util-whitespace = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
            mdast-util-mdx-expression = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            mdast-util-mdx-jsx = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
            mdast-util-mdxjs-esm = {
              descriptor = "^2.0.0";
              pin = "2.0.1";
              runtime = true;
            };
            property-information = {
              descriptor = "^6.0.0";
              pin = "6.2.0";
              runtime = true;
            };
            space-separated-tokens = {
              descriptor = "^2.0.0";
              pin = "2.0.2";
              runtime = true;
            };
            style-to-object = {
              descriptor = "^0.4.0";
              pin = "0.4.2";
              runtime = true;
            };
            unist-util-position = {
              descriptor = "^5.0.0";
              pin = "5.0.0";
              runtime = true;
            };
            zwitch = {
              descriptor = "^2.0.0";
              pin = "2.0.4";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-nrz867kieBVFVCGiQylN7Lgu5tvNlOU9wNhfVanqUvM=";
            type = "tarball";
            url = "https://registry.npmjs.org/hast-util-to-estree/-/hast-util-to-estree-3.1.0.tgz";
          };
          ident = "hast-util-to-estree";
          ltype = "file";
          version = "3.1.0";
        };
      };
      hast-util-to-html = {
        "9.0.0" = {
          depInfo = {
            "@types/hast" = {
              descriptor = "^3.0.0";
              pin = "3.0.1";
              runtime = true;
            };
            "@types/unist" = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
            ccount = {
              descriptor = "^2.0.0";
              pin = "2.0.1";
              runtime = true;
            };
            comma-separated-tokens = {
              descriptor = "^2.0.0";
              pin = "2.0.3";
              runtime = true;
            };
            hast-util-raw = {
              descriptor = "^9.0.0";
              pin = "9.0.1";
              runtime = true;
            };
            hast-util-whitespace = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
            html-void-elements = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
            mdast-util-to-hast = {
              descriptor = "^13.0.0";
              pin = "13.0.2";
              runtime = true;
            };
            property-information = {
              descriptor = "^6.0.0";
              pin = "6.2.0";
              runtime = true;
            };
            space-separated-tokens = {
              descriptor = "^2.0.0";
              pin = "2.0.2";
              runtime = true;
            };
            stringify-entities = {
              descriptor = "^4.0.0";
              pin = "4.0.3";
              runtime = true;
            };
            zwitch = {
              descriptor = "^2.0.4";
              pin = "2.0.4";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-dDmRK9kdRCuAxGYuXsok/uwoZ21wpjS6NQo1j0INXEI=";
            type = "tarball";
            url = "https://registry.npmjs.org/hast-util-to-html/-/hast-util-to-html-9.0.0.tgz";
          };
          ident = "hast-util-to-html";
          ltype = "file";
          version = "9.0.0";
        };
      };
      hast-util-to-jsx-runtime = {
        "2.2.0" = {
          depInfo = {
            "@types/hast" = {
              descriptor = "^3.0.0";
              pin = "3.0.1";
              runtime = true;
            };
            "@types/unist" = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
            comma-separated-tokens = {
              descriptor = "^2.0.0";
              pin = "2.0.3";
              runtime = true;
            };
            hast-util-whitespace = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
            property-information = {
              descriptor = "^6.0.0";
              pin = "6.2.0";
              runtime = true;
            };
            space-separated-tokens = {
              descriptor = "^2.0.0";
              pin = "2.0.2";
              runtime = true;
            };
            style-to-object = {
              descriptor = "^0.4.0";
              pin = "0.4.2";
              runtime = true;
            };
            unist-util-position = {
              descriptor = "^5.0.0";
              pin = "5.0.0";
              runtime = true;
            };
            vfile-message = {
              descriptor = "^4.0.0";
              pin = "4.0.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-mb58nY5YHd27yVonl/lv4s7ERCvVymXmuzCzdtMWCpY=";
            type = "tarball";
            url = "https://registry.npmjs.org/hast-util-to-jsx-runtime/-/hast-util-to-jsx-runtime-2.2.0.tgz";
          };
          ident = "hast-util-to-jsx-runtime";
          ltype = "file";
          version = "2.2.0";
        };
      };
      hast-util-to-parse5 = {
        "8.0.0" = {
          depInfo = {
            "@types/hast" = {
              descriptor = "^3.0.0";
              pin = "3.0.1";
              runtime = true;
            };
            comma-separated-tokens = {
              descriptor = "^2.0.0";
              pin = "2.0.3";
              runtime = true;
            };
            devlop = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            property-information = {
              descriptor = "^6.0.0";
              pin = "6.2.0";
              runtime = true;
            };
            space-separated-tokens = {
              descriptor = "^2.0.0";
              pin = "2.0.2";
              runtime = true;
            };
            web-namespaces = {
              descriptor = "^2.0.0";
              pin = "2.0.1";
              runtime = true;
            };
            zwitch = {
              descriptor = "^2.0.0";
              pin = "2.0.4";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-L25HiP3j+O65rcJlIwezl589ToD6qIx4S6hpcgywEps=";
            type = "tarball";
            url = "https://registry.npmjs.org/hast-util-to-parse5/-/hast-util-to-parse5-8.0.0.tgz";
          };
          ident = "hast-util-to-parse5";
          ltype = "file";
          version = "8.0.0";
        };
      };
      hast-util-to-string = {
        "3.0.0" = {
          depInfo = {
            "@types/hast" = {
              descriptor = "^3.0.0";
              pin = "3.0.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-+lHIr2OwQ/mLzk5oosegfNmHCAMooQr4X1Egn3j4qP0=";
            type = "tarball";
            url = "https://registry.npmjs.org/hast-util-to-string/-/hast-util-to-string-3.0.0.tgz";
          };
          ident = "hast-util-to-string";
          ltype = "file";
          version = "3.0.0";
        };
      };
      hast-util-to-text = {
        "4.0.0" = {
          depInfo = {
            "@types/hast" = {
              descriptor = "^3.0.0";
              pin = "3.0.1";
              runtime = true;
            };
            "@types/unist" = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
            hast-util-is-element = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
            unist-util-find-after = {
              descriptor = "^5.0.0";
              pin = "5.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-6pPSvbpRN88OwQI8bG4iO0BOl6LTFY4vgbVZ9Gmtjq0=";
            type = "tarball";
            url = "https://registry.npmjs.org/hast-util-to-text/-/hast-util-to-text-4.0.0.tgz";
          };
          ident = "hast-util-to-text";
          ltype = "file";
          version = "4.0.0";
        };
      };
      hast-util-whitespace = {
        "2.0.1" = {
          fetchInfo = {
            narHash = "sha256-IMXj72QQONxwpW1DafxoHk8EL74aHxtmIuDiZ77yPmA=";
            type = "tarball";
            url = "https://registry.npmjs.org/hast-util-whitespace/-/hast-util-whitespace-2.0.1.tgz";
          };
          ident = "hast-util-whitespace";
          ltype = "file";
          treeInfo = { };
          version = "2.0.1";
        };
        "3.0.0" = {
          depInfo = {
            "@types/hast" = {
              descriptor = "^3.0.0";
              pin = "3.0.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-7HQ72QhykyxGREoyqSiydKAeQvx5YPC3eBz+6HsgXYk=";
            type = "tarball";
            url = "https://registry.npmjs.org/hast-util-whitespace/-/hast-util-whitespace-3.0.0.tgz";
          };
          ident = "hast-util-whitespace";
          ltype = "file";
          version = "3.0.0";
        };
      };
      hastscript = {
        "8.0.0" = {
          depInfo = {
            "@types/hast" = {
              descriptor = "^3.0.0";
              pin = "3.0.1";
              runtime = true;
            };
            comma-separated-tokens = {
              descriptor = "^2.0.0";
              pin = "2.0.3";
              runtime = true;
            };
            hast-util-parse-selector = {
              descriptor = "^4.0.0";
              pin = "4.0.0";
              runtime = true;
            };
            property-information = {
              descriptor = "^6.0.0";
              pin = "6.2.0";
              runtime = true;
            };
            space-separated-tokens = {
              descriptor = "^2.0.0";
              pin = "2.0.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-FIJFgintusoayxHdzWrkpD8BPdl454axrxL2HXZ0f0Y=";
            type = "tarball";
            url = "https://registry.npmjs.org/hastscript/-/hastscript-8.0.0.tgz";
          };
          ident = "hastscript";
          ltype = "file";
          version = "8.0.0";
        };
      };
      "highlight.js" = {
        "10.7.3" = {
          fetchInfo = {
            narHash = "sha256-BVVIUGojuqLer6FC+cQRtgzhsS0F3FtMhOow5HQ3jHI=";
            type = "tarball";
            url = "https://registry.npmjs.org/highlight.js/-/highlight.js-10.7.3.tgz";
          };
          ident = "highlight.js";
          ltype = "file";
          treeInfo = { };
          version = "10.7.3";
        };
        "11.8.0" = {
          fetchInfo = {
            narHash = "sha256-Fe/CBHUC9bxyoJlhwKyJCYz2FyDIuq8aRM9XXI7jOyI=";
            type = "tarball";
            url = "https://registry.npmjs.org/highlight.js/-/highlight.js-11.8.0.tgz";
          };
          ident = "highlight.js";
          ltype = "file";
          treeInfo = { };
          version = "11.8.0";
        };
      };
      hoist-non-react-statics = {
        "3.3.2" = {
          depInfo = {
            react-is = {
              descriptor = "^16.7.0";
              pin = "16.13.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-eZiFEkmy/HthIpyyfuVH6yWBrq2Ot6tD5yRndqHMoUM=";
            type = "tarball";
            url = "https://registry.npmjs.org/hoist-non-react-statics/-/hoist-non-react-statics-3.3.2.tgz";
          };
          ident = "hoist-non-react-statics";
          ltype = "file";
          version = "3.3.2";
        };
      };
      html-url-attributes = {
        "3.0.0" = {
          fetchInfo = {
            narHash = "sha256-ZqGTDHWHxlk6SBGkP2D1dhtrIsnoWRhtVQAwh3mjNmw=";
            type = "tarball";
            url = "https://registry.npmjs.org/html-url-attributes/-/html-url-attributes-3.0.0.tgz";
          };
          ident = "html-url-attributes";
          ltype = "file";
          treeInfo = { };
          version = "3.0.0";
        };
      };
      html-void-elements = {
        "3.0.0" = {
          fetchInfo = {
            narHash = "sha256-TKT0uHIAWsN4eScViazQsgtkvQaqkioraKAIXNDCQXM=";
            type = "tarball";
            url = "https://registry.npmjs.org/html-void-elements/-/html-void-elements-3.0.0.tgz";
          };
          ident = "html-void-elements";
          ltype = "file";
          treeInfo = { };
          version = "3.0.0";
        };
      };
      ignore = {
        "5.2.4" = {
          fetchInfo = {
            narHash = "sha256-fHACW7copflWCDPJUsCqYCSzJ6Gg5IQiwSQQRi9kK9s=";
            type = "tarball";
            url = "https://registry.npmjs.org/ignore/-/ignore-5.2.4.tgz";
          };
          ident = "ignore";
          ltype = "file";
          treeInfo = { };
          version = "5.2.4";
        };
      };
      import-fresh = {
        "3.3.0" = {
          depInfo = {
            parent-module = {
              descriptor = "^1.0.0";
              pin = "1.0.1";
              runtime = true;
            };
            resolve-from = {
              descriptor = "^4.0.0";
              pin = "4.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-wgIxG44lNfa7v7fwdcEEDXWhWkzNo8I850QRuK0jGj0=";
            type = "tarball";
            url = "https://registry.npmjs.org/import-fresh/-/import-fresh-3.3.0.tgz";
          };
          ident = "import-fresh";
          ltype = "file";
          version = "3.3.0";
        };
      };
      imurmurhash = {
        "0.1.4" = {
          fetchInfo = {
            narHash = "sha256-kQg6DzTfAqCJNsP9gs1WygIi03+4/AGeF43p9h4LH30=";
            type = "tarball";
            url = "https://registry.npmjs.org/imurmurhash/-/imurmurhash-0.1.4.tgz";
          };
          ident = "imurmurhash";
          ltype = "file";
          treeInfo = { };
          version = "0.1.4";
        };
      };
      inflight = {
        "1.0.6" = {
          depInfo = {
            once = {
              descriptor = "^1.3.0";
              pin = "1.4.0";
              runtime = true;
            };
            wrappy = {
              descriptor = "1";
              pin = "1.0.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-QYcVNxVNod45ft7XJVhWJCKuVPN95a8FwfAefYWKqhg=";
            type = "tarball";
            url = "https://registry.npmjs.org/inflight/-/inflight-1.0.6.tgz";
          };
          ident = "inflight";
          ltype = "file";
          version = "1.0.6";
        };
      };
      inherits = {
        "2.0.4" = {
          fetchInfo = {
            narHash = "sha256-EnwyCC7V9GbsUCFpqRNJtPNfbbEqyJTYxbRqR5SgYW0=";
            type = "tarball";
            url = "https://registry.npmjs.org/inherits/-/inherits-2.0.4.tgz";
          };
          ident = "inherits";
          ltype = "file";
          treeInfo = { };
          version = "2.0.4";
        };
      };
      inline-style-parser = {
        "0.1.1" = {
          fetchInfo = {
            narHash = "sha256-EHSgWowrw3811A8QCveFTYNpl6si0RqlShbKAycUupc=";
            type = "tarball";
            url = "https://registry.npmjs.org/inline-style-parser/-/inline-style-parser-0.1.1.tgz";
          };
          ident = "inline-style-parser";
          ltype = "file";
          treeInfo = { };
          version = "0.1.1";
        };
      };
      internal-slot = {
        "1.0.5" = {
          depInfo = {
            get-intrinsic = {
              descriptor = "^1.2.0";
              pin = "1.2.1";
              runtime = true;
            };
            has = {
              descriptor = "^1.0.3";
              pin = "1.0.3";
              runtime = true;
            };
            side-channel = {
              descriptor = "^1.0.4";
              pin = "1.0.4";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-eK9f78pfeMH3KsgSG/xJfY9Dwkyj+ODRoiyIvgaaK4A=";
            type = "tarball";
            url = "https://registry.npmjs.org/internal-slot/-/internal-slot-1.0.5.tgz";
          };
          ident = "internal-slot";
          ltype = "file";
          version = "1.0.5";
        };
      };
      is-alphabetical = {
        "2.0.1" = {
          fetchInfo = {
            narHash = "sha256-6sHxK2AL9yMAnyVFSrFg1uw7ZwyrxxCxLl85lROjMUQ=";
            type = "tarball";
            url = "https://registry.npmjs.org/is-alphabetical/-/is-alphabetical-2.0.1.tgz";
          };
          ident = "is-alphabetical";
          ltype = "file";
          treeInfo = { };
          version = "2.0.1";
        };
      };
      is-alphanumerical = {
        "2.0.1" = {
          depInfo = {
            is-alphabetical = {
              descriptor = "^2.0.0";
              pin = "2.0.1";
              runtime = true;
            };
            is-decimal = {
              descriptor = "^2.0.0";
              pin = "2.0.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-iwiQlJTP5eN5hu8Hnh48sMubtt2huOktLlMFiLhe5sg=";
            type = "tarball";
            url = "https://registry.npmjs.org/is-alphanumerical/-/is-alphanumerical-2.0.1.tgz";
          };
          ident = "is-alphanumerical";
          ltype = "file";
          version = "2.0.1";
        };
      };
      is-array-buffer = {
        "3.0.2" = {
          depInfo = {
            call-bind = {
              descriptor = "^1.0.2";
              pin = "1.0.2";
              runtime = true;
            };
            get-intrinsic = {
              descriptor = "^1.2.0";
              pin = "1.2.1";
              runtime = true;
            };
            is-typed-array = {
              descriptor = "^1.1.10";
              pin = "1.1.12";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-cente5TFioP5ObySfy4+ktghDmCgFGicBJxZhbjBpNg=";
            type = "tarball";
            url = "https://registry.npmjs.org/is-array-buffer/-/is-array-buffer-3.0.2.tgz";
          };
          ident = "is-array-buffer";
          ltype = "file";
          version = "3.0.2";
        };
      };
      is-arrayish = {
        "0.2.1" = {
          fetchInfo = {
            narHash = "sha256-wvuJg92GZxDL9IffjN5ttz8DRki65ZgZoM3Mr1V9IyM=";
            type = "tarball";
            url = "https://registry.npmjs.org/is-arrayish/-/is-arrayish-0.2.1.tgz";
          };
          ident = "is-arrayish";
          ltype = "file";
          treeInfo = { };
          version = "0.2.1";
        };
      };
      is-async-function = {
        "2.0.0" = {
          depInfo = {
            has-tostringtag = {
              descriptor = "^1.0.0";
              pin = "1.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-DtwPfSNZPHzW5Ji9Z+M0YDm9/3Lk3nq0f6OePaWiJ+8=";
            type = "tarball";
            url = "https://registry.npmjs.org/is-async-function/-/is-async-function-2.0.0.tgz";
          };
          ident = "is-async-function";
          ltype = "file";
          version = "2.0.0";
        };
      };
      is-bigint = {
        "1.0.4" = {
          depInfo = {
            has-bigints = {
              descriptor = "^1.0.1";
              pin = "1.0.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-GKH3x0bhVd9eRyfWcs89IHQJgjn/5h0mITbkxgg7mAg=";
            type = "tarball";
            url = "https://registry.npmjs.org/is-bigint/-/is-bigint-1.0.4.tgz";
          };
          ident = "is-bigint";
          ltype = "file";
          version = "1.0.4";
        };
      };
      is-boolean-object = {
        "1.1.2" = {
          depInfo = {
            call-bind = {
              descriptor = "^1.0.2";
              pin = "1.0.2";
              runtime = true;
            };
            has-tostringtag = {
              descriptor = "^1.0.0";
              pin = "1.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-/cvTh9+AMWF6iMMXCngaxj+LnPNCxatQFp/pSrgs74k=";
            type = "tarball";
            url = "https://registry.npmjs.org/is-boolean-object/-/is-boolean-object-1.1.2.tgz";
          };
          ident = "is-boolean-object";
          ltype = "file";
          version = "1.1.2";
        };
      };
      is-buffer = {
        "2.0.5" = {
          fetchInfo = {
            narHash = "sha256-t6PaOWkQDhJ5FpSNVhXO5P+BurY9F8QaRtuEOwLbBK8=";
            type = "tarball";
            url = "https://registry.npmjs.org/is-buffer/-/is-buffer-2.0.5.tgz";
          };
          ident = "is-buffer";
          ltype = "file";
          treeInfo = { };
          version = "2.0.5";
        };
      };
      is-callable = {
        "1.2.7" = {
          fetchInfo = {
            narHash = "sha256-7h/ZjgrSnEtMqP8EQvVCNjfvNS7ZQ03uQIqtAG7afmw=";
            type = "tarball";
            url = "https://registry.npmjs.org/is-callable/-/is-callable-1.2.7.tgz";
          };
          ident = "is-callable";
          ltype = "file";
          treeInfo = { };
          version = "1.2.7";
        };
      };
      is-core-module = {
        "2.13.0" = {
          depInfo = {
            has = {
              descriptor = "^1.0.3";
              pin = "1.0.3";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-Zfs85iR40drNuBag9ZL90jcygps8dljkurXcCiQo3Do=";
            type = "tarball";
            url = "https://registry.npmjs.org/is-core-module/-/is-core-module-2.13.0.tgz";
          };
          ident = "is-core-module";
          ltype = "file";
          version = "2.13.0";
        };
      };
      is-date-object = {
        "1.0.5" = {
          depInfo = {
            has-tostringtag = {
              descriptor = "^1.0.0";
              pin = "1.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-DOoOg9XTnjmck7pSLUl5chkS5FDZHmbwlkiIWi2ESwg=";
            type = "tarball";
            url = "https://registry.npmjs.org/is-date-object/-/is-date-object-1.0.5.tgz";
          };
          ident = "is-date-object";
          ltype = "file";
          version = "1.0.5";
        };
      };
      is-decimal = {
        "2.0.1" = {
          fetchInfo = {
            narHash = "sha256-qHZBUnsZ9zrgwN0esk/ysEDZbfsMYB+CfmXsD8QNHzU=";
            type = "tarball";
            url = "https://registry.npmjs.org/is-decimal/-/is-decimal-2.0.1.tgz";
          };
          ident = "is-decimal";
          ltype = "file";
          treeInfo = { };
          version = "2.0.1";
        };
      };
      is-extglob = {
        "2.1.1" = {
          fetchInfo = {
            narHash = "sha256-vY1Bx1tKKhqfbF3itxnDzWl3wA8dMl1GiNL93Bdb+1A=";
            type = "tarball";
            url = "https://registry.npmjs.org/is-extglob/-/is-extglob-2.1.1.tgz";
          };
          ident = "is-extglob";
          ltype = "file";
          treeInfo = { };
          version = "2.1.1";
        };
      };
      is-finalizationregistry = {
        "1.0.2" = {
          depInfo = {
            call-bind = {
              descriptor = "^1.0.2";
              pin = "1.0.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-7Gj2nbsEyCRTvIWbyERh3+YbwC34dOQvp60SVmfHAog=";
            type = "tarball";
            url = "https://registry.npmjs.org/is-finalizationregistry/-/is-finalizationregistry-1.0.2.tgz";
          };
          ident = "is-finalizationregistry";
          ltype = "file";
          version = "1.0.2";
        };
      };
      is-generator-function = {
        "1.0.10" = {
          depInfo = {
            has-tostringtag = {
              descriptor = "^1.0.0";
              pin = "1.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-zLoxBhopznS0XogJLUYboDPVzrbzZwfdlhoG2FF+GUw=";
            type = "tarball";
            url = "https://registry.npmjs.org/is-generator-function/-/is-generator-function-1.0.10.tgz";
          };
          ident = "is-generator-function";
          ltype = "file";
          version = "1.0.10";
        };
      };
      is-glob = {
        "4.0.3" = {
          depInfo = {
            is-extglob = {
              descriptor = "^2.1.1";
              pin = "2.1.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-7FIQemaZXYPFuIoAykkbzU8g5B2TlAUoymUpYM0QO9A=";
            type = "tarball";
            url = "https://registry.npmjs.org/is-glob/-/is-glob-4.0.3.tgz";
          };
          ident = "is-glob";
          ltype = "file";
          version = "4.0.3";
        };
      };
      is-hexadecimal = {
        "2.0.1" = {
          fetchInfo = {
            narHash = "sha256-TscDjujBrCb/oeAul/uYd7A/X5JtrJ6GmMD6wTQbbhI=";
            type = "tarball";
            url = "https://registry.npmjs.org/is-hexadecimal/-/is-hexadecimal-2.0.1.tgz";
          };
          ident = "is-hexadecimal";
          ltype = "file";
          treeInfo = { };
          version = "2.0.1";
        };
      };
      is-map = {
        "2.0.2" = {
          fetchInfo = {
            narHash = "sha256-E1hx+b8tJAW/vy7qWnKkC7mtn6i2kKEwW1tsZCLGUDU=";
            type = "tarball";
            url = "https://registry.npmjs.org/is-map/-/is-map-2.0.2.tgz";
          };
          ident = "is-map";
          ltype = "file";
          treeInfo = { };
          version = "2.0.2";
        };
      };
      is-negative-zero = {
        "2.0.2" = {
          fetchInfo = {
            narHash = "sha256-df2CjgfWqs/rALktCOr77RPoyjtKAReBT0yFXLDqFAo=";
            type = "tarball";
            url = "https://registry.npmjs.org/is-negative-zero/-/is-negative-zero-2.0.2.tgz";
          };
          ident = "is-negative-zero";
          ltype = "file";
          treeInfo = { };
          version = "2.0.2";
        };
      };
      is-number = {
        "7.0.0" = {
          fetchInfo = {
            narHash = "sha256-sOcAFDhYCindWvE4jW6RNeoCBP4VZEyS7M3dq7cGgNI=";
            type = "tarball";
            url = "https://registry.npmjs.org/is-number/-/is-number-7.0.0.tgz";
          };
          ident = "is-number";
          ltype = "file";
          treeInfo = { };
          version = "7.0.0";
        };
      };
      is-number-object = {
        "1.0.7" = {
          depInfo = {
            has-tostringtag = {
              descriptor = "^1.0.0";
              pin = "1.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-MLgeeh0r1+/h/F32pDU8xH/pnSoFw6JtTM9y6GF2ne8=";
            type = "tarball";
            url = "https://registry.npmjs.org/is-number-object/-/is-number-object-1.0.7.tgz";
          };
          ident = "is-number-object";
          ltype = "file";
          version = "1.0.7";
        };
      };
      is-path-inside = {
        "3.0.3" = {
          fetchInfo = {
            narHash = "sha256-LKpocwZBiRKJz6FreaEet7sFz8yCqtLeibCW5Os5m2Q=";
            type = "tarball";
            url = "https://registry.npmjs.org/is-path-inside/-/is-path-inside-3.0.3.tgz";
          };
          ident = "is-path-inside";
          ltype = "file";
          treeInfo = { };
          version = "3.0.3";
        };
      };
      is-plain-obj = {
        "4.1.0" = {
          fetchInfo = {
            narHash = "sha256-0BUSxtQOguybk3imCXRgzQWWgHmlVKR746VJsMsCZQI=";
            type = "tarball";
            url = "https://registry.npmjs.org/is-plain-obj/-/is-plain-obj-4.1.0.tgz";
          };
          ident = "is-plain-obj";
          ltype = "file";
          treeInfo = { };
          version = "4.1.0";
        };
      };
      is-reference = {
        "3.0.2" = {
          depInfo = {
            "@types/estree" = {
              descriptor = "*";
              pin = "1.0.5";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-19B6hnG2NztARmixp8v32HvGNZS7T3h5f9bzEwZNXAc=";
            type = "tarball";
            url = "https://registry.npmjs.org/is-reference/-/is-reference-3.0.2.tgz";
          };
          ident = "is-reference";
          ltype = "file";
          version = "3.0.2";
        };
      };
      is-regex = {
        "1.1.4" = {
          depInfo = {
            call-bind = {
              descriptor = "^1.0.2";
              pin = "1.0.2";
              runtime = true;
            };
            has-tostringtag = {
              descriptor = "^1.0.0";
              pin = "1.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-KgL5DJkp0EUQxKXR/HfjXwrUPfTY/rbhfQTt2384qM0=";
            type = "tarball";
            url = "https://registry.npmjs.org/is-regex/-/is-regex-1.1.4.tgz";
          };
          ident = "is-regex";
          ltype = "file";
          version = "1.1.4";
        };
      };
      is-set = {
        "2.0.2" = {
          fetchInfo = {
            narHash = "sha256-QQM7QKDIDj3dEo/LrwiO9midLu520ikO6T4oe7DrX9s=";
            type = "tarball";
            url = "https://registry.npmjs.org/is-set/-/is-set-2.0.2.tgz";
          };
          ident = "is-set";
          ltype = "file";
          treeInfo = { };
          version = "2.0.2";
        };
      };
      is-shared-array-buffer = {
        "1.0.2" = {
          depInfo = {
            call-bind = {
              descriptor = "^1.0.2";
              pin = "1.0.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-rebNppBowg+u/Gx3TI07QGZD0v26y5CxwdQ05B2Ei8k=";
            type = "tarball";
            url = "https://registry.npmjs.org/is-shared-array-buffer/-/is-shared-array-buffer-1.0.2.tgz";
          };
          ident = "is-shared-array-buffer";
          ltype = "file";
          version = "1.0.2";
        };
      };
      is-string = {
        "1.0.7" = {
          depInfo = {
            has-tostringtag = {
              descriptor = "^1.0.0";
              pin = "1.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-sGSG0tODo7omm2xgc/PIXmQbxr3CqLxeFJCJ3doOhCI=";
            type = "tarball";
            url = "https://registry.npmjs.org/is-string/-/is-string-1.0.7.tgz";
          };
          ident = "is-string";
          ltype = "file";
          version = "1.0.7";
        };
      };
      is-symbol = {
        "1.0.4" = {
          depInfo = {
            has-symbols = {
              descriptor = "^1.0.2";
              pin = "1.0.3";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-D6RS2woSBBiF6Sd9vb7CRmQDpk7qEkvkcF+2eNufyZk=";
            type = "tarball";
            url = "https://registry.npmjs.org/is-symbol/-/is-symbol-1.0.4.tgz";
          };
          ident = "is-symbol";
          ltype = "file";
          version = "1.0.4";
        };
      };
      is-typed-array = {
        "1.1.12" = {
          depInfo = {
            which-typed-array = {
              descriptor = "^1.1.11";
              pin = "1.1.11";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-STk0gB5cPrWs3P+ODY2g97ZtA6IOOtloNUAj0jy99bY=";
            type = "tarball";
            url = "https://registry.npmjs.org/is-typed-array/-/is-typed-array-1.1.12.tgz";
          };
          ident = "is-typed-array";
          ltype = "file";
          version = "1.1.12";
        };
      };
      is-weakmap = {
        "2.0.1" = {
          fetchInfo = {
            narHash = "sha256-brEWHBdrf8G8Yo/4pGYcsvqmu0CuR9tPEVUbJdJVhww=";
            type = "tarball";
            url = "https://registry.npmjs.org/is-weakmap/-/is-weakmap-2.0.1.tgz";
          };
          ident = "is-weakmap";
          ltype = "file";
          treeInfo = { };
          version = "2.0.1";
        };
      };
      is-weakref = {
        "1.0.2" = {
          depInfo = {
            call-bind = {
              descriptor = "^1.0.2";
              pin = "1.0.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-OIz4DKzypaeD/AYOhAgijzNIbaNnSDnLg9sCVXTbiN4=";
            type = "tarball";
            url = "https://registry.npmjs.org/is-weakref/-/is-weakref-1.0.2.tgz";
          };
          ident = "is-weakref";
          ltype = "file";
          version = "1.0.2";
        };
      };
      is-weakset = {
        "2.0.2" = {
          depInfo = {
            call-bind = {
              descriptor = "^1.0.2";
              pin = "1.0.2";
              runtime = true;
            };
            get-intrinsic = {
              descriptor = "^1.1.1";
              pin = "1.2.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-vTr6/ImEweEGITEJIvMuNVNoFooez6FLmQrcN14NVj8=";
            type = "tarball";
            url = "https://registry.npmjs.org/is-weakset/-/is-weakset-2.0.2.tgz";
          };
          ident = "is-weakset";
          ltype = "file";
          version = "2.0.2";
        };
      };
      isarray = {
        "2.0.5" = {
          fetchInfo = {
            narHash = "sha256-RJLBeZgYHQtWnj9N67T92krmNciVv5R1mefQjp9Inic=";
            type = "tarball";
            url = "https://registry.npmjs.org/isarray/-/isarray-2.0.5.tgz";
          };
          ident = "isarray";
          ltype = "file";
          treeInfo = { };
          version = "2.0.5";
        };
      };
      isexe = {
        "2.0.0" = {
          fetchInfo = {
            narHash = "sha256-l3Fv+HpHS6H1TqfC1WSGjsGlX08oDHyHdsEu9JQkvhE=";
            type = "tarball";
            url = "https://registry.npmjs.org/isexe/-/isexe-2.0.0.tgz";
          };
          ident = "isexe";
          ltype = "file";
          treeInfo = { };
          version = "2.0.0";
        };
      };
      "iterator.prototype" = {
        "1.1.2" = {
          depInfo = {
            define-properties = {
              descriptor = "^1.2.1";
              pin = "1.2.1";
              runtime = true;
            };
            get-intrinsic = {
              descriptor = "^1.2.1";
              pin = "1.2.1";
              runtime = true;
            };
            has-symbols = {
              descriptor = "^1.0.3";
              pin = "1.0.3";
              runtime = true;
            };
            "reflect.getprototypeof" = {
              descriptor = "^1.0.4";
              pin = "1.0.4";
              runtime = true;
            };
            set-function-name = {
              descriptor = "^2.0.1";
              pin = "2.0.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-dt7Cy83tjJiRdPeHAkE2oNiT/MDwLIweO4pNN/GLOVw=";
            type = "tarball";
            url = "https://registry.npmjs.org/iterator.prototype/-/iterator.prototype-1.1.2.tgz";
          };
          ident = "iterator.prototype";
          ltype = "file";
          version = "1.1.2";
        };
      };
      jest-worker = {
        "27.5.1" = {
          depInfo = {
            "@types/node" = {
              descriptor = "*";
              pin = "18.18.1";
              runtime = true;
            };
            merge-stream = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            supports-color = {
              descriptor = "^8.0.0";
              pin = "8.1.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-kG1ZGTmDBgLIVVuSymjIVO+oSg3hm1QQmGTrTC4Ct0k=";
            type = "tarball";
            url = "https://registry.npmjs.org/jest-worker/-/jest-worker-27.5.1.tgz";
          };
          ident = "jest-worker";
          ltype = "file";
          version = "27.5.1";
        };
      };
      js-tokens = {
        "4.0.0" = {
          fetchInfo = {
            narHash = "sha256-Dc0GyrdV+HX5ZTMTdtFfjh30QurY6nxA8wCQMZsnd6w=";
            type = "tarball";
            url = "https://registry.npmjs.org/js-tokens/-/js-tokens-4.0.0.tgz";
          };
          ident = "js-tokens";
          ltype = "file";
          treeInfo = { };
          version = "4.0.0";
        };
      };
      js-yaml = {
        "4.1.0" = {
          binInfo = {
            binPairs = {
              js-yaml = "bin/js-yaml.js";
            };
          };
          depInfo = {
            argparse = {
              descriptor = "^2.0.1";
              pin = "2.0.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-puppzIyc3zvi1et748xYGKqaZdZwBxnBhqjUHXHA898=";
            type = "tarball";
            url = "https://registry.npmjs.org/js-yaml/-/js-yaml-4.1.0.tgz";
          };
          ident = "js-yaml";
          ltype = "file";
          version = "4.1.0";
        };
      };
      json-parse-even-better-errors = {
        "2.3.1" = {
          fetchInfo = {
            narHash = "sha256-JLmbiGbR2cXNIiFjyKZj8WvbNwUEVpADUgztOocgA1s=";
            type = "tarball";
            url = "https://registry.npmjs.org/json-parse-even-better-errors/-/json-parse-even-better-errors-2.3.1.tgz";
          };
          ident = "json-parse-even-better-errors";
          ltype = "file";
          treeInfo = { };
          version = "2.3.1";
        };
      };
      json-schema-traverse = {
        "0.4.1" = {
          fetchInfo = {
            narHash = "sha256-6yxGXpY70Yc8jAAxR3YYhEXUc0SHZ3Peg+laVwXK9nQ=";
            type = "tarball";
            url = "https://registry.npmjs.org/json-schema-traverse/-/json-schema-traverse-0.4.1.tgz";
          };
          ident = "json-schema-traverse";
          ltype = "file";
          treeInfo = { };
          version = "0.4.1";
        };
      };
      json-stable-stringify-without-jsonify = {
        "1.0.1" = {
          fetchInfo = {
            narHash = "sha256-cxsnkpGiO9yUbm8LuBVJrbV2c3Pflghlra6EO35WgdM=";
            type = "tarball";
            url = "https://registry.npmjs.org/json-stable-stringify-without-jsonify/-/json-stable-stringify-without-jsonify-1.0.1.tgz";
          };
          ident = "json-stable-stringify-without-jsonify";
          ltype = "file";
          treeInfo = { };
          version = "1.0.1";
        };
      };
      json5 = {
        "1.0.2" = {
          binInfo = {
            binPairs = {
              json5 = "lib/cli.js";
            };
          };
          depInfo = {
            minimist = {
              descriptor = "^1.2.0";
              pin = "1.2.8";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-muEUSc3kL7gt6Qg1PymdAwY57H158NnEOB5/FlGPqOY=";
            type = "tarball";
            url = "https://registry.npmjs.org/json5/-/json5-1.0.2.tgz";
          };
          ident = "json5";
          ltype = "file";
          version = "1.0.2";
        };
      };
      jsx-ast-utils = {
        "3.3.3" = {
          depInfo = {
            array-includes = {
              descriptor = "^3.1.5";
              pin = "3.1.6";
              runtime = true;
            };
            "object.assign" = {
              descriptor = "^4.1.3";
              pin = "4.1.4";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-iRHxhACoLAG9HZtq1KO6lnXq4ehWREnkaghR1CYSPuI=";
            type = "tarball";
            url = "https://registry.npmjs.org/jsx-ast-utils/-/jsx-ast-utils-3.3.3.tgz";
          };
          ident = "jsx-ast-utils";
          ltype = "file";
          version = "3.3.3";
        };
      };
      kleur = {
        "4.1.5" = {
          fetchInfo = {
            narHash = "sha256-GfBnO6v505JHnsIcZv5iA+DxVSVnUHYAk/fX/eKR6u8=";
            type = "tarball";
            url = "https://registry.npmjs.org/kleur/-/kleur-4.1.5.tgz";
          };
          ident = "kleur";
          ltype = "file";
          treeInfo = { };
          version = "4.1.5";
        };
      };
      language-subtag-registry = {
        "0.3.22" = {
          fetchInfo = {
            narHash = "sha256-t6o6KNRUVs+U/IJbZH6ctsJFr90Czezi5LAR7CjppQY=";
            type = "tarball";
            url = "https://registry.npmjs.org/language-subtag-registry/-/language-subtag-registry-0.3.22.tgz";
          };
          ident = "language-subtag-registry";
          ltype = "file";
          treeInfo = { };
          version = "0.3.22";
        };
      };
      language-tags = {
        "1.0.5" = {
          depInfo = {
            language-subtag-registry = {
              descriptor = "~0.3.2";
              pin = "0.3.22";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-7LVx9miRFYOI8+O086LCWuB541C+p2hfR+v54YPGUgs=";
            type = "tarball";
            url = "https://registry.npmjs.org/language-tags/-/language-tags-1.0.5.tgz";
          };
          ident = "language-tags";
          ltype = "file";
          version = "1.0.5";
        };
      };
      levn = {
        "0.4.1" = {
          depInfo = {
            prelude-ls = {
              descriptor = "^1.2.1";
              pin = "1.2.1";
              runtime = true;
            };
            type-check = {
              descriptor = "~0.4.0";
              pin = "0.4.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-azArXDTc0Dj7aDEBLsNQ4XOUQ/Vo86h4oHfl4AtwvAQ=";
            type = "tarball";
            url = "https://registry.npmjs.org/levn/-/levn-0.4.1.tgz";
          };
          ident = "levn";
          ltype = "file";
          version = "0.4.1";
        };
      };
      lines-and-columns = {
        "1.2.4" = {
          fetchInfo = {
            narHash = "sha256-WUoaqN7ad2gwBKftukjtNRrFw19fcS7dRRog0pp4OHE=";
            type = "tarball";
            url = "https://registry.npmjs.org/lines-and-columns/-/lines-and-columns-1.2.4.tgz";
          };
          ident = "lines-and-columns";
          ltype = "file";
          treeInfo = { };
          version = "1.2.4";
        };
      };
      loader-runner = {
        "4.3.0" = {
          fetchInfo = {
            narHash = "sha256-+qUYWtvIQHdnKZALz7KCrdP7r53J/WobXvMTP3la0Co=";
            type = "tarball";
            url = "https://registry.npmjs.org/loader-runner/-/loader-runner-4.3.0.tgz";
          };
          ident = "loader-runner";
          ltype = "file";
          treeInfo = { };
          version = "4.3.0";
        };
      };
      locate-path = {
        "6.0.0" = {
          depInfo = {
            p-locate = {
              descriptor = "^5.0.0";
              pin = "5.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-bqbrOtZJVUwbqlw3MeIhr30gfcn1Unv2jM3LYAXal9Q=";
            type = "tarball";
            url = "https://registry.npmjs.org/locate-path/-/locate-path-6.0.0.tgz";
          };
          ident = "locate-path";
          ltype = "file";
          version = "6.0.0";
        };
      };
      lodash = {
        "4.17.21" = {
          fetchInfo = {
            narHash = "sha256-amyN064Yh6psvOfLgcpktd5dRNQStUYHHoIqiI6DMek=";
            type = "tarball";
            url = "https://registry.npmjs.org/lodash/-/lodash-4.17.21.tgz";
          };
          ident = "lodash";
          ltype = "file";
          treeInfo = { };
          version = "4.17.21";
        };
      };
      "lodash.merge" = {
        "4.6.2" = {
          fetchInfo = {
            narHash = "sha256-AnfgvzyOFLIADkPCDfsDKkaKULahu8+mA2KlIMIAg14=";
            type = "tarball";
            url = "https://registry.npmjs.org/lodash.merge/-/lodash.merge-4.6.2.tgz";
          };
          ident = "lodash.merge";
          ltype = "file";
          treeInfo = { };
          version = "4.6.2";
        };
      };
      longest-streak = {
        "3.1.0" = {
          fetchInfo = {
            narHash = "sha256-CSHnysz1Cem8VmbOXSPO3sYqMsFwtRmOIwQKbUM0pbY=";
            type = "tarball";
            url = "https://registry.npmjs.org/longest-streak/-/longest-streak-3.1.0.tgz";
          };
          ident = "longest-streak";
          ltype = "file";
          treeInfo = { };
          version = "3.1.0";
        };
      };
      loose-envify = {
        "1.4.0" = {
          binInfo = {
            binPairs = {
              loose-envify = "cli.js";
            };
          };
          depInfo = {
            js-tokens = {
              descriptor = "^3.0.0 || ^4.0.0";
              pin = "4.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-abQxb8UZImSEBRMsA9wep5NK2rpyd9JG0YeTGqz+jDk=";
            type = "tarball";
            url = "https://registry.npmjs.org/loose-envify/-/loose-envify-1.4.0.tgz";
          };
          ident = "loose-envify";
          ltype = "file";
          version = "1.4.0";
        };
      };
      lowlight = {
        "3.0.0" = {
          depInfo = {
            "@types/hast" = {
              descriptor = "^3.0.0";
              pin = "3.0.1";
              runtime = true;
            };
            devlop = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            "highlight.js" = {
              descriptor = "~11.8.0";
              pin = "11.8.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-qf/a7aPNHh/jWLzcWDd0GsnI5BpTJRSugl+iruaJtdk=";
            type = "tarball";
            url = "https://registry.npmjs.org/lowlight/-/lowlight-3.0.0.tgz";
          };
          ident = "lowlight";
          ltype = "file";
          version = "3.0.0";
        };
      };
      lru-cache = {
        "6.0.0" = {
          depInfo = {
            yallist = {
              descriptor = "^4.0.0";
              pin = "4.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-lBc6340YZYAh1Numj5iz418ChtGb3UUtRZLOYj/WJXg=";
            type = "tarball";
            url = "https://registry.npmjs.org/lru-cache/-/lru-cache-6.0.0.tgz";
          };
          ident = "lru-cache";
          ltype = "file";
          version = "6.0.0";
        };
      };
      "mark.js" = {
        "8.11.1" = {
          fetchInfo = {
            narHash = "sha256-nDZGQ15ZTXY+IedhZePQzjjALZRHM9jzr+cDWKIb22g=";
            type = "tarball";
            url = "https://registry.npmjs.org/mark.js/-/mark.js-8.11.1.tgz";
          };
          ident = "mark.js";
          ltype = "file";
          treeInfo = { };
          version = "8.11.1";
        };
      };
      markdown-extensions = {
        "1.1.1" = {
          fetchInfo = {
            narHash = "sha256-ObB7XbdwnLWFsRXQGIocCF19jH+2RqMw3NvonKOG7nQ=";
            type = "tarball";
            url = "https://registry.npmjs.org/markdown-extensions/-/markdown-extensions-1.1.1.tgz";
          };
          ident = "markdown-extensions";
          ltype = "file";
          treeInfo = { };
          version = "1.1.1";
        };
        "2.0.0" = {
          fetchInfo = {
            narHash = "sha256-Y+aPpti7K5uoizcmX6eXp0urn932uPOQW6++1P55r0Q=";
            type = "tarball";
            url = "https://registry.npmjs.org/markdown-extensions/-/markdown-extensions-2.0.0.tgz";
          };
          ident = "markdown-extensions";
          ltype = "file";
          treeInfo = { };
          version = "2.0.0";
        };
      };
      markdown-table = {
        "3.0.3" = {
          fetchInfo = {
            narHash = "sha256-JVFwcYAc15+6w6TVK6cSOJggGSsMatGTxKcVNawpcl0=";
            type = "tarball";
            url = "https://registry.npmjs.org/markdown-table/-/markdown-table-3.0.3.tgz";
          };
          ident = "markdown-table";
          ltype = "file";
          treeInfo = { };
          version = "3.0.3";
        };
      };
      mdast-util-definitions = {
        "5.1.2" = {
          depInfo = {
            "@types/mdast" = {
              descriptor = "^3.0.0";
              pin = "3.0.15";
              runtime = true;
            };
            "@types/unist" = {
              descriptor = "^2.0.0";
              pin = "2.0.10";
              runtime = true;
            };
            unist-util-visit = {
              descriptor = "^4.0.0";
              pin = "4.1.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-W3flV5zoLX6/DnXq1iCP+O1MLHvlp/21pCW0/QLzXFw=";
            type = "tarball";
            url = "https://registry.npmjs.org/mdast-util-definitions/-/mdast-util-definitions-5.1.2.tgz";
          };
          ident = "mdast-util-definitions";
          ltype = "file";
          version = "5.1.2";
        };
      };
      mdast-util-find-and-replace = {
        "3.0.1" = {
          depInfo = {
            "@types/mdast" = {
              descriptor = "^4.0.0";
              pin = "4.0.1";
              runtime = true;
            };
            escape-string-regexp = {
              descriptor = "^5.0.0";
              pin = "5.0.0";
              runtime = true;
            };
            unist-util-is = {
              descriptor = "^6.0.0";
              pin = "6.0.0";
              runtime = true;
            };
            unist-util-visit-parents = {
              descriptor = "^6.0.0";
              pin = "6.0.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-gzeVBfPju1GizrtgUTbd+SDuiVxm64hoWzxc/fJfDu0=";
            type = "tarball";
            url = "https://registry.npmjs.org/mdast-util-find-and-replace/-/mdast-util-find-and-replace-3.0.1.tgz";
          };
          ident = "mdast-util-find-and-replace";
          ltype = "file";
          version = "3.0.1";
        };
      };
      mdast-util-from-markdown = {
        "1.3.1" = {
          depInfo = {
            "@types/mdast" = {
              descriptor = "^3.0.0";
              pin = "3.0.15";
              runtime = true;
            };
            "@types/unist" = {
              descriptor = "^2.0.0";
              pin = "2.0.10";
              runtime = true;
            };
            decode-named-character-reference = {
              descriptor = "^1.0.0";
              pin = "1.0.2";
              runtime = true;
            };
            mdast-util-to-string = {
              descriptor = "^3.1.0";
              pin = "3.2.0";
              runtime = true;
            };
            micromark = {
              descriptor = "^3.0.0";
              pin = "3.2.0";
              runtime = true;
            };
            micromark-util-decode-numeric-character-reference = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-util-decode-string = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-util-normalize-identifier = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-util-symbol = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-util-types = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            unist-util-stringify-position = {
              descriptor = "^3.0.0";
              pin = "3.0.3";
              runtime = true;
            };
            uvu = {
              descriptor = "^0.5.0";
              pin = "0.5.6";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-IEAnDY+UinxS1rtvqqHko3vkmWR2wrar1Kefl1ws4jk=";
            type = "tarball";
            url = "https://registry.npmjs.org/mdast-util-from-markdown/-/mdast-util-from-markdown-1.3.1.tgz";
          };
          ident = "mdast-util-from-markdown";
          ltype = "file";
          version = "1.3.1";
        };
        "2.0.0" = {
          depInfo = {
            "@types/mdast" = {
              descriptor = "^4.0.0";
              pin = "4.0.1";
              runtime = true;
            };
            "@types/unist" = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
            decode-named-character-reference = {
              descriptor = "^1.0.0";
              pin = "1.0.2";
              runtime = true;
            };
            devlop = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            mdast-util-to-string = {
              descriptor = "^4.0.0";
              pin = "4.0.0";
              runtime = true;
            };
            micromark = {
              descriptor = "^4.0.0";
              pin = "4.0.0";
              runtime = true;
            };
            micromark-util-decode-numeric-character-reference = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-decode-string = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-normalize-identifier = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-symbol = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-types = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            unist-util-stringify-position = {
              descriptor = "^4.0.0";
              pin = "4.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-sIaYdvQ+XU+Yy6p7J8acPx79dN4Uapis0Jo0YQMtyyw=";
            type = "tarball";
            url = "https://registry.npmjs.org/mdast-util-from-markdown/-/mdast-util-from-markdown-2.0.0.tgz";
          };
          ident = "mdast-util-from-markdown";
          ltype = "file";
          version = "2.0.0";
        };
      };
      mdast-util-frontmatter = {
        "2.0.1" = {
          depInfo = {
            "@types/mdast" = {
              descriptor = "^4.0.0";
              pin = "4.0.1";
              runtime = true;
            };
            devlop = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            escape-string-regexp = {
              descriptor = "^5.0.0";
              pin = "5.0.0";
              runtime = true;
            };
            mdast-util-from-markdown = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            mdast-util-to-markdown = {
              descriptor = "^2.0.0";
              pin = "2.1.0";
              runtime = true;
            };
            micromark-extension-frontmatter = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-p59P3Lbc3olXIK8R0/qHWQH2Y0JhRg6QQl+tDCmUk+s=";
            type = "tarball";
            url = "https://registry.npmjs.org/mdast-util-frontmatter/-/mdast-util-frontmatter-2.0.1.tgz";
          };
          ident = "mdast-util-frontmatter";
          ltype = "file";
          version = "2.0.1";
        };
      };
      mdast-util-gfm = {
        "3.0.0" = {
          depInfo = {
            mdast-util-from-markdown = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            mdast-util-gfm-autolink-literal = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            mdast-util-gfm-footnote = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            mdast-util-gfm-strikethrough = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            mdast-util-gfm-table = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            mdast-util-gfm-task-list-item = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            mdast-util-to-markdown = {
              descriptor = "^2.0.0";
              pin = "2.1.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-tnKXd8rmiN8hT1wvwPB8ZkTRhqel7JpB/zi23VkxUj0=";
            type = "tarball";
            url = "https://registry.npmjs.org/mdast-util-gfm/-/mdast-util-gfm-3.0.0.tgz";
          };
          ident = "mdast-util-gfm";
          ltype = "file";
          version = "3.0.0";
        };
      };
      mdast-util-gfm-autolink-literal = {
        "2.0.0" = {
          depInfo = {
            "@types/mdast" = {
              descriptor = "^4.0.0";
              pin = "4.0.1";
              runtime = true;
            };
            ccount = {
              descriptor = "^2.0.0";
              pin = "2.0.1";
              runtime = true;
            };
            devlop = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            mdast-util-find-and-replace = {
              descriptor = "^3.0.0";
              pin = "3.0.1";
              runtime = true;
            };
            micromark-util-character = {
              descriptor = "^2.0.0";
              pin = "2.0.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-hfUES66/Xm3PN+CLos5UTRPipVHe5szRcUXoSZTlp1M=";
            type = "tarball";
            url = "https://registry.npmjs.org/mdast-util-gfm-autolink-literal/-/mdast-util-gfm-autolink-literal-2.0.0.tgz";
          };
          ident = "mdast-util-gfm-autolink-literal";
          ltype = "file";
          version = "2.0.0";
        };
      };
      mdast-util-gfm-footnote = {
        "2.0.0" = {
          depInfo = {
            "@types/mdast" = {
              descriptor = "^4.0.0";
              pin = "4.0.1";
              runtime = true;
            };
            devlop = {
              descriptor = "^1.1.0";
              pin = "1.1.0";
              runtime = true;
            };
            mdast-util-from-markdown = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            mdast-util-to-markdown = {
              descriptor = "^2.0.0";
              pin = "2.1.0";
              runtime = true;
            };
            micromark-util-normalize-identifier = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-o5FJq2JDsMbOyratRQr/iFEB3/TFWMQBM62CEXf+VVw=";
            type = "tarball";
            url = "https://registry.npmjs.org/mdast-util-gfm-footnote/-/mdast-util-gfm-footnote-2.0.0.tgz";
          };
          ident = "mdast-util-gfm-footnote";
          ltype = "file";
          version = "2.0.0";
        };
      };
      mdast-util-gfm-strikethrough = {
        "2.0.0" = {
          depInfo = {
            "@types/mdast" = {
              descriptor = "^4.0.0";
              pin = "4.0.1";
              runtime = true;
            };
            mdast-util-from-markdown = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            mdast-util-to-markdown = {
              descriptor = "^2.0.0";
              pin = "2.1.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-rFO4ArBGX8tpUb2l4M0LWK21WtCw+tNx+cUMfuO1guc=";
            type = "tarball";
            url = "https://registry.npmjs.org/mdast-util-gfm-strikethrough/-/mdast-util-gfm-strikethrough-2.0.0.tgz";
          };
          ident = "mdast-util-gfm-strikethrough";
          ltype = "file";
          version = "2.0.0";
        };
      };
      mdast-util-gfm-table = {
        "2.0.0" = {
          depInfo = {
            "@types/mdast" = {
              descriptor = "^4.0.0";
              pin = "4.0.1";
              runtime = true;
            };
            devlop = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            markdown-table = {
              descriptor = "^3.0.0";
              pin = "3.0.3";
              runtime = true;
            };
            mdast-util-from-markdown = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            mdast-util-to-markdown = {
              descriptor = "^2.0.0";
              pin = "2.1.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-LjETMhiKvo/p2qU0HwRMGHjn6gunYncHANfAU05w1o0=";
            type = "tarball";
            url = "https://registry.npmjs.org/mdast-util-gfm-table/-/mdast-util-gfm-table-2.0.0.tgz";
          };
          ident = "mdast-util-gfm-table";
          ltype = "file";
          version = "2.0.0";
        };
      };
      mdast-util-gfm-task-list-item = {
        "2.0.0" = {
          depInfo = {
            "@types/mdast" = {
              descriptor = "^4.0.0";
              pin = "4.0.1";
              runtime = true;
            };
            devlop = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            mdast-util-from-markdown = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            mdast-util-to-markdown = {
              descriptor = "^2.0.0";
              pin = "2.1.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-WfbYZ8oW0k1aBdmXzsC3uhezhmka3eWaWUNfJaf+YCI=";
            type = "tarball";
            url = "https://registry.npmjs.org/mdast-util-gfm-task-list-item/-/mdast-util-gfm-task-list-item-2.0.0.tgz";
          };
          ident = "mdast-util-gfm-task-list-item";
          ltype = "file";
          version = "2.0.0";
        };
      };
      mdast-util-mdx = {
        "2.0.1" = {
          depInfo = {
            mdast-util-from-markdown = {
              descriptor = "^1.0.0";
              pin = "1.3.1";
              runtime = true;
            };
            mdast-util-mdx-expression = {
              descriptor = "^1.0.0";
              pin = "1.3.2";
              runtime = true;
            };
            mdast-util-mdx-jsx = {
              descriptor = "^2.0.0";
              pin = "2.1.4";
              runtime = true;
            };
            mdast-util-mdxjs-esm = {
              descriptor = "^1.0.0";
              pin = "1.3.1";
              runtime = true;
            };
            mdast-util-to-markdown = {
              descriptor = "^1.0.0";
              pin = "1.5.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-2DJciqTG6byJn9vXy5JfhxjjMJzZG9vZf6EZw2QPI7s=";
            type = "tarball";
            url = "https://registry.npmjs.org/mdast-util-mdx/-/mdast-util-mdx-2.0.1.tgz";
          };
          ident = "mdast-util-mdx";
          ltype = "file";
          version = "2.0.1";
        };
        "3.0.0" = {
          depInfo = {
            mdast-util-from-markdown = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            mdast-util-mdx-expression = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            mdast-util-mdx-jsx = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
            mdast-util-mdxjs-esm = {
              descriptor = "^2.0.0";
              pin = "2.0.1";
              runtime = true;
            };
            mdast-util-to-markdown = {
              descriptor = "^2.0.0";
              pin = "2.1.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-fSselYNjtVnADle/cN+lY8UGn5EoDO2ZWRMltiwfl4Q=";
            type = "tarball";
            url = "https://registry.npmjs.org/mdast-util-mdx/-/mdast-util-mdx-3.0.0.tgz";
          };
          ident = "mdast-util-mdx";
          ltype = "file";
          version = "3.0.0";
        };
      };
      mdast-util-mdx-expression = {
        "1.3.2" = {
          depInfo = {
            "@types/estree-jsx" = {
              descriptor = "^1.0.0";
              pin = "1.0.3";
              runtime = true;
            };
            "@types/hast" = {
              descriptor = "^2.0.0";
              pin = "2.3.8";
              runtime = true;
            };
            "@types/mdast" = {
              descriptor = "^3.0.0";
              pin = "3.0.15";
              runtime = true;
            };
            mdast-util-from-markdown = {
              descriptor = "^1.0.0";
              pin = "1.3.1";
              runtime = true;
            };
            mdast-util-to-markdown = {
              descriptor = "^1.0.0";
              pin = "1.5.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-9f/BMIHbhEToJ0t66vsfn5mY2ipygT5kTWwhHws3Isw=";
            type = "tarball";
            url = "https://registry.npmjs.org/mdast-util-mdx-expression/-/mdast-util-mdx-expression-1.3.2.tgz";
          };
          ident = "mdast-util-mdx-expression";
          ltype = "file";
          version = "1.3.2";
        };
        "2.0.0" = {
          depInfo = {
            "@types/estree-jsx" = {
              descriptor = "^1.0.0";
              pin = "1.0.3";
              runtime = true;
            };
            "@types/hast" = {
              descriptor = "^3.0.0";
              pin = "3.0.1";
              runtime = true;
            };
            "@types/mdast" = {
              descriptor = "^4.0.0";
              pin = "4.0.1";
              runtime = true;
            };
            devlop = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            mdast-util-from-markdown = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            mdast-util-to-markdown = {
              descriptor = "^2.0.0";
              pin = "2.1.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-/37vn9yOwnctBEJjl49nFcKzc7iEQaAl32PMTLWl77Q=";
            type = "tarball";
            url = "https://registry.npmjs.org/mdast-util-mdx-expression/-/mdast-util-mdx-expression-2.0.0.tgz";
          };
          ident = "mdast-util-mdx-expression";
          ltype = "file";
          version = "2.0.0";
        };
      };
      mdast-util-mdx-jsx = {
        "2.1.4" = {
          depInfo = {
            "@types/estree-jsx" = {
              descriptor = "^1.0.0";
              pin = "1.0.3";
              runtime = true;
            };
            "@types/hast" = {
              descriptor = "^2.0.0";
              pin = "2.3.8";
              runtime = true;
            };
            "@types/mdast" = {
              descriptor = "^3.0.0";
              pin = "3.0.15";
              runtime = true;
            };
            "@types/unist" = {
              descriptor = "^2.0.0";
              pin = "2.0.10";
              runtime = true;
            };
            ccount = {
              descriptor = "^2.0.0";
              pin = "2.0.1";
              runtime = true;
            };
            mdast-util-from-markdown = {
              descriptor = "^1.1.0";
              pin = "1.3.1";
              runtime = true;
            };
            mdast-util-to-markdown = {
              descriptor = "^1.3.0";
              pin = "1.5.0";
              runtime = true;
            };
            parse-entities = {
              descriptor = "^4.0.0";
              pin = "4.0.1";
              runtime = true;
            };
            stringify-entities = {
              descriptor = "^4.0.0";
              pin = "4.0.3";
              runtime = true;
            };
            unist-util-remove-position = {
              descriptor = "^4.0.0";
              pin = "4.0.2";
              runtime = true;
            };
            unist-util-stringify-position = {
              descriptor = "^3.0.0";
              pin = "3.0.3";
              runtime = true;
            };
            vfile-message = {
              descriptor = "^3.0.0";
              pin = "3.1.4";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-O4Ihl0p4N9Qq/NcJBkeh5RLBjlrfJNg9voWdl/5Ga7s=";
            type = "tarball";
            url = "https://registry.npmjs.org/mdast-util-mdx-jsx/-/mdast-util-mdx-jsx-2.1.4.tgz";
          };
          ident = "mdast-util-mdx-jsx";
          ltype = "file";
          version = "2.1.4";
        };
        "3.0.0" = {
          depInfo = {
            "@types/estree-jsx" = {
              descriptor = "^1.0.0";
              pin = "1.0.3";
              runtime = true;
            };
            "@types/hast" = {
              descriptor = "^3.0.0";
              pin = "3.0.1";
              runtime = true;
            };
            "@types/mdast" = {
              descriptor = "^4.0.0";
              pin = "4.0.1";
              runtime = true;
            };
            "@types/unist" = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
            ccount = {
              descriptor = "^2.0.0";
              pin = "2.0.1";
              runtime = true;
            };
            devlop = {
              descriptor = "^1.1.0";
              pin = "1.1.0";
              runtime = true;
            };
            mdast-util-from-markdown = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            mdast-util-to-markdown = {
              descriptor = "^2.0.0";
              pin = "2.1.0";
              runtime = true;
            };
            parse-entities = {
              descriptor = "^4.0.0";
              pin = "4.0.1";
              runtime = true;
            };
            stringify-entities = {
              descriptor = "^4.0.0";
              pin = "4.0.3";
              runtime = true;
            };
            unist-util-remove-position = {
              descriptor = "^5.0.0";
              pin = "5.0.0";
              runtime = true;
            };
            unist-util-stringify-position = {
              descriptor = "^4.0.0";
              pin = "4.0.0";
              runtime = true;
            };
            vfile-message = {
              descriptor = "^4.0.0";
              pin = "4.0.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-846vYOxyxbOaaRHBwHbruYEjfJ5aiZ67nsAsKj7pfZo=";
            type = "tarball";
            url = "https://registry.npmjs.org/mdast-util-mdx-jsx/-/mdast-util-mdx-jsx-3.0.0.tgz";
          };
          ident = "mdast-util-mdx-jsx";
          ltype = "file";
          version = "3.0.0";
        };
      };
      mdast-util-mdxjs-esm = {
        "1.3.1" = {
          depInfo = {
            "@types/estree-jsx" = {
              descriptor = "^1.0.0";
              pin = "1.0.3";
              runtime = true;
            };
            "@types/hast" = {
              descriptor = "^2.0.0";
              pin = "2.3.8";
              runtime = true;
            };
            "@types/mdast" = {
              descriptor = "^3.0.0";
              pin = "3.0.15";
              runtime = true;
            };
            mdast-util-from-markdown = {
              descriptor = "^1.0.0";
              pin = "1.3.1";
              runtime = true;
            };
            mdast-util-to-markdown = {
              descriptor = "^1.0.0";
              pin = "1.5.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-ttTJbmeRVgfZGDLOMuYZy2Kyqqk/87a+H6hZRz12RUw=";
            type = "tarball";
            url = "https://registry.npmjs.org/mdast-util-mdxjs-esm/-/mdast-util-mdxjs-esm-1.3.1.tgz";
          };
          ident = "mdast-util-mdxjs-esm";
          ltype = "file";
          version = "1.3.1";
        };
        "2.0.1" = {
          depInfo = {
            "@types/estree-jsx" = {
              descriptor = "^1.0.0";
              pin = "1.0.3";
              runtime = true;
            };
            "@types/hast" = {
              descriptor = "^3.0.0";
              pin = "3.0.1";
              runtime = true;
            };
            "@types/mdast" = {
              descriptor = "^4.0.0";
              pin = "4.0.1";
              runtime = true;
            };
            devlop = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            mdast-util-from-markdown = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            mdast-util-to-markdown = {
              descriptor = "^2.0.0";
              pin = "2.1.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-23RXR2lNiqiD8t3Xm/IMJxPp5V1gIlgFVNXkJCsa8XI=";
            type = "tarball";
            url = "https://registry.npmjs.org/mdast-util-mdxjs-esm/-/mdast-util-mdxjs-esm-2.0.1.tgz";
          };
          ident = "mdast-util-mdxjs-esm";
          ltype = "file";
          version = "2.0.1";
        };
      };
      mdast-util-phrasing = {
        "3.0.1" = {
          depInfo = {
            "@types/mdast" = {
              descriptor = "^3.0.0";
              pin = "3.0.15";
              runtime = true;
            };
            unist-util-is = {
              descriptor = "^5.0.0";
              pin = "5.2.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-XoCi/Wrf0SyfrGMr3rZPLm6U5sdsuMNE6jFLCd3+IAw=";
            type = "tarball";
            url = "https://registry.npmjs.org/mdast-util-phrasing/-/mdast-util-phrasing-3.0.1.tgz";
          };
          ident = "mdast-util-phrasing";
          ltype = "file";
          version = "3.0.1";
        };
        "4.0.0" = {
          depInfo = {
            "@types/mdast" = {
              descriptor = "^4.0.0";
              pin = "4.0.1";
              runtime = true;
            };
            unist-util-is = {
              descriptor = "^6.0.0";
              pin = "6.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-aOnm/nwC8o1YYvbckjVU8VtPuFOZEf8xSeDqMX4ZBrU=";
            type = "tarball";
            url = "https://registry.npmjs.org/mdast-util-phrasing/-/mdast-util-phrasing-4.0.0.tgz";
          };
          ident = "mdast-util-phrasing";
          ltype = "file";
          version = "4.0.0";
        };
      };
      mdast-util-to-hast = {
        "12.3.0" = {
          depInfo = {
            "@types/hast" = {
              descriptor = "^2.0.0";
              pin = "2.3.8";
              runtime = true;
            };
            "@types/mdast" = {
              descriptor = "^3.0.0";
              pin = "3.0.15";
              runtime = true;
            };
            mdast-util-definitions = {
              descriptor = "^5.0.0";
              pin = "5.1.2";
              runtime = true;
            };
            micromark-util-sanitize-uri = {
              descriptor = "^1.1.0";
              pin = "1.2.0";
              runtime = true;
            };
            trim-lines = {
              descriptor = "^3.0.0";
              pin = "3.0.1";
              runtime = true;
            };
            unist-util-generated = {
              descriptor = "^2.0.0";
              pin = "2.0.1";
              runtime = true;
            };
            unist-util-position = {
              descriptor = "^4.0.0";
              pin = "4.0.4";
              runtime = true;
            };
            unist-util-visit = {
              descriptor = "^4.0.0";
              pin = "4.1.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-GmzQq8c8aat+1JrOE9sf8V9OjW8JoXKgmFc7P02INys=";
            type = "tarball";
            url = "https://registry.npmjs.org/mdast-util-to-hast/-/mdast-util-to-hast-12.3.0.tgz";
          };
          ident = "mdast-util-to-hast";
          ltype = "file";
          version = "12.3.0";
        };
        "13.0.2" = {
          depInfo = {
            "@types/hast" = {
              descriptor = "^3.0.0";
              pin = "3.0.1";
              runtime = true;
            };
            "@types/mdast" = {
              descriptor = "^4.0.0";
              pin = "4.0.1";
              runtime = true;
            };
            "@ungap/structured-clone" = {
              descriptor = "^1.0.0";
              pin = "1.2.0";
              runtime = true;
            };
            devlop = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-util-sanitize-uri = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            trim-lines = {
              descriptor = "^3.0.0";
              pin = "3.0.1";
              runtime = true;
            };
            unist-util-position = {
              descriptor = "^5.0.0";
              pin = "5.0.0";
              runtime = true;
            };
            unist-util-visit = {
              descriptor = "^5.0.0";
              pin = "5.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-49nj4Ii2RAMu23ku0gbhXnpLaR/XSAs1Z18RZR6kZ+g=";
            type = "tarball";
            url = "https://registry.npmjs.org/mdast-util-to-hast/-/mdast-util-to-hast-13.0.2.tgz";
          };
          ident = "mdast-util-to-hast";
          ltype = "file";
          version = "13.0.2";
        };
      };
      mdast-util-to-markdown = {
        "1.5.0" = {
          depInfo = {
            "@types/mdast" = {
              descriptor = "^3.0.0";
              pin = "3.0.15";
              runtime = true;
            };
            "@types/unist" = {
              descriptor = "^2.0.0";
              pin = "2.0.10";
              runtime = true;
            };
            longest-streak = {
              descriptor = "^3.0.0";
              pin = "3.1.0";
              runtime = true;
            };
            mdast-util-phrasing = {
              descriptor = "^3.0.0";
              pin = "3.0.1";
              runtime = true;
            };
            mdast-util-to-string = {
              descriptor = "^3.0.0";
              pin = "3.2.0";
              runtime = true;
            };
            micromark-util-decode-string = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            unist-util-visit = {
              descriptor = "^4.0.0";
              pin = "4.1.2";
              runtime = true;
            };
            zwitch = {
              descriptor = "^2.0.0";
              pin = "2.0.4";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-tGcuMw1PNQVn0d3HiEeJNNN3T2CkRIE9C/CjadOALwY=";
            type = "tarball";
            url = "https://registry.npmjs.org/mdast-util-to-markdown/-/mdast-util-to-markdown-1.5.0.tgz";
          };
          ident = "mdast-util-to-markdown";
          ltype = "file";
          version = "1.5.0";
        };
        "2.1.0" = {
          depInfo = {
            "@types/mdast" = {
              descriptor = "^4.0.0";
              pin = "4.0.1";
              runtime = true;
            };
            "@types/unist" = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
            longest-streak = {
              descriptor = "^3.0.0";
              pin = "3.1.0";
              runtime = true;
            };
            mdast-util-phrasing = {
              descriptor = "^4.0.0";
              pin = "4.0.0";
              runtime = true;
            };
            mdast-util-to-string = {
              descriptor = "^4.0.0";
              pin = "4.0.0";
              runtime = true;
            };
            micromark-util-decode-string = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            unist-util-visit = {
              descriptor = "^5.0.0";
              pin = "5.0.0";
              runtime = true;
            };
            zwitch = {
              descriptor = "^2.0.0";
              pin = "2.0.4";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-lV9YYYEeXaHHacOuHUpZfAAZ5vR6MjceLBVnT51vW48=";
            type = "tarball";
            url = "https://registry.npmjs.org/mdast-util-to-markdown/-/mdast-util-to-markdown-2.1.0.tgz";
          };
          ident = "mdast-util-to-markdown";
          ltype = "file";
          version = "2.1.0";
        };
      };
      mdast-util-to-string = {
        "3.2.0" = {
          depInfo = {
            "@types/mdast" = {
              descriptor = "^3.0.0";
              pin = "3.0.15";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-cQtDpY3UJ2fohMneCCinjHd++s7s/BIfM/WrzExsWqc=";
            type = "tarball";
            url = "https://registry.npmjs.org/mdast-util-to-string/-/mdast-util-to-string-3.2.0.tgz";
          };
          ident = "mdast-util-to-string";
          ltype = "file";
          version = "3.2.0";
        };
        "4.0.0" = {
          depInfo = {
            "@types/mdast" = {
              descriptor = "^4.0.0";
              pin = "4.0.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-u9h5a7fRIs3EUZZP51ynp0nSXtMnelPWpieEqgMaUXY=";
            type = "tarball";
            url = "https://registry.npmjs.org/mdast-util-to-string/-/mdast-util-to-string-4.0.0.tgz";
          };
          ident = "mdast-util-to-string";
          ltype = "file";
          version = "4.0.0";
        };
      };
      merge-stream = {
        "2.0.0" = {
          fetchInfo = {
            narHash = "sha256-0ZC11XNq6TaUxEXOV9bwaS71Qd3wQoqZAkFRvtnab5I=";
            type = "tarball";
            url = "https://registry.npmjs.org/merge-stream/-/merge-stream-2.0.0.tgz";
          };
          ident = "merge-stream";
          ltype = "file";
          treeInfo = { };
          version = "2.0.0";
        };
      };
      merge2 = {
        "1.4.1" = {
          fetchInfo = {
            narHash = "sha256-EzedluwbDyO4GYNtgb6NskqXg5w/gF/jdYO2UNyiUDc=";
            type = "tarball";
            url = "https://registry.npmjs.org/merge2/-/merge2-1.4.1.tgz";
          };
          ident = "merge2";
          ltype = "file";
          treeInfo = { };
          version = "1.4.1";
        };
      };
      micromark = {
        "3.2.0" = {
          depInfo = {
            "@types/debug" = {
              descriptor = "^4.0.0";
              pin = "4.1.9";
              runtime = true;
            };
            debug = {
              descriptor = "^4.0.0";
              pin = "4.3.4";
              runtime = true;
            };
            decode-named-character-reference = {
              descriptor = "^1.0.0";
              pin = "1.0.2";
              runtime = true;
            };
            micromark-core-commonmark = {
              descriptor = "^1.0.1";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-factory-space = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-util-character = {
              descriptor = "^1.0.0";
              pin = "1.2.0";
              runtime = true;
            };
            micromark-util-chunked = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-util-combine-extensions = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-util-decode-numeric-character-reference = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-util-encode = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-util-normalize-identifier = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-util-resolve-all = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-util-sanitize-uri = {
              descriptor = "^1.0.0";
              pin = "1.2.0";
              runtime = true;
            };
            micromark-util-subtokenize = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-util-symbol = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-util-types = {
              descriptor = "^1.0.1";
              pin = "1.1.0";
              runtime = true;
            };
            uvu = {
              descriptor = "^0.5.0";
              pin = "0.5.6";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-MMvznzuXSwZoY2rdlJwDzXTonybRU0YsBliUCEJQTv4=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark/-/micromark-3.2.0.tgz";
          };
          ident = "micromark";
          ltype = "file";
          version = "3.2.0";
        };
        "4.0.0" = {
          depInfo = {
            "@types/debug" = {
              descriptor = "^4.0.0";
              pin = "4.1.9";
              runtime = true;
            };
            debug = {
              descriptor = "^4.0.0";
              pin = "4.3.4";
              runtime = true;
            };
            decode-named-character-reference = {
              descriptor = "^1.0.0";
              pin = "1.0.2";
              runtime = true;
            };
            devlop = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-core-commonmark = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-factory-space = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-character = {
              descriptor = "^2.0.0";
              pin = "2.0.1";
              runtime = true;
            };
            micromark-util-chunked = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-combine-extensions = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-decode-numeric-character-reference = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-encode = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-normalize-identifier = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-resolve-all = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-sanitize-uri = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-subtokenize = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-symbol = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-types = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-khjqq4YQtuQAvlmdVSTE+oiTaTsbxXDA+TsQu5Ud1AM=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark/-/micromark-4.0.0.tgz";
          };
          ident = "micromark";
          ltype = "file";
          version = "4.0.0";
        };
      };
      micromark-core-commonmark = {
        "1.1.0" = {
          depInfo = {
            decode-named-character-reference = {
              descriptor = "^1.0.0";
              pin = "1.0.2";
              runtime = true;
            };
            micromark-factory-destination = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-factory-label = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-factory-space = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-factory-title = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-factory-whitespace = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-util-character = {
              descriptor = "^1.0.0";
              pin = "1.2.0";
              runtime = true;
            };
            micromark-util-chunked = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-util-classify-character = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-util-html-tag-name = {
              descriptor = "^1.0.0";
              pin = "1.2.0";
              runtime = true;
            };
            micromark-util-normalize-identifier = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-util-resolve-all = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-util-subtokenize = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-util-symbol = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-util-types = {
              descriptor = "^1.0.1";
              pin = "1.1.0";
              runtime = true;
            };
            uvu = {
              descriptor = "^0.5.0";
              pin = "0.5.6";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-JkJnPediE8cC2Apx5FIT35EgaFZe9zhOoNOgLftD6Fo=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-core-commonmark/-/micromark-core-commonmark-1.1.0.tgz";
          };
          ident = "micromark-core-commonmark";
          ltype = "file";
          version = "1.1.0";
        };
        "2.0.0" = {
          depInfo = {
            decode-named-character-reference = {
              descriptor = "^1.0.0";
              pin = "1.0.2";
              runtime = true;
            };
            devlop = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-factory-destination = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-factory-label = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-factory-space = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-factory-title = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-factory-whitespace = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-character = {
              descriptor = "^2.0.0";
              pin = "2.0.1";
              runtime = true;
            };
            micromark-util-chunked = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-classify-character = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-html-tag-name = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-normalize-identifier = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-resolve-all = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-subtokenize = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-symbol = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-types = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-W5vWeyQNRJzbOvghDut9n1+ybVpcijazyfmpIY7QD9o=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-core-commonmark/-/micromark-core-commonmark-2.0.0.tgz";
          };
          ident = "micromark-core-commonmark";
          ltype = "file";
          version = "2.0.0";
        };
      };
      micromark-extension-frontmatter = {
        "2.0.0" = {
          depInfo = {
            fault = {
              descriptor = "^2.0.0";
              pin = "2.0.1";
              runtime = true;
            };
            micromark-util-character = {
              descriptor = "^2.0.0";
              pin = "2.0.1";
              runtime = true;
            };
            micromark-util-symbol = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-types = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-sFMHEo84bfB0kqI0gmWWOVp/NvFVH24k+cHx5g2velE=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-extension-frontmatter/-/micromark-extension-frontmatter-2.0.0.tgz";
          };
          ident = "micromark-extension-frontmatter";
          ltype = "file";
          version = "2.0.0";
        };
      };
      micromark-extension-gfm = {
        "3.0.0" = {
          depInfo = {
            micromark-extension-gfm-autolink-literal = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-extension-gfm-footnote = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-extension-gfm-strikethrough = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-extension-gfm-table = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-extension-gfm-tagfilter = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-extension-gfm-task-list-item = {
              descriptor = "^2.0.0";
              pin = "2.0.1";
              runtime = true;
            };
            micromark-util-combine-extensions = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-types = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-mzVpvDumZ3HzJmBvIMnIB4d8jmY0vBfr50jJu6UmPck=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-extension-gfm/-/micromark-extension-gfm-3.0.0.tgz";
          };
          ident = "micromark-extension-gfm";
          ltype = "file";
          version = "3.0.0";
        };
      };
      micromark-extension-gfm-autolink-literal = {
        "2.0.0" = {
          depInfo = {
            micromark-util-character = {
              descriptor = "^2.0.0";
              pin = "2.0.1";
              runtime = true;
            };
            micromark-util-sanitize-uri = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-symbol = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-types = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-G/EAbY5JHSpLPhyRYErZ56oGCfJoYzo6XtgAmF0GTIg=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-extension-gfm-autolink-literal/-/micromark-extension-gfm-autolink-literal-2.0.0.tgz";
          };
          ident = "micromark-extension-gfm-autolink-literal";
          ltype = "file";
          version = "2.0.0";
        };
      };
      micromark-extension-gfm-footnote = {
        "2.0.0" = {
          depInfo = {
            devlop = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-core-commonmark = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-factory-space = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-character = {
              descriptor = "^2.0.0";
              pin = "2.0.1";
              runtime = true;
            };
            micromark-util-normalize-identifier = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-sanitize-uri = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-symbol = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-types = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-6ZQw9Wmu8YrbOxdHVnXCE1eWlF35b96KrBHudjJec6I=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-extension-gfm-footnote/-/micromark-extension-gfm-footnote-2.0.0.tgz";
          };
          ident = "micromark-extension-gfm-footnote";
          ltype = "file";
          version = "2.0.0";
        };
      };
      micromark-extension-gfm-strikethrough = {
        "2.0.0" = {
          depInfo = {
            devlop = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-util-chunked = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-classify-character = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-resolve-all = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-symbol = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-types = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-HURnhNG4hXu1HiO84vvlTVk9I4ZxuYZuUgDhr9VCYD8=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-extension-gfm-strikethrough/-/micromark-extension-gfm-strikethrough-2.0.0.tgz";
          };
          ident = "micromark-extension-gfm-strikethrough";
          ltype = "file";
          version = "2.0.0";
        };
      };
      micromark-extension-gfm-table = {
        "2.0.0" = {
          depInfo = {
            devlop = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-factory-space = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-character = {
              descriptor = "^2.0.0";
              pin = "2.0.1";
              runtime = true;
            };
            micromark-util-symbol = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-types = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-LJFXSAgYe4DKCGKtPuZwFzXUzBdyKq7S5HmnHQ0MPGU=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-extension-gfm-table/-/micromark-extension-gfm-table-2.0.0.tgz";
          };
          ident = "micromark-extension-gfm-table";
          ltype = "file";
          version = "2.0.0";
        };
      };
      micromark-extension-gfm-tagfilter = {
        "2.0.0" = {
          depInfo = {
            micromark-util-types = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-sTeAYan1qqTZubR41UhoF4wi+nM0aqWgRy2I+FiAVTg=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-extension-gfm-tagfilter/-/micromark-extension-gfm-tagfilter-2.0.0.tgz";
          };
          ident = "micromark-extension-gfm-tagfilter";
          ltype = "file";
          version = "2.0.0";
        };
      };
      micromark-extension-gfm-task-list-item = {
        "2.0.1" = {
          depInfo = {
            devlop = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-factory-space = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-character = {
              descriptor = "^2.0.0";
              pin = "2.0.1";
              runtime = true;
            };
            micromark-util-symbol = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-types = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-ixs0+dQS34j/EgHPmZzQGUqshnkgqdXubZqHQrCtajs=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-extension-gfm-task-list-item/-/micromark-extension-gfm-task-list-item-2.0.1.tgz";
          };
          ident = "micromark-extension-gfm-task-list-item";
          ltype = "file";
          version = "2.0.1";
        };
      };
      micromark-extension-mdx-expression = {
        "1.0.8" = {
          depInfo = {
            "@types/estree" = {
              descriptor = "^1.0.0";
              pin = "1.0.5";
              runtime = true;
            };
            micromark-factory-mdx-expression = {
              descriptor = "^1.0.0";
              pin = "1.0.9";
              runtime = true;
            };
            micromark-factory-space = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-util-character = {
              descriptor = "^1.0.0";
              pin = "1.2.0";
              runtime = true;
            };
            micromark-util-events-to-acorn = {
              descriptor = "^1.0.0";
              pin = "1.2.3";
              runtime = true;
            };
            micromark-util-symbol = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-util-types = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            uvu = {
              descriptor = "^0.5.0";
              pin = "0.5.6";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-Dox+lzzNyyH20Xm04h+Vy1/ETlJLnzjVVjVPDbIYT64=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-extension-mdx-expression/-/micromark-extension-mdx-expression-1.0.8.tgz";
          };
          ident = "micromark-extension-mdx-expression";
          ltype = "file";
          version = "1.0.8";
        };
        "3.0.0" = {
          depInfo = {
            "@types/estree" = {
              descriptor = "^1.0.0";
              pin = "1.0.5";
              runtime = true;
            };
            devlop = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-factory-mdx-expression = {
              descriptor = "^2.0.0";
              pin = "2.0.1";
              runtime = true;
            };
            micromark-factory-space = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-character = {
              descriptor = "^2.0.0";
              pin = "2.0.1";
              runtime = true;
            };
            micromark-util-events-to-acorn = {
              descriptor = "^2.0.0";
              pin = "2.0.2";
              runtime = true;
            };
            micromark-util-symbol = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-types = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-/YAmMkoE+Jhk//EoVVQ9qVmdeqR6hw9/GlVFcCNUCCk=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-extension-mdx-expression/-/micromark-extension-mdx-expression-3.0.0.tgz";
          };
          ident = "micromark-extension-mdx-expression";
          ltype = "file";
          version = "3.0.0";
        };
      };
      micromark-extension-mdx-jsx = {
        "1.0.5" = {
          depInfo = {
            "@types/acorn" = {
              descriptor = "^4.0.0";
              pin = "4.0.6";
              runtime = true;
            };
            "@types/estree" = {
              descriptor = "^1.0.0";
              pin = "1.0.5";
              runtime = true;
            };
            estree-util-is-identifier-name = {
              descriptor = "^2.0.0";
              pin = "2.1.0";
              runtime = true;
            };
            micromark-factory-mdx-expression = {
              descriptor = "^1.0.0";
              pin = "1.0.9";
              runtime = true;
            };
            micromark-factory-space = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-util-character = {
              descriptor = "^1.0.0";
              pin = "1.2.0";
              runtime = true;
            };
            micromark-util-symbol = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-util-types = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            uvu = {
              descriptor = "^0.5.0";
              pin = "0.5.6";
              runtime = true;
            };
            vfile-message = {
              descriptor = "^3.0.0";
              pin = "3.1.4";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-tJKDoXbMGtwhgxXQWRsUut0uS7Bv/eHo9u1ys8fllIk=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-extension-mdx-jsx/-/micromark-extension-mdx-jsx-1.0.5.tgz";
          };
          ident = "micromark-extension-mdx-jsx";
          ltype = "file";
          version = "1.0.5";
        };
        "3.0.0" = {
          depInfo = {
            "@types/acorn" = {
              descriptor = "^4.0.0";
              pin = "4.0.6";
              runtime = true;
            };
            "@types/estree" = {
              descriptor = "^1.0.0";
              pin = "1.0.5";
              runtime = true;
            };
            devlop = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            estree-util-is-identifier-name = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
            micromark-factory-mdx-expression = {
              descriptor = "^2.0.0";
              pin = "2.0.1";
              runtime = true;
            };
            micromark-factory-space = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-character = {
              descriptor = "^2.0.0";
              pin = "2.0.1";
              runtime = true;
            };
            micromark-util-symbol = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-types = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            vfile-message = {
              descriptor = "^4.0.0";
              pin = "4.0.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-Z6YgFAzzEamesnl1HPM54PpCZ+CCbiYqkDn+3PSKlng=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-extension-mdx-jsx/-/micromark-extension-mdx-jsx-3.0.0.tgz";
          };
          ident = "micromark-extension-mdx-jsx";
          ltype = "file";
          version = "3.0.0";
        };
      };
      micromark-extension-mdx-md = {
        "1.0.1" = {
          depInfo = {
            micromark-util-types = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-Bs2nCwSr8VuzzxXMX0tc5xRbfdSOXG2FhbK1bXf9n3M=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-extension-mdx-md/-/micromark-extension-mdx-md-1.0.1.tgz";
          };
          ident = "micromark-extension-mdx-md";
          ltype = "file";
          version = "1.0.1";
        };
        "2.0.0" = {
          depInfo = {
            micromark-util-types = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-E4TJMhfet/Opz4c4nxA/JCN2xILUX32OZ7IdOKpkpbE=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-extension-mdx-md/-/micromark-extension-mdx-md-2.0.0.tgz";
          };
          ident = "micromark-extension-mdx-md";
          ltype = "file";
          version = "2.0.0";
        };
      };
      micromark-extension-mdxjs = {
        "1.0.1" = {
          depInfo = {
            acorn = {
              descriptor = "^8.0.0";
              pin = "8.10.0";
              runtime = true;
            };
            acorn-jsx = {
              descriptor = "^5.0.0";
              pin = "5.3.2";
              runtime = true;
            };
            micromark-extension-mdx-expression = {
              descriptor = "^1.0.0";
              pin = "1.0.8";
              runtime = true;
            };
            micromark-extension-mdx-jsx = {
              descriptor = "^1.0.0";
              pin = "1.0.5";
              runtime = true;
            };
            micromark-extension-mdx-md = {
              descriptor = "^1.0.0";
              pin = "1.0.1";
              runtime = true;
            };
            micromark-extension-mdxjs-esm = {
              descriptor = "^1.0.0";
              pin = "1.0.5";
              runtime = true;
            };
            micromark-util-combine-extensions = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-util-types = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-RFHkWbC+vqQ1GquqAi7Ga2TNRPGy+CzlXAy1MOqRBHo=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-extension-mdxjs/-/micromark-extension-mdxjs-1.0.1.tgz";
          };
          ident = "micromark-extension-mdxjs";
          ltype = "file";
          version = "1.0.1";
        };
        "3.0.0" = {
          depInfo = {
            acorn = {
              descriptor = "^8.0.0";
              pin = "8.10.0";
              runtime = true;
            };
            acorn-jsx = {
              descriptor = "^5.0.0";
              pin = "5.3.2";
              runtime = true;
            };
            micromark-extension-mdx-expression = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
            micromark-extension-mdx-jsx = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
            micromark-extension-mdx-md = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-extension-mdxjs-esm = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
            micromark-util-combine-extensions = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-types = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-errS1VfSRlpc325HJLvgGuRRr5D3rYrEyGez8N7LOiU=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-extension-mdxjs/-/micromark-extension-mdxjs-3.0.0.tgz";
          };
          ident = "micromark-extension-mdxjs";
          ltype = "file";
          version = "3.0.0";
        };
      };
      micromark-extension-mdxjs-esm = {
        "1.0.5" = {
          depInfo = {
            "@types/estree" = {
              descriptor = "^1.0.0";
              pin = "1.0.5";
              runtime = true;
            };
            micromark-core-commonmark = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-util-character = {
              descriptor = "^1.0.0";
              pin = "1.2.0";
              runtime = true;
            };
            micromark-util-events-to-acorn = {
              descriptor = "^1.0.0";
              pin = "1.2.3";
              runtime = true;
            };
            micromark-util-symbol = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-util-types = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            unist-util-position-from-estree = {
              descriptor = "^1.1.0";
              pin = "1.1.2";
              runtime = true;
            };
            uvu = {
              descriptor = "^0.5.0";
              pin = "0.5.6";
              runtime = true;
            };
            vfile-message = {
              descriptor = "^3.0.0";
              pin = "3.1.4";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-XRd5lSj39b2t7WvSj9FQjHFoClHY+0QeEX+fP4fAAdg=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-extension-mdxjs-esm/-/micromark-extension-mdxjs-esm-1.0.5.tgz";
          };
          ident = "micromark-extension-mdxjs-esm";
          ltype = "file";
          version = "1.0.5";
        };
        "3.0.0" = {
          depInfo = {
            "@types/estree" = {
              descriptor = "^1.0.0";
              pin = "1.0.5";
              runtime = true;
            };
            devlop = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-core-commonmark = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-character = {
              descriptor = "^2.0.0";
              pin = "2.0.1";
              runtime = true;
            };
            micromark-util-events-to-acorn = {
              descriptor = "^2.0.0";
              pin = "2.0.2";
              runtime = true;
            };
            micromark-util-symbol = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-types = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            unist-util-position-from-estree = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            vfile-message = {
              descriptor = "^4.0.0";
              pin = "4.0.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-ODY+KoVYfx4veJvYlC4pwePuzMXT7BlN49SRYwn5/Sg=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-extension-mdxjs-esm/-/micromark-extension-mdxjs-esm-3.0.0.tgz";
          };
          ident = "micromark-extension-mdxjs-esm";
          ltype = "file";
          version = "3.0.0";
        };
      };
      micromark-factory-destination = {
        "1.1.0" = {
          depInfo = {
            micromark-util-character = {
              descriptor = "^1.0.0";
              pin = "1.2.0";
              runtime = true;
            };
            micromark-util-symbol = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-util-types = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-SBI0XUyGKl9X758zaE/Qs2XSk/LuLdbHKJL52XLeNtU=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-factory-destination/-/micromark-factory-destination-1.1.0.tgz";
          };
          ident = "micromark-factory-destination";
          ltype = "file";
          version = "1.1.0";
        };
        "2.0.0" = {
          depInfo = {
            micromark-util-character = {
              descriptor = "^2.0.0";
              pin = "2.0.1";
              runtime = true;
            };
            micromark-util-symbol = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-types = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-AQPSL2huwGf9tZ8p5Z4KCa6eOeD5/TxyWvSGW8ZaycQ=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-factory-destination/-/micromark-factory-destination-2.0.0.tgz";
          };
          ident = "micromark-factory-destination";
          ltype = "file";
          version = "2.0.0";
        };
      };
      micromark-factory-label = {
        "1.1.0" = {
          depInfo = {
            micromark-util-character = {
              descriptor = "^1.0.0";
              pin = "1.2.0";
              runtime = true;
            };
            micromark-util-symbol = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-util-types = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            uvu = {
              descriptor = "^0.5.0";
              pin = "0.5.6";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-VZWsqxakHNN+kanAjSCrNAPI/gRR9cf3ZmIgJIaq9Ew=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-factory-label/-/micromark-factory-label-1.1.0.tgz";
          };
          ident = "micromark-factory-label";
          ltype = "file";
          version = "1.1.0";
        };
        "2.0.0" = {
          depInfo = {
            devlop = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-util-character = {
              descriptor = "^2.0.0";
              pin = "2.0.1";
              runtime = true;
            };
            micromark-util-symbol = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-types = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-Emma/13/P95bZMXhE62FRY6/Y8KiYH8Y0lzSHcyrXZM=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-factory-label/-/micromark-factory-label-2.0.0.tgz";
          };
          ident = "micromark-factory-label";
          ltype = "file";
          version = "2.0.0";
        };
      };
      micromark-factory-mdx-expression = {
        "1.0.9" = {
          depInfo = {
            "@types/estree" = {
              descriptor = "^1.0.0";
              pin = "1.0.5";
              runtime = true;
            };
            micromark-util-character = {
              descriptor = "^1.0.0";
              pin = "1.2.0";
              runtime = true;
            };
            micromark-util-events-to-acorn = {
              descriptor = "^1.0.0";
              pin = "1.2.3";
              runtime = true;
            };
            micromark-util-symbol = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-util-types = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            unist-util-position-from-estree = {
              descriptor = "^1.0.0";
              pin = "1.1.2";
              runtime = true;
            };
            uvu = {
              descriptor = "^0.5.0";
              pin = "0.5.6";
              runtime = true;
            };
            vfile-message = {
              descriptor = "^3.0.0";
              pin = "3.1.4";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-9mEp9wyzIIxh7PFS+NefMyDyn8FKagksA9h7T4h6t+M=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-factory-mdx-expression/-/micromark-factory-mdx-expression-1.0.9.tgz";
          };
          ident = "micromark-factory-mdx-expression";
          ltype = "file";
          version = "1.0.9";
        };
        "2.0.1" = {
          depInfo = {
            "@types/estree" = {
              descriptor = "^1.0.0";
              pin = "1.0.5";
              runtime = true;
            };
            devlop = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-util-character = {
              descriptor = "^2.0.0";
              pin = "2.0.1";
              runtime = true;
            };
            micromark-util-events-to-acorn = {
              descriptor = "^2.0.0";
              pin = "2.0.2";
              runtime = true;
            };
            micromark-util-symbol = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-types = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            unist-util-position-from-estree = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            vfile-message = {
              descriptor = "^4.0.0";
              pin = "4.0.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-rOOnEwlUx6CUzapxcePJX8bwZ/TCIXMi3OTvFHl3fmE=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-factory-mdx-expression/-/micromark-factory-mdx-expression-2.0.1.tgz";
          };
          ident = "micromark-factory-mdx-expression";
          ltype = "file";
          version = "2.0.1";
        };
      };
      micromark-factory-space = {
        "1.1.0" = {
          depInfo = {
            micromark-util-character = {
              descriptor = "^1.0.0";
              pin = "1.2.0";
              runtime = true;
            };
            micromark-util-types = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-Y9guDX5nBzov2qZwlGVfWwSoVSpOpJNY1LazVSnAkS0=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-factory-space/-/micromark-factory-space-1.1.0.tgz";
          };
          ident = "micromark-factory-space";
          ltype = "file";
          version = "1.1.0";
        };
        "2.0.0" = {
          depInfo = {
            micromark-util-character = {
              descriptor = "^2.0.0";
              pin = "2.0.1";
              runtime = true;
            };
            micromark-util-types = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-za0ZiTA2dHaNtKG3JCVjNjPk3lPHuI2+k7A3ALXcos8=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-factory-space/-/micromark-factory-space-2.0.0.tgz";
          };
          ident = "micromark-factory-space";
          ltype = "file";
          version = "2.0.0";
        };
      };
      micromark-factory-title = {
        "1.1.0" = {
          depInfo = {
            micromark-factory-space = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-util-character = {
              descriptor = "^1.0.0";
              pin = "1.2.0";
              runtime = true;
            };
            micromark-util-symbol = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-util-types = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-0mPR7skhiGxZwxJdpkQRc6i02cVolSl1vRlWjd72L7M=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-factory-title/-/micromark-factory-title-1.1.0.tgz";
          };
          ident = "micromark-factory-title";
          ltype = "file";
          version = "1.1.0";
        };
        "2.0.0" = {
          depInfo = {
            micromark-factory-space = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-character = {
              descriptor = "^2.0.0";
              pin = "2.0.1";
              runtime = true;
            };
            micromark-util-symbol = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-types = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-AsASQQjB1ugUsxBlhxMM67XblhfdxZX8L8SulSNMu/A=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-factory-title/-/micromark-factory-title-2.0.0.tgz";
          };
          ident = "micromark-factory-title";
          ltype = "file";
          version = "2.0.0";
        };
      };
      micromark-factory-whitespace = {
        "1.1.0" = {
          depInfo = {
            micromark-factory-space = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-util-character = {
              descriptor = "^1.0.0";
              pin = "1.2.0";
              runtime = true;
            };
            micromark-util-symbol = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-util-types = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-7yVwgFnHzKPfBie1G2dfe++i+jBC07/yLX5eS0NK9Xo=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-factory-whitespace/-/micromark-factory-whitespace-1.1.0.tgz";
          };
          ident = "micromark-factory-whitespace";
          ltype = "file";
          version = "1.1.0";
        };
        "2.0.0" = {
          depInfo = {
            micromark-factory-space = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-character = {
              descriptor = "^2.0.0";
              pin = "2.0.1";
              runtime = true;
            };
            micromark-util-symbol = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-types = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-VNhoD26xOzfQGejAW0HAVGTPp4JC7WHk8A+URHtOA+I=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-factory-whitespace/-/micromark-factory-whitespace-2.0.0.tgz";
          };
          ident = "micromark-factory-whitespace";
          ltype = "file";
          version = "2.0.0";
        };
      };
      micromark-util-character = {
        "1.2.0" = {
          depInfo = {
            micromark-util-symbol = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-util-types = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-tTZdAQOY+luXrIS5nWYY2I6yhdjWvL5HEkoKP4uWxio=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-util-character/-/micromark-util-character-1.2.0.tgz";
          };
          ident = "micromark-util-character";
          ltype = "file";
          version = "1.2.0";
        };
        "2.0.1" = {
          depInfo = {
            micromark-util-symbol = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-types = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-4jqjbL5qXalqo9WPjnu6QX3Zn79jHAtFhXF+gOCGAog=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-util-character/-/micromark-util-character-2.0.1.tgz";
          };
          ident = "micromark-util-character";
          ltype = "file";
          version = "2.0.1";
        };
      };
      micromark-util-chunked = {
        "1.1.0" = {
          depInfo = {
            micromark-util-symbol = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-UJBNxWcn50IskzS+wemUnq+h9eq0G4WgmqTeFo4oRyY=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-util-chunked/-/micromark-util-chunked-1.1.0.tgz";
          };
          ident = "micromark-util-chunked";
          ltype = "file";
          version = "1.1.0";
        };
        "2.0.0" = {
          depInfo = {
            micromark-util-symbol = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-Cl5L/U6HOU4NwMI2bKHKp1UAoduWpKmBFCOf+Qqj+iU=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-util-chunked/-/micromark-util-chunked-2.0.0.tgz";
          };
          ident = "micromark-util-chunked";
          ltype = "file";
          version = "2.0.0";
        };
      };
      micromark-util-classify-character = {
        "1.1.0" = {
          depInfo = {
            micromark-util-character = {
              descriptor = "^1.0.0";
              pin = "1.2.0";
              runtime = true;
            };
            micromark-util-symbol = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-util-types = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-xYfUtre9jlHj37+uA4geiK1RCJr86CIBGBmBmkcQj20=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-util-classify-character/-/micromark-util-classify-character-1.1.0.tgz";
          };
          ident = "micromark-util-classify-character";
          ltype = "file";
          version = "1.1.0";
        };
        "2.0.0" = {
          depInfo = {
            micromark-util-character = {
              descriptor = "^2.0.0";
              pin = "2.0.1";
              runtime = true;
            };
            micromark-util-symbol = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-types = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-dniotpxxj3k8Rc8Vwuo8X+K7afz4+yYwzovl8nyIJAI=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-util-classify-character/-/micromark-util-classify-character-2.0.0.tgz";
          };
          ident = "micromark-util-classify-character";
          ltype = "file";
          version = "2.0.0";
        };
      };
      micromark-util-combine-extensions = {
        "1.1.0" = {
          depInfo = {
            micromark-util-chunked = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-util-types = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-g19DgHX2F1peqfRy8dHk+T/PQ5fC6wgHBJaMUJFK6QU=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-util-combine-extensions/-/micromark-util-combine-extensions-1.1.0.tgz";
          };
          ident = "micromark-util-combine-extensions";
          ltype = "file";
          version = "1.1.0";
        };
        "2.0.0" = {
          depInfo = {
            micromark-util-chunked = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-types = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-D121dbmzo6YBDHu/sXPJodm2tCZZ/Y2nIbKfZqlGaDY=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-util-combine-extensions/-/micromark-util-combine-extensions-2.0.0.tgz";
          };
          ident = "micromark-util-combine-extensions";
          ltype = "file";
          version = "2.0.0";
        };
      };
      micromark-util-decode-numeric-character-reference = {
        "1.1.0" = {
          depInfo = {
            micromark-util-symbol = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-Pt/ojyrp7tNk7gCeDgqAbp25uNYS2Hchhgcbk6uWiqg=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-util-decode-numeric-character-reference/-/micromark-util-decode-numeric-character-reference-1.1.0.tgz";
          };
          ident = "micromark-util-decode-numeric-character-reference";
          ltype = "file";
          version = "1.1.0";
        };
        "2.0.0" = {
          depInfo = {
            micromark-util-symbol = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-fDq6vHrXPAo3bNk0v3i6Ra5t0p3NOsoW5U3HbFmuMRA=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-util-decode-numeric-character-reference/-/micromark-util-decode-numeric-character-reference-2.0.0.tgz";
          };
          ident = "micromark-util-decode-numeric-character-reference";
          ltype = "file";
          version = "2.0.0";
        };
      };
      micromark-util-decode-string = {
        "1.1.0" = {
          depInfo = {
            decode-named-character-reference = {
              descriptor = "^1.0.0";
              pin = "1.0.2";
              runtime = true;
            };
            micromark-util-character = {
              descriptor = "^1.0.0";
              pin = "1.2.0";
              runtime = true;
            };
            micromark-util-decode-numeric-character-reference = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-util-symbol = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-yuh+fGP8SnkCfUVwmlh5bBveHwh0ATDdYpZ60TtWcMA=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-util-decode-string/-/micromark-util-decode-string-1.1.0.tgz";
          };
          ident = "micromark-util-decode-string";
          ltype = "file";
          version = "1.1.0";
        };
        "2.0.0" = {
          depInfo = {
            decode-named-character-reference = {
              descriptor = "^1.0.0";
              pin = "1.0.2";
              runtime = true;
            };
            micromark-util-character = {
              descriptor = "^2.0.0";
              pin = "2.0.1";
              runtime = true;
            };
            micromark-util-decode-numeric-character-reference = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-symbol = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-kGMYIWxbVJ04lgyMSpSxHOlzTOarMI6NccAzWm/B0o8=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-util-decode-string/-/micromark-util-decode-string-2.0.0.tgz";
          };
          ident = "micromark-util-decode-string";
          ltype = "file";
          version = "2.0.0";
        };
      };
      micromark-util-encode = {
        "1.1.0" = {
          fetchInfo = {
            narHash = "sha256-3o5yywNuGP7E0Jo6j/lmQ2q0Qq1VyndbMcFVuULZIgk=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-util-encode/-/micromark-util-encode-1.1.0.tgz";
          };
          ident = "micromark-util-encode";
          ltype = "file";
          treeInfo = { };
          version = "1.1.0";
        };
        "2.0.0" = {
          fetchInfo = {
            narHash = "sha256-OkPyukkwDjQogvfaUPLmJFiGqnMA/Dv/3KBxjaO0Klc=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-util-encode/-/micromark-util-encode-2.0.0.tgz";
          };
          ident = "micromark-util-encode";
          ltype = "file";
          treeInfo = { };
          version = "2.0.0";
        };
      };
      micromark-util-events-to-acorn = {
        "1.2.3" = {
          depInfo = {
            "@types/acorn" = {
              descriptor = "^4.0.0";
              pin = "4.0.6";
              runtime = true;
            };
            "@types/estree" = {
              descriptor = "^1.0.0";
              pin = "1.0.5";
              runtime = true;
            };
            "@types/unist" = {
              descriptor = "^2.0.0";
              pin = "2.0.10";
              runtime = true;
            };
            estree-util-visit = {
              descriptor = "^1.0.0";
              pin = "1.2.1";
              runtime = true;
            };
            micromark-util-symbol = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-util-types = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            uvu = {
              descriptor = "^0.5.0";
              pin = "0.5.6";
              runtime = true;
            };
            vfile-message = {
              descriptor = "^3.0.0";
              pin = "3.1.4";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-AnilvBTBUqn+C9SFMAwNczn4HFDl6y03nKLXbtxFCyk=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-util-events-to-acorn/-/micromark-util-events-to-acorn-1.2.3.tgz";
          };
          ident = "micromark-util-events-to-acorn";
          ltype = "file";
          version = "1.2.3";
        };
        "2.0.2" = {
          depInfo = {
            "@types/acorn" = {
              descriptor = "^4.0.0";
              pin = "4.0.6";
              runtime = true;
            };
            "@types/estree" = {
              descriptor = "^1.0.0";
              pin = "1.0.5";
              runtime = true;
            };
            "@types/unist" = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
            devlop = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            estree-util-visit = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-symbol = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-types = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            vfile-message = {
              descriptor = "^4.0.0";
              pin = "4.0.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-1TOjpBDZrqkVrVlE/NRpnA0N32HwKSjEIquSwoS7NEM=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-util-events-to-acorn/-/micromark-util-events-to-acorn-2.0.2.tgz";
          };
          ident = "micromark-util-events-to-acorn";
          ltype = "file";
          version = "2.0.2";
        };
      };
      micromark-util-html-tag-name = {
        "1.2.0" = {
          fetchInfo = {
            narHash = "sha256-VLu8mBpF7mgrkh0jqTpMDGYhcoJPzXypgDI7G3ylOHE=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-util-html-tag-name/-/micromark-util-html-tag-name-1.2.0.tgz";
          };
          ident = "micromark-util-html-tag-name";
          ltype = "file";
          treeInfo = { };
          version = "1.2.0";
        };
        "2.0.0" = {
          fetchInfo = {
            narHash = "sha256-aTd3KNqJVOI786WEJXn1jas1ltkEgomeXzvhj5AZkdc=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-util-html-tag-name/-/micromark-util-html-tag-name-2.0.0.tgz";
          };
          ident = "micromark-util-html-tag-name";
          ltype = "file";
          treeInfo = { };
          version = "2.0.0";
        };
      };
      micromark-util-normalize-identifier = {
        "1.1.0" = {
          depInfo = {
            micromark-util-symbol = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-dxeP5sWg9/z7lNsD7MNgUQmUlOrriK15fUe5zENRq4U=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-util-normalize-identifier/-/micromark-util-normalize-identifier-1.1.0.tgz";
          };
          ident = "micromark-util-normalize-identifier";
          ltype = "file";
          version = "1.1.0";
        };
        "2.0.0" = {
          depInfo = {
            micromark-util-symbol = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-/swe1J6fFXALUUssqiPoE15ACLwG1nKVKvCWxQ8O3XE=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-util-normalize-identifier/-/micromark-util-normalize-identifier-2.0.0.tgz";
          };
          ident = "micromark-util-normalize-identifier";
          ltype = "file";
          version = "2.0.0";
        };
      };
      micromark-util-resolve-all = {
        "1.1.0" = {
          depInfo = {
            micromark-util-types = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-vlnTU07tbL+5AqQ+JxinGIZ7w7H12nijEzAI/nQlQ0c=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-util-resolve-all/-/micromark-util-resolve-all-1.1.0.tgz";
          };
          ident = "micromark-util-resolve-all";
          ltype = "file";
          version = "1.1.0";
        };
        "2.0.0" = {
          depInfo = {
            micromark-util-types = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-amOToIua0eZx9DYFMPR4FyidpJ8k/yCBRu7aTVWznHg=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-util-resolve-all/-/micromark-util-resolve-all-2.0.0.tgz";
          };
          ident = "micromark-util-resolve-all";
          ltype = "file";
          version = "2.0.0";
        };
      };
      micromark-util-sanitize-uri = {
        "1.2.0" = {
          depInfo = {
            micromark-util-character = {
              descriptor = "^1.0.0";
              pin = "1.2.0";
              runtime = true;
            };
            micromark-util-encode = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-util-symbol = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-/Vi6KhiBlNWGods/Y1EL0tlp0X0kLZFWwa53gTIf+F8=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-util-sanitize-uri/-/micromark-util-sanitize-uri-1.2.0.tgz";
          };
          ident = "micromark-util-sanitize-uri";
          ltype = "file";
          version = "1.2.0";
        };
        "2.0.0" = {
          depInfo = {
            micromark-util-character = {
              descriptor = "^2.0.0";
              pin = "2.0.1";
              runtime = true;
            };
            micromark-util-encode = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-symbol = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-uecRyzQVbY8hUlYljHxim8XSQTjG3Xtfl+2e73KJblU=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-util-sanitize-uri/-/micromark-util-sanitize-uri-2.0.0.tgz";
          };
          ident = "micromark-util-sanitize-uri";
          ltype = "file";
          version = "2.0.0";
        };
      };
      micromark-util-subtokenize = {
        "1.1.0" = {
          depInfo = {
            micromark-util-chunked = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-util-symbol = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-util-types = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            uvu = {
              descriptor = "^0.5.0";
              pin = "0.5.6";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-yM2jeNqEdp8xh/hgpHntjJLZS1VRvbIItNUp3DAkyVg=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-util-subtokenize/-/micromark-util-subtokenize-1.1.0.tgz";
          };
          ident = "micromark-util-subtokenize";
          ltype = "file";
          version = "1.1.0";
        };
        "2.0.0" = {
          depInfo = {
            devlop = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            micromark-util-chunked = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-symbol = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-types = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-ryk3bsA5YiqvA0fZ89BNhShLQ7v8XS3MZ3rnVYB5fPc=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-util-subtokenize/-/micromark-util-subtokenize-2.0.0.tgz";
          };
          ident = "micromark-util-subtokenize";
          ltype = "file";
          version = "2.0.0";
        };
      };
      micromark-util-symbol = {
        "1.1.0" = {
          fetchInfo = {
            narHash = "sha256-lnwNm9jRcA82gd+ZiuYHEWxdpIYbAmpPCPUifChRqGo=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-util-symbol/-/micromark-util-symbol-1.1.0.tgz";
          };
          ident = "micromark-util-symbol";
          ltype = "file";
          treeInfo = { };
          version = "1.1.0";
        };
        "2.0.0" = {
          fetchInfo = {
            narHash = "sha256-Cq4HbSGkwt1M0rp1OnWBTDWPSInPWOlWP4hKESR87BM=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-util-symbol/-/micromark-util-symbol-2.0.0.tgz";
          };
          ident = "micromark-util-symbol";
          ltype = "file";
          treeInfo = { };
          version = "2.0.0";
        };
      };
      micromark-util-types = {
        "1.1.0" = {
          fetchInfo = {
            narHash = "sha256-szZG8UEBG7GtHmyazmincewEA9M9y6oy0dfTxz2Rj/8=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-util-types/-/micromark-util-types-1.1.0.tgz";
          };
          ident = "micromark-util-types";
          ltype = "file";
          treeInfo = { };
          version = "1.1.0";
        };
        "2.0.0" = {
          fetchInfo = {
            narHash = "sha256-XaayupWeH0IyHSLkvNOwz8TqzWSfVgdqKqZdkzQmhD8=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromark-util-types/-/micromark-util-types-2.0.0.tgz";
          };
          ident = "micromark-util-types";
          ltype = "file";
          treeInfo = { };
          version = "2.0.0";
        };
      };
      micromatch = {
        "4.0.5" = {
          depInfo = {
            braces = {
              descriptor = "^3.0.2";
              pin = "3.0.2";
              runtime = true;
            };
            picomatch = {
              descriptor = "^2.3.1";
              pin = "2.3.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-5sy/ExTbi9X3zWFTVMx8cfbQCpl3Kyqc7RVqcpj11gg=";
            type = "tarball";
            url = "https://registry.npmjs.org/micromatch/-/micromatch-4.0.5.tgz";
          };
          ident = "micromatch";
          ltype = "file";
          version = "4.0.5";
        };
      };
      mime-db = {
        "1.52.0" = {
          fetchInfo = {
            narHash = "sha256-NWkhw5USnQpCVdzynhDEG/VbDLOdjy0JtGgopd89jr8=";
            type = "tarball";
            url = "https://registry.npmjs.org/mime-db/-/mime-db-1.52.0.tgz";
          };
          ident = "mime-db";
          ltype = "file";
          treeInfo = { };
          version = "1.52.0";
        };
      };
      mime-types = {
        "2.1.35" = {
          depInfo = {
            mime-db = {
              descriptor = "1.52.0";
              pin = "1.52.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-OT0LH+QO5JfJrh7X0Lzsv3l/WurbpxPx/nztSX7DeI8=";
            type = "tarball";
            url = "https://registry.npmjs.org/mime-types/-/mime-types-2.1.35.tgz";
          };
          ident = "mime-types";
          ltype = "file";
          version = "2.1.35";
        };
      };
      minimatch = {
        "3.1.2" = {
          depInfo = {
            brace-expansion = {
              descriptor = "^1.1.7";
              pin = "1.1.11";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-lngTO0Bk/Spf3t/zG5/j7C2STufjXWF5DlmKjvj1M8s=";
            type = "tarball";
            url = "https://registry.npmjs.org/minimatch/-/minimatch-3.1.2.tgz";
          };
          ident = "minimatch";
          ltype = "file";
          version = "3.1.2";
        };
      };
      minimist = {
        "1.2.8" = {
          fetchInfo = {
            narHash = "sha256-odj63qvs7TXmqy6XlhjY4qtPK5MUF5SZP4bznCdKSKY=";
            type = "tarball";
            url = "https://registry.npmjs.org/minimist/-/minimist-1.2.8.tgz";
          };
          ident = "minimist";
          ltype = "file";
          treeInfo = { };
          version = "1.2.8";
        };
      };
      minisearch = {
        "6.3.0" = {
          fetchInfo = {
            narHash = "sha256-/moYKxcAusTBnTb+oLc7lgDMjMLcnPFB9zwbzhRBM9U=";
            type = "tarball";
            url = "https://registry.npmjs.org/minisearch/-/minisearch-6.3.0.tgz";
          };
          ident = "minisearch";
          ltype = "file";
          treeInfo = { };
          version = "6.3.0";
        };
      };
      mri = {
        "1.2.0" = {
          fetchInfo = {
            narHash = "sha256-W2D0+TF+nUcdPWPlGRgJF1l0BatRq1V7Vc7o+Dwubh8=";
            type = "tarball";
            url = "https://registry.npmjs.org/mri/-/mri-1.2.0.tgz";
          };
          ident = "mri";
          ltype = "file";
          treeInfo = { };
          version = "1.2.0";
        };
      };
      ms = {
        "2.1.2" = {
          fetchInfo = {
            narHash = "sha256-Y87ut99BMamY3YJBX3Cj3DvOJWkqW+7MrPm7bLyuT50=";
            type = "tarball";
            url = "https://registry.npmjs.org/ms/-/ms-2.1.2.tgz";
          };
          ident = "ms";
          ltype = "file";
          treeInfo = { };
          version = "2.1.2";
        };
      };
      nanoid = {
        "3.3.7" = {
          binInfo = {
            binPairs = {
              nanoid = "bin/nanoid.cjs";
            };
          };
          fetchInfo = {
            narHash = "sha256-OgkQf25fLOqMiNpiS8XAynjbZ42xl2RTQKJoIy8bZCE=";
            type = "tarball";
            url = "https://registry.npmjs.org/nanoid/-/nanoid-3.3.7.tgz";
          };
          ident = "nanoid";
          ltype = "file";
          treeInfo = { };
          version = "3.3.7";
        };
      };
      natural-compare = {
        "1.4.0" = {
          fetchInfo = {
            narHash = "sha256-wx+m763bR0Auq7WpVJREb2xXTIHcZMYL9T/G+Y0FQlY=";
            type = "tarball";
            url = "https://registry.npmjs.org/natural-compare/-/natural-compare-1.4.0.tgz";
          };
          ident = "natural-compare";
          ltype = "file";
          treeInfo = { };
          version = "1.4.0";
        };
      };
      neo-async = {
        "2.6.2" = {
          fetchInfo = {
            narHash = "sha256-QFng9dwYIorbPusgMvQVI19ueJFRIHJnhszio3IykAY=";
            type = "tarball";
            url = "https://registry.npmjs.org/neo-async/-/neo-async-2.6.2.tgz";
          };
          ident = "neo-async";
          ltype = "file";
          treeInfo = { };
          version = "2.6.2";
        };
      };
      next = {
        "14.0.3" = {
          binInfo = {
            binPairs = {
              next = "dist/bin/next";
            };
          };
          depInfo = {
            "@next/env" = {
              descriptor = "14.0.3";
              pin = "14.0.3";
              runtime = true;
            };
            "@next/swc-darwin-arm64" = {
              descriptor = "14.0.3";
              optional = true;
              pin = "14.0.3";
              runtime = true;
            };
            "@next/swc-darwin-x64" = {
              descriptor = "14.0.3";
              optional = true;
              pin = "14.0.3";
              runtime = true;
            };
            "@next/swc-linux-arm64-gnu" = {
              descriptor = "14.0.3";
              optional = true;
              pin = "14.0.3";
              runtime = true;
            };
            "@next/swc-linux-arm64-musl" = {
              descriptor = "14.0.3";
              optional = true;
              pin = "14.0.3";
              runtime = true;
            };
            "@next/swc-linux-x64-gnu" = {
              descriptor = "14.0.3";
              optional = true;
              pin = "14.0.3";
              runtime = true;
            };
            "@next/swc-linux-x64-musl" = {
              descriptor = "14.0.3";
              optional = true;
              pin = "14.0.3";
              runtime = true;
            };
            "@next/swc-win32-arm64-msvc" = {
              descriptor = "14.0.3";
              optional = true;
              pin = "14.0.3";
              runtime = true;
            };
            "@next/swc-win32-ia32-msvc" = {
              descriptor = "14.0.3";
              optional = true;
              pin = "14.0.3";
              runtime = true;
            };
            "@next/swc-win32-x64-msvc" = {
              descriptor = "14.0.3";
              optional = true;
              pin = "14.0.3";
              runtime = true;
            };
            "@swc/helpers" = {
              descriptor = "0.5.2";
              pin = "0.5.2";
              runtime = true;
            };
            busboy = {
              descriptor = "1.6.0";
              pin = "1.6.0";
              runtime = true;
            };
            caniuse-lite = {
              descriptor = "^1.0.30001406";
              pin = "1.0.30001566";
              runtime = true;
            };
            postcss = {
              descriptor = "8.4.31";
              pin = "8.4.31";
              runtime = true;
            };
            styled-jsx = {
              descriptor = "5.1.1";
              pin = "5.1.1";
              runtime = true;
            };
            watchpack = {
              descriptor = "2.4.0";
              pin = "2.4.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-RkR/xWxox5r0fScsjEboCN2xuNxpzOmImGwm7C4cZHs=";
            type = "tarball";
            url = "https://registry.npmjs.org/next/-/next-14.0.3.tgz";
          };
          ident = "next";
          ltype = "file";
          peerInfo = {
            "@opentelemetry/api" = {
              descriptor = "^1.1.0";
              optional = true;
            };
            react = {
              descriptor = "^18.2.0";
            };
            react-dom = {
              descriptor = "^18.2.0";
            };
            sass = {
              descriptor = "^1.3.0";
              optional = true;
            };
          };
          version = "14.0.3";
        };
      };
      next-mdx-remote = {
        "4.4.1" = {
          depInfo = {
            "@mdx-js/mdx" = {
              descriptor = "^2.2.1";
              pin = "2.3.0";
              runtime = true;
            };
            "@mdx-js/react" = {
              descriptor = "^2.2.1";
              pin = "2.3.0";
              runtime = true;
            };
            vfile = {
              descriptor = "^5.3.0";
              pin = "5.3.7";
              runtime = true;
            };
            vfile-matter = {
              descriptor = "^3.0.1";
              pin = "3.0.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-H+xeK0y2RLIhH5vYNCQwGXrY3hZ1qa7Qxo2GWAUKgwo=";
            type = "tarball";
            url = "https://registry.npmjs.org/next-mdx-remote/-/next-mdx-remote-4.4.1.tgz";
          };
          ident = "next-mdx-remote";
          ltype = "file";
          peerInfo = {
            react = {
              descriptor = ">=16.x <=18.x";
            };
            react-dom = {
              descriptor = ">=16.x <=18.x";
            };
          };
          version = "4.4.1";
        };
      };
      next-sitemap = {
        "4.2.3" = {
          binInfo = {
            binPairs = {
              next-sitemap = "bin/next-sitemap.mjs";
              next-sitemap-cjs = "bin/next-sitemap.cjs";
            };
          };
          depInfo = {
            "@corex/deepmerge" = {
              descriptor = "^4.0.43";
              pin = "4.0.43";
              runtime = true;
            };
            "@next/env" = {
              descriptor = "^13.4.3";
              pin = "13.5.6";
              runtime = true;
            };
            fast-glob = {
              descriptor = "^3.2.12";
              pin = "3.3.1";
              runtime = true;
            };
            minimist = {
              descriptor = "^1.2.8";
              pin = "1.2.8";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-qRUd/vkfxWVQER+sA0NwlYyP9uP1xNDthbmWSXl3in8=";
            type = "tarball";
            url = "https://registry.npmjs.org/next-sitemap/-/next-sitemap-4.2.3.tgz";
          };
          ident = "next-sitemap";
          ltype = "file";
          peerInfo = {
            next = {
              descriptor = "*";
            };
          };
          version = "4.2.3";
        };
      };
      node-releases = {
        "2.0.14" = {
          fetchInfo = {
            narHash = "sha256-izX/kw6TVOfvZatHs4Iydr87NTxtBTYxpcWdc6+NxWE=";
            type = "tarball";
            url = "https://registry.npmjs.org/node-releases/-/node-releases-2.0.14.tgz";
          };
          ident = "node-releases";
          ltype = "file";
          treeInfo = { };
          version = "2.0.14";
        };
      };
      noogle = {
        "0.1.0" = {
          depInfo = {
            "@emotion/cache" = {
              descriptor = "^11.11.0";
              pin = "11.11.0";
              runtime = true;
            };
            "@emotion/react" = {
              descriptor = "^11.10.5";
              pin = "11.11.1";
              runtime = true;
            };
            "@emotion/styled" = {
              descriptor = "^11.10.5";
              pin = "11.11.0";
              runtime = true;
            };
            "@fontsource/roboto" = {
              descriptor = "^5.0.0";
              pin = "5.0.8";
              runtime = true;
            };
            "@jsdevtools/rehype-toc" = {
              descriptor = "^3.0.2";
              pin = "3.0.2";
              runtime = true;
            };
            "@mdx-js/loader" = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
            "@mdx-js/react" = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
            "@mui/icons-material" = {
              descriptor = "^5.10.9";
              pin = "5.14.11";
              runtime = true;
            };
            "@mui/material" = {
              descriptor = "^5.10.13";
              pin = "5.14.11";
              runtime = true;
            };
            "@mui/material-nextjs" = {
              descriptor = "^5.15.0";
              pin = "5.15.0";
              runtime = true;
            };
            "@next/mdx" = {
              descriptor = "^14.0.4";
              pin = "14.0.4";
              runtime = true;
            };
            "@types/mdx" = {
              descriptor = "^2.0.10";
              pin = "2.0.10";
              runtime = true;
            };
            "@types/node" = {
              descriptor = "18.18.1";
              pin = "18.18.1";
            };
            "@types/react" = {
              descriptor = "^18.0.25";
              pin = "18.2.24";
            };
            "@types/react-dom" = {
              descriptor = "18.2.8";
              pin = "18.2.8";
            };
            "@types/react-highlight" = {
              descriptor = "^0.12.5";
              pin = "0.12.6";
            };
            "@types/seedrandom" = {
              descriptor = "^3.0.4";
              pin = "3.0.6";
            };
            "@typescript-eslint/eslint-plugin" = {
              descriptor = "^6.7.3";
              pin = "6.7.3";
            };
            "@typescript-eslint/parser" = {
              descriptor = "^6.7.3";
              pin = "6.7.3";
            };
            "@vcarl/remark-headings" = {
              descriptor = "^0.1.0";
              pin = "0.1.0";
              runtime = true;
            };
            eslint = {
              descriptor = "8.50.0";
              pin = "8.50.0";
            };
            eslint-config-next = {
              descriptor = "^14.0.3";
              pin = "14.0.3";
            };
            hast = {
              descriptor = "^1.0.0";
              pin = "1.0.0";
              runtime = true;
            };
            hast-util-to-string = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
            "highlight.js" = {
              descriptor = "^11.7.0";
              pin = "11.8.0";
              runtime = true;
            };
            minisearch = {
              descriptor = "^6.3.0";
              pin = "6.3.0";
              runtime = true;
            };
            next = {
              descriptor = "^14.0.3";
              pin = "14.0.3";
              runtime = true;
            };
            next-mdx-remote = {
              descriptor = "^4.4.1";
              pin = "4.4.1";
              runtime = true;
            };
            next-sitemap = {
              descriptor = "^4.2.3";
              pin = "4.2.3";
              runtime = true;
            };
            notistack = {
              descriptor = "^3.0.0";
              pin = "3.0.1";
              runtime = true;
            };
            pagefind = {
              descriptor = "^1.0.4";
              pin = "1.0.4";
              runtime = true;
            };
            parse5 = {
              descriptor = "^7.1.2";
              pin = "7.1.2";
              runtime = true;
            };
            react = {
              descriptor = "^18.2.0";
              pin = "18.2.0";
              runtime = true;
            };
            react-dom = {
              descriptor = "^18.2.0";
              pin = "18.2.0";
              runtime = true;
            };
            react-highlight = {
              descriptor = "^0.15.0";
              pin = "0.15.0";
              runtime = true;
            };
            react-hot-toast = {
              descriptor = "^2.4.1";
              pin = "2.4.1";
              runtime = true;
            };
            "react-mark.js" = {
              descriptor = "^9.0.7";
              pin = "9.0.7";
              runtime = true;
            };
            react-markdown = {
              descriptor = "^9.0.0";
              pin = "9.0.0";
              runtime = true;
            };
            react-minisearch = {
              descriptor = "^6.0.2";
              pin = "6.0.4";
              runtime = true;
            };
            rehype = {
              descriptor = "^13.0.1";
              pin = "13.0.1";
              runtime = true;
            };
            rehype-autolink-headings = {
              descriptor = "^7.1.0";
              pin = "7.1.0";
              runtime = true;
            };
            rehype-highlight = {
              descriptor = "^7.0.0";
              pin = "7.0.0";
              runtime = true;
            };
            rehype-slug = {
              descriptor = "^6.0.0";
              pin = "6.0.0";
              runtime = true;
            };
            rehype-stringify = {
              descriptor = "^10.0.0";
              pin = "10.0.0";
              runtime = true;
            };
            remark-frontmatter = {
              descriptor = "^5.0.0";
              pin = "5.0.0";
              runtime = true;
            };
            remark-gfm = {
              descriptor = "^4.0.0";
              pin = "4.0.0";
              runtime = true;
            };
            remark-heading-id = {
              descriptor = "^1.0.1";
              pin = "1.0.1";
              runtime = true;
            };
            remark-parse = {
              descriptor = "^11.0.0";
              pin = "11.0.0";
              runtime = true;
            };
            remark-rehype = {
              descriptor = "^11.0.0";
              pin = "11.0.0";
              runtime = true;
            };
            remark-stringify = {
              descriptor = "^11.0.0";
              pin = "11.0.0";
              runtime = true;
            };
            seedrandom = {
              descriptor = "^3.0.5";
              pin = "3.0.5";
              runtime = true;
            };
            unified = {
              descriptor = "^11.0.4";
              pin = "11.0.4";
              runtime = true;
            };
            unist-util-visit = {
              descriptor = "^5.0.0";
              pin = "5.0.0";
              runtime = true;
            };
            usehooks-ts = {
              descriptor = "^2.9.1";
              pin = "2.9.1";
              runtime = true;
            };
          };
          fetchInfo = "path:..";
          ident = "noogle";
          lifecycle = {
            build = true;
          };
          ltype = "dir";
          treeInfo = {
            "node_modules/@aashutoshrathi/word-wrap" = {
              dev = true;
              key = "@aashutoshrathi/word-wrap/1.2.6";
            };
            "node_modules/@babel/code-frame" = {
              key = "@babel/code-frame/7.18.6";
            };
            "node_modules/@babel/helper-module-imports" = {
              key = "@babel/helper-module-imports/7.22.15";
            };
            "node_modules/@babel/helper-string-parser" = {
              key = "@babel/helper-string-parser/7.22.5";
            };
            "node_modules/@babel/helper-validator-identifier" = {
              key = "@babel/helper-validator-identifier/7.22.20";
            };
            "node_modules/@babel/highlight" = {
              key = "@babel/highlight/7.18.6";
            };
            "node_modules/@babel/highlight/node_modules/ansi-styles" = {
              key = "ansi-styles/3.2.1";
            };
            "node_modules/@babel/highlight/node_modules/chalk" = {
              key = "chalk/2.4.2";
            };
            "node_modules/@babel/highlight/node_modules/color-convert" = {
              key = "color-convert/1.9.3";
            };
            "node_modules/@babel/highlight/node_modules/color-name" = {
              key = "color-name/1.1.3";
            };
            "node_modules/@babel/highlight/node_modules/escape-string-regexp" = {
              key = "escape-string-regexp/1.0.5";
            };
            "node_modules/@babel/highlight/node_modules/has-flag" = {
              key = "has-flag/3.0.0";
            };
            "node_modules/@babel/highlight/node_modules/supports-color" = {
              key = "supports-color/5.5.0";
            };
            "node_modules/@babel/runtime" = {
              key = "@babel/runtime/7.23.1";
            };
            "node_modules/@babel/runtime/node_modules/regenerator-runtime" = {
              key = "regenerator-runtime/0.14.0";
            };
            "node_modules/@babel/types" = {
              key = "@babel/types/7.23.0";
            };
            "node_modules/@corex/deepmerge" = {
              key = "@corex/deepmerge/4.0.43";
            };
            "node_modules/@emotion/babel-plugin" = {
              key = "@emotion/babel-plugin/11.11.0";
            };
            "node_modules/@emotion/cache" = {
              key = "@emotion/cache/11.11.0";
            };
            "node_modules/@emotion/hash" = {
              key = "@emotion/hash/0.9.1";
            };
            "node_modules/@emotion/is-prop-valid" = {
              key = "@emotion/is-prop-valid/1.2.1";
            };
            "node_modules/@emotion/memoize" = {
              key = "@emotion/memoize/0.8.1";
            };
            "node_modules/@emotion/react" = {
              key = "@emotion/react/11.11.1";
            };
            "node_modules/@emotion/serialize" = {
              key = "@emotion/serialize/1.1.2";
            };
            "node_modules/@emotion/sheet" = {
              key = "@emotion/sheet/1.2.2";
            };
            "node_modules/@emotion/styled" = {
              key = "@emotion/styled/11.11.0";
            };
            "node_modules/@emotion/unitless" = {
              key = "@emotion/unitless/0.8.1";
            };
            "node_modules/@emotion/use-insertion-effect-with-fallbacks" = {
              key = "@emotion/use-insertion-effect-with-fallbacks/1.0.1";
            };
            "node_modules/@emotion/utils" = {
              key = "@emotion/utils/1.2.1";
            };
            "node_modules/@emotion/weak-memoize" = {
              key = "@emotion/weak-memoize/0.3.1";
            };
            "node_modules/@eslint-community/eslint-utils" = {
              dev = true;
              key = "@eslint-community/eslint-utils/4.4.0";
            };
            "node_modules/@eslint-community/regexpp" = {
              dev = true;
              key = "@eslint-community/regexpp/4.9.0";
            };
            "node_modules/@eslint/eslintrc" = {
              dev = true;
              key = "@eslint/eslintrc/2.1.2";
            };
            "node_modules/@eslint/js" = {
              dev = true;
              key = "@eslint/js/8.50.0";
            };
            "node_modules/@floating-ui/core" = {
              key = "@floating-ui/core/1.5.0";
            };
            "node_modules/@floating-ui/dom" = {
              key = "@floating-ui/dom/1.5.3";
            };
            "node_modules/@floating-ui/react-dom" = {
              key = "@floating-ui/react-dom/2.0.2";
            };
            "node_modules/@floating-ui/utils" = {
              key = "@floating-ui/utils/0.1.4";
            };
            "node_modules/@fontsource/roboto" = {
              key = "@fontsource/roboto/5.0.8";
            };
            "node_modules/@humanwhocodes/config-array" = {
              dev = true;
              key = "@humanwhocodes/config-array/0.11.11";
            };
            "node_modules/@humanwhocodes/module-importer" = {
              dev = true;
              key = "@humanwhocodes/module-importer/1.0.1";
            };
            "node_modules/@humanwhocodes/object-schema" = {
              dev = true;
              key = "@humanwhocodes/object-schema/1.2.1";
            };
            "node_modules/@jridgewell/gen-mapping" = {
              key = "@jridgewell/gen-mapping/0.3.3";
            };
            "node_modules/@jridgewell/resolve-uri" = {
              key = "@jridgewell/resolve-uri/3.1.1";
            };
            "node_modules/@jridgewell/set-array" = {
              key = "@jridgewell/set-array/1.1.2";
            };
            "node_modules/@jridgewell/source-map" = {
              key = "@jridgewell/source-map/0.3.5";
            };
            "node_modules/@jridgewell/sourcemap-codec" = {
              key = "@jridgewell/sourcemap-codec/1.4.15";
            };
            "node_modules/@jridgewell/trace-mapping" = {
              key = "@jridgewell/trace-mapping/0.3.20";
            };
            "node_modules/@jsdevtools/rehype-toc" = {
              key = "@jsdevtools/rehype-toc/3.0.2";
            };
            "node_modules/@mdx-js/loader" = {
              key = "@mdx-js/loader/3.0.0";
            };
            "node_modules/@mdx-js/loader/node_modules/@mdx-js/mdx" = {
              key = "@mdx-js/mdx/3.0.0";
            };
            "node_modules/@mdx-js/loader/node_modules/estree-util-attach-comments" = {
              key = "estree-util-attach-comments/3.0.0";
            };
            "node_modules/@mdx-js/loader/node_modules/estree-util-build-jsx" = {
              key = "estree-util-build-jsx/3.0.1";
            };
            "node_modules/@mdx-js/loader/node_modules/estree-util-is-identifier-name" = {
              key = "estree-util-is-identifier-name/3.0.0";
            };
            "node_modules/@mdx-js/loader/node_modules/estree-util-to-js" = {
              key = "estree-util-to-js/2.0.0";
            };
            "node_modules/@mdx-js/loader/node_modules/estree-util-visit" = {
              key = "estree-util-visit/2.0.0";
            };
            "node_modules/@mdx-js/loader/node_modules/hast-util-to-estree" = {
              key = "hast-util-to-estree/3.1.0";
            };
            "node_modules/@mdx-js/loader/node_modules/markdown-extensions" = {
              key = "markdown-extensions/2.0.0";
            };
            "node_modules/@mdx-js/loader/node_modules/mdast-util-mdx" = {
              key = "mdast-util-mdx/3.0.0";
            };
            "node_modules/@mdx-js/loader/node_modules/mdast-util-mdx-expression" = {
              key = "mdast-util-mdx-expression/2.0.0";
            };
            "node_modules/@mdx-js/loader/node_modules/mdast-util-mdx-jsx" = {
              key = "mdast-util-mdx-jsx/3.0.0";
            };
            "node_modules/@mdx-js/loader/node_modules/mdast-util-mdxjs-esm" = {
              key = "mdast-util-mdxjs-esm/2.0.1";
            };
            "node_modules/@mdx-js/loader/node_modules/mdast-util-phrasing" = {
              key = "mdast-util-phrasing/4.0.0";
            };
            "node_modules/@mdx-js/loader/node_modules/mdast-util-to-markdown" = {
              key = "mdast-util-to-markdown/2.1.0";
            };
            "node_modules/@mdx-js/loader/node_modules/micromark-extension-mdx-expression" = {
              key = "micromark-extension-mdx-expression/3.0.0";
            };
            "node_modules/@mdx-js/loader/node_modules/micromark-extension-mdx-jsx" = {
              key = "micromark-extension-mdx-jsx/3.0.0";
            };
            "node_modules/@mdx-js/loader/node_modules/micromark-extension-mdx-md" = {
              key = "micromark-extension-mdx-md/2.0.0";
            };
            "node_modules/@mdx-js/loader/node_modules/micromark-extension-mdxjs" = {
              key = "micromark-extension-mdxjs/3.0.0";
            };
            "node_modules/@mdx-js/loader/node_modules/micromark-extension-mdxjs-esm" = {
              key = "micromark-extension-mdxjs-esm/3.0.0";
            };
            "node_modules/@mdx-js/loader/node_modules/micromark-factory-mdx-expression" = {
              key = "micromark-factory-mdx-expression/2.0.1";
            };
            "node_modules/@mdx-js/loader/node_modules/micromark-util-events-to-acorn" = {
              key = "micromark-util-events-to-acorn/2.0.2";
            };
            "node_modules/@mdx-js/loader/node_modules/remark-mdx" = {
              key = "remark-mdx/3.0.0";
            };
            "node_modules/@mdx-js/loader/node_modules/source-map" = {
              key = "source-map/0.7.4";
            };
            "node_modules/@mdx-js/loader/node_modules/unist-util-position-from-estree" = {
              key = "unist-util-position-from-estree/2.0.0";
            };
            "node_modules/@mdx-js/loader/node_modules/unist-util-remove-position" = {
              key = "unist-util-remove-position/5.0.0";
            };
            "node_modules/@mdx-js/mdx" = {
              key = "@mdx-js/mdx/2.3.0";
            };
            "node_modules/@mdx-js/mdx/node_modules/@types/hast" = {
              key = "@types/hast/2.3.8";
            };
            "node_modules/@mdx-js/mdx/node_modules/@types/mdast" = {
              key = "@types/mdast/3.0.15";
            };
            "node_modules/@mdx-js/mdx/node_modules/@types/unist" = {
              key = "@types/unist/2.0.10";
            };
            "node_modules/@mdx-js/mdx/node_modules/mdast-util-from-markdown" = {
              key = "mdast-util-from-markdown/1.3.1";
            };
            "node_modules/@mdx-js/mdx/node_modules/mdast-util-to-hast" = {
              key = "mdast-util-to-hast/12.3.0";
            };
            "node_modules/@mdx-js/mdx/node_modules/mdast-util-to-string" = {
              key = "mdast-util-to-string/3.2.0";
            };
            "node_modules/@mdx-js/mdx/node_modules/micromark" = {
              key = "micromark/3.2.0";
            };
            "node_modules/@mdx-js/mdx/node_modules/micromark-core-commonmark" = {
              key = "micromark-core-commonmark/1.1.0";
            };
            "node_modules/@mdx-js/mdx/node_modules/micromark-factory-destination" = {
              key = "micromark-factory-destination/1.1.0";
            };
            "node_modules/@mdx-js/mdx/node_modules/micromark-factory-label" = {
              key = "micromark-factory-label/1.1.0";
            };
            "node_modules/@mdx-js/mdx/node_modules/micromark-factory-space" = {
              key = "micromark-factory-space/1.1.0";
            };
            "node_modules/@mdx-js/mdx/node_modules/micromark-factory-title" = {
              key = "micromark-factory-title/1.1.0";
            };
            "node_modules/@mdx-js/mdx/node_modules/micromark-factory-whitespace" = {
              key = "micromark-factory-whitespace/1.1.0";
            };
            "node_modules/@mdx-js/mdx/node_modules/micromark-util-character" = {
              key = "micromark-util-character/1.2.0";
            };
            "node_modules/@mdx-js/mdx/node_modules/micromark-util-chunked" = {
              key = "micromark-util-chunked/1.1.0";
            };
            "node_modules/@mdx-js/mdx/node_modules/micromark-util-classify-character" = {
              key = "micromark-util-classify-character/1.1.0";
            };
            "node_modules/@mdx-js/mdx/node_modules/micromark-util-combine-extensions" = {
              key = "micromark-util-combine-extensions/1.1.0";
            };
            "node_modules/@mdx-js/mdx/node_modules/micromark-util-decode-numeric-character-reference" = {
              key = "micromark-util-decode-numeric-character-reference/1.1.0";
            };
            "node_modules/@mdx-js/mdx/node_modules/micromark-util-decode-string" = {
              key = "micromark-util-decode-string/1.1.0";
            };
            "node_modules/@mdx-js/mdx/node_modules/micromark-util-encode" = {
              key = "micromark-util-encode/1.1.0";
            };
            "node_modules/@mdx-js/mdx/node_modules/micromark-util-html-tag-name" = {
              key = "micromark-util-html-tag-name/1.2.0";
            };
            "node_modules/@mdx-js/mdx/node_modules/micromark-util-normalize-identifier" = {
              key = "micromark-util-normalize-identifier/1.1.0";
            };
            "node_modules/@mdx-js/mdx/node_modules/micromark-util-resolve-all" = {
              key = "micromark-util-resolve-all/1.1.0";
            };
            "node_modules/@mdx-js/mdx/node_modules/micromark-util-sanitize-uri" = {
              key = "micromark-util-sanitize-uri/1.2.0";
            };
            "node_modules/@mdx-js/mdx/node_modules/micromark-util-subtokenize" = {
              key = "micromark-util-subtokenize/1.1.0";
            };
            "node_modules/@mdx-js/mdx/node_modules/micromark-util-symbol" = {
              key = "micromark-util-symbol/1.1.0";
            };
            "node_modules/@mdx-js/mdx/node_modules/micromark-util-types" = {
              key = "micromark-util-types/1.1.0";
            };
            "node_modules/@mdx-js/mdx/node_modules/remark-parse" = {
              key = "remark-parse/10.0.2";
            };
            "node_modules/@mdx-js/mdx/node_modules/remark-rehype" = {
              key = "remark-rehype/10.1.0";
            };
            "node_modules/@mdx-js/mdx/node_modules/unified" = {
              key = "unified/10.1.2";
            };
            "node_modules/@mdx-js/mdx/node_modules/unist-util-is" = {
              key = "unist-util-is/5.2.1";
            };
            "node_modules/@mdx-js/mdx/node_modules/unist-util-position" = {
              key = "unist-util-position/4.0.4";
            };
            "node_modules/@mdx-js/mdx/node_modules/unist-util-stringify-position" = {
              key = "unist-util-stringify-position/3.0.3";
            };
            "node_modules/@mdx-js/mdx/node_modules/unist-util-visit" = {
              key = "unist-util-visit/4.1.2";
            };
            "node_modules/@mdx-js/mdx/node_modules/unist-util-visit-parents" = {
              key = "unist-util-visit-parents/5.1.3";
            };
            "node_modules/@mdx-js/mdx/node_modules/vfile" = {
              key = "vfile/5.3.7";
            };
            "node_modules/@mdx-js/mdx/node_modules/vfile-message" = {
              key = "vfile-message/3.1.4";
            };
            "node_modules/@mdx-js/react" = {
              key = "@mdx-js/react/3.0.0";
            };
            "node_modules/@mui/base" = {
              key = "@mui/base/5.0.0-beta.17";
            };
            "node_modules/@mui/base/node_modules/clsx" = {
              key = "clsx/2.0.0";
            };
            "node_modules/@mui/core-downloads-tracker" = {
              key = "@mui/core-downloads-tracker/5.14.11";
            };
            "node_modules/@mui/icons-material" = {
              key = "@mui/icons-material/5.14.11";
            };
            "node_modules/@mui/material" = {
              key = "@mui/material/5.14.11";
            };
            "node_modules/@mui/material-nextjs" = {
              key = "@mui/material-nextjs/5.15.0";
            };
            "node_modules/@mui/material/node_modules/clsx" = {
              key = "clsx/2.0.0";
            };
            "node_modules/@mui/material/node_modules/react-is" = {
              key = "react-is/18.2.0";
            };
            "node_modules/@mui/private-theming" = {
              key = "@mui/private-theming/5.14.11";
            };
            "node_modules/@mui/styled-engine" = {
              key = "@mui/styled-engine/5.14.11";
            };
            "node_modules/@mui/system" = {
              key = "@mui/system/5.14.11";
            };
            "node_modules/@mui/system/node_modules/clsx" = {
              key = "clsx/2.0.0";
            };
            "node_modules/@mui/types" = {
              key = "@mui/types/7.2.4";
            };
            "node_modules/@mui/utils" = {
              key = "@mui/utils/5.14.11";
            };
            "node_modules/@mui/utils/node_modules/react-is" = {
              key = "react-is/18.2.0";
            };
            "node_modules/@next/env" = {
              key = "@next/env/14.0.3";
            };
            "node_modules/@next/eslint-plugin-next" = {
              dev = true;
              key = "@next/eslint-plugin-next/14.0.3";
            };
            "node_modules/@next/eslint-plugin-next/node_modules/glob" = {
              dev = true;
              key = "glob/7.1.7";
            };
            "node_modules/@next/mdx" = {
              key = "@next/mdx/14.0.4";
            };
            "node_modules/@next/mdx/node_modules/source-map" = {
              key = "source-map/0.7.4";
            };
            "node_modules/@next/swc-darwin-arm64" = {
              key = "@next/swc-darwin-arm64/14.0.3";
              optional = true;
            };
            "node_modules/@next/swc-darwin-x64" = {
              key = "@next/swc-darwin-x64/14.0.3";
              optional = true;
            };
            "node_modules/@next/swc-linux-arm64-gnu" = {
              key = "@next/swc-linux-arm64-gnu/14.0.3";
              optional = true;
            };
            "node_modules/@next/swc-linux-arm64-musl" = {
              key = "@next/swc-linux-arm64-musl/14.0.3";
              optional = true;
            };
            "node_modules/@next/swc-linux-x64-gnu" = {
              key = "@next/swc-linux-x64-gnu/14.0.3";
              optional = true;
            };
            "node_modules/@next/swc-linux-x64-musl" = {
              key = "@next/swc-linux-x64-musl/14.0.3";
              optional = true;
            };
            "node_modules/@next/swc-win32-arm64-msvc" = {
              key = "@next/swc-win32-arm64-msvc/14.0.3";
              optional = true;
            };
            "node_modules/@next/swc-win32-ia32-msvc" = {
              key = "@next/swc-win32-ia32-msvc/14.0.3";
              optional = true;
            };
            "node_modules/@next/swc-win32-x64-msvc" = {
              key = "@next/swc-win32-x64-msvc/14.0.3";
              optional = true;
            };
            "node_modules/@nodelib/fs.scandir" = {
              key = "@nodelib/fs.scandir/2.1.5";
            };
            "node_modules/@nodelib/fs.stat" = {
              key = "@nodelib/fs.stat/2.0.5";
            };
            "node_modules/@nodelib/fs.walk" = {
              key = "@nodelib/fs.walk/1.2.8";
            };
            "node_modules/@pagefind/darwin-arm64" = {
              key = "@pagefind/darwin-arm64/1.0.4";
              optional = true;
            };
            "node_modules/@pagefind/darwin-x64" = {
              key = "@pagefind/darwin-x64/1.0.4";
              optional = true;
            };
            "node_modules/@pagefind/linux-arm64" = {
              key = "@pagefind/linux-arm64/1.0.4";
              optional = true;
            };
            "node_modules/@pagefind/linux-x64" = {
              key = "@pagefind/linux-x64/1.0.4";
              optional = true;
            };
            "node_modules/@pagefind/windows-x64" = {
              key = "@pagefind/windows-x64/1.0.4";
              optional = true;
            };
            "node_modules/@popperjs/core" = {
              key = "@popperjs/core/2.11.8";
            };
            "node_modules/@rushstack/eslint-patch" = {
              dev = true;
              key = "@rushstack/eslint-patch/1.5.1";
            };
            "node_modules/@swc/helpers" = {
              key = "@swc/helpers/0.5.2";
            };
            "node_modules/@swc/helpers/node_modules/tslib" = {
              key = "tslib/2.4.1";
            };
            "node_modules/@types/acorn" = {
              key = "@types/acorn/4.0.6";
            };
            "node_modules/@types/debug" = {
              key = "@types/debug/4.1.9";
            };
            "node_modules/@types/eslint" = {
              key = "@types/eslint/8.44.8";
            };
            "node_modules/@types/eslint-scope" = {
              key = "@types/eslint-scope/3.7.7";
            };
            "node_modules/@types/estree" = {
              key = "@types/estree/1.0.5";
            };
            "node_modules/@types/estree-jsx" = {
              key = "@types/estree-jsx/1.0.3";
            };
            "node_modules/@types/hast" = {
              key = "@types/hast/3.0.1";
            };
            "node_modules/@types/js-yaml" = {
              key = "@types/js-yaml/4.0.9";
            };
            "node_modules/@types/json-schema" = {
              key = "@types/json-schema/7.0.13";
            };
            "node_modules/@types/json5" = {
              dev = true;
              key = "@types/json5/0.0.29";
            };
            "node_modules/@types/mdast" = {
              key = "@types/mdast/4.0.1";
            };
            "node_modules/@types/mdx" = {
              key = "@types/mdx/2.0.10";
            };
            "node_modules/@types/ms" = {
              key = "@types/ms/0.7.32";
            };
            "node_modules/@types/node" = {
              key = "@types/node/18.18.1";
            };
            "node_modules/@types/parse-json" = {
              key = "@types/parse-json/4.0.0";
            };
            "node_modules/@types/prop-types" = {
              key = "@types/prop-types/15.7.5";
            };
            "node_modules/@types/react" = {
              key = "@types/react/18.2.24";
            };
            "node_modules/@types/react-dom" = {
              dev = true;
              key = "@types/react-dom/18.2.8";
            };
            "node_modules/@types/react-highlight" = {
              dev = true;
              key = "@types/react-highlight/0.12.6";
            };
            "node_modules/@types/react-transition-group" = {
              key = "@types/react-transition-group/4.4.7";
            };
            "node_modules/@types/scheduler" = {
              key = "@types/scheduler/0.16.2";
            };
            "node_modules/@types/seedrandom" = {
              dev = true;
              key = "@types/seedrandom/3.0.6";
            };
            "node_modules/@types/semver" = {
              dev = true;
              key = "@types/semver/7.5.3";
            };
            "node_modules/@types/unist" = {
              key = "@types/unist/3.0.0";
            };
            "node_modules/@typescript-eslint/eslint-plugin" = {
              dev = true;
              key = "@typescript-eslint/eslint-plugin/6.7.3";
            };
            "node_modules/@typescript-eslint/parser" = {
              dev = true;
              key = "@typescript-eslint/parser/6.7.3";
            };
            "node_modules/@typescript-eslint/scope-manager" = {
              dev = true;
              key = "@typescript-eslint/scope-manager/6.7.3";
            };
            "node_modules/@typescript-eslint/type-utils" = {
              dev = true;
              key = "@typescript-eslint/type-utils/6.7.3";
            };
            "node_modules/@typescript-eslint/types" = {
              dev = true;
              key = "@typescript-eslint/types/6.7.3";
            };
            "node_modules/@typescript-eslint/typescript-estree" = {
              dev = true;
              key = "@typescript-eslint/typescript-estree/6.7.3";
            };
            "node_modules/@typescript-eslint/utils" = {
              dev = true;
              key = "@typescript-eslint/utils/6.7.3";
            };
            "node_modules/@typescript-eslint/visitor-keys" = {
              dev = true;
              key = "@typescript-eslint/visitor-keys/6.7.3";
            };
            "node_modules/@ungap/structured-clone" = {
              key = "@ungap/structured-clone/1.2.0";
            };
            "node_modules/@vcarl/remark-headings" = {
              key = "@vcarl/remark-headings/0.1.0";
            };
            "node_modules/@vcarl/remark-headings/node_modules/@types/mdast" = {
              key = "@types/mdast/3.0.15";
            };
            "node_modules/@vcarl/remark-headings/node_modules/@types/unist" = {
              key = "@types/unist/2.0.10";
            };
            "node_modules/@vcarl/remark-headings/node_modules/mdast-util-to-string" = {
              key = "mdast-util-to-string/3.2.0";
            };
            "node_modules/@vcarl/remark-headings/node_modules/unist-util-is" = {
              key = "unist-util-is/5.2.1";
            };
            "node_modules/@vcarl/remark-headings/node_modules/unist-util-visit" = {
              key = "unist-util-visit/4.1.2";
            };
            "node_modules/@vcarl/remark-headings/node_modules/unist-util-visit-parents" = {
              key = "unist-util-visit-parents/5.1.3";
            };
            "node_modules/@webassemblyjs/ast" = {
              key = "@webassemblyjs/ast/1.11.6";
            };
            "node_modules/@webassemblyjs/floating-point-hex-parser" = {
              key = "@webassemblyjs/floating-point-hex-parser/1.11.6";
            };
            "node_modules/@webassemblyjs/helper-api-error" = {
              key = "@webassemblyjs/helper-api-error/1.11.6";
            };
            "node_modules/@webassemblyjs/helper-buffer" = {
              key = "@webassemblyjs/helper-buffer/1.11.6";
            };
            "node_modules/@webassemblyjs/helper-numbers" = {
              key = "@webassemblyjs/helper-numbers/1.11.6";
            };
            "node_modules/@webassemblyjs/helper-wasm-bytecode" = {
              key = "@webassemblyjs/helper-wasm-bytecode/1.11.6";
            };
            "node_modules/@webassemblyjs/helper-wasm-section" = {
              key = "@webassemblyjs/helper-wasm-section/1.11.6";
            };
            "node_modules/@webassemblyjs/ieee754" = {
              key = "@webassemblyjs/ieee754/1.11.6";
            };
            "node_modules/@webassemblyjs/leb128" = {
              key = "@webassemblyjs/leb128/1.11.6";
            };
            "node_modules/@webassemblyjs/utf8" = {
              key = "@webassemblyjs/utf8/1.11.6";
            };
            "node_modules/@webassemblyjs/wasm-edit" = {
              key = "@webassemblyjs/wasm-edit/1.11.6";
            };
            "node_modules/@webassemblyjs/wasm-gen" = {
              key = "@webassemblyjs/wasm-gen/1.11.6";
            };
            "node_modules/@webassemblyjs/wasm-opt" = {
              key = "@webassemblyjs/wasm-opt/1.11.6";
            };
            "node_modules/@webassemblyjs/wasm-parser" = {
              key = "@webassemblyjs/wasm-parser/1.11.6";
            };
            "node_modules/@webassemblyjs/wast-printer" = {
              key = "@webassemblyjs/wast-printer/1.11.6";
            };
            "node_modules/@xtuc/ieee754" = {
              key = "@xtuc/ieee754/1.2.0";
            };
            "node_modules/@xtuc/long" = {
              key = "@xtuc/long/4.2.2";
            };
            "node_modules/acorn" = {
              key = "acorn/8.10.0";
            };
            "node_modules/acorn-import-assertions" = {
              key = "acorn-import-assertions/1.9.0";
            };
            "node_modules/acorn-jsx" = {
              key = "acorn-jsx/5.3.2";
            };
            "node_modules/ajv" = {
              key = "ajv/6.12.6";
            };
            "node_modules/ajv-keywords" = {
              key = "ajv-keywords/3.5.2";
            };
            "node_modules/ansi-regex" = {
              dev = true;
              key = "ansi-regex/5.0.1";
            };
            "node_modules/ansi-styles" = {
              dev = true;
              key = "ansi-styles/4.3.0";
            };
            "node_modules/argparse" = {
              key = "argparse/2.0.1";
            };
            "node_modules/aria-query" = {
              dev = true;
              key = "aria-query/5.3.0";
            };
            "node_modules/array-buffer-byte-length" = {
              dev = true;
              key = "array-buffer-byte-length/1.0.0";
            };
            "node_modules/array-includes" = {
              dev = true;
              key = "array-includes/3.1.6";
            };
            "node_modules/array-union" = {
              dev = true;
              key = "array-union/2.1.0";
            };
            "node_modules/array.prototype.findlastindex" = {
              dev = true;
              key = "array.prototype.findlastindex/1.2.3";
            };
            "node_modules/array.prototype.flat" = {
              dev = true;
              key = "array.prototype.flat/1.3.1";
            };
            "node_modules/array.prototype.flatmap" = {
              dev = true;
              key = "array.prototype.flatmap/1.3.1";
            };
            "node_modules/array.prototype.tosorted" = {
              dev = true;
              key = "array.prototype.tosorted/1.1.2";
            };
            "node_modules/arraybuffer.prototype.slice" = {
              dev = true;
              key = "arraybuffer.prototype.slice/1.0.2";
            };
            "node_modules/ast-types-flow" = {
              dev = true;
              key = "ast-types-flow/0.0.7";
            };
            "node_modules/astring" = {
              key = "astring/1.8.6";
            };
            "node_modules/asynciterator.prototype" = {
              dev = true;
              key = "asynciterator.prototype/1.0.0";
            };
            "node_modules/available-typed-arrays" = {
              dev = true;
              key = "available-typed-arrays/1.0.5";
            };
            "node_modules/axe-core" = {
              dev = true;
              key = "axe-core/4.8.2";
            };
            "node_modules/axobject-query" = {
              dev = true;
              key = "axobject-query/3.2.1";
            };
            "node_modules/babel-plugin-macros" = {
              key = "babel-plugin-macros/3.1.0";
            };
            "node_modules/bail" = {
              key = "bail/2.0.2";
            };
            "node_modules/balanced-match" = {
              dev = true;
              key = "balanced-match/1.0.2";
            };
            "node_modules/brace-expansion" = {
              dev = true;
              key = "brace-expansion/1.1.11";
            };
            "node_modules/braces" = {
              key = "braces/3.0.2";
            };
            "node_modules/browserslist" = {
              key = "browserslist/4.22.2";
            };
            "node_modules/buffer-from" = {
              key = "buffer-from/1.1.2";
            };
            "node_modules/busboy" = {
              key = "busboy/1.6.0";
            };
            "node_modules/call-bind" = {
              dev = true;
              key = "call-bind/1.0.2";
            };
            "node_modules/callsites" = {
              key = "callsites/3.1.0";
            };
            "node_modules/caniuse-lite" = {
              key = "caniuse-lite/1.0.30001566";
            };
            "node_modules/ccount" = {
              key = "ccount/2.0.1";
            };
            "node_modules/chalk" = {
              dev = true;
              key = "chalk/4.1.2";
            };
            "node_modules/character-entities" = {
              key = "character-entities/2.0.2";
            };
            "node_modules/character-entities-html4" = {
              key = "character-entities-html4/2.1.0";
            };
            "node_modules/character-entities-legacy" = {
              key = "character-entities-legacy/3.0.0";
            };
            "node_modules/character-reference-invalid" = {
              key = "character-reference-invalid/2.0.1";
            };
            "node_modules/chrome-trace-event" = {
              key = "chrome-trace-event/1.0.3";
            };
            "node_modules/client-only" = {
              key = "client-only/0.0.1";
            };
            "node_modules/clsx" = {
              key = "clsx/1.2.1";
            };
            "node_modules/collapse-white-space" = {
              key = "collapse-white-space/2.1.0";
            };
            "node_modules/color-convert" = {
              dev = true;
              key = "color-convert/2.0.1";
            };
            "node_modules/color-name" = {
              dev = true;
              key = "color-name/1.1.4";
            };
            "node_modules/comma-separated-tokens" = {
              key = "comma-separated-tokens/2.0.3";
            };
            "node_modules/commander" = {
              key = "commander/2.20.3";
            };
            "node_modules/concat-map" = {
              dev = true;
              key = "concat-map/0.0.1";
            };
            "node_modules/convert-source-map" = {
              key = "convert-source-map/1.9.0";
            };
            "node_modules/cosmiconfig" = {
              key = "cosmiconfig/7.0.1";
            };
            "node_modules/cross-spawn" = {
              dev = true;
              key = "cross-spawn/7.0.3";
            };
            "node_modules/csstype" = {
              key = "csstype/3.1.2";
            };
            "node_modules/damerau-levenshtein" = {
              dev = true;
              key = "damerau-levenshtein/1.0.8";
            };
            "node_modules/debug" = {
              key = "debug/4.3.4";
            };
            "node_modules/decode-named-character-reference" = {
              key = "decode-named-character-reference/1.0.2";
            };
            "node_modules/deep-is" = {
              dev = true;
              key = "deep-is/0.1.4";
            };
            "node_modules/define-data-property" = {
              dev = true;
              key = "define-data-property/1.1.0";
            };
            "node_modules/define-properties" = {
              dev = true;
              key = "define-properties/1.2.1";
            };
            "node_modules/dequal" = {
              key = "dequal/2.0.3";
            };
            "node_modules/devlop" = {
              key = "devlop/1.1.0";
            };
            "node_modules/diff" = {
              key = "diff/5.1.0";
            };
            "node_modules/dir-glob" = {
              dev = true;
              key = "dir-glob/3.0.1";
            };
            "node_modules/doctrine" = {
              dev = true;
              key = "doctrine/3.0.0";
            };
            "node_modules/dom-helpers" = {
              key = "dom-helpers/5.2.1";
            };
            "node_modules/electron-to-chromium" = {
              key = "electron-to-chromium/1.4.603";
            };
            "node_modules/emoji-regex" = {
              dev = true;
              key = "emoji-regex/9.2.2";
            };
            "node_modules/enhanced-resolve" = {
              key = "enhanced-resolve/5.15.0";
            };
            "node_modules/entities" = {
              key = "entities/4.5.0";
            };
            "node_modules/error-ex" = {
              key = "error-ex/1.3.2";
            };
            "node_modules/es-abstract" = {
              dev = true;
              key = "es-abstract/1.22.2";
            };
            "node_modules/es-iterator-helpers" = {
              dev = true;
              key = "es-iterator-helpers/1.0.15";
            };
            "node_modules/es-module-lexer" = {
              key = "es-module-lexer/1.4.1";
            };
            "node_modules/es-set-tostringtag" = {
              dev = true;
              key = "es-set-tostringtag/2.0.1";
            };
            "node_modules/es-shim-unscopables" = {
              dev = true;
              key = "es-shim-unscopables/1.0.0";
            };
            "node_modules/es-to-primitive" = {
              dev = true;
              key = "es-to-primitive/1.2.1";
            };
            "node_modules/escalade" = {
              key = "escalade/3.1.1";
            };
            "node_modules/escape-string-regexp" = {
              key = "escape-string-regexp/4.0.0";
            };
            "node_modules/eslint" = {
              dev = true;
              key = "eslint/8.50.0";
            };
            "node_modules/eslint-config-next" = {
              dev = true;
              key = "eslint-config-next/14.0.3";
            };
            "node_modules/eslint-import-resolver-node" = {
              dev = true;
              key = "eslint-import-resolver-node/0.3.9";
            };
            "node_modules/eslint-import-resolver-node/node_modules/debug" = {
              dev = true;
              key = "debug/3.2.7";
            };
            "node_modules/eslint-import-resolver-typescript" = {
              dev = true;
              key = "eslint-import-resolver-typescript/3.6.1";
            };
            "node_modules/eslint-module-utils" = {
              dev = true;
              key = "eslint-module-utils/2.8.0";
            };
            "node_modules/eslint-module-utils/node_modules/debug" = {
              dev = true;
              key = "debug/3.2.7";
            };
            "node_modules/eslint-plugin-import" = {
              dev = true;
              key = "eslint-plugin-import/2.28.1";
            };
            "node_modules/eslint-plugin-import/node_modules/debug" = {
              dev = true;
              key = "debug/3.2.7";
            };
            "node_modules/eslint-plugin-import/node_modules/doctrine" = {
              dev = true;
              key = "doctrine/2.1.0";
            };
            "node_modules/eslint-plugin-import/node_modules/semver" = {
              dev = true;
              key = "semver/6.3.1";
            };
            "node_modules/eslint-plugin-jsx-a11y" = {
              dev = true;
              key = "eslint-plugin-jsx-a11y/6.7.1";
            };
            "node_modules/eslint-plugin-jsx-a11y/node_modules/semver" = {
              dev = true;
              key = "semver/6.3.0";
            };
            "node_modules/eslint-plugin-react" = {
              dev = true;
              key = "eslint-plugin-react/7.33.2";
            };
            "node_modules/eslint-plugin-react-hooks" = {
              dev = true;
              key = "eslint-plugin-react-hooks/4.6.0";
            };
            "node_modules/eslint-plugin-react/node_modules/doctrine" = {
              dev = true;
              key = "doctrine/2.1.0";
            };
            "node_modules/eslint-plugin-react/node_modules/resolve" = {
              dev = true;
              key = "resolve/2.0.0-next.4";
            };
            "node_modules/eslint-plugin-react/node_modules/semver" = {
              dev = true;
              key = "semver/6.3.1";
            };
            "node_modules/eslint-scope" = {
              dev = true;
              key = "eslint-scope/7.2.2";
            };
            "node_modules/eslint-visitor-keys" = {
              dev = true;
              key = "eslint-visitor-keys/3.4.3";
            };
            "node_modules/espree" = {
              dev = true;
              key = "espree/9.6.1";
            };
            "node_modules/esquery" = {
              dev = true;
              key = "esquery/1.5.0";
            };
            "node_modules/esrecurse" = {
              key = "esrecurse/4.3.0";
            };
            "node_modules/estraverse" = {
              key = "estraverse/5.3.0";
            };
            "node_modules/estree-util-attach-comments" = {
              key = "estree-util-attach-comments/2.1.1";
            };
            "node_modules/estree-util-build-jsx" = {
              key = "estree-util-build-jsx/2.2.2";
            };
            "node_modules/estree-util-is-identifier-name" = {
              key = "estree-util-is-identifier-name/2.1.0";
            };
            "node_modules/estree-util-to-js" = {
              key = "estree-util-to-js/1.2.0";
            };
            "node_modules/estree-util-to-js/node_modules/source-map" = {
              key = "source-map/0.7.4";
            };
            "node_modules/estree-util-visit" = {
              key = "estree-util-visit/1.2.1";
            };
            "node_modules/estree-util-visit/node_modules/@types/unist" = {
              key = "@types/unist/2.0.10";
            };
            "node_modules/estree-walker" = {
              key = "estree-walker/3.0.3";
            };
            "node_modules/esutils" = {
              dev = true;
              key = "esutils/2.0.3";
            };
            "node_modules/events" = {
              key = "events/3.3.0";
            };
            "node_modules/extend" = {
              key = "extend/3.0.2";
            };
            "node_modules/fast-deep-equal" = {
              key = "fast-deep-equal/3.1.3";
            };
            "node_modules/fast-glob" = {
              key = "fast-glob/3.3.1";
            };
            "node_modules/fast-glob/node_modules/glob-parent" = {
              key = "glob-parent/5.1.2";
            };
            "node_modules/fast-json-stable-stringify" = {
              key = "fast-json-stable-stringify/2.1.0";
            };
            "node_modules/fast-levenshtein" = {
              dev = true;
              key = "fast-levenshtein/2.0.6";
            };
            "node_modules/fastq" = {
              key = "fastq/1.13.0";
            };
            "node_modules/fault" = {
              key = "fault/2.0.1";
            };
            "node_modules/file-entry-cache" = {
              dev = true;
              key = "file-entry-cache/6.0.1";
            };
            "node_modules/fill-range" = {
              key = "fill-range/7.0.1";
            };
            "node_modules/find-root" = {
              key = "find-root/1.1.0";
            };
            "node_modules/find-up" = {
              dev = true;
              key = "find-up/5.0.0";
            };
            "node_modules/flat-cache" = {
              dev = true;
              key = "flat-cache/3.0.4";
            };
            "node_modules/flatted" = {
              dev = true;
              key = "flatted/3.2.7";
            };
            "node_modules/for-each" = {
              dev = true;
              key = "for-each/0.3.3";
            };
            "node_modules/format" = {
              key = "format/0.2.2";
            };
            "node_modules/fs.realpath" = {
              dev = true;
              key = "fs.realpath/1.0.0";
            };
            "node_modules/function-bind" = {
              key = "function-bind/1.1.1";
            };
            "node_modules/function.prototype.name" = {
              dev = true;
              key = "function.prototype.name/1.1.6";
            };
            "node_modules/functions-have-names" = {
              dev = true;
              key = "functions-have-names/1.2.3";
            };
            "node_modules/get-intrinsic" = {
              dev = true;
              key = "get-intrinsic/1.2.1";
            };
            "node_modules/get-symbol-description" = {
              dev = true;
              key = "get-symbol-description/1.0.0";
            };
            "node_modules/get-tsconfig" = {
              dev = true;
              key = "get-tsconfig/4.7.2";
            };
            "node_modules/glob" = {
              dev = true;
              key = "glob/7.2.3";
            };
            "node_modules/glob-parent" = {
              dev = true;
              key = "glob-parent/6.0.2";
            };
            "node_modules/glob-to-regexp" = {
              key = "glob-to-regexp/0.4.1";
            };
            "node_modules/globals" = {
              dev = true;
              key = "globals/13.22.0";
            };
            "node_modules/globalthis" = {
              dev = true;
              key = "globalthis/1.0.3";
            };
            "node_modules/globby" = {
              dev = true;
              key = "globby/11.1.0";
            };
            "node_modules/goober" = {
              key = "goober/2.1.13";
            };
            "node_modules/gopd" = {
              dev = true;
              key = "gopd/1.0.1";
            };
            "node_modules/graceful-fs" = {
              key = "graceful-fs/4.2.11";
            };
            "node_modules/graphemer" = {
              dev = true;
              key = "graphemer/1.4.0";
            };
            "node_modules/has" = {
              key = "has/1.0.3";
            };
            "node_modules/has-bigints" = {
              dev = true;
              key = "has-bigints/1.0.2";
            };
            "node_modules/has-flag" = {
              key = "has-flag/4.0.0";
            };
            "node_modules/has-property-descriptors" = {
              dev = true;
              key = "has-property-descriptors/1.0.0";
            };
            "node_modules/has-proto" = {
              dev = true;
              key = "has-proto/1.0.1";
            };
            "node_modules/has-symbols" = {
              dev = true;
              key = "has-symbols/1.0.3";
            };
            "node_modules/has-tostringtag" = {
              dev = true;
              key = "has-tostringtag/1.0.0";
            };
            "node_modules/hast" = {
              key = "hast/1.0.0";
            };
            "node_modules/hast-util-from-html" = {
              key = "hast-util-from-html/2.0.1";
            };
            "node_modules/hast-util-from-parse5" = {
              key = "hast-util-from-parse5/8.0.1";
            };
            "node_modules/hast-util-heading-rank" = {
              key = "hast-util-heading-rank/3.0.0";
            };
            "node_modules/hast-util-is-element" = {
              key = "hast-util-is-element/3.0.0";
            };
            "node_modules/hast-util-parse-selector" = {
              key = "hast-util-parse-selector/4.0.0";
            };
            "node_modules/hast-util-raw" = {
              key = "hast-util-raw/9.0.1";
            };
            "node_modules/hast-util-to-estree" = {
              key = "hast-util-to-estree/2.3.3";
            };
            "node_modules/hast-util-to-estree/node_modules/@types/hast" = {
              key = "@types/hast/2.3.8";
            };
            "node_modules/hast-util-to-estree/node_modules/@types/unist" = {
              key = "@types/unist/2.0.10";
            };
            "node_modules/hast-util-to-estree/node_modules/hast-util-whitespace" = {
              key = "hast-util-whitespace/2.0.1";
            };
            "node_modules/hast-util-to-estree/node_modules/unist-util-position" = {
              key = "unist-util-position/4.0.4";
            };
            "node_modules/hast-util-to-html" = {
              key = "hast-util-to-html/9.0.0";
            };
            "node_modules/hast-util-to-jsx-runtime" = {
              key = "hast-util-to-jsx-runtime/2.2.0";
            };
            "node_modules/hast-util-to-parse5" = {
              key = "hast-util-to-parse5/8.0.0";
            };
            "node_modules/hast-util-to-string" = {
              key = "hast-util-to-string/3.0.0";
            };
            "node_modules/hast-util-to-text" = {
              key = "hast-util-to-text/4.0.0";
            };
            "node_modules/hast-util-whitespace" = {
              key = "hast-util-whitespace/3.0.0";
            };
            "node_modules/hastscript" = {
              key = "hastscript/8.0.0";
            };
            "node_modules/highlight.js" = {
              key = "highlight.js/11.8.0";
            };
            "node_modules/hoist-non-react-statics" = {
              key = "hoist-non-react-statics/3.3.2";
            };
            "node_modules/html-url-attributes" = {
              key = "html-url-attributes/3.0.0";
            };
            "node_modules/html-void-elements" = {
              key = "html-void-elements/3.0.0";
            };
            "node_modules/ignore" = {
              dev = true;
              key = "ignore/5.2.4";
            };
            "node_modules/import-fresh" = {
              key = "import-fresh/3.3.0";
            };
            "node_modules/imurmurhash" = {
              dev = true;
              key = "imurmurhash/0.1.4";
            };
            "node_modules/inflight" = {
              dev = true;
              key = "inflight/1.0.6";
            };
            "node_modules/inherits" = {
              dev = true;
              key = "inherits/2.0.4";
            };
            "node_modules/inline-style-parser" = {
              key = "inline-style-parser/0.1.1";
            };
            "node_modules/internal-slot" = {
              dev = true;
              key = "internal-slot/1.0.5";
            };
            "node_modules/is-alphabetical" = {
              key = "is-alphabetical/2.0.1";
            };
            "node_modules/is-alphanumerical" = {
              key = "is-alphanumerical/2.0.1";
            };
            "node_modules/is-array-buffer" = {
              dev = true;
              key = "is-array-buffer/3.0.2";
            };
            "node_modules/is-arrayish" = {
              key = "is-arrayish/0.2.1";
            };
            "node_modules/is-async-function" = {
              dev = true;
              key = "is-async-function/2.0.0";
            };
            "node_modules/is-bigint" = {
              dev = true;
              key = "is-bigint/1.0.4";
            };
            "node_modules/is-boolean-object" = {
              dev = true;
              key = "is-boolean-object/1.1.2";
            };
            "node_modules/is-buffer" = {
              key = "is-buffer/2.0.5";
            };
            "node_modules/is-callable" = {
              dev = true;
              key = "is-callable/1.2.7";
            };
            "node_modules/is-core-module" = {
              key = "is-core-module/2.13.0";
            };
            "node_modules/is-date-object" = {
              dev = true;
              key = "is-date-object/1.0.5";
            };
            "node_modules/is-decimal" = {
              key = "is-decimal/2.0.1";
            };
            "node_modules/is-extglob" = {
              key = "is-extglob/2.1.1";
            };
            "node_modules/is-finalizationregistry" = {
              dev = true;
              key = "is-finalizationregistry/1.0.2";
            };
            "node_modules/is-generator-function" = {
              dev = true;
              key = "is-generator-function/1.0.10";
            };
            "node_modules/is-glob" = {
              key = "is-glob/4.0.3";
            };
            "node_modules/is-hexadecimal" = {
              key = "is-hexadecimal/2.0.1";
            };
            "node_modules/is-map" = {
              dev = true;
              key = "is-map/2.0.2";
            };
            "node_modules/is-negative-zero" = {
              dev = true;
              key = "is-negative-zero/2.0.2";
            };
            "node_modules/is-number" = {
              key = "is-number/7.0.0";
            };
            "node_modules/is-number-object" = {
              dev = true;
              key = "is-number-object/1.0.7";
            };
            "node_modules/is-path-inside" = {
              dev = true;
              key = "is-path-inside/3.0.3";
            };
            "node_modules/is-plain-obj" = {
              key = "is-plain-obj/4.1.0";
            };
            "node_modules/is-reference" = {
              key = "is-reference/3.0.2";
            };
            "node_modules/is-regex" = {
              dev = true;
              key = "is-regex/1.1.4";
            };
            "node_modules/is-set" = {
              dev = true;
              key = "is-set/2.0.2";
            };
            "node_modules/is-shared-array-buffer" = {
              dev = true;
              key = "is-shared-array-buffer/1.0.2";
            };
            "node_modules/is-string" = {
              dev = true;
              key = "is-string/1.0.7";
            };
            "node_modules/is-symbol" = {
              dev = true;
              key = "is-symbol/1.0.4";
            };
            "node_modules/is-typed-array" = {
              dev = true;
              key = "is-typed-array/1.1.12";
            };
            "node_modules/is-weakmap" = {
              dev = true;
              key = "is-weakmap/2.0.1";
            };
            "node_modules/is-weakref" = {
              dev = true;
              key = "is-weakref/1.0.2";
            };
            "node_modules/is-weakset" = {
              dev = true;
              key = "is-weakset/2.0.2";
            };
            "node_modules/isarray" = {
              dev = true;
              key = "isarray/2.0.5";
            };
            "node_modules/isexe" = {
              dev = true;
              key = "isexe/2.0.0";
            };
            "node_modules/iterator.prototype" = {
              dev = true;
              key = "iterator.prototype/1.1.2";
            };
            "node_modules/jest-worker" = {
              key = "jest-worker/27.5.1";
            };
            "node_modules/jest-worker/node_modules/supports-color" = {
              key = "supports-color/8.1.1";
            };
            "node_modules/js-tokens" = {
              key = "js-tokens/4.0.0";
            };
            "node_modules/js-yaml" = {
              key = "js-yaml/4.1.0";
            };
            "node_modules/json-parse-even-better-errors" = {
              key = "json-parse-even-better-errors/2.3.1";
            };
            "node_modules/json-schema-traverse" = {
              key = "json-schema-traverse/0.4.1";
            };
            "node_modules/json-stable-stringify-without-jsonify" = {
              dev = true;
              key = "json-stable-stringify-without-jsonify/1.0.1";
            };
            "node_modules/json5" = {
              dev = true;
              key = "json5/1.0.2";
            };
            "node_modules/jsx-ast-utils" = {
              dev = true;
              key = "jsx-ast-utils/3.3.3";
            };
            "node_modules/kleur" = {
              key = "kleur/4.1.5";
            };
            "node_modules/language-subtag-registry" = {
              dev = true;
              key = "language-subtag-registry/0.3.22";
            };
            "node_modules/language-tags" = {
              dev = true;
              key = "language-tags/1.0.5";
            };
            "node_modules/levn" = {
              dev = true;
              key = "levn/0.4.1";
            };
            "node_modules/lines-and-columns" = {
              key = "lines-and-columns/1.2.4";
            };
            "node_modules/loader-runner" = {
              key = "loader-runner/4.3.0";
            };
            "node_modules/locate-path" = {
              dev = true;
              key = "locate-path/6.0.0";
            };
            "node_modules/lodash" = {
              key = "lodash/4.17.21";
            };
            "node_modules/lodash.merge" = {
              dev = true;
              key = "lodash.merge/4.6.2";
            };
            "node_modules/longest-streak" = {
              key = "longest-streak/3.1.0";
            };
            "node_modules/loose-envify" = {
              key = "loose-envify/1.4.0";
            };
            "node_modules/lowlight" = {
              key = "lowlight/3.0.0";
            };
            "node_modules/lru-cache" = {
              dev = true;
              key = "lru-cache/6.0.0";
            };
            "node_modules/mark.js" = {
              key = "mark.js/8.11.1";
            };
            "node_modules/markdown-extensions" = {
              key = "markdown-extensions/1.1.1";
            };
            "node_modules/markdown-table" = {
              key = "markdown-table/3.0.3";
            };
            "node_modules/mdast-util-definitions" = {
              key = "mdast-util-definitions/5.1.2";
            };
            "node_modules/mdast-util-definitions/node_modules/@types/mdast" = {
              key = "@types/mdast/3.0.15";
            };
            "node_modules/mdast-util-definitions/node_modules/@types/unist" = {
              key = "@types/unist/2.0.10";
            };
            "node_modules/mdast-util-definitions/node_modules/unist-util-is" = {
              key = "unist-util-is/5.2.1";
            };
            "node_modules/mdast-util-definitions/node_modules/unist-util-visit" = {
              key = "unist-util-visit/4.1.2";
            };
            "node_modules/mdast-util-definitions/node_modules/unist-util-visit-parents" = {
              key = "unist-util-visit-parents/5.1.3";
            };
            "node_modules/mdast-util-find-and-replace" = {
              key = "mdast-util-find-and-replace/3.0.1";
            };
            "node_modules/mdast-util-find-and-replace/node_modules/escape-string-regexp" = {
              key = "escape-string-regexp/5.0.0";
            };
            "node_modules/mdast-util-from-markdown" = {
              key = "mdast-util-from-markdown/2.0.0";
            };
            "node_modules/mdast-util-frontmatter" = {
              key = "mdast-util-frontmatter/2.0.1";
            };
            "node_modules/mdast-util-frontmatter/node_modules/escape-string-regexp" = {
              key = "escape-string-regexp/5.0.0";
            };
            "node_modules/mdast-util-frontmatter/node_modules/mdast-util-phrasing" = {
              key = "mdast-util-phrasing/4.0.0";
            };
            "node_modules/mdast-util-frontmatter/node_modules/mdast-util-to-markdown" = {
              key = "mdast-util-to-markdown/2.1.0";
            };
            "node_modules/mdast-util-gfm" = {
              key = "mdast-util-gfm/3.0.0";
            };
            "node_modules/mdast-util-gfm-autolink-literal" = {
              key = "mdast-util-gfm-autolink-literal/2.0.0";
            };
            "node_modules/mdast-util-gfm-footnote" = {
              key = "mdast-util-gfm-footnote/2.0.0";
            };
            "node_modules/mdast-util-gfm-footnote/node_modules/mdast-util-phrasing" = {
              key = "mdast-util-phrasing/4.0.0";
            };
            "node_modules/mdast-util-gfm-footnote/node_modules/mdast-util-to-markdown" = {
              key = "mdast-util-to-markdown/2.1.0";
            };
            "node_modules/mdast-util-gfm-strikethrough" = {
              key = "mdast-util-gfm-strikethrough/2.0.0";
            };
            "node_modules/mdast-util-gfm-strikethrough/node_modules/mdast-util-phrasing" = {
              key = "mdast-util-phrasing/4.0.0";
            };
            "node_modules/mdast-util-gfm-strikethrough/node_modules/mdast-util-to-markdown" = {
              key = "mdast-util-to-markdown/2.1.0";
            };
            "node_modules/mdast-util-gfm-table" = {
              key = "mdast-util-gfm-table/2.0.0";
            };
            "node_modules/mdast-util-gfm-table/node_modules/mdast-util-phrasing" = {
              key = "mdast-util-phrasing/4.0.0";
            };
            "node_modules/mdast-util-gfm-table/node_modules/mdast-util-to-markdown" = {
              key = "mdast-util-to-markdown/2.1.0";
            };
            "node_modules/mdast-util-gfm-task-list-item" = {
              key = "mdast-util-gfm-task-list-item/2.0.0";
            };
            "node_modules/mdast-util-gfm-task-list-item/node_modules/mdast-util-phrasing" = {
              key = "mdast-util-phrasing/4.0.0";
            };
            "node_modules/mdast-util-gfm-task-list-item/node_modules/mdast-util-to-markdown" = {
              key = "mdast-util-to-markdown/2.1.0";
            };
            "node_modules/mdast-util-gfm/node_modules/mdast-util-phrasing" = {
              key = "mdast-util-phrasing/4.0.0";
            };
            "node_modules/mdast-util-gfm/node_modules/mdast-util-to-markdown" = {
              key = "mdast-util-to-markdown/2.1.0";
            };
            "node_modules/mdast-util-mdx" = {
              key = "mdast-util-mdx/2.0.1";
            };
            "node_modules/mdast-util-mdx-expression" = {
              key = "mdast-util-mdx-expression/1.3.2";
            };
            "node_modules/mdast-util-mdx-expression/node_modules/@types/hast" = {
              key = "@types/hast/2.3.8";
            };
            "node_modules/mdast-util-mdx-expression/node_modules/@types/mdast" = {
              key = "@types/mdast/3.0.15";
            };
            "node_modules/mdast-util-mdx-expression/node_modules/@types/unist" = {
              key = "@types/unist/2.0.10";
            };
            "node_modules/mdast-util-mdx-expression/node_modules/mdast-util-from-markdown" = {
              key = "mdast-util-from-markdown/1.3.1";
            };
            "node_modules/mdast-util-mdx-expression/node_modules/mdast-util-to-string" = {
              key = "mdast-util-to-string/3.2.0";
            };
            "node_modules/mdast-util-mdx-expression/node_modules/micromark" = {
              key = "micromark/3.2.0";
            };
            "node_modules/mdast-util-mdx-expression/node_modules/micromark-core-commonmark" = {
              key = "micromark-core-commonmark/1.1.0";
            };
            "node_modules/mdast-util-mdx-expression/node_modules/micromark-factory-destination" = {
              key = "micromark-factory-destination/1.1.0";
            };
            "node_modules/mdast-util-mdx-expression/node_modules/micromark-factory-label" = {
              key = "micromark-factory-label/1.1.0";
            };
            "node_modules/mdast-util-mdx-expression/node_modules/micromark-factory-space" = {
              key = "micromark-factory-space/1.1.0";
            };
            "node_modules/mdast-util-mdx-expression/node_modules/micromark-factory-title" = {
              key = "micromark-factory-title/1.1.0";
            };
            "node_modules/mdast-util-mdx-expression/node_modules/micromark-factory-whitespace" = {
              key = "micromark-factory-whitespace/1.1.0";
            };
            "node_modules/mdast-util-mdx-expression/node_modules/micromark-util-character" = {
              key = "micromark-util-character/1.2.0";
            };
            "node_modules/mdast-util-mdx-expression/node_modules/micromark-util-chunked" = {
              key = "micromark-util-chunked/1.1.0";
            };
            "node_modules/mdast-util-mdx-expression/node_modules/micromark-util-classify-character" = {
              key = "micromark-util-classify-character/1.1.0";
            };
            "node_modules/mdast-util-mdx-expression/node_modules/micromark-util-combine-extensions" = {
              key = "micromark-util-combine-extensions/1.1.0";
            };
            "node_modules/mdast-util-mdx-expression/node_modules/micromark-util-decode-numeric-character-reference" = {
              key = "micromark-util-decode-numeric-character-reference/1.1.0";
            };
            "node_modules/mdast-util-mdx-expression/node_modules/micromark-util-decode-string" = {
              key = "micromark-util-decode-string/1.1.0";
            };
            "node_modules/mdast-util-mdx-expression/node_modules/micromark-util-encode" = {
              key = "micromark-util-encode/1.1.0";
            };
            "node_modules/mdast-util-mdx-expression/node_modules/micromark-util-html-tag-name" = {
              key = "micromark-util-html-tag-name/1.2.0";
            };
            "node_modules/mdast-util-mdx-expression/node_modules/micromark-util-normalize-identifier" = {
              key = "micromark-util-normalize-identifier/1.1.0";
            };
            "node_modules/mdast-util-mdx-expression/node_modules/micromark-util-resolve-all" = {
              key = "micromark-util-resolve-all/1.1.0";
            };
            "node_modules/mdast-util-mdx-expression/node_modules/micromark-util-sanitize-uri" = {
              key = "micromark-util-sanitize-uri/1.2.0";
            };
            "node_modules/mdast-util-mdx-expression/node_modules/micromark-util-subtokenize" = {
              key = "micromark-util-subtokenize/1.1.0";
            };
            "node_modules/mdast-util-mdx-expression/node_modules/micromark-util-symbol" = {
              key = "micromark-util-symbol/1.1.0";
            };
            "node_modules/mdast-util-mdx-expression/node_modules/micromark-util-types" = {
              key = "micromark-util-types/1.1.0";
            };
            "node_modules/mdast-util-mdx-expression/node_modules/unist-util-stringify-position" = {
              key = "unist-util-stringify-position/3.0.3";
            };
            "node_modules/mdast-util-mdx-jsx" = {
              key = "mdast-util-mdx-jsx/2.1.4";
            };
            "node_modules/mdast-util-mdx-jsx/node_modules/@types/hast" = {
              key = "@types/hast/2.3.8";
            };
            "node_modules/mdast-util-mdx-jsx/node_modules/@types/mdast" = {
              key = "@types/mdast/3.0.15";
            };
            "node_modules/mdast-util-mdx-jsx/node_modules/@types/unist" = {
              key = "@types/unist/2.0.10";
            };
            "node_modules/mdast-util-mdx-jsx/node_modules/mdast-util-from-markdown" = {
              key = "mdast-util-from-markdown/1.3.1";
            };
            "node_modules/mdast-util-mdx-jsx/node_modules/mdast-util-to-string" = {
              key = "mdast-util-to-string/3.2.0";
            };
            "node_modules/mdast-util-mdx-jsx/node_modules/micromark" = {
              key = "micromark/3.2.0";
            };
            "node_modules/mdast-util-mdx-jsx/node_modules/micromark-core-commonmark" = {
              key = "micromark-core-commonmark/1.1.0";
            };
            "node_modules/mdast-util-mdx-jsx/node_modules/micromark-factory-destination" = {
              key = "micromark-factory-destination/1.1.0";
            };
            "node_modules/mdast-util-mdx-jsx/node_modules/micromark-factory-label" = {
              key = "micromark-factory-label/1.1.0";
            };
            "node_modules/mdast-util-mdx-jsx/node_modules/micromark-factory-space" = {
              key = "micromark-factory-space/1.1.0";
            };
            "node_modules/mdast-util-mdx-jsx/node_modules/micromark-factory-title" = {
              key = "micromark-factory-title/1.1.0";
            };
            "node_modules/mdast-util-mdx-jsx/node_modules/micromark-factory-whitespace" = {
              key = "micromark-factory-whitespace/1.1.0";
            };
            "node_modules/mdast-util-mdx-jsx/node_modules/micromark-util-character" = {
              key = "micromark-util-character/1.2.0";
            };
            "node_modules/mdast-util-mdx-jsx/node_modules/micromark-util-chunked" = {
              key = "micromark-util-chunked/1.1.0";
            };
            "node_modules/mdast-util-mdx-jsx/node_modules/micromark-util-classify-character" = {
              key = "micromark-util-classify-character/1.1.0";
            };
            "node_modules/mdast-util-mdx-jsx/node_modules/micromark-util-combine-extensions" = {
              key = "micromark-util-combine-extensions/1.1.0";
            };
            "node_modules/mdast-util-mdx-jsx/node_modules/micromark-util-decode-numeric-character-reference" = {
              key = "micromark-util-decode-numeric-character-reference/1.1.0";
            };
            "node_modules/mdast-util-mdx-jsx/node_modules/micromark-util-decode-string" = {
              key = "micromark-util-decode-string/1.1.0";
            };
            "node_modules/mdast-util-mdx-jsx/node_modules/micromark-util-encode" = {
              key = "micromark-util-encode/1.1.0";
            };
            "node_modules/mdast-util-mdx-jsx/node_modules/micromark-util-html-tag-name" = {
              key = "micromark-util-html-tag-name/1.2.0";
            };
            "node_modules/mdast-util-mdx-jsx/node_modules/micromark-util-normalize-identifier" = {
              key = "micromark-util-normalize-identifier/1.1.0";
            };
            "node_modules/mdast-util-mdx-jsx/node_modules/micromark-util-resolve-all" = {
              key = "micromark-util-resolve-all/1.1.0";
            };
            "node_modules/mdast-util-mdx-jsx/node_modules/micromark-util-sanitize-uri" = {
              key = "micromark-util-sanitize-uri/1.2.0";
            };
            "node_modules/mdast-util-mdx-jsx/node_modules/micromark-util-subtokenize" = {
              key = "micromark-util-subtokenize/1.1.0";
            };
            "node_modules/mdast-util-mdx-jsx/node_modules/micromark-util-symbol" = {
              key = "micromark-util-symbol/1.1.0";
            };
            "node_modules/mdast-util-mdx-jsx/node_modules/micromark-util-types" = {
              key = "micromark-util-types/1.1.0";
            };
            "node_modules/mdast-util-mdx-jsx/node_modules/unist-util-stringify-position" = {
              key = "unist-util-stringify-position/3.0.3";
            };
            "node_modules/mdast-util-mdx-jsx/node_modules/vfile-message" = {
              key = "vfile-message/3.1.4";
            };
            "node_modules/mdast-util-mdx/node_modules/@types/mdast" = {
              key = "@types/mdast/3.0.15";
            };
            "node_modules/mdast-util-mdx/node_modules/@types/unist" = {
              key = "@types/unist/2.0.10";
            };
            "node_modules/mdast-util-mdx/node_modules/mdast-util-from-markdown" = {
              key = "mdast-util-from-markdown/1.3.1";
            };
            "node_modules/mdast-util-mdx/node_modules/mdast-util-to-string" = {
              key = "mdast-util-to-string/3.2.0";
            };
            "node_modules/mdast-util-mdx/node_modules/micromark" = {
              key = "micromark/3.2.0";
            };
            "node_modules/mdast-util-mdx/node_modules/micromark-core-commonmark" = {
              key = "micromark-core-commonmark/1.1.0";
            };
            "node_modules/mdast-util-mdx/node_modules/micromark-factory-destination" = {
              key = "micromark-factory-destination/1.1.0";
            };
            "node_modules/mdast-util-mdx/node_modules/micromark-factory-label" = {
              key = "micromark-factory-label/1.1.0";
            };
            "node_modules/mdast-util-mdx/node_modules/micromark-factory-space" = {
              key = "micromark-factory-space/1.1.0";
            };
            "node_modules/mdast-util-mdx/node_modules/micromark-factory-title" = {
              key = "micromark-factory-title/1.1.0";
            };
            "node_modules/mdast-util-mdx/node_modules/micromark-factory-whitespace" = {
              key = "micromark-factory-whitespace/1.1.0";
            };
            "node_modules/mdast-util-mdx/node_modules/micromark-util-character" = {
              key = "micromark-util-character/1.2.0";
            };
            "node_modules/mdast-util-mdx/node_modules/micromark-util-chunked" = {
              key = "micromark-util-chunked/1.1.0";
            };
            "node_modules/mdast-util-mdx/node_modules/micromark-util-classify-character" = {
              key = "micromark-util-classify-character/1.1.0";
            };
            "node_modules/mdast-util-mdx/node_modules/micromark-util-combine-extensions" = {
              key = "micromark-util-combine-extensions/1.1.0";
            };
            "node_modules/mdast-util-mdx/node_modules/micromark-util-decode-numeric-character-reference" = {
              key = "micromark-util-decode-numeric-character-reference/1.1.0";
            };
            "node_modules/mdast-util-mdx/node_modules/micromark-util-decode-string" = {
              key = "micromark-util-decode-string/1.1.0";
            };
            "node_modules/mdast-util-mdx/node_modules/micromark-util-encode" = {
              key = "micromark-util-encode/1.1.0";
            };
            "node_modules/mdast-util-mdx/node_modules/micromark-util-html-tag-name" = {
              key = "micromark-util-html-tag-name/1.2.0";
            };
            "node_modules/mdast-util-mdx/node_modules/micromark-util-normalize-identifier" = {
              key = "micromark-util-normalize-identifier/1.1.0";
            };
            "node_modules/mdast-util-mdx/node_modules/micromark-util-resolve-all" = {
              key = "micromark-util-resolve-all/1.1.0";
            };
            "node_modules/mdast-util-mdx/node_modules/micromark-util-sanitize-uri" = {
              key = "micromark-util-sanitize-uri/1.2.0";
            };
            "node_modules/mdast-util-mdx/node_modules/micromark-util-subtokenize" = {
              key = "micromark-util-subtokenize/1.1.0";
            };
            "node_modules/mdast-util-mdx/node_modules/micromark-util-symbol" = {
              key = "micromark-util-symbol/1.1.0";
            };
            "node_modules/mdast-util-mdx/node_modules/micromark-util-types" = {
              key = "micromark-util-types/1.1.0";
            };
            "node_modules/mdast-util-mdx/node_modules/unist-util-stringify-position" = {
              key = "unist-util-stringify-position/3.0.3";
            };
            "node_modules/mdast-util-mdxjs-esm" = {
              key = "mdast-util-mdxjs-esm/1.3.1";
            };
            "node_modules/mdast-util-mdxjs-esm/node_modules/@types/hast" = {
              key = "@types/hast/2.3.8";
            };
            "node_modules/mdast-util-mdxjs-esm/node_modules/@types/mdast" = {
              key = "@types/mdast/3.0.15";
            };
            "node_modules/mdast-util-mdxjs-esm/node_modules/@types/unist" = {
              key = "@types/unist/2.0.10";
            };
            "node_modules/mdast-util-mdxjs-esm/node_modules/mdast-util-from-markdown" = {
              key = "mdast-util-from-markdown/1.3.1";
            };
            "node_modules/mdast-util-mdxjs-esm/node_modules/mdast-util-to-string" = {
              key = "mdast-util-to-string/3.2.0";
            };
            "node_modules/mdast-util-mdxjs-esm/node_modules/micromark" = {
              key = "micromark/3.2.0";
            };
            "node_modules/mdast-util-mdxjs-esm/node_modules/micromark-core-commonmark" = {
              key = "micromark-core-commonmark/1.1.0";
            };
            "node_modules/mdast-util-mdxjs-esm/node_modules/micromark-factory-destination" = {
              key = "micromark-factory-destination/1.1.0";
            };
            "node_modules/mdast-util-mdxjs-esm/node_modules/micromark-factory-label" = {
              key = "micromark-factory-label/1.1.0";
            };
            "node_modules/mdast-util-mdxjs-esm/node_modules/micromark-factory-space" = {
              key = "micromark-factory-space/1.1.0";
            };
            "node_modules/mdast-util-mdxjs-esm/node_modules/micromark-factory-title" = {
              key = "micromark-factory-title/1.1.0";
            };
            "node_modules/mdast-util-mdxjs-esm/node_modules/micromark-factory-whitespace" = {
              key = "micromark-factory-whitespace/1.1.0";
            };
            "node_modules/mdast-util-mdxjs-esm/node_modules/micromark-util-character" = {
              key = "micromark-util-character/1.2.0";
            };
            "node_modules/mdast-util-mdxjs-esm/node_modules/micromark-util-chunked" = {
              key = "micromark-util-chunked/1.1.0";
            };
            "node_modules/mdast-util-mdxjs-esm/node_modules/micromark-util-classify-character" = {
              key = "micromark-util-classify-character/1.1.0";
            };
            "node_modules/mdast-util-mdxjs-esm/node_modules/micromark-util-combine-extensions" = {
              key = "micromark-util-combine-extensions/1.1.0";
            };
            "node_modules/mdast-util-mdxjs-esm/node_modules/micromark-util-decode-numeric-character-reference" = {
              key = "micromark-util-decode-numeric-character-reference/1.1.0";
            };
            "node_modules/mdast-util-mdxjs-esm/node_modules/micromark-util-decode-string" = {
              key = "micromark-util-decode-string/1.1.0";
            };
            "node_modules/mdast-util-mdxjs-esm/node_modules/micromark-util-encode" = {
              key = "micromark-util-encode/1.1.0";
            };
            "node_modules/mdast-util-mdxjs-esm/node_modules/micromark-util-html-tag-name" = {
              key = "micromark-util-html-tag-name/1.2.0";
            };
            "node_modules/mdast-util-mdxjs-esm/node_modules/micromark-util-normalize-identifier" = {
              key = "micromark-util-normalize-identifier/1.1.0";
            };
            "node_modules/mdast-util-mdxjs-esm/node_modules/micromark-util-resolve-all" = {
              key = "micromark-util-resolve-all/1.1.0";
            };
            "node_modules/mdast-util-mdxjs-esm/node_modules/micromark-util-sanitize-uri" = {
              key = "micromark-util-sanitize-uri/1.2.0";
            };
            "node_modules/mdast-util-mdxjs-esm/node_modules/micromark-util-subtokenize" = {
              key = "micromark-util-subtokenize/1.1.0";
            };
            "node_modules/mdast-util-mdxjs-esm/node_modules/micromark-util-symbol" = {
              key = "micromark-util-symbol/1.1.0";
            };
            "node_modules/mdast-util-mdxjs-esm/node_modules/micromark-util-types" = {
              key = "micromark-util-types/1.1.0";
            };
            "node_modules/mdast-util-mdxjs-esm/node_modules/unist-util-stringify-position" = {
              key = "unist-util-stringify-position/3.0.3";
            };
            "node_modules/mdast-util-phrasing" = {
              key = "mdast-util-phrasing/3.0.1";
            };
            "node_modules/mdast-util-phrasing/node_modules/@types/mdast" = {
              key = "@types/mdast/3.0.15";
            };
            "node_modules/mdast-util-phrasing/node_modules/@types/unist" = {
              key = "@types/unist/2.0.10";
            };
            "node_modules/mdast-util-phrasing/node_modules/unist-util-is" = {
              key = "unist-util-is/5.2.1";
            };
            "node_modules/mdast-util-to-hast" = {
              key = "mdast-util-to-hast/13.0.2";
            };
            "node_modules/mdast-util-to-markdown" = {
              key = "mdast-util-to-markdown/1.5.0";
            };
            "node_modules/mdast-util-to-markdown/node_modules/@types/mdast" = {
              key = "@types/mdast/3.0.15";
            };
            "node_modules/mdast-util-to-markdown/node_modules/@types/unist" = {
              key = "@types/unist/2.0.10";
            };
            "node_modules/mdast-util-to-markdown/node_modules/mdast-util-to-string" = {
              key = "mdast-util-to-string/3.2.0";
            };
            "node_modules/mdast-util-to-markdown/node_modules/micromark-util-character" = {
              key = "micromark-util-character/1.2.0";
            };
            "node_modules/mdast-util-to-markdown/node_modules/micromark-util-decode-numeric-character-reference" = {
              key = "micromark-util-decode-numeric-character-reference/1.1.0";
            };
            "node_modules/mdast-util-to-markdown/node_modules/micromark-util-decode-string" = {
              key = "micromark-util-decode-string/1.1.0";
            };
            "node_modules/mdast-util-to-markdown/node_modules/micromark-util-symbol" = {
              key = "micromark-util-symbol/1.1.0";
            };
            "node_modules/mdast-util-to-markdown/node_modules/micromark-util-types" = {
              key = "micromark-util-types/1.1.0";
            };
            "node_modules/mdast-util-to-markdown/node_modules/unist-util-is" = {
              key = "unist-util-is/5.2.1";
            };
            "node_modules/mdast-util-to-markdown/node_modules/unist-util-visit" = {
              key = "unist-util-visit/4.1.2";
            };
            "node_modules/mdast-util-to-markdown/node_modules/unist-util-visit-parents" = {
              key = "unist-util-visit-parents/5.1.3";
            };
            "node_modules/mdast-util-to-string" = {
              key = "mdast-util-to-string/4.0.0";
            };
            "node_modules/merge-stream" = {
              key = "merge-stream/2.0.0";
            };
            "node_modules/merge2" = {
              key = "merge2/1.4.1";
            };
            "node_modules/micromark" = {
              key = "micromark/4.0.0";
            };
            "node_modules/micromark-core-commonmark" = {
              key = "micromark-core-commonmark/2.0.0";
            };
            "node_modules/micromark-extension-frontmatter" = {
              key = "micromark-extension-frontmatter/2.0.0";
            };
            "node_modules/micromark-extension-gfm" = {
              key = "micromark-extension-gfm/3.0.0";
            };
            "node_modules/micromark-extension-gfm-autolink-literal" = {
              key = "micromark-extension-gfm-autolink-literal/2.0.0";
            };
            "node_modules/micromark-extension-gfm-footnote" = {
              key = "micromark-extension-gfm-footnote/2.0.0";
            };
            "node_modules/micromark-extension-gfm-strikethrough" = {
              key = "micromark-extension-gfm-strikethrough/2.0.0";
            };
            "node_modules/micromark-extension-gfm-table" = {
              key = "micromark-extension-gfm-table/2.0.0";
            };
            "node_modules/micromark-extension-gfm-tagfilter" = {
              key = "micromark-extension-gfm-tagfilter/2.0.0";
            };
            "node_modules/micromark-extension-gfm-task-list-item" = {
              key = "micromark-extension-gfm-task-list-item/2.0.1";
            };
            "node_modules/micromark-extension-mdx-expression" = {
              key = "micromark-extension-mdx-expression/1.0.8";
            };
            "node_modules/micromark-extension-mdx-expression/node_modules/micromark-factory-space" = {
              key = "micromark-factory-space/1.1.0";
            };
            "node_modules/micromark-extension-mdx-expression/node_modules/micromark-util-character" = {
              key = "micromark-util-character/1.2.0";
            };
            "node_modules/micromark-extension-mdx-expression/node_modules/micromark-util-symbol" = {
              key = "micromark-util-symbol/1.1.0";
            };
            "node_modules/micromark-extension-mdx-expression/node_modules/micromark-util-types" = {
              key = "micromark-util-types/1.1.0";
            };
            "node_modules/micromark-extension-mdx-jsx" = {
              key = "micromark-extension-mdx-jsx/1.0.5";
            };
            "node_modules/micromark-extension-mdx-jsx/node_modules/@types/unist" = {
              key = "@types/unist/2.0.10";
            };
            "node_modules/micromark-extension-mdx-jsx/node_modules/micromark-factory-space" = {
              key = "micromark-factory-space/1.1.0";
            };
            "node_modules/micromark-extension-mdx-jsx/node_modules/micromark-util-character" = {
              key = "micromark-util-character/1.2.0";
            };
            "node_modules/micromark-extension-mdx-jsx/node_modules/micromark-util-symbol" = {
              key = "micromark-util-symbol/1.1.0";
            };
            "node_modules/micromark-extension-mdx-jsx/node_modules/micromark-util-types" = {
              key = "micromark-util-types/1.1.0";
            };
            "node_modules/micromark-extension-mdx-jsx/node_modules/unist-util-stringify-position" = {
              key = "unist-util-stringify-position/3.0.3";
            };
            "node_modules/micromark-extension-mdx-jsx/node_modules/vfile-message" = {
              key = "vfile-message/3.1.4";
            };
            "node_modules/micromark-extension-mdx-md" = {
              key = "micromark-extension-mdx-md/1.0.1";
            };
            "node_modules/micromark-extension-mdx-md/node_modules/micromark-util-types" = {
              key = "micromark-util-types/1.1.0";
            };
            "node_modules/micromark-extension-mdxjs" = {
              key = "micromark-extension-mdxjs/1.0.1";
            };
            "node_modules/micromark-extension-mdxjs-esm" = {
              key = "micromark-extension-mdxjs-esm/1.0.5";
            };
            "node_modules/micromark-extension-mdxjs-esm/node_modules/@types/unist" = {
              key = "@types/unist/2.0.10";
            };
            "node_modules/micromark-extension-mdxjs-esm/node_modules/micromark-core-commonmark" = {
              key = "micromark-core-commonmark/1.1.0";
            };
            "node_modules/micromark-extension-mdxjs-esm/node_modules/micromark-factory-destination" = {
              key = "micromark-factory-destination/1.1.0";
            };
            "node_modules/micromark-extension-mdxjs-esm/node_modules/micromark-factory-label" = {
              key = "micromark-factory-label/1.1.0";
            };
            "node_modules/micromark-extension-mdxjs-esm/node_modules/micromark-factory-space" = {
              key = "micromark-factory-space/1.1.0";
            };
            "node_modules/micromark-extension-mdxjs-esm/node_modules/micromark-factory-title" = {
              key = "micromark-factory-title/1.1.0";
            };
            "node_modules/micromark-extension-mdxjs-esm/node_modules/micromark-factory-whitespace" = {
              key = "micromark-factory-whitespace/1.1.0";
            };
            "node_modules/micromark-extension-mdxjs-esm/node_modules/micromark-util-character" = {
              key = "micromark-util-character/1.2.0";
            };
            "node_modules/micromark-extension-mdxjs-esm/node_modules/micromark-util-chunked" = {
              key = "micromark-util-chunked/1.1.0";
            };
            "node_modules/micromark-extension-mdxjs-esm/node_modules/micromark-util-classify-character" = {
              key = "micromark-util-classify-character/1.1.0";
            };
            "node_modules/micromark-extension-mdxjs-esm/node_modules/micromark-util-html-tag-name" = {
              key = "micromark-util-html-tag-name/1.2.0";
            };
            "node_modules/micromark-extension-mdxjs-esm/node_modules/micromark-util-normalize-identifier" = {
              key = "micromark-util-normalize-identifier/1.1.0";
            };
            "node_modules/micromark-extension-mdxjs-esm/node_modules/micromark-util-resolve-all" = {
              key = "micromark-util-resolve-all/1.1.0";
            };
            "node_modules/micromark-extension-mdxjs-esm/node_modules/micromark-util-subtokenize" = {
              key = "micromark-util-subtokenize/1.1.0";
            };
            "node_modules/micromark-extension-mdxjs-esm/node_modules/micromark-util-symbol" = {
              key = "micromark-util-symbol/1.1.0";
            };
            "node_modules/micromark-extension-mdxjs-esm/node_modules/micromark-util-types" = {
              key = "micromark-util-types/1.1.0";
            };
            "node_modules/micromark-extension-mdxjs-esm/node_modules/unist-util-stringify-position" = {
              key = "unist-util-stringify-position/3.0.3";
            };
            "node_modules/micromark-extension-mdxjs-esm/node_modules/vfile-message" = {
              key = "vfile-message/3.1.4";
            };
            "node_modules/micromark-extension-mdxjs/node_modules/micromark-util-chunked" = {
              key = "micromark-util-chunked/1.1.0";
            };
            "node_modules/micromark-extension-mdxjs/node_modules/micromark-util-combine-extensions" = {
              key = "micromark-util-combine-extensions/1.1.0";
            };
            "node_modules/micromark-extension-mdxjs/node_modules/micromark-util-symbol" = {
              key = "micromark-util-symbol/1.1.0";
            };
            "node_modules/micromark-extension-mdxjs/node_modules/micromark-util-types" = {
              key = "micromark-util-types/1.1.0";
            };
            "node_modules/micromark-factory-destination" = {
              key = "micromark-factory-destination/2.0.0";
            };
            "node_modules/micromark-factory-label" = {
              key = "micromark-factory-label/2.0.0";
            };
            "node_modules/micromark-factory-mdx-expression" = {
              key = "micromark-factory-mdx-expression/1.0.9";
            };
            "node_modules/micromark-factory-mdx-expression/node_modules/@types/unist" = {
              key = "@types/unist/2.0.10";
            };
            "node_modules/micromark-factory-mdx-expression/node_modules/micromark-util-character" = {
              key = "micromark-util-character/1.2.0";
            };
            "node_modules/micromark-factory-mdx-expression/node_modules/micromark-util-symbol" = {
              key = "micromark-util-symbol/1.1.0";
            };
            "node_modules/micromark-factory-mdx-expression/node_modules/micromark-util-types" = {
              key = "micromark-util-types/1.1.0";
            };
            "node_modules/micromark-factory-mdx-expression/node_modules/unist-util-stringify-position" = {
              key = "unist-util-stringify-position/3.0.3";
            };
            "node_modules/micromark-factory-mdx-expression/node_modules/vfile-message" = {
              key = "vfile-message/3.1.4";
            };
            "node_modules/micromark-factory-space" = {
              key = "micromark-factory-space/2.0.0";
            };
            "node_modules/micromark-factory-title" = {
              key = "micromark-factory-title/2.0.0";
            };
            "node_modules/micromark-factory-whitespace" = {
              key = "micromark-factory-whitespace/2.0.0";
            };
            "node_modules/micromark-util-character" = {
              key = "micromark-util-character/2.0.1";
            };
            "node_modules/micromark-util-chunked" = {
              key = "micromark-util-chunked/2.0.0";
            };
            "node_modules/micromark-util-classify-character" = {
              key = "micromark-util-classify-character/2.0.0";
            };
            "node_modules/micromark-util-combine-extensions" = {
              key = "micromark-util-combine-extensions/2.0.0";
            };
            "node_modules/micromark-util-decode-numeric-character-reference" = {
              key = "micromark-util-decode-numeric-character-reference/2.0.0";
            };
            "node_modules/micromark-util-decode-string" = {
              key = "micromark-util-decode-string/2.0.0";
            };
            "node_modules/micromark-util-encode" = {
              key = "micromark-util-encode/2.0.0";
            };
            "node_modules/micromark-util-events-to-acorn" = {
              key = "micromark-util-events-to-acorn/1.2.3";
            };
            "node_modules/micromark-util-events-to-acorn/node_modules/@types/unist" = {
              key = "@types/unist/2.0.10";
            };
            "node_modules/micromark-util-events-to-acorn/node_modules/micromark-util-symbol" = {
              key = "micromark-util-symbol/1.1.0";
            };
            "node_modules/micromark-util-events-to-acorn/node_modules/micromark-util-types" = {
              key = "micromark-util-types/1.1.0";
            };
            "node_modules/micromark-util-events-to-acorn/node_modules/unist-util-stringify-position" = {
              key = "unist-util-stringify-position/3.0.3";
            };
            "node_modules/micromark-util-events-to-acorn/node_modules/vfile-message" = {
              key = "vfile-message/3.1.4";
            };
            "node_modules/micromark-util-html-tag-name" = {
              key = "micromark-util-html-tag-name/2.0.0";
            };
            "node_modules/micromark-util-normalize-identifier" = {
              key = "micromark-util-normalize-identifier/2.0.0";
            };
            "node_modules/micromark-util-resolve-all" = {
              key = "micromark-util-resolve-all/2.0.0";
            };
            "node_modules/micromark-util-sanitize-uri" = {
              key = "micromark-util-sanitize-uri/2.0.0";
            };
            "node_modules/micromark-util-subtokenize" = {
              key = "micromark-util-subtokenize/2.0.0";
            };
            "node_modules/micromark-util-symbol" = {
              key = "micromark-util-symbol/2.0.0";
            };
            "node_modules/micromark-util-types" = {
              key = "micromark-util-types/2.0.0";
            };
            "node_modules/micromatch" = {
              key = "micromatch/4.0.5";
            };
            "node_modules/mime-db" = {
              key = "mime-db/1.52.0";
            };
            "node_modules/mime-types" = {
              key = "mime-types/2.1.35";
            };
            "node_modules/minimatch" = {
              dev = true;
              key = "minimatch/3.1.2";
            };
            "node_modules/minimist" = {
              key = "minimist/1.2.8";
            };
            "node_modules/minisearch" = {
              key = "minisearch/6.3.0";
            };
            "node_modules/mri" = {
              key = "mri/1.2.0";
            };
            "node_modules/ms" = {
              key = "ms/2.1.2";
            };
            "node_modules/nanoid" = {
              key = "nanoid/3.3.7";
            };
            "node_modules/natural-compare" = {
              dev = true;
              key = "natural-compare/1.4.0";
            };
            "node_modules/neo-async" = {
              key = "neo-async/2.6.2";
            };
            "node_modules/next" = {
              key = "next/14.0.3";
            };
            "node_modules/next-mdx-remote" = {
              key = "next-mdx-remote/4.4.1";
            };
            "node_modules/next-mdx-remote/node_modules/@mdx-js/react" = {
              key = "@mdx-js/react/2.3.0";
            };
            "node_modules/next-mdx-remote/node_modules/@types/unist" = {
              key = "@types/unist/2.0.10";
            };
            "node_modules/next-mdx-remote/node_modules/unist-util-stringify-position" = {
              key = "unist-util-stringify-position/3.0.3";
            };
            "node_modules/next-mdx-remote/node_modules/vfile" = {
              key = "vfile/5.3.7";
            };
            "node_modules/next-mdx-remote/node_modules/vfile-message" = {
              key = "vfile-message/3.1.4";
            };
            "node_modules/next-sitemap" = {
              key = "next-sitemap/4.2.3";
            };
            "node_modules/next-sitemap/node_modules/@next/env" = {
              key = "@next/env/13.5.6";
            };
            "node_modules/node-releases" = {
              key = "node-releases/2.0.14";
            };
            "node_modules/notistack" = {
              key = "notistack/3.0.1";
            };
            "node_modules/object-assign" = {
              key = "object-assign/4.1.1";
            };
            "node_modules/object-inspect" = {
              dev = true;
              key = "object-inspect/1.12.3";
            };
            "node_modules/object-keys" = {
              dev = true;
              key = "object-keys/1.1.1";
            };
            "node_modules/object.assign" = {
              dev = true;
              key = "object.assign/4.1.4";
            };
            "node_modules/object.entries" = {
              dev = true;
              key = "object.entries/1.1.6";
            };
            "node_modules/object.fromentries" = {
              dev = true;
              key = "object.fromentries/2.0.6";
            };
            "node_modules/object.groupby" = {
              dev = true;
              key = "object.groupby/1.0.1";
            };
            "node_modules/object.hasown" = {
              dev = true;
              key = "object.hasown/1.1.2";
            };
            "node_modules/object.values" = {
              dev = true;
              key = "object.values/1.1.6";
            };
            "node_modules/once" = {
              dev = true;
              key = "once/1.4.0";
            };
            "node_modules/optionator" = {
              dev = true;
              key = "optionator/0.9.3";
            };
            "node_modules/p-limit" = {
              dev = true;
              key = "p-limit/3.1.0";
            };
            "node_modules/p-locate" = {
              dev = true;
              key = "p-locate/5.0.0";
            };
            "node_modules/pagefind" = {
              key = "pagefind/1.0.4";
            };
            "node_modules/parent-module" = {
              key = "parent-module/1.0.1";
            };
            "node_modules/parse-entities" = {
              key = "parse-entities/4.0.1";
            };
            "node_modules/parse-entities/node_modules/@types/unist" = {
              key = "@types/unist/2.0.10";
            };
            "node_modules/parse-json" = {
              key = "parse-json/5.2.0";
            };
            "node_modules/parse5" = {
              key = "parse5/7.1.2";
            };
            "node_modules/path-exists" = {
              dev = true;
              key = "path-exists/4.0.0";
            };
            "node_modules/path-is-absolute" = {
              dev = true;
              key = "path-is-absolute/1.0.1";
            };
            "node_modules/path-key" = {
              dev = true;
              key = "path-key/3.1.1";
            };
            "node_modules/path-parse" = {
              key = "path-parse/1.0.7";
            };
            "node_modules/path-type" = {
              key = "path-type/4.0.0";
            };
            "node_modules/periscopic" = {
              key = "periscopic/3.1.0";
            };
            "node_modules/picocolors" = {
              key = "picocolors/1.0.0";
            };
            "node_modules/picomatch" = {
              key = "picomatch/2.3.1";
            };
            "node_modules/postcss" = {
              key = "postcss/8.4.31";
            };
            "node_modules/prelude-ls" = {
              dev = true;
              key = "prelude-ls/1.2.1";
            };
            "node_modules/prop-types" = {
              key = "prop-types/15.8.1";
            };
            "node_modules/property-information" = {
              key = "property-information/6.2.0";
            };
            "node_modules/punycode" = {
              key = "punycode/2.1.1";
            };
            "node_modules/queue-microtask" = {
              key = "queue-microtask/1.2.3";
            };
            "node_modules/randombytes" = {
              key = "randombytes/2.1.0";
            };
            "node_modules/react" = {
              key = "react/18.2.0";
            };
            "node_modules/react-dom" = {
              key = "react-dom/18.2.0";
            };
            "node_modules/react-highlight" = {
              key = "react-highlight/0.15.0";
            };
            "node_modules/react-highlight/node_modules/highlight.js" = {
              key = "highlight.js/10.7.3";
            };
            "node_modules/react-hot-toast" = {
              key = "react-hot-toast/2.4.1";
            };
            "node_modules/react-is" = {
              key = "react-is/16.13.1";
            };
            "node_modules/react-mark.js" = {
              key = "react-mark.js/9.0.7";
            };
            "node_modules/react-markdown" = {
              key = "react-markdown/9.0.0";
            };
            "node_modules/react-minisearch" = {
              key = "react-minisearch/6.0.4";
            };
            "node_modules/react-transition-group" = {
              key = "react-transition-group/4.4.5";
            };
            "node_modules/reflect.getprototypeof" = {
              dev = true;
              key = "reflect.getprototypeof/1.0.4";
            };
            "node_modules/regexp.prototype.flags" = {
              dev = true;
              key = "regexp.prototype.flags/1.5.1";
            };
            "node_modules/rehype" = {
              key = "rehype/13.0.1";
            };
            "node_modules/rehype-autolink-headings" = {
              key = "rehype-autolink-headings/7.1.0";
            };
            "node_modules/rehype-highlight" = {
              key = "rehype-highlight/7.0.0";
            };
            "node_modules/rehype-parse" = {
              key = "rehype-parse/9.0.0";
            };
            "node_modules/rehype-slug" = {
              key = "rehype-slug/6.0.0";
            };
            "node_modules/rehype-slug/node_modules/github-slugger" = {
              key = "github-slugger/2.0.0";
            };
            "node_modules/rehype-stringify" = {
              key = "rehype-stringify/10.0.0";
            };
            "node_modules/remark-frontmatter" = {
              key = "remark-frontmatter/5.0.0";
            };
            "node_modules/remark-gfm" = {
              key = "remark-gfm/4.0.0";
            };
            "node_modules/remark-heading-id" = {
              key = "remark-heading-id/1.0.1";
            };
            "node_modules/remark-heading-id/node_modules/unist-util-is" = {
              key = "unist-util-is/3.0.0";
            };
            "node_modules/remark-heading-id/node_modules/unist-util-visit" = {
              key = "unist-util-visit/1.4.1";
            };
            "node_modules/remark-heading-id/node_modules/unist-util-visit-parents" = {
              key = "unist-util-visit-parents/2.1.2";
            };
            "node_modules/remark-mdx" = {
              key = "remark-mdx/2.3.0";
            };
            "node_modules/remark-parse" = {
              key = "remark-parse/11.0.0";
            };
            "node_modules/remark-rehype" = {
              key = "remark-rehype/11.0.0";
            };
            "node_modules/remark-stringify" = {
              key = "remark-stringify/11.0.0";
            };
            "node_modules/remark-stringify/node_modules/mdast-util-phrasing" = {
              key = "mdast-util-phrasing/4.0.0";
            };
            "node_modules/remark-stringify/node_modules/mdast-util-to-markdown" = {
              key = "mdast-util-to-markdown/2.1.0";
            };
            "node_modules/resolve" = {
              key = "resolve/1.22.6";
            };
            "node_modules/resolve-from" = {
              key = "resolve-from/4.0.0";
            };
            "node_modules/resolve-pkg-maps" = {
              dev = true;
              key = "resolve-pkg-maps/1.0.0";
            };
            "node_modules/reusify" = {
              key = "reusify/1.0.4";
            };
            "node_modules/rimraf" = {
              dev = true;
              key = "rimraf/3.0.2";
            };
            "node_modules/run-parallel" = {
              key = "run-parallel/1.2.0";
            };
            "node_modules/sade" = {
              key = "sade/1.8.1";
            };
            "node_modules/safe-array-concat" = {
              dev = true;
              key = "safe-array-concat/1.0.1";
            };
            "node_modules/safe-buffer" = {
              key = "safe-buffer/5.2.1";
            };
            "node_modules/safe-regex-test" = {
              dev = true;
              key = "safe-regex-test/1.0.0";
            };
            "node_modules/scheduler" = {
              key = "scheduler/0.23.0";
            };
            "node_modules/schema-utils" = {
              key = "schema-utils/3.3.0";
            };
            "node_modules/seedrandom" = {
              key = "seedrandom/3.0.5";
            };
            "node_modules/semver" = {
              dev = true;
              key = "semver/7.5.4";
            };
            "node_modules/serialize-javascript" = {
              key = "serialize-javascript/6.0.1";
            };
            "node_modules/set-function-name" = {
              dev = true;
              key = "set-function-name/2.0.1";
            };
            "node_modules/shebang-command" = {
              dev = true;
              key = "shebang-command/2.0.0";
            };
            "node_modules/shebang-regex" = {
              dev = true;
              key = "shebang-regex/3.0.0";
            };
            "node_modules/side-channel" = {
              dev = true;
              key = "side-channel/1.0.4";
            };
            "node_modules/slash" = {
              dev = true;
              key = "slash/3.0.0";
            };
            "node_modules/source-map" = {
              key = "source-map/0.5.7";
            };
            "node_modules/source-map-js" = {
              key = "source-map-js/1.0.2";
            };
            "node_modules/source-map-support" = {
              key = "source-map-support/0.5.21";
            };
            "node_modules/source-map-support/node_modules/source-map" = {
              key = "source-map/0.6.1";
            };
            "node_modules/space-separated-tokens" = {
              key = "space-separated-tokens/2.0.2";
            };
            "node_modules/streamsearch" = {
              key = "streamsearch/1.1.0";
            };
            "node_modules/string.prototype.matchall" = {
              dev = true;
              key = "string.prototype.matchall/4.0.8";
            };
            "node_modules/string.prototype.trim" = {
              dev = true;
              key = "string.prototype.trim/1.2.8";
            };
            "node_modules/string.prototype.trimend" = {
              dev = true;
              key = "string.prototype.trimend/1.0.7";
            };
            "node_modules/string.prototype.trimstart" = {
              dev = true;
              key = "string.prototype.trimstart/1.0.7";
            };
            "node_modules/stringify-entities" = {
              key = "stringify-entities/4.0.3";
            };
            "node_modules/strip-ansi" = {
              dev = true;
              key = "strip-ansi/6.0.1";
            };
            "node_modules/strip-bom" = {
              dev = true;
              key = "strip-bom/3.0.0";
            };
            "node_modules/strip-json-comments" = {
              dev = true;
              key = "strip-json-comments/3.1.1";
            };
            "node_modules/style-to-object" = {
              key = "style-to-object/0.4.2";
            };
            "node_modules/styled-jsx" = {
              key = "styled-jsx/5.1.1";
            };
            "node_modules/stylis" = {
              key = "stylis/4.2.0";
            };
            "node_modules/supports-color" = {
              dev = true;
              key = "supports-color/7.2.0";
            };
            "node_modules/supports-preserve-symlinks-flag" = {
              key = "supports-preserve-symlinks-flag/1.0.0";
            };
            "node_modules/tapable" = {
              key = "tapable/2.2.1";
            };
            "node_modules/terser" = {
              key = "terser/5.25.0";
            };
            "node_modules/terser-webpack-plugin" = {
              key = "terser-webpack-plugin/5.3.9";
            };
            "node_modules/text-table" = {
              dev = true;
              key = "text-table/0.2.0";
            };
            "node_modules/to-fast-properties" = {
              key = "to-fast-properties/2.0.0";
            };
            "node_modules/to-regex-range" = {
              key = "to-regex-range/5.0.1";
            };
            "node_modules/trim-lines" = {
              key = "trim-lines/3.0.1";
            };
            "node_modules/trough" = {
              key = "trough/2.1.0";
            };
            "node_modules/ts-api-utils" = {
              dev = true;
              key = "ts-api-utils/1.0.3";
            };
            "node_modules/tsconfig-paths" = {
              dev = true;
              key = "tsconfig-paths/3.14.2";
            };
            "node_modules/type-check" = {
              dev = true;
              key = "type-check/0.4.0";
            };
            "node_modules/type-fest" = {
              dev = true;
              key = "type-fest/0.20.2";
            };
            "node_modules/typed-array-buffer" = {
              dev = true;
              key = "typed-array-buffer/1.0.0";
            };
            "node_modules/typed-array-byte-length" = {
              dev = true;
              key = "typed-array-byte-length/1.0.0";
            };
            "node_modules/typed-array-byte-offset" = {
              dev = true;
              key = "typed-array-byte-offset/1.0.0";
            };
            "node_modules/typed-array-length" = {
              dev = true;
              key = "typed-array-length/1.0.4";
            };
            "node_modules/typescript" = {
              dev = true;
              key = "typescript/5.2.2";
            };
            "node_modules/unbox-primitive" = {
              dev = true;
              key = "unbox-primitive/1.0.2";
            };
            "node_modules/unified" = {
              key = "unified/11.0.4";
            };
            "node_modules/unist-util-find-after" = {
              key = "unist-util-find-after/5.0.0";
            };
            "node_modules/unist-util-generated" = {
              key = "unist-util-generated/2.0.1";
            };
            "node_modules/unist-util-is" = {
              key = "unist-util-is/6.0.0";
            };
            "node_modules/unist-util-position" = {
              key = "unist-util-position/5.0.0";
            };
            "node_modules/unist-util-position-from-estree" = {
              key = "unist-util-position-from-estree/1.1.2";
            };
            "node_modules/unist-util-position-from-estree/node_modules/@types/unist" = {
              key = "@types/unist/2.0.10";
            };
            "node_modules/unist-util-remove-position" = {
              key = "unist-util-remove-position/4.0.2";
            };
            "node_modules/unist-util-remove-position/node_modules/@types/unist" = {
              key = "@types/unist/2.0.10";
            };
            "node_modules/unist-util-remove-position/node_modules/unist-util-is" = {
              key = "unist-util-is/5.2.1";
            };
            "node_modules/unist-util-remove-position/node_modules/unist-util-visit" = {
              key = "unist-util-visit/4.1.2";
            };
            "node_modules/unist-util-remove-position/node_modules/unist-util-visit-parents" = {
              key = "unist-util-visit-parents/5.1.3";
            };
            "node_modules/unist-util-stringify-position" = {
              key = "unist-util-stringify-position/4.0.0";
            };
            "node_modules/unist-util-visit" = {
              key = "unist-util-visit/5.0.0";
            };
            "node_modules/unist-util-visit-parents" = {
              key = "unist-util-visit-parents/6.0.1";
            };
            "node_modules/update-browserslist-db" = {
              key = "update-browserslist-db/1.0.13";
            };
            "node_modules/uri-js" = {
              key = "uri-js/4.4.1";
            };
            "node_modules/usehooks-ts" = {
              key = "usehooks-ts/2.9.1";
            };
            "node_modules/uvu" = {
              key = "uvu/0.5.6";
            };
            "node_modules/vfile" = {
              key = "vfile/6.0.1";
            };
            "node_modules/vfile-location" = {
              key = "vfile-location/5.0.2";
            };
            "node_modules/vfile-matter" = {
              key = "vfile-matter/3.0.1";
            };
            "node_modules/vfile-message" = {
              key = "vfile-message/4.0.2";
            };
            "node_modules/watchpack" = {
              key = "watchpack/2.4.0";
            };
            "node_modules/web-namespaces" = {
              key = "web-namespaces/2.0.1";
            };
            "node_modules/webpack" = {
              key = "webpack/5.89.0";
            };
            "node_modules/webpack-sources" = {
              key = "webpack-sources/3.2.3";
            };
            "node_modules/webpack/node_modules/eslint-scope" = {
              key = "eslint-scope/5.1.1";
            };
            "node_modules/webpack/node_modules/estraverse" = {
              key = "estraverse/4.3.0";
            };
            "node_modules/which" = {
              dev = true;
              key = "which/2.0.2";
            };
            "node_modules/which-boxed-primitive" = {
              dev = true;
              key = "which-boxed-primitive/1.0.2";
            };
            "node_modules/which-builtin-type" = {
              dev = true;
              key = "which-builtin-type/1.1.3";
            };
            "node_modules/which-collection" = {
              dev = true;
              key = "which-collection/1.0.1";
            };
            "node_modules/which-typed-array" = {
              dev = true;
              key = "which-typed-array/1.1.11";
            };
            "node_modules/wrappy" = {
              dev = true;
              key = "wrappy/1.0.2";
            };
            "node_modules/yallist" = {
              dev = true;
              key = "yallist/4.0.0";
            };
            "node_modules/yaml" = {
              key = "yaml/1.10.2";
            };
            "node_modules/yocto-queue" = {
              dev = true;
              key = "yocto-queue/0.1.0";
            };
            "node_modules/zwitch" = {
              key = "zwitch/2.0.4";
            };
          };
          version = "0.1.0";
        };
      };
      notistack = {
        "3.0.1" = {
          depInfo = {
            clsx = {
              descriptor = "^1.1.0";
              pin = "1.2.1";
              runtime = true;
            };
            goober = {
              descriptor = "^2.0.33";
              pin = "2.1.13";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-ECJUCFT559oHuW/C7TdGPEnM9ibFrOB25DtuspIizqU=";
            type = "tarball";
            url = "https://registry.npmjs.org/notistack/-/notistack-3.0.1.tgz";
          };
          ident = "notistack";
          ltype = "file";
          peerInfo = {
            react = {
              descriptor = "^16.8.0 || ^17.0.0 || ^18.0.0";
            };
            react-dom = {
              descriptor = "^16.8.0 || ^17.0.0 || ^18.0.0";
            };
          };
          version = "3.0.1";
        };
      };
      object-assign = {
        "4.1.1" = {
          fetchInfo = {
            narHash = "sha256-fy4mKEXjhbY13vj3gcgJUn+6sWqwAFywEe9ioQJAia4=";
            type = "tarball";
            url = "https://registry.npmjs.org/object-assign/-/object-assign-4.1.1.tgz";
          };
          ident = "object-assign";
          ltype = "file";
          treeInfo = { };
          version = "4.1.1";
        };
      };
      object-inspect = {
        "1.12.3" = {
          fetchInfo = {
            narHash = "sha256-wu/RyTeITWU9Ra2bspc4D6tdV4jdFcHbXJgXNwFC+xg=";
            type = "tarball";
            url = "https://registry.npmjs.org/object-inspect/-/object-inspect-1.12.3.tgz";
          };
          ident = "object-inspect";
          ltype = "file";
          treeInfo = { };
          version = "1.12.3";
        };
      };
      object-keys = {
        "1.1.1" = {
          fetchInfo = {
            narHash = "sha256-+dy1F/wtvIQTjofLf3Di9Rn3vSDAWUPsn0YG2KMj0Is=";
            type = "tarball";
            url = "https://registry.npmjs.org/object-keys/-/object-keys-1.1.1.tgz";
          };
          ident = "object-keys";
          ltype = "file";
          treeInfo = { };
          version = "1.1.1";
        };
      };
      "object.assign" = {
        "4.1.4" = {
          depInfo = {
            call-bind = {
              descriptor = "^1.0.2";
              pin = "1.0.2";
              runtime = true;
            };
            define-properties = {
              descriptor = "^1.1.4";
              pin = "1.2.1";
              runtime = true;
            };
            has-symbols = {
              descriptor = "^1.0.3";
              pin = "1.0.3";
              runtime = true;
            };
            object-keys = {
              descriptor = "^1.1.1";
              pin = "1.1.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-LRPf0GUtnnskbRHcm5RoTjwHW3WBHhusmHgapO1xJlY=";
            type = "tarball";
            url = "https://registry.npmjs.org/object.assign/-/object.assign-4.1.4.tgz";
          };
          ident = "object.assign";
          ltype = "file";
          version = "4.1.4";
        };
      };
      "object.entries" = {
        "1.1.6" = {
          depInfo = {
            call-bind = {
              descriptor = "^1.0.2";
              pin = "1.0.2";
              runtime = true;
            };
            define-properties = {
              descriptor = "^1.1.4";
              pin = "1.2.1";
              runtime = true;
            };
            es-abstract = {
              descriptor = "^1.20.4";
              pin = "1.22.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-U4vEuu0EODNo4Wxqh3TdDfGXFtVvPtMuDu555fYuwAE=";
            type = "tarball";
            url = "https://registry.npmjs.org/object.entries/-/object.entries-1.1.6.tgz";
          };
          ident = "object.entries";
          ltype = "file";
          version = "1.1.6";
        };
      };
      "object.fromentries" = {
        "2.0.6" = {
          depInfo = {
            call-bind = {
              descriptor = "^1.0.2";
              pin = "1.0.2";
              runtime = true;
            };
            define-properties = {
              descriptor = "^1.1.4";
              pin = "1.2.1";
              runtime = true;
            };
            es-abstract = {
              descriptor = "^1.20.4";
              pin = "1.22.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-qomWdBftnIM/0AVC78wy3ODaQSJPz0GAt6IRZoUDO00=";
            type = "tarball";
            url = "https://registry.npmjs.org/object.fromentries/-/object.fromentries-2.0.6.tgz";
          };
          ident = "object.fromentries";
          ltype = "file";
          version = "2.0.6";
        };
      };
      "object.groupby" = {
        "1.0.1" = {
          depInfo = {
            call-bind = {
              descriptor = "^1.0.2";
              pin = "1.0.2";
              runtime = true;
            };
            define-properties = {
              descriptor = "^1.2.0";
              pin = "1.2.1";
              runtime = true;
            };
            es-abstract = {
              descriptor = "^1.22.1";
              pin = "1.22.2";
              runtime = true;
            };
            get-intrinsic = {
              descriptor = "^1.2.1";
              pin = "1.2.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-UIwk3tUkCg66EU6wLov7v0woQsgz8KsFkItCPd0gKXM=";
            type = "tarball";
            url = "https://registry.npmjs.org/object.groupby/-/object.groupby-1.0.1.tgz";
          };
          ident = "object.groupby";
          ltype = "file";
          version = "1.0.1";
        };
      };
      "object.hasown" = {
        "1.1.2" = {
          depInfo = {
            define-properties = {
              descriptor = "^1.1.4";
              pin = "1.2.1";
              runtime = true;
            };
            es-abstract = {
              descriptor = "^1.20.4";
              pin = "1.22.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-AFJRnavAkYUjVW+1ZDvq0JeFuXCmSrABAm75TuVCZSU=";
            type = "tarball";
            url = "https://registry.npmjs.org/object.hasown/-/object.hasown-1.1.2.tgz";
          };
          ident = "object.hasown";
          ltype = "file";
          version = "1.1.2";
        };
      };
      "object.values" = {
        "1.1.6" = {
          depInfo = {
            call-bind = {
              descriptor = "^1.0.2";
              pin = "1.0.2";
              runtime = true;
            };
            define-properties = {
              descriptor = "^1.1.4";
              pin = "1.2.1";
              runtime = true;
            };
            es-abstract = {
              descriptor = "^1.20.4";
              pin = "1.22.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-dcKYzLvyFIzr4YpeMQGUmS5azmLAusP6dLPnl0uhzww=";
            type = "tarball";
            url = "https://registry.npmjs.org/object.values/-/object.values-1.1.6.tgz";
          };
          ident = "object.values";
          ltype = "file";
          version = "1.1.6";
        };
      };
      once = {
        "1.4.0" = {
          depInfo = {
            wrappy = {
              descriptor = "1";
              pin = "1.0.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-2NvvDZICNRZJPY258mO8rrRBg4fY7mlMjFEl2R+m348=";
            type = "tarball";
            url = "https://registry.npmjs.org/once/-/once-1.4.0.tgz";
          };
          ident = "once";
          ltype = "file";
          version = "1.4.0";
        };
      };
      optionator = {
        "0.9.3" = {
          depInfo = {
            "@aashutoshrathi/word-wrap" = {
              descriptor = "^1.2.3";
              pin = "1.2.6";
              runtime = true;
            };
            deep-is = {
              descriptor = "^0.1.3";
              pin = "0.1.4";
              runtime = true;
            };
            fast-levenshtein = {
              descriptor = "^2.0.6";
              pin = "2.0.6";
              runtime = true;
            };
            levn = {
              descriptor = "^0.4.1";
              pin = "0.4.1";
              runtime = true;
            };
            prelude-ls = {
              descriptor = "^1.2.1";
              pin = "1.2.1";
              runtime = true;
            };
            type-check = {
              descriptor = "^0.4.0";
              pin = "0.4.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-KIkFMXhW+cbxs1mcsFmLoTB9x8M4ZWxwz+TB7Kgd2s4=";
            type = "tarball";
            url = "https://registry.npmjs.org/optionator/-/optionator-0.9.3.tgz";
          };
          ident = "optionator";
          ltype = "file";
          version = "0.9.3";
        };
      };
      p-limit = {
        "3.1.0" = {
          depInfo = {
            yocto-queue = {
              descriptor = "^0.1.0";
              pin = "0.1.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-AMCtIV7mGwSuZn7PDlsDCHQ4n/pm5S5WG4H1FJC/sR8=";
            type = "tarball";
            url = "https://registry.npmjs.org/p-limit/-/p-limit-3.1.0.tgz";
          };
          ident = "p-limit";
          ltype = "file";
          version = "3.1.0";
        };
      };
      p-locate = {
        "5.0.0" = {
          depInfo = {
            p-limit = {
              descriptor = "^3.0.2";
              pin = "3.1.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-trcSEXcZAqQr13/oSsJmVMRbMAMi6flvssbXHUsG9PY=";
            type = "tarball";
            url = "https://registry.npmjs.org/p-locate/-/p-locate-5.0.0.tgz";
          };
          ident = "p-locate";
          ltype = "file";
          version = "5.0.0";
        };
      };
      pagefind = {
        "1.0.4" = {
          binInfo = {
            binPairs = {
              pagefind = "lib/runner/bin.cjs";
            };
          };
          depInfo = {
            "@pagefind/darwin-arm64" = {
              descriptor = "1.0.4";
              optional = true;
              pin = "1.0.4";
              runtime = true;
            };
            "@pagefind/darwin-x64" = {
              descriptor = "1.0.4";
              optional = true;
              pin = "1.0.4";
              runtime = true;
            };
            "@pagefind/linux-arm64" = {
              descriptor = "1.0.4";
              optional = true;
              pin = "1.0.4";
              runtime = true;
            };
            "@pagefind/linux-x64" = {
              descriptor = "1.0.4";
              optional = true;
              pin = "1.0.4";
              runtime = true;
            };
            "@pagefind/windows-x64" = {
              descriptor = "1.0.4";
              optional = true;
              pin = "1.0.4";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-qZKXfJAtERnzvC7ItpRDxzvmOocaJ1vkk524l+e47Bw=";
            type = "tarball";
            url = "https://registry.npmjs.org/pagefind/-/pagefind-1.0.4.tgz";
          };
          ident = "pagefind";
          ltype = "file";
          version = "1.0.4";
        };
      };
      parent-module = {
        "1.0.1" = {
          depInfo = {
            callsites = {
              descriptor = "^3.0.0";
              pin = "3.1.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-di+kefBp4+PYz6izBuMghrrb7tOQQfrW/7tMfibKBI8=";
            type = "tarball";
            url = "https://registry.npmjs.org/parent-module/-/parent-module-1.0.1.tgz";
          };
          ident = "parent-module";
          ltype = "file";
          version = "1.0.1";
        };
      };
      parse-entities = {
        "4.0.1" = {
          depInfo = {
            "@types/unist" = {
              descriptor = "^2.0.0";
              pin = "2.0.10";
              runtime = true;
            };
            character-entities = {
              descriptor = "^2.0.0";
              pin = "2.0.2";
              runtime = true;
            };
            character-entities-legacy = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
            character-reference-invalid = {
              descriptor = "^2.0.0";
              pin = "2.0.1";
              runtime = true;
            };
            decode-named-character-reference = {
              descriptor = "^1.0.0";
              pin = "1.0.2";
              runtime = true;
            };
            is-alphanumerical = {
              descriptor = "^2.0.0";
              pin = "2.0.1";
              runtime = true;
            };
            is-decimal = {
              descriptor = "^2.0.0";
              pin = "2.0.1";
              runtime = true;
            };
            is-hexadecimal = {
              descriptor = "^2.0.0";
              pin = "2.0.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-cPoZKIybqHGR7UorILRpWLytQsbIO0X2rIJ21b9F9K0=";
            type = "tarball";
            url = "https://registry.npmjs.org/parse-entities/-/parse-entities-4.0.1.tgz";
          };
          ident = "parse-entities";
          ltype = "file";
          version = "4.0.1";
        };
      };
      parse-json = {
        "5.2.0" = {
          depInfo = {
            "@babel/code-frame" = {
              descriptor = "^7.0.0";
              pin = "7.18.6";
              runtime = true;
            };
            error-ex = {
              descriptor = "^1.3.1";
              pin = "1.3.2";
              runtime = true;
            };
            json-parse-even-better-errors = {
              descriptor = "^2.3.0";
              pin = "2.3.1";
              runtime = true;
            };
            lines-and-columns = {
              descriptor = "^1.1.6";
              pin = "1.2.4";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-hxVxyGV3iUu2t/nGE+bdgp9C38FU/lZU2iPbtazHLy4=";
            type = "tarball";
            url = "https://registry.npmjs.org/parse-json/-/parse-json-5.2.0.tgz";
          };
          ident = "parse-json";
          ltype = "file";
          version = "5.2.0";
        };
      };
      parse5 = {
        "7.1.2" = {
          depInfo = {
            entities = {
              descriptor = "^4.4.0";
              pin = "4.5.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-QuHdVii1mE/QnT45OlvPRvAnz/Uoys6yRQ/Em6+WwC0=";
            type = "tarball";
            url = "https://registry.npmjs.org/parse5/-/parse5-7.1.2.tgz";
          };
          ident = "parse5";
          ltype = "file";
          version = "7.1.2";
        };
      };
      path-exists = {
        "4.0.0" = {
          fetchInfo = {
            narHash = "sha256-QmsShSY8p68eX9bNeinv/8VO0/+P2c+Rv82mtPqtpjE=";
            type = "tarball";
            url = "https://registry.npmjs.org/path-exists/-/path-exists-4.0.0.tgz";
          };
          ident = "path-exists";
          ltype = "file";
          treeInfo = { };
          version = "4.0.0";
        };
      };
      path-is-absolute = {
        "1.0.1" = {
          fetchInfo = {
            narHash = "sha256-+DjPlEsONpIJ3kBveAhTRCV2aRZt3KN8RNLsgoC+jXk=";
            type = "tarball";
            url = "https://registry.npmjs.org/path-is-absolute/-/path-is-absolute-1.0.1.tgz";
          };
          ident = "path-is-absolute";
          ltype = "file";
          treeInfo = { };
          version = "1.0.1";
        };
      };
      path-key = {
        "3.1.1" = {
          fetchInfo = {
            narHash = "sha256-gj4CYT2AeZ5jyhV6m/eAq4pETAxmqd5kAcw/Iw0yxiI=";
            type = "tarball";
            url = "https://registry.npmjs.org/path-key/-/path-key-3.1.1.tgz";
          };
          ident = "path-key";
          ltype = "file";
          treeInfo = { };
          version = "3.1.1";
        };
      };
      path-parse = {
        "1.0.7" = {
          fetchInfo = {
            narHash = "sha256-IO0Y8yjZA6xJ63eLG/nFzWTGjI5tREyNKttz4DXoKYo=";
            type = "tarball";
            url = "https://registry.npmjs.org/path-parse/-/path-parse-1.0.7.tgz";
          };
          ident = "path-parse";
          ltype = "file";
          treeInfo = { };
          version = "1.0.7";
        };
      };
      path-type = {
        "4.0.0" = {
          fetchInfo = {
            narHash = "sha256-1ZtKKsM6jwAJslIh8ux8QgCyLpviZNMFpQJRjVnRxL4=";
            type = "tarball";
            url = "https://registry.npmjs.org/path-type/-/path-type-4.0.0.tgz";
          };
          ident = "path-type";
          ltype = "file";
          treeInfo = { };
          version = "4.0.0";
        };
      };
      periscopic = {
        "3.1.0" = {
          depInfo = {
            "@types/estree" = {
              descriptor = "^1.0.0";
              pin = "1.0.5";
              runtime = true;
            };
            estree-walker = {
              descriptor = "^3.0.0";
              pin = "3.0.3";
              runtime = true;
            };
            is-reference = {
              descriptor = "^3.0.0";
              pin = "3.0.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-/2E+WvOcFyzAtiEpZIR/eQ/vCIgjkjVoAbjFPsWRkXQ=";
            type = "tarball";
            url = "https://registry.npmjs.org/periscopic/-/periscopic-3.1.0.tgz";
          };
          ident = "periscopic";
          ltype = "file";
          version = "3.1.0";
        };
      };
      picocolors = {
        "1.0.0" = {
          fetchInfo = {
            narHash = "sha256-zo0dDKQASSCpixflPOwG61jzA9IqjZMBN8dwojRu+l8=";
            type = "tarball";
            url = "https://registry.npmjs.org/picocolors/-/picocolors-1.0.0.tgz";
          };
          ident = "picocolors";
          ltype = "file";
          treeInfo = { };
          version = "1.0.0";
        };
      };
      picomatch = {
        "2.3.1" = {
          fetchInfo = {
            narHash = "sha256-8N7a/2Aei6DYLZ9EvhCEbdxTSTb5pmy0OqHYuN/IJac=";
            type = "tarball";
            url = "https://registry.npmjs.org/picomatch/-/picomatch-2.3.1.tgz";
          };
          ident = "picomatch";
          ltype = "file";
          treeInfo = { };
          version = "2.3.1";
        };
      };
      postcss = {
        "8.4.31" = {
          depInfo = {
            nanoid = {
              descriptor = "^3.3.6";
              pin = "3.3.7";
              runtime = true;
            };
            picocolors = {
              descriptor = "^1.0.0";
              pin = "1.0.0";
              runtime = true;
            };
            source-map-js = {
              descriptor = "^1.0.2";
              pin = "1.0.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-KGBmtVUlkuhNqRif4SBaADibVPmQLJuzKXOkqEQepdc=";
            type = "tarball";
            url = "https://registry.npmjs.org/postcss/-/postcss-8.4.31.tgz";
          };
          ident = "postcss";
          ltype = "file";
          version = "8.4.31";
        };
      };
      prelude-ls = {
        "1.2.1" = {
          fetchInfo = {
            narHash = "sha256-jC9FXbfy9euuL95bO+VZT03+rR3CqpwVKxBmj5hSYls=";
            type = "tarball";
            url = "https://registry.npmjs.org/prelude-ls/-/prelude-ls-1.2.1.tgz";
          };
          ident = "prelude-ls";
          ltype = "file";
          treeInfo = { };
          version = "1.2.1";
        };
      };
      prop-types = {
        "15.8.1" = {
          depInfo = {
            loose-envify = {
              descriptor = "^1.4.0";
              pin = "1.4.0";
              runtime = true;
            };
            object-assign = {
              descriptor = "^4.1.1";
              pin = "4.1.1";
              runtime = true;
            };
            react-is = {
              descriptor = "^16.13.1";
              pin = "16.13.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-LfGJAVpvlP48OlCxprPHi3B88Wczi+luuJ9wEQmtqWs=";
            type = "tarball";
            url = "https://registry.npmjs.org/prop-types/-/prop-types-15.8.1.tgz";
          };
          ident = "prop-types";
          ltype = "file";
          version = "15.8.1";
        };
      };
      property-information = {
        "6.2.0" = {
          fetchInfo = {
            narHash = "sha256-207YWDYPS5Se83hPNqm5Qf8lxKxvOxtDl05Qo0TCf0M=";
            type = "tarball";
            url = "https://registry.npmjs.org/property-information/-/property-information-6.2.0.tgz";
          };
          ident = "property-information";
          ltype = "file";
          treeInfo = { };
          version = "6.2.0";
        };
      };
      punycode = {
        "2.1.1" = {
          fetchInfo = {
            narHash = "sha256-T0XEU9p6DxVAp8PSfIGeCDdZk2MAG5CKGTXcTppHsnI=";
            type = "tarball";
            url = "https://registry.npmjs.org/punycode/-/punycode-2.1.1.tgz";
          };
          ident = "punycode";
          ltype = "file";
          treeInfo = { };
          version = "2.1.1";
        };
      };
      queue-microtask = {
        "1.2.3" = {
          fetchInfo = {
            narHash = "sha256-toA5eXCuEXuopI11sr2erVOgFPTNlS3krZO/l7Ob2CQ=";
            type = "tarball";
            url = "https://registry.npmjs.org/queue-microtask/-/queue-microtask-1.2.3.tgz";
          };
          ident = "queue-microtask";
          ltype = "file";
          treeInfo = { };
          version = "1.2.3";
        };
      };
      randombytes = {
        "2.1.0" = {
          depInfo = {
            safe-buffer = {
              descriptor = "^5.1.0";
              pin = "5.2.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-Abr0ohEDpcB9XXrFyNIPNqFVeANanb4rkCQR5B2MXjY=";
            type = "tarball";
            url = "https://registry.npmjs.org/randombytes/-/randombytes-2.1.0.tgz";
          };
          ident = "randombytes";
          ltype = "file";
          version = "2.1.0";
        };
      };
      react = {
        "18.2.0" = {
          depInfo = {
            loose-envify = {
              descriptor = "^1.1.0";
              pin = "1.4.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-xu467N3gZPKlkRpCGepCleV8dYW1zlZFTWTypSzAJnY=";
            type = "tarball";
            url = "https://registry.npmjs.org/react/-/react-18.2.0.tgz";
          };
          ident = "react";
          ltype = "file";
          version = "18.2.0";
        };
      };
      react-dom = {
        "18.2.0" = {
          depInfo = {
            loose-envify = {
              descriptor = "^1.1.0";
              pin = "1.4.0";
              runtime = true;
            };
            scheduler = {
              descriptor = "^0.23.0";
              pin = "0.23.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-HDf0V4CIsZPnNqNr2YpXvyGY1wwI+wDrvJ/VO0CDSbw=";
            type = "tarball";
            url = "https://registry.npmjs.org/react-dom/-/react-dom-18.2.0.tgz";
          };
          ident = "react-dom";
          ltype = "file";
          peerInfo = {
            react = {
              descriptor = "^18.2.0";
            };
          };
          version = "18.2.0";
        };
      };
      react-highlight = {
        "0.15.0" = {
          depInfo = {
            "highlight.js" = {
              descriptor = "^10.5.0";
              pin = "10.7.3";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-3JZAT5rXAcs31Y8XkPDYUnH1FKFzyhWM8X69ULQFCV8=";
            type = "tarball";
            url = "https://registry.npmjs.org/react-highlight/-/react-highlight-0.15.0.tgz";
          };
          ident = "react-highlight";
          ltype = "file";
          version = "0.15.0";
        };
      };
      react-hot-toast = {
        "2.4.1" = {
          depInfo = {
            goober = {
              descriptor = "^2.1.10";
              pin = "2.1.13";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-seRTGGyQWjwU+PNqAU71f8sLus509310whSQ4xNKs4Q=";
            type = "tarball";
            url = "https://registry.npmjs.org/react-hot-toast/-/react-hot-toast-2.4.1.tgz";
          };
          ident = "react-hot-toast";
          ltype = "file";
          peerInfo = {
            react = {
              descriptor = ">=16";
            };
            react-dom = {
              descriptor = ">=16";
            };
          };
          version = "2.4.1";
        };
      };
      react-is = {
        "16.13.1" = {
          fetchInfo = {
            narHash = "sha256-84sHi9+fCX1q22phJuI2fsbjQQXoHXeAQTa3jmKsw/U=";
            type = "tarball";
            url = "https://registry.npmjs.org/react-is/-/react-is-16.13.1.tgz";
          };
          ident = "react-is";
          ltype = "file";
          treeInfo = { };
          version = "16.13.1";
        };
        "18.2.0" = {
          fetchInfo = {
            narHash = "sha256-eSOGsY/IVNB/U36bUYaUctK4n5DEM9hmzm1keaypG2c=";
            type = "tarball";
            url = "https://registry.npmjs.org/react-is/-/react-is-18.2.0.tgz";
          };
          ident = "react-is";
          ltype = "file";
          treeInfo = { };
          version = "18.2.0";
        };
      };
      "react-mark.js" = {
        "9.0.7" = {
          fetchInfo = {
            narHash = "sha256-RRP/n4t+PZAkZwIU714NDlvk1qO4oysrGUrabWig2N4=";
            type = "tarball";
            url = "https://registry.npmjs.org/react-mark.js/-/react-mark.js-9.0.7.tgz";
          };
          ident = "react-mark.js";
          ltype = "file";
          peerInfo = {
            "mark.js" = {
              descriptor = "~8.11.1";
            };
            react = {
              descriptor = "^16.8.0 || ^17.0.0 || ^18.0.0";
            };
          };
          treeInfo = { };
          version = "9.0.7";
        };
      };
      react-markdown = {
        "9.0.0" = {
          depInfo = {
            "@types/hast" = {
              descriptor = "^3.0.0";
              pin = "3.0.1";
              runtime = true;
            };
            devlop = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            hast-util-to-jsx-runtime = {
              descriptor = "^2.0.0";
              pin = "2.2.0";
              runtime = true;
            };
            html-url-attributes = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
            mdast-util-to-hast = {
              descriptor = "^13.0.0";
              pin = "13.0.2";
              runtime = true;
            };
            micromark-util-sanitize-uri = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            remark-parse = {
              descriptor = "^11.0.0";
              pin = "11.0.0";
              runtime = true;
            };
            remark-rehype = {
              descriptor = "^11.0.0";
              pin = "11.0.0";
              runtime = true;
            };
            unified = {
              descriptor = "^11.0.0";
              pin = "11.0.4";
              runtime = true;
            };
            unist-util-visit = {
              descriptor = "^5.0.0";
              pin = "5.0.0";
              runtime = true;
            };
            vfile = {
              descriptor = "^6.0.0";
              pin = "6.0.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-0FtAdiHaLZC0K/M3Owg3VAMMXA/pEZRJlD4aXkg4vyA=";
            type = "tarball";
            url = "https://registry.npmjs.org/react-markdown/-/react-markdown-9.0.0.tgz";
          };
          ident = "react-markdown";
          ltype = "file";
          peerInfo = {
            "@types/react" = {
              descriptor = ">=18";
            };
            react = {
              descriptor = ">=18";
            };
          };
          version = "9.0.0";
        };
      };
      react-minisearch = {
        "6.0.4" = {
          fetchInfo = {
            narHash = "sha256-9P2/CjsF1zlJGDwFoI8ldF8E5N8uGcSUXdQ2eHtbxGM=";
            type = "tarball";
            url = "https://registry.npmjs.org/react-minisearch/-/react-minisearch-6.0.4.tgz";
          };
          ident = "react-minisearch";
          ltype = "file";
          peerInfo = {
            minisearch = {
              descriptor = "^6.0.0";
            };
            react = {
              descriptor = "^16.8.0 || ^17.0.0 || ^18.0.0";
            };
          };
          treeInfo = { };
          version = "6.0.4";
        };
      };
      react-transition-group = {
        "4.4.5" = {
          depInfo = {
            "@babel/runtime" = {
              descriptor = "^7.5.5";
              pin = "7.23.1";
              runtime = true;
            };
            dom-helpers = {
              descriptor = "^5.0.1";
              pin = "5.2.1";
              runtime = true;
            };
            loose-envify = {
              descriptor = "^1.4.0";
              pin = "1.4.0";
              runtime = true;
            };
            prop-types = {
              descriptor = "^15.6.2";
              pin = "15.8.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-rxK890I79kcB9FwueWOWluR5hIg7XFq0nvxWwRA30e0=";
            type = "tarball";
            url = "https://registry.npmjs.org/react-transition-group/-/react-transition-group-4.4.5.tgz";
          };
          ident = "react-transition-group";
          ltype = "file";
          peerInfo = {
            react = {
              descriptor = ">=16.6.0";
            };
            react-dom = {
              descriptor = ">=16.6.0";
            };
          };
          version = "4.4.5";
        };
      };
      "reflect.getprototypeof" = {
        "1.0.4" = {
          depInfo = {
            call-bind = {
              descriptor = "^1.0.2";
              pin = "1.0.2";
              runtime = true;
            };
            define-properties = {
              descriptor = "^1.2.0";
              pin = "1.2.1";
              runtime = true;
            };
            es-abstract = {
              descriptor = "^1.22.1";
              pin = "1.22.2";
              runtime = true;
            };
            get-intrinsic = {
              descriptor = "^1.2.1";
              pin = "1.2.1";
              runtime = true;
            };
            globalthis = {
              descriptor = "^1.0.3";
              pin = "1.0.3";
              runtime = true;
            };
            which-builtin-type = {
              descriptor = "^1.1.3";
              pin = "1.1.3";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-jVLqqZ5uIUa7Cp3bQ1nED+kD+peLsp0f5FslefNzAXo=";
            type = "tarball";
            url = "https://registry.npmjs.org/reflect.getprototypeof/-/reflect.getprototypeof-1.0.4.tgz";
          };
          ident = "reflect.getprototypeof";
          ltype = "file";
          version = "1.0.4";
        };
      };
      regenerator-runtime = {
        "0.14.0" = {
          fetchInfo = {
            narHash = "sha256-dQQ+7V/uRRNdQZb5XniSHWCfY5VIwOrYFC1iUFBjEh4=";
            type = "tarball";
            url = "https://registry.npmjs.org/regenerator-runtime/-/regenerator-runtime-0.14.0.tgz";
          };
          ident = "regenerator-runtime";
          ltype = "file";
          treeInfo = { };
          version = "0.14.0";
        };
      };
      "regexp.prototype.flags" = {
        "1.5.1" = {
          depInfo = {
            call-bind = {
              descriptor = "^1.0.2";
              pin = "1.0.2";
              runtime = true;
            };
            define-properties = {
              descriptor = "^1.2.0";
              pin = "1.2.1";
              runtime = true;
            };
            set-function-name = {
              descriptor = "^2.0.0";
              pin = "2.0.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-PjpuKpmNVEkKrqkM1ihQH5rDd1zcjqL5P0ZMVHh6KDk=";
            type = "tarball";
            url = "https://registry.npmjs.org/regexp.prototype.flags/-/regexp.prototype.flags-1.5.1.tgz";
          };
          ident = "regexp.prototype.flags";
          ltype = "file";
          version = "1.5.1";
        };
      };
      rehype = {
        "13.0.1" = {
          depInfo = {
            "@types/hast" = {
              descriptor = "^3.0.0";
              pin = "3.0.1";
              runtime = true;
            };
            rehype-parse = {
              descriptor = "^9.0.0";
              pin = "9.0.0";
              runtime = true;
            };
            rehype-stringify = {
              descriptor = "^10.0.0";
              pin = "10.0.0";
              runtime = true;
            };
            unified = {
              descriptor = "^11.0.0";
              pin = "11.0.4";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-5kLryCSv/q5lV/ZJaGRjGMnbBGSzOBxAG31kkYbVU9A=";
            type = "tarball";
            url = "https://registry.npmjs.org/rehype/-/rehype-13.0.1.tgz";
          };
          ident = "rehype";
          ltype = "file";
          version = "13.0.1";
        };
      };
      rehype-autolink-headings = {
        "7.1.0" = {
          depInfo = {
            "@types/hast" = {
              descriptor = "^3.0.0";
              pin = "3.0.1";
              runtime = true;
            };
            "@ungap/structured-clone" = {
              descriptor = "^1.0.0";
              pin = "1.2.0";
              runtime = true;
            };
            hast-util-heading-rank = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
            hast-util-is-element = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
            unified = {
              descriptor = "^11.0.0";
              pin = "11.0.4";
              runtime = true;
            };
            unist-util-visit = {
              descriptor = "^5.0.0";
              pin = "5.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-Hk9DMXdBLbD6tyQ4iXKFs3gLIwgYIXge5Gxyppcjt48=";
            type = "tarball";
            url = "https://registry.npmjs.org/rehype-autolink-headings/-/rehype-autolink-headings-7.1.0.tgz";
          };
          ident = "rehype-autolink-headings";
          ltype = "file";
          version = "7.1.0";
        };
      };
      rehype-highlight = {
        "7.0.0" = {
          depInfo = {
            "@types/hast" = {
              descriptor = "^3.0.0";
              pin = "3.0.1";
              runtime = true;
            };
            hast-util-to-text = {
              descriptor = "^4.0.0";
              pin = "4.0.0";
              runtime = true;
            };
            lowlight = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
            unist-util-visit = {
              descriptor = "^5.0.0";
              pin = "5.0.0";
              runtime = true;
            };
            vfile = {
              descriptor = "^6.0.0";
              pin = "6.0.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-m8Qpdn0DOdBbaH4++KskfEFekekqrPtGJtn8a7QCRkE=";
            type = "tarball";
            url = "https://registry.npmjs.org/rehype-highlight/-/rehype-highlight-7.0.0.tgz";
          };
          ident = "rehype-highlight";
          ltype = "file";
          version = "7.0.0";
        };
      };
      rehype-parse = {
        "9.0.0" = {
          depInfo = {
            "@types/hast" = {
              descriptor = "^3.0.0";
              pin = "3.0.1";
              runtime = true;
            };
            hast-util-from-html = {
              descriptor = "^2.0.0";
              pin = "2.0.1";
              runtime = true;
            };
            unified = {
              descriptor = "^11.0.0";
              pin = "11.0.4";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-XKwCrdAOmOTfSwInY7el7bCSYkh7gDWHj+FYiVnIGA0=";
            type = "tarball";
            url = "https://registry.npmjs.org/rehype-parse/-/rehype-parse-9.0.0.tgz";
          };
          ident = "rehype-parse";
          ltype = "file";
          version = "9.0.0";
        };
      };
      rehype-slug = {
        "6.0.0" = {
          depInfo = {
            "@types/hast" = {
              descriptor = "^3.0.0";
              pin = "3.0.1";
              runtime = true;
            };
            github-slugger = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            hast-util-heading-rank = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
            hast-util-to-string = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
            unist-util-visit = {
              descriptor = "^5.0.0";
              pin = "5.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-Wbl/TjtSHJWieP5KljUl4W1qdU5Gf6UK8blbiRB3XtQ=";
            type = "tarball";
            url = "https://registry.npmjs.org/rehype-slug/-/rehype-slug-6.0.0.tgz";
          };
          ident = "rehype-slug";
          ltype = "file";
          version = "6.0.0";
        };
      };
      rehype-stringify = {
        "10.0.0" = {
          depInfo = {
            "@types/hast" = {
              descriptor = "^3.0.0";
              pin = "3.0.1";
              runtime = true;
            };
            hast-util-to-html = {
              descriptor = "^9.0.0";
              pin = "9.0.0";
              runtime = true;
            };
            unified = {
              descriptor = "^11.0.0";
              pin = "11.0.4";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-KbbUKz5Bxn64l9+rS+mAO5LUBJpffqgdGtLCsgo9N68=";
            type = "tarball";
            url = "https://registry.npmjs.org/rehype-stringify/-/rehype-stringify-10.0.0.tgz";
          };
          ident = "rehype-stringify";
          ltype = "file";
          version = "10.0.0";
        };
      };
      remark-frontmatter = {
        "5.0.0" = {
          depInfo = {
            "@types/mdast" = {
              descriptor = "^4.0.0";
              pin = "4.0.1";
              runtime = true;
            };
            mdast-util-frontmatter = {
              descriptor = "^2.0.0";
              pin = "2.0.1";
              runtime = true;
            };
            micromark-extension-frontmatter = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            unified = {
              descriptor = "^11.0.0";
              pin = "11.0.4";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-r5ss55Eq6VXOibN3JrVMAR2w/cBSedbW0QrKJL2keTk=";
            type = "tarball";
            url = "https://registry.npmjs.org/remark-frontmatter/-/remark-frontmatter-5.0.0.tgz";
          };
          ident = "remark-frontmatter";
          ltype = "file";
          version = "5.0.0";
        };
      };
      remark-gfm = {
        "4.0.0" = {
          depInfo = {
            "@types/mdast" = {
              descriptor = "^4.0.0";
              pin = "4.0.1";
              runtime = true;
            };
            mdast-util-gfm = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
            micromark-extension-gfm = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
            remark-parse = {
              descriptor = "^11.0.0";
              pin = "11.0.0";
              runtime = true;
            };
            remark-stringify = {
              descriptor = "^11.0.0";
              pin = "11.0.0";
              runtime = true;
            };
            unified = {
              descriptor = "^11.0.0";
              pin = "11.0.4";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-igYay5xztQl0uaWTyvlcFicsDIQ9xdp23sLi+RW19zc=";
            type = "tarball";
            url = "https://registry.npmjs.org/remark-gfm/-/remark-gfm-4.0.0.tgz";
          };
          ident = "remark-gfm";
          ltype = "file";
          version = "4.0.0";
        };
      };
      remark-heading-id = {
        "1.0.1" = {
          depInfo = {
            lodash = {
              descriptor = "^4.17.21";
              pin = "4.17.21";
              runtime = true;
            };
            unist-util-visit = {
              descriptor = "^1.4.0";
              pin = "1.4.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-oaKVDfxnvgpN4cI1lYZwMQfuVOYoQoWz5McPZ50BwFc=";
            type = "tarball";
            url = "https://registry.npmjs.org/remark-heading-id/-/remark-heading-id-1.0.1.tgz";
          };
          ident = "remark-heading-id";
          ltype = "file";
          version = "1.0.1";
        };
      };
      remark-mdx = {
        "2.3.0" = {
          depInfo = {
            mdast-util-mdx = {
              descriptor = "^2.0.0";
              pin = "2.0.1";
              runtime = true;
            };
            micromark-extension-mdxjs = {
              descriptor = "^1.0.0";
              pin = "1.0.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-H8OaaoulzBGlFs/lkvH4e+/8izI0hGjhIgJJTS2dV2Q=";
            type = "tarball";
            url = "https://registry.npmjs.org/remark-mdx/-/remark-mdx-2.3.0.tgz";
          };
          ident = "remark-mdx";
          ltype = "file";
          version = "2.3.0";
        };
        "3.0.0" = {
          depInfo = {
            mdast-util-mdx = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
            micromark-extension-mdxjs = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-5Chj7IBUfD52NvbMekJ51MjxJNKhMBxrGnV3JMEd2Mk=";
            type = "tarball";
            url = "https://registry.npmjs.org/remark-mdx/-/remark-mdx-3.0.0.tgz";
          };
          ident = "remark-mdx";
          ltype = "file";
          version = "3.0.0";
        };
      };
      remark-parse = {
        "10.0.2" = {
          depInfo = {
            "@types/mdast" = {
              descriptor = "^3.0.0";
              pin = "3.0.15";
              runtime = true;
            };
            mdast-util-from-markdown = {
              descriptor = "^1.0.0";
              pin = "1.3.1";
              runtime = true;
            };
            unified = {
              descriptor = "^10.0.0";
              pin = "10.1.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-SCqXbq6Es7amOBhZJauFJn+xPMX3t9Y+NXoDhNXBs3A=";
            type = "tarball";
            url = "https://registry.npmjs.org/remark-parse/-/remark-parse-10.0.2.tgz";
          };
          ident = "remark-parse";
          ltype = "file";
          version = "10.0.2";
        };
        "11.0.0" = {
          depInfo = {
            "@types/mdast" = {
              descriptor = "^4.0.0";
              pin = "4.0.1";
              runtime = true;
            };
            mdast-util-from-markdown = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            micromark-util-types = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            unified = {
              descriptor = "^11.0.0";
              pin = "11.0.4";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-/anhgeKIp/ZZrcIe3F+HlqBdbMA0Zy9V6SqNuJ+qmAk=";
            type = "tarball";
            url = "https://registry.npmjs.org/remark-parse/-/remark-parse-11.0.0.tgz";
          };
          ident = "remark-parse";
          ltype = "file";
          version = "11.0.0";
        };
      };
      remark-rehype = {
        "10.1.0" = {
          depInfo = {
            "@types/hast" = {
              descriptor = "^2.0.0";
              pin = "2.3.8";
              runtime = true;
            };
            "@types/mdast" = {
              descriptor = "^3.0.0";
              pin = "3.0.15";
              runtime = true;
            };
            mdast-util-to-hast = {
              descriptor = "^12.1.0";
              pin = "12.3.0";
              runtime = true;
            };
            unified = {
              descriptor = "^10.0.0";
              pin = "10.1.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-f7DjRM7yBCifPnYHvZyUQYhExTLP/jguDRa1aV8muwM=";
            type = "tarball";
            url = "https://registry.npmjs.org/remark-rehype/-/remark-rehype-10.1.0.tgz";
          };
          ident = "remark-rehype";
          ltype = "file";
          version = "10.1.0";
        };
        "11.0.0" = {
          depInfo = {
            "@types/hast" = {
              descriptor = "^3.0.0";
              pin = "3.0.1";
              runtime = true;
            };
            "@types/mdast" = {
              descriptor = "^4.0.0";
              pin = "4.0.1";
              runtime = true;
            };
            mdast-util-to-hast = {
              descriptor = "^13.0.0";
              pin = "13.0.2";
              runtime = true;
            };
            unified = {
              descriptor = "^11.0.0";
              pin = "11.0.4";
              runtime = true;
            };
            vfile = {
              descriptor = "^6.0.0";
              pin = "6.0.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-qI+w1SafDM278xiXt/5+YaD1txmCeoSfnjcd5aRJbO4=";
            type = "tarball";
            url = "https://registry.npmjs.org/remark-rehype/-/remark-rehype-11.0.0.tgz";
          };
          ident = "remark-rehype";
          ltype = "file";
          version = "11.0.0";
        };
      };
      remark-stringify = {
        "11.0.0" = {
          depInfo = {
            "@types/mdast" = {
              descriptor = "^4.0.0";
              pin = "4.0.1";
              runtime = true;
            };
            mdast-util-to-markdown = {
              descriptor = "^2.0.0";
              pin = "2.1.0";
              runtime = true;
            };
            unified = {
              descriptor = "^11.0.0";
              pin = "11.0.4";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-nHl5Q29S48/PUnXt8mTiRnSWZt2SRK6AyxAf4bEH4pU=";
            type = "tarball";
            url = "https://registry.npmjs.org/remark-stringify/-/remark-stringify-11.0.0.tgz";
          };
          ident = "remark-stringify";
          ltype = "file";
          version = "11.0.0";
        };
      };
      resolve = {
        "1.22.6" = {
          binInfo = {
            binPairs = {
              resolve = "bin/resolve";
            };
          };
          depInfo = {
            is-core-module = {
              descriptor = "^2.13.0";
              pin = "2.13.0";
              runtime = true;
            };
            path-parse = {
              descriptor = "^1.0.7";
              pin = "1.0.7";
              runtime = true;
            };
            supports-preserve-symlinks-flag = {
              descriptor = "^1.0.0";
              pin = "1.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-ZdBA7qv9iCd/il139PIuqn/DDbsDjk7S9ibKn2kzUb4=";
            type = "tarball";
            url = "https://registry.npmjs.org/resolve/-/resolve-1.22.6.tgz";
          };
          ident = "resolve";
          ltype = "file";
          version = "1.22.6";
        };
        "2.0.0-next.4" = {
          binInfo = {
            binPairs = {
              resolve = "bin/resolve";
            };
          };
          depInfo = {
            is-core-module = {
              descriptor = "^2.9.0";
              pin = "2.13.0";
              runtime = true;
            };
            path-parse = {
              descriptor = "^1.0.7";
              pin = "1.0.7";
              runtime = true;
            };
            supports-preserve-symlinks-flag = {
              descriptor = "^1.0.0";
              pin = "1.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-Ljjrw8eKPK1aGtqcxFQfwccOIRJTP68XIgR38vkPunc=";
            type = "tarball";
            url = "https://registry.npmjs.org/resolve/-/resolve-2.0.0-next.4.tgz";
          };
          ident = "resolve";
          ltype = "file";
          version = "2.0.0-next.4";
        };
      };
      resolve-from = {
        "4.0.0" = {
          fetchInfo = {
            narHash = "sha256-nD9AJZmCaf+wEw0JYsv2/4VWsD1nFdSK+pwFWFiRf5M=";
            type = "tarball";
            url = "https://registry.npmjs.org/resolve-from/-/resolve-from-4.0.0.tgz";
          };
          ident = "resolve-from";
          ltype = "file";
          treeInfo = { };
          version = "4.0.0";
        };
      };
      resolve-pkg-maps = {
        "1.0.0" = {
          fetchInfo = {
            narHash = "sha256-WhDCNuft7AEjoatAOEQOHp17eYsaft0BFCkgDRPRwNQ=";
            type = "tarball";
            url = "https://registry.npmjs.org/resolve-pkg-maps/-/resolve-pkg-maps-1.0.0.tgz";
          };
          ident = "resolve-pkg-maps";
          ltype = "file";
          treeInfo = { };
          version = "1.0.0";
        };
      };
      reusify = {
        "1.0.4" = {
          fetchInfo = {
            narHash = "sha256-WKyHwdjM4zpbJDXA61+Ixsv1uY418K36PcjbZfua5fY=";
            type = "tarball";
            url = "https://registry.npmjs.org/reusify/-/reusify-1.0.4.tgz";
          };
          ident = "reusify";
          ltype = "file";
          treeInfo = { };
          version = "1.0.4";
        };
      };
      rimraf = {
        "3.0.2" = {
          binInfo = {
            binPairs = {
              rimraf = "bin.js";
            };
          };
          depInfo = {
            glob = {
              descriptor = "^7.1.3";
              pin = "7.2.3";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-5ZflqftTdzdyQtoHawWDKLP29TBYks2sneUZTaH6VJM=";
            type = "tarball";
            url = "https://registry.npmjs.org/rimraf/-/rimraf-3.0.2.tgz";
          };
          ident = "rimraf";
          ltype = "file";
          version = "3.0.2";
        };
      };
      run-parallel = {
        "1.2.0" = {
          depInfo = {
            queue-microtask = {
              descriptor = "^1.2.2";
              pin = "1.2.3";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-u5XLCbdOHvL+vVMeQBK5Ha1Y/ZkdCSQM9X8KZL4EvsM=";
            type = "tarball";
            url = "https://registry.npmjs.org/run-parallel/-/run-parallel-1.2.0.tgz";
          };
          ident = "run-parallel";
          ltype = "file";
          version = "1.2.0";
        };
      };
      sade = {
        "1.8.1" = {
          depInfo = {
            mri = {
              descriptor = "^1.1.0";
              pin = "1.2.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-Yboqi3els68hdZTMx0T14DdOzu31DQ0mRmJaYZMwWM4=";
            type = "tarball";
            url = "https://registry.npmjs.org/sade/-/sade-1.8.1.tgz";
          };
          ident = "sade";
          ltype = "file";
          version = "1.8.1";
        };
      };
      safe-array-concat = {
        "1.0.1" = {
          depInfo = {
            call-bind = {
              descriptor = "^1.0.2";
              pin = "1.0.2";
              runtime = true;
            };
            get-intrinsic = {
              descriptor = "^1.2.1";
              pin = "1.2.1";
              runtime = true;
            };
            has-symbols = {
              descriptor = "^1.0.3";
              pin = "1.0.3";
              runtime = true;
            };
            isarray = {
              descriptor = "^2.0.5";
              pin = "2.0.5";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-MrhFrFVATd6u8sKcz3lUX8Apiu4vh7yK9HBjEuelRno=";
            type = "tarball";
            url = "https://registry.npmjs.org/safe-array-concat/-/safe-array-concat-1.0.1.tgz";
          };
          ident = "safe-array-concat";
          ltype = "file";
          version = "1.0.1";
        };
      };
      safe-buffer = {
        "5.2.1" = {
          fetchInfo = {
            narHash = "sha256-wXBrp88QpZPUzawZ33OaWsjCtWTVMsflFJRBg2/U4y8=";
            type = "tarball";
            url = "https://registry.npmjs.org/safe-buffer/-/safe-buffer-5.2.1.tgz";
          };
          ident = "safe-buffer";
          ltype = "file";
          treeInfo = { };
          version = "5.2.1";
        };
      };
      safe-regex-test = {
        "1.0.0" = {
          depInfo = {
            call-bind = {
              descriptor = "^1.0.2";
              pin = "1.0.2";
              runtime = true;
            };
            get-intrinsic = {
              descriptor = "^1.1.3";
              pin = "1.2.1";
              runtime = true;
            };
            is-regex = {
              descriptor = "^1.1.4";
              pin = "1.1.4";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-t4WUzmIn1J/dQmvCgstUBe2IhPGsjPJ6puiyNHFDwE0=";
            type = "tarball";
            url = "https://registry.npmjs.org/safe-regex-test/-/safe-regex-test-1.0.0.tgz";
          };
          ident = "safe-regex-test";
          ltype = "file";
          version = "1.0.0";
        };
      };
      scheduler = {
        "0.23.0" = {
          depInfo = {
            loose-envify = {
              descriptor = "^1.1.0";
              pin = "1.4.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-MkP/d5ZP19g52SJ9CyyLfE6TZWT1h7CLzTgVbuaWYcQ=";
            type = "tarball";
            url = "https://registry.npmjs.org/scheduler/-/scheduler-0.23.0.tgz";
          };
          ident = "scheduler";
          ltype = "file";
          version = "0.23.0";
        };
      };
      schema-utils = {
        "3.3.0" = {
          depInfo = {
            "@types/json-schema" = {
              descriptor = "^7.0.8";
              pin = "7.0.13";
              runtime = true;
            };
            ajv = {
              descriptor = "^6.12.5";
              pin = "6.12.6";
              runtime = true;
            };
            ajv-keywords = {
              descriptor = "^3.5.2";
              pin = "3.5.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-JVh1OnZ13s5htyIRx3qohuKCwIZV6cBFe+/JYO3O+eA=";
            type = "tarball";
            url = "https://registry.npmjs.org/schema-utils/-/schema-utils-3.3.0.tgz";
          };
          ident = "schema-utils";
          ltype = "file";
          version = "3.3.0";
        };
      };
      seedrandom = {
        "3.0.5" = {
          fetchInfo = {
            narHash = "sha256-Wjed4yuZUIrWsW64fpMn+8mUqCQu9jC7zi4DJfpTQnw=";
            type = "tarball";
            url = "https://registry.npmjs.org/seedrandom/-/seedrandom-3.0.5.tgz";
          };
          ident = "seedrandom";
          ltype = "file";
          treeInfo = { };
          version = "3.0.5";
        };
      };
      semver = {
        "6.3.0" = {
          binInfo = {
            binPairs = {
              semver = "bin/semver.js";
            };
          };
          fetchInfo = {
            narHash = "sha256-43shFLKGOi7rl5FbrvggFEm+CYJJASgy3GvSXCJf00I=";
            type = "tarball";
            url = "https://registry.npmjs.org/semver/-/semver-6.3.0.tgz";
          };
          ident = "semver";
          ltype = "file";
          treeInfo = { };
          version = "6.3.0";
        };
        "6.3.1" = {
          binInfo = {
            binPairs = {
              semver = "bin/semver.js";
            };
          };
          fetchInfo = {
            narHash = "sha256-MQRm3hmLzbMAUnG+ciAtmx+grQjBQwAMQTdD3jGqUKU=";
            type = "tarball";
            url = "https://registry.npmjs.org/semver/-/semver-6.3.1.tgz";
          };
          ident = "semver";
          ltype = "file";
          treeInfo = { };
          version = "6.3.1";
        };
        "7.5.4" = {
          binInfo = {
            binPairs = {
              semver = "bin/semver.js";
            };
          };
          depInfo = {
            lru-cache = {
              descriptor = "^6.0.0";
              pin = "6.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-x60C+6mtJ77+PYZO2beSGkjhFxgTYVZGLGXJdYKv4hQ=";
            type = "tarball";
            url = "https://registry.npmjs.org/semver/-/semver-7.5.4.tgz";
          };
          ident = "semver";
          ltype = "file";
          version = "7.5.4";
        };
      };
      serialize-javascript = {
        "6.0.1" = {
          depInfo = {
            randombytes = {
              descriptor = "^2.1.0";
              pin = "2.1.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-T75c8jMt3EfaoAa7P90WxbljRSzs3s1Kj8kzBdBoPew=";
            type = "tarball";
            url = "https://registry.npmjs.org/serialize-javascript/-/serialize-javascript-6.0.1.tgz";
          };
          ident = "serialize-javascript";
          ltype = "file";
          version = "6.0.1";
        };
      };
      set-function-name = {
        "2.0.1" = {
          depInfo = {
            define-data-property = {
              descriptor = "^1.0.1";
              pin = "1.1.0";
              runtime = true;
            };
            functions-have-names = {
              descriptor = "^1.2.3";
              pin = "1.2.3";
              runtime = true;
            };
            has-property-descriptors = {
              descriptor = "^1.0.0";
              pin = "1.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-j9n29yrXWaHozxKt9IGBdFVe84yfxm3qjb4a4031gEk=";
            type = "tarball";
            url = "https://registry.npmjs.org/set-function-name/-/set-function-name-2.0.1.tgz";
          };
          ident = "set-function-name";
          ltype = "file";
          version = "2.0.1";
        };
      };
      shebang-command = {
        "2.0.0" = {
          depInfo = {
            shebang-regex = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-hQ8ZmBxEUTBeAoFsrXtJSMXkxZPNJhOEvKatEpvbpaE=";
            type = "tarball";
            url = "https://registry.npmjs.org/shebang-command/-/shebang-command-2.0.0.tgz";
          };
          ident = "shebang-command";
          ltype = "file";
          version = "2.0.0";
        };
      };
      shebang-regex = {
        "3.0.0" = {
          fetchInfo = {
            narHash = "sha256-20gU7k4uzL2AgOQ9iw2L1KH8sC6GaQCZtjyUBY5ayQ0=";
            type = "tarball";
            url = "https://registry.npmjs.org/shebang-regex/-/shebang-regex-3.0.0.tgz";
          };
          ident = "shebang-regex";
          ltype = "file";
          treeInfo = { };
          version = "3.0.0";
        };
      };
      side-channel = {
        "1.0.4" = {
          depInfo = {
            call-bind = {
              descriptor = "^1.0.0";
              pin = "1.0.2";
              runtime = true;
            };
            get-intrinsic = {
              descriptor = "^1.0.2";
              pin = "1.2.1";
              runtime = true;
            };
            object-inspect = {
              descriptor = "^1.9.0";
              pin = "1.12.3";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-wbIXp1Q7Ui1ZcUXO3B1Oa24PZlezJx6cYM/33GtpVu8=";
            type = "tarball";
            url = "https://registry.npmjs.org/side-channel/-/side-channel-1.0.4.tgz";
          };
          ident = "side-channel";
          ltype = "file";
          version = "1.0.4";
        };
      };
      slash = {
        "3.0.0" = {
          fetchInfo = {
            narHash = "sha256-tZzgTJwTD+eFikcawSO8plEa7YR2/RULHUs98d+5EC4=";
            type = "tarball";
            url = "https://registry.npmjs.org/slash/-/slash-3.0.0.tgz";
          };
          ident = "slash";
          ltype = "file";
          treeInfo = { };
          version = "3.0.0";
        };
      };
      source-map = {
        "0.5.7" = {
          fetchInfo = {
            narHash = "sha256-TfLkcoel84umresRhkiSAJkWIZ9bCfn9ZA9cZk8qGRU=";
            type = "tarball";
            url = "https://registry.npmjs.org/source-map/-/source-map-0.5.7.tgz";
          };
          ident = "source-map";
          ltype = "file";
          treeInfo = { };
          version = "0.5.7";
        };
        "0.6.1" = {
          fetchInfo = {
            narHash = "sha256-kOXyuKVrD3Fzez65GwPnNC615Ju17D00wsIgKcCWTJk=";
            type = "tarball";
            url = "https://registry.npmjs.org/source-map/-/source-map-0.6.1.tgz";
          };
          ident = "source-map";
          ltype = "file";
          treeInfo = { };
          version = "0.6.1";
        };
        "0.7.4" = {
          fetchInfo = {
            narHash = "sha256-+R9N+tdaTWgvTQ2lV6OQGeEb7FQlRTOmObCpjuH8Dtg=";
            type = "tarball";
            url = "https://registry.npmjs.org/source-map/-/source-map-0.7.4.tgz";
          };
          ident = "source-map";
          ltype = "file";
          treeInfo = { };
          version = "0.7.4";
        };
      };
      source-map-js = {
        "1.0.2" = {
          fetchInfo = {
            narHash = "sha256-gT4AthiqS/fwwos9E1ub0GC3sX14QIkJxiByo5/2IGc=";
            type = "tarball";
            url = "https://registry.npmjs.org/source-map-js/-/source-map-js-1.0.2.tgz";
          };
          ident = "source-map-js";
          ltype = "file";
          treeInfo = { };
          version = "1.0.2";
        };
      };
      source-map-support = {
        "0.5.21" = {
          depInfo = {
            buffer-from = {
              descriptor = "^1.0.0";
              pin = "1.1.2";
              runtime = true;
            };
            source-map = {
              descriptor = "^0.6.0";
              pin = "0.6.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-jq9veAxl7soqheG69ft6ac42qP61CrHG9kGOfaPGzmg=";
            type = "tarball";
            url = "https://registry.npmjs.org/source-map-support/-/source-map-support-0.5.21.tgz";
          };
          ident = "source-map-support";
          ltype = "file";
          version = "0.5.21";
        };
      };
      space-separated-tokens = {
        "2.0.2" = {
          fetchInfo = {
            narHash = "sha256-uV5C4+PNg790ZOnQ67vLmBy0PW49fnHm6KOD7OryeCk=";
            type = "tarball";
            url = "https://registry.npmjs.org/space-separated-tokens/-/space-separated-tokens-2.0.2.tgz";
          };
          ident = "space-separated-tokens";
          ltype = "file";
          treeInfo = { };
          version = "2.0.2";
        };
      };
      streamsearch = {
        "1.1.0" = {
          fetchInfo = {
            narHash = "sha256-79vktBOYiUIv4NTm8wdH6icmGjNB4Znf9d6zJLXFuHs=";
            type = "tarball";
            url = "https://registry.npmjs.org/streamsearch/-/streamsearch-1.1.0.tgz";
          };
          ident = "streamsearch";
          ltype = "file";
          treeInfo = { };
          version = "1.1.0";
        };
      };
      "string.prototype.matchall" = {
        "4.0.8" = {
          depInfo = {
            call-bind = {
              descriptor = "^1.0.2";
              pin = "1.0.2";
              runtime = true;
            };
            define-properties = {
              descriptor = "^1.1.4";
              pin = "1.2.1";
              runtime = true;
            };
            es-abstract = {
              descriptor = "^1.20.4";
              pin = "1.22.2";
              runtime = true;
            };
            get-intrinsic = {
              descriptor = "^1.1.3";
              pin = "1.2.1";
              runtime = true;
            };
            has-symbols = {
              descriptor = "^1.0.3";
              pin = "1.0.3";
              runtime = true;
            };
            internal-slot = {
              descriptor = "^1.0.3";
              pin = "1.0.5";
              runtime = true;
            };
            "regexp.prototype.flags" = {
              descriptor = "^1.4.3";
              pin = "1.5.1";
              runtime = true;
            };
            side-channel = {
              descriptor = "^1.0.4";
              pin = "1.0.4";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-VweNCSKCGx++CMO9cztKGoIiQs6MCxYYcvrW9qdJEy4=";
            type = "tarball";
            url = "https://registry.npmjs.org/string.prototype.matchall/-/string.prototype.matchall-4.0.8.tgz";
          };
          ident = "string.prototype.matchall";
          ltype = "file";
          version = "4.0.8";
        };
      };
      "string.prototype.trim" = {
        "1.2.8" = {
          depInfo = {
            call-bind = {
              descriptor = "^1.0.2";
              pin = "1.0.2";
              runtime = true;
            };
            define-properties = {
              descriptor = "^1.2.0";
              pin = "1.2.1";
              runtime = true;
            };
            es-abstract = {
              descriptor = "^1.22.1";
              pin = "1.22.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-jAl71pvCXaEOWOrgwJa9nYn6ryIkbW2CZuWfthw+y3I=";
            type = "tarball";
            url = "https://registry.npmjs.org/string.prototype.trim/-/string.prototype.trim-1.2.8.tgz";
          };
          ident = "string.prototype.trim";
          ltype = "file";
          version = "1.2.8";
        };
      };
      "string.prototype.trimend" = {
        "1.0.7" = {
          depInfo = {
            call-bind = {
              descriptor = "^1.0.2";
              pin = "1.0.2";
              runtime = true;
            };
            define-properties = {
              descriptor = "^1.2.0";
              pin = "1.2.1";
              runtime = true;
            };
            es-abstract = {
              descriptor = "^1.22.1";
              pin = "1.22.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-K6r5MSoMFDRjevtU7YNwooL+VfHzAMQVgf8pocgfX+Y=";
            type = "tarball";
            url = "https://registry.npmjs.org/string.prototype.trimend/-/string.prototype.trimend-1.0.7.tgz";
          };
          ident = "string.prototype.trimend";
          ltype = "file";
          version = "1.0.7";
        };
      };
      "string.prototype.trimstart" = {
        "1.0.7" = {
          depInfo = {
            call-bind = {
              descriptor = "^1.0.2";
              pin = "1.0.2";
              runtime = true;
            };
            define-properties = {
              descriptor = "^1.2.0";
              pin = "1.2.1";
              runtime = true;
            };
            es-abstract = {
              descriptor = "^1.22.1";
              pin = "1.22.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-iU2ue6P/DEb6/lQSOp2GXdTVScZecsvBfcm9lcuPpf0=";
            type = "tarball";
            url = "https://registry.npmjs.org/string.prototype.trimstart/-/string.prototype.trimstart-1.0.7.tgz";
          };
          ident = "string.prototype.trimstart";
          ltype = "file";
          version = "1.0.7";
        };
      };
      stringify-entities = {
        "4.0.3" = {
          depInfo = {
            character-entities-html4 = {
              descriptor = "^2.0.0";
              pin = "2.1.0";
              runtime = true;
            };
            character-entities-legacy = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-wJ92y4BCV8baffTf3nDNztZyDbURriflLJYYqq+ioXY=";
            type = "tarball";
            url = "https://registry.npmjs.org/stringify-entities/-/stringify-entities-4.0.3.tgz";
          };
          ident = "stringify-entities";
          ltype = "file";
          version = "4.0.3";
        };
      };
      strip-ansi = {
        "6.0.1" = {
          depInfo = {
            ansi-regex = {
              descriptor = "^5.0.1";
              pin = "5.0.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-mMRzEL6fWJXYmQ2ZhRAhnYMcjdNCfvGF3Y7NekoLgXc=";
            type = "tarball";
            url = "https://registry.npmjs.org/strip-ansi/-/strip-ansi-6.0.1.tgz";
          };
          ident = "strip-ansi";
          ltype = "file";
          version = "6.0.1";
        };
      };
      strip-bom = {
        "3.0.0" = {
          fetchInfo = {
            narHash = "sha256-J87gjr955s09mqu6GTyZDmNOXqX1FJDX4CLFTMuM+zU=";
            type = "tarball";
            url = "https://registry.npmjs.org/strip-bom/-/strip-bom-3.0.0.tgz";
          };
          ident = "strip-bom";
          ltype = "file";
          treeInfo = { };
          version = "3.0.0";
        };
      };
      strip-json-comments = {
        "3.1.1" = {
          fetchInfo = {
            narHash = "sha256-kG9XiGtBCKfDljwOWaSI7pZbk5I7uywJFm4jNdBERYw=";
            type = "tarball";
            url = "https://registry.npmjs.org/strip-json-comments/-/strip-json-comments-3.1.1.tgz";
          };
          ident = "strip-json-comments";
          ltype = "file";
          treeInfo = { };
          version = "3.1.1";
        };
      };
      style-to-object = {
        "0.4.2" = {
          depInfo = {
            inline-style-parser = {
              descriptor = "0.1.1";
              pin = "0.1.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-SfCyBYNyHKXy38cfUbZ49zLnuW7SEieLnxQa6L0y69c=";
            type = "tarball";
            url = "https://registry.npmjs.org/style-to-object/-/style-to-object-0.4.2.tgz";
          };
          ident = "style-to-object";
          ltype = "file";
          version = "0.4.2";
        };
      };
      styled-jsx = {
        "5.1.1" = {
          depInfo = {
            client-only = {
              descriptor = "0.0.1";
              pin = "0.0.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-I5qv/D8y+LC3HmTDCvCEqB3TnWnuk1e+Z0u/0D31Ix4=";
            type = "tarball";
            url = "https://registry.npmjs.org/styled-jsx/-/styled-jsx-5.1.1.tgz";
          };
          ident = "styled-jsx";
          ltype = "file";
          peerInfo = {
            "@babel/core" = {
              descriptor = "*";
              optional = true;
            };
            babel-plugin-macros = {
              descriptor = "*";
              optional = true;
            };
            react = {
              descriptor = ">= 16.8.0 || 17.x.x || ^18.0.0-0";
            };
          };
          version = "5.1.1";
        };
      };
      stylis = {
        "4.2.0" = {
          fetchInfo = {
            narHash = "sha256-uBRk2Ja5qhHSROWOjmJ6+K/k2NNHGK37SD7nuKxR6F4=";
            type = "tarball";
            url = "https://registry.npmjs.org/stylis/-/stylis-4.2.0.tgz";
          };
          ident = "stylis";
          ltype = "file";
          treeInfo = { };
          version = "4.2.0";
        };
      };
      supports-color = {
        "5.5.0" = {
          depInfo = {
            has-flag = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-CFEl8ukJUaXQ4RzTSFYfqd09tqgYfgJuU/Kem/DkKe4=";
            type = "tarball";
            url = "https://registry.npmjs.org/supports-color/-/supports-color-5.5.0.tgz";
          };
          ident = "supports-color";
          ltype = "file";
          version = "5.5.0";
        };
        "7.2.0" = {
          depInfo = {
            has-flag = {
              descriptor = "^4.0.0";
              pin = "4.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-ALfHRAgnkUrOOyywhxLVllKKtKkFQZ3IvetXiR72flk=";
            type = "tarball";
            url = "https://registry.npmjs.org/supports-color/-/supports-color-7.2.0.tgz";
          };
          ident = "supports-color";
          ltype = "file";
          version = "7.2.0";
        };
        "8.1.1" = {
          depInfo = {
            has-flag = {
              descriptor = "^4.0.0";
              pin = "4.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-uzKM/4dI5vQi51VxaCyT2y3S33POKUM/FxldHV9HD1E=";
            type = "tarball";
            url = "https://registry.npmjs.org/supports-color/-/supports-color-8.1.1.tgz";
          };
          ident = "supports-color";
          ltype = "file";
          version = "8.1.1";
        };
      };
      supports-preserve-symlinks-flag = {
        "1.0.0" = {
          fetchInfo = {
            narHash = "sha256-Gwf/IHn+m17+KsKxcOrhCxAjvH8uxQx8Bud+qeCNwKg=";
            type = "tarball";
            url = "https://registry.npmjs.org/supports-preserve-symlinks-flag/-/supports-preserve-symlinks-flag-1.0.0.tgz";
          };
          ident = "supports-preserve-symlinks-flag";
          ltype = "file";
          treeInfo = { };
          version = "1.0.0";
        };
      };
      tapable = {
        "2.2.1" = {
          fetchInfo = {
            narHash = "sha256-chSmdQSJK5rfmP009tDM0j225LM2HDH9qoi0dJoWFac=";
            type = "tarball";
            url = "https://registry.npmjs.org/tapable/-/tapable-2.2.1.tgz";
          };
          ident = "tapable";
          ltype = "file";
          treeInfo = { };
          version = "2.2.1";
        };
      };
      terser = {
        "5.25.0" = {
          binInfo = {
            binPairs = {
              terser = "bin/terser";
            };
          };
          depInfo = {
            "@jridgewell/source-map" = {
              descriptor = "^0.3.3";
              pin = "0.3.5";
              runtime = true;
            };
            acorn = {
              descriptor = "^8.8.2";
              pin = "8.10.0";
              runtime = true;
            };
            commander = {
              descriptor = "^2.20.0";
              pin = "2.20.3";
              runtime = true;
            };
            source-map-support = {
              descriptor = "~0.5.20";
              pin = "0.5.21";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-aZ39us126waiVIyIvfacInegfNdbDdLsHpFXKj0DFh8=";
            type = "tarball";
            url = "https://registry.npmjs.org/terser/-/terser-5.25.0.tgz";
          };
          ident = "terser";
          ltype = "file";
          version = "5.25.0";
        };
      };
      terser-webpack-plugin = {
        "5.3.9" = {
          depInfo = {
            "@jridgewell/trace-mapping" = {
              descriptor = "^0.3.17";
              pin = "0.3.20";
              runtime = true;
            };
            jest-worker = {
              descriptor = "^27.4.5";
              pin = "27.5.1";
              runtime = true;
            };
            schema-utils = {
              descriptor = "^3.1.1";
              pin = "3.3.0";
              runtime = true;
            };
            serialize-javascript = {
              descriptor = "^6.0.1";
              pin = "6.0.1";
              runtime = true;
            };
            terser = {
              descriptor = "^5.16.8";
              pin = "5.25.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-l2ccvYJdlbINs2ZqCcNprfn/unhuvK9mEUITA3jLEak=";
            type = "tarball";
            url = "https://registry.npmjs.org/terser-webpack-plugin/-/terser-webpack-plugin-5.3.9.tgz";
          };
          ident = "terser-webpack-plugin";
          ltype = "file";
          peerInfo = {
            "@swc/core" = {
              descriptor = "*";
              optional = true;
            };
            esbuild = {
              descriptor = "*";
              optional = true;
            };
            uglify-js = {
              descriptor = "*";
              optional = true;
            };
            webpack = {
              descriptor = "^5.1.0";
            };
          };
          version = "5.3.9";
        };
      };
      text-table = {
        "0.2.0" = {
          fetchInfo = {
            narHash = "sha256-5aLlgyS88H30N4WzcI5Qz3o1o65EGaNt8BaYxKkTzF4=";
            type = "tarball";
            url = "https://registry.npmjs.org/text-table/-/text-table-0.2.0.tgz";
          };
          ident = "text-table";
          ltype = "file";
          treeInfo = { };
          version = "0.2.0";
        };
      };
      to-fast-properties = {
        "2.0.0" = {
          fetchInfo = {
            narHash = "sha256-REHa011PYD77WKQpm3pDqs8+640POdK6iqwfEhljtzk=";
            type = "tarball";
            url = "https://registry.npmjs.org/to-fast-properties/-/to-fast-properties-2.0.0.tgz";
          };
          ident = "to-fast-properties";
          ltype = "file";
          treeInfo = { };
          version = "2.0.0";
        };
      };
      to-regex-range = {
        "5.0.1" = {
          depInfo = {
            is-number = {
              descriptor = "^7.0.0";
              pin = "7.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-+vtC2A5vM5ixOFrv1pRteDxoFLswFln/YcK09AmMbQM=";
            type = "tarball";
            url = "https://registry.npmjs.org/to-regex-range/-/to-regex-range-5.0.1.tgz";
          };
          ident = "to-regex-range";
          ltype = "file";
          version = "5.0.1";
        };
      };
      trim-lines = {
        "3.0.1" = {
          fetchInfo = {
            narHash = "sha256-9slUoyasV4PYG9imld3Gml054glINSZ6+1xPf0w/QOo=";
            type = "tarball";
            url = "https://registry.npmjs.org/trim-lines/-/trim-lines-3.0.1.tgz";
          };
          ident = "trim-lines";
          ltype = "file";
          treeInfo = { };
          version = "3.0.1";
        };
      };
      trough = {
        "2.1.0" = {
          fetchInfo = {
            narHash = "sha256-wSlUWJXS8IMGqi9UqA6+DV+wDqY3A4dbtzipwN/WqMY=";
            type = "tarball";
            url = "https://registry.npmjs.org/trough/-/trough-2.1.0.tgz";
          };
          ident = "trough";
          ltype = "file";
          treeInfo = { };
          version = "2.1.0";
        };
      };
      ts-api-utils = {
        "1.0.3" = {
          fetchInfo = {
            narHash = "sha256-dN5CaRLy5GWTI+Gi4ziXD6kzd08NHX97sZOWLSmr+8k=";
            type = "tarball";
            url = "https://registry.npmjs.org/ts-api-utils/-/ts-api-utils-1.0.3.tgz";
          };
          ident = "ts-api-utils";
          ltype = "file";
          peerInfo = {
            typescript = {
              descriptor = ">=4.2.0";
            };
          };
          treeInfo = { };
          version = "1.0.3";
        };
      };
      tsconfig-paths = {
        "3.14.2" = {
          depInfo = {
            "@types/json5" = {
              descriptor = "^0.0.29";
              pin = "0.0.29";
              runtime = true;
            };
            json5 = {
              descriptor = "^1.0.2";
              pin = "1.0.2";
              runtime = true;
            };
            minimist = {
              descriptor = "^1.2.6";
              pin = "1.2.8";
              runtime = true;
            };
            strip-bom = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-Mye/YqIaz7tmXjZK4nJ5SBbjMZHak3AvaPKDwZDGH08=";
            type = "tarball";
            url = "https://registry.npmjs.org/tsconfig-paths/-/tsconfig-paths-3.14.2.tgz";
          };
          ident = "tsconfig-paths";
          ltype = "file";
          version = "3.14.2";
        };
      };
      tslib = {
        "2.4.1" = {
          fetchInfo = {
            narHash = "sha256-FiwE6rSizwP7OFdFC9X61Ehx99M5L7q4N2o2IRm4MVM=";
            type = "tarball";
            url = "https://registry.npmjs.org/tslib/-/tslib-2.4.1.tgz";
          };
          ident = "tslib";
          ltype = "file";
          treeInfo = { };
          version = "2.4.1";
        };
      };
      type-check = {
        "0.4.0" = {
          depInfo = {
            prelude-ls = {
              descriptor = "^1.2.1";
              pin = "1.2.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-c7oK/LdUUDXwdCUbkbLmNDixyLJR9avZVfBbfOupE8g=";
            type = "tarball";
            url = "https://registry.npmjs.org/type-check/-/type-check-0.4.0.tgz";
          };
          ident = "type-check";
          ltype = "file";
          version = "0.4.0";
        };
      };
      type-fest = {
        "0.20.2" = {
          fetchInfo = {
            narHash = "sha256-79+ZefWFhtLpRLnn3BbQbMF+qxgvZC5A+RMdf992Hpw=";
            type = "tarball";
            url = "https://registry.npmjs.org/type-fest/-/type-fest-0.20.2.tgz";
          };
          ident = "type-fest";
          ltype = "file";
          treeInfo = { };
          version = "0.20.2";
        };
      };
      typed-array-buffer = {
        "1.0.0" = {
          depInfo = {
            call-bind = {
              descriptor = "^1.0.2";
              pin = "1.0.2";
              runtime = true;
            };
            get-intrinsic = {
              descriptor = "^1.2.1";
              pin = "1.2.1";
              runtime = true;
            };
            is-typed-array = {
              descriptor = "^1.1.10";
              pin = "1.1.12";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-DMT/eFKOFASX3vNdE0CCYbgxZW9sAXUG99DrYCFDgRs=";
            type = "tarball";
            url = "https://registry.npmjs.org/typed-array-buffer/-/typed-array-buffer-1.0.0.tgz";
          };
          ident = "typed-array-buffer";
          ltype = "file";
          version = "1.0.0";
        };
      };
      typed-array-byte-length = {
        "1.0.0" = {
          depInfo = {
            call-bind = {
              descriptor = "^1.0.2";
              pin = "1.0.2";
              runtime = true;
            };
            for-each = {
              descriptor = "^0.3.3";
              pin = "0.3.3";
              runtime = true;
            };
            has-proto = {
              descriptor = "^1.0.1";
              pin = "1.0.1";
              runtime = true;
            };
            is-typed-array = {
              descriptor = "^1.1.10";
              pin = "1.1.12";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-2u5lw/X7CvIx4xAbfoQR44zv7zGvzHGVwjyOL53phrk=";
            type = "tarball";
            url = "https://registry.npmjs.org/typed-array-byte-length/-/typed-array-byte-length-1.0.0.tgz";
          };
          ident = "typed-array-byte-length";
          ltype = "file";
          version = "1.0.0";
        };
      };
      typed-array-byte-offset = {
        "1.0.0" = {
          depInfo = {
            available-typed-arrays = {
              descriptor = "^1.0.5";
              pin = "1.0.5";
              runtime = true;
            };
            call-bind = {
              descriptor = "^1.0.2";
              pin = "1.0.2";
              runtime = true;
            };
            for-each = {
              descriptor = "^0.3.3";
              pin = "0.3.3";
              runtime = true;
            };
            has-proto = {
              descriptor = "^1.0.1";
              pin = "1.0.1";
              runtime = true;
            };
            is-typed-array = {
              descriptor = "^1.1.10";
              pin = "1.1.12";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-bmP70ZRmIe43OHm3dxN9khqyiQOATrvLK8ANZOc5h2U=";
            type = "tarball";
            url = "https://registry.npmjs.org/typed-array-byte-offset/-/typed-array-byte-offset-1.0.0.tgz";
          };
          ident = "typed-array-byte-offset";
          ltype = "file";
          version = "1.0.0";
        };
      };
      typed-array-length = {
        "1.0.4" = {
          depInfo = {
            call-bind = {
              descriptor = "^1.0.2";
              pin = "1.0.2";
              runtime = true;
            };
            for-each = {
              descriptor = "^0.3.3";
              pin = "0.3.3";
              runtime = true;
            };
            is-typed-array = {
              descriptor = "^1.1.9";
              pin = "1.1.12";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-dDukA6EG+m1cYtGjkSPo0oJA3Vb5ov5wBKIoQ0hCd5I=";
            type = "tarball";
            url = "https://registry.npmjs.org/typed-array-length/-/typed-array-length-1.0.4.tgz";
          };
          ident = "typed-array-length";
          ltype = "file";
          version = "1.0.4";
        };
      };
      typescript = {
        "5.2.2" = {
          binInfo = {
            binPairs = {
              tsc = "bin/tsc";
              tsserver = "bin/tsserver";
            };
          };
          fetchInfo = {
            narHash = "sha256-io9rXH9RLRLB0484ZdvcqblLQquLFUBGxDuwSixWxus=";
            type = "tarball";
            url = "https://registry.npmjs.org/typescript/-/typescript-5.2.2.tgz";
          };
          ident = "typescript";
          ltype = "file";
          treeInfo = { };
          version = "5.2.2";
        };
      };
      unbox-primitive = {
        "1.0.2" = {
          depInfo = {
            call-bind = {
              descriptor = "^1.0.2";
              pin = "1.0.2";
              runtime = true;
            };
            has-bigints = {
              descriptor = "^1.0.2";
              pin = "1.0.2";
              runtime = true;
            };
            has-symbols = {
              descriptor = "^1.0.3";
              pin = "1.0.3";
              runtime = true;
            };
            which-boxed-primitive = {
              descriptor = "^1.0.2";
              pin = "1.0.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-p4Tro2Ta5HLZQn/OcrTelo8hf9gSAtUJIoUDlhhVY84=";
            type = "tarball";
            url = "https://registry.npmjs.org/unbox-primitive/-/unbox-primitive-1.0.2.tgz";
          };
          ident = "unbox-primitive";
          ltype = "file";
          version = "1.0.2";
        };
      };
      unified = {
        "10.1.2" = {
          depInfo = {
            "@types/unist" = {
              descriptor = "^2.0.0";
              pin = "2.0.10";
              runtime = true;
            };
            bail = {
              descriptor = "^2.0.0";
              pin = "2.0.2";
              runtime = true;
            };
            extend = {
              descriptor = "^3.0.0";
              pin = "3.0.2";
              runtime = true;
            };
            is-buffer = {
              descriptor = "^2.0.0";
              pin = "2.0.5";
              runtime = true;
            };
            is-plain-obj = {
              descriptor = "^4.0.0";
              pin = "4.1.0";
              runtime = true;
            };
            trough = {
              descriptor = "^2.0.0";
              pin = "2.1.0";
              runtime = true;
            };
            vfile = {
              descriptor = "^5.0.0";
              pin = "5.3.7";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-pI6MBzzhm6RX26Qv1HBpK1cqAKi8rVN9glsYY1ytvJE=";
            type = "tarball";
            url = "https://registry.npmjs.org/unified/-/unified-10.1.2.tgz";
          };
          ident = "unified";
          ltype = "file";
          version = "10.1.2";
        };
        "11.0.4" = {
          depInfo = {
            "@types/unist" = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
            bail = {
              descriptor = "^2.0.0";
              pin = "2.0.2";
              runtime = true;
            };
            devlop = {
              descriptor = "^1.0.0";
              pin = "1.1.0";
              runtime = true;
            };
            extend = {
              descriptor = "^3.0.0";
              pin = "3.0.2";
              runtime = true;
            };
            is-plain-obj = {
              descriptor = "^4.0.0";
              pin = "4.1.0";
              runtime = true;
            };
            trough = {
              descriptor = "^2.0.0";
              pin = "2.1.0";
              runtime = true;
            };
            vfile = {
              descriptor = "^6.0.0";
              pin = "6.0.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-vp6G4Zh2CKyP827t0R7yYq5AyzbP3jpa33zMuVvoFPQ=";
            type = "tarball";
            url = "https://registry.npmjs.org/unified/-/unified-11.0.4.tgz";
          };
          ident = "unified";
          ltype = "file";
          version = "11.0.4";
        };
      };
      unist-util-find-after = {
        "5.0.0" = {
          depInfo = {
            "@types/unist" = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
            unist-util-is = {
              descriptor = "^6.0.0";
              pin = "6.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-KMxG+65RkPxysi/0yhVucnizcHEF8QZR3dQAxwn/DhU=";
            type = "tarball";
            url = "https://registry.npmjs.org/unist-util-find-after/-/unist-util-find-after-5.0.0.tgz";
          };
          ident = "unist-util-find-after";
          ltype = "file";
          version = "5.0.0";
        };
      };
      unist-util-generated = {
        "2.0.1" = {
          fetchInfo = {
            narHash = "sha256-G97rV6DumxO+sWfPLEz05/NWh6+5eViby2F4PSQsqzc=";
            type = "tarball";
            url = "https://registry.npmjs.org/unist-util-generated/-/unist-util-generated-2.0.1.tgz";
          };
          ident = "unist-util-generated";
          ltype = "file";
          treeInfo = { };
          version = "2.0.1";
        };
      };
      unist-util-is = {
        "3.0.0" = {
          fetchInfo = {
            narHash = "sha256-tMyrqoRPpVd6K6z9XGaIUCGI7ELiNaFu0dhvdOWLVBQ=";
            type = "tarball";
            url = "https://registry.npmjs.org/unist-util-is/-/unist-util-is-3.0.0.tgz";
          };
          ident = "unist-util-is";
          ltype = "file";
          treeInfo = { };
          version = "3.0.0";
        };
        "5.2.1" = {
          depInfo = {
            "@types/unist" = {
              descriptor = "^2.0.0";
              pin = "2.0.10";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-1RlofHKaUdtBApjhjQnhMF8e+qkifMJZ5hLBuMQ1oak=";
            type = "tarball";
            url = "https://registry.npmjs.org/unist-util-is/-/unist-util-is-5.2.1.tgz";
          };
          ident = "unist-util-is";
          ltype = "file";
          version = "5.2.1";
        };
        "6.0.0" = {
          depInfo = {
            "@types/unist" = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-f2EkcL3n6Fyzmu7U2Sf9QPjT8ZkDPTelTOisuyXLoGI=";
            type = "tarball";
            url = "https://registry.npmjs.org/unist-util-is/-/unist-util-is-6.0.0.tgz";
          };
          ident = "unist-util-is";
          ltype = "file";
          version = "6.0.0";
        };
      };
      unist-util-position = {
        "4.0.4" = {
          depInfo = {
            "@types/unist" = {
              descriptor = "^2.0.0";
              pin = "2.0.10";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-0AO2xYGrGXj2GwouFpzTJ2qKZocUdCI6YijGNGVOgFM=";
            type = "tarball";
            url = "https://registry.npmjs.org/unist-util-position/-/unist-util-position-4.0.4.tgz";
          };
          ident = "unist-util-position";
          ltype = "file";
          version = "4.0.4";
        };
        "5.0.0" = {
          depInfo = {
            "@types/unist" = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-/z/amW1GCanEeMYjBy0OAEZJw4bsvN2LzON3MMIv+mg=";
            type = "tarball";
            url = "https://registry.npmjs.org/unist-util-position/-/unist-util-position-5.0.0.tgz";
          };
          ident = "unist-util-position";
          ltype = "file";
          version = "5.0.0";
        };
      };
      unist-util-position-from-estree = {
        "1.1.2" = {
          depInfo = {
            "@types/unist" = {
              descriptor = "^2.0.0";
              pin = "2.0.10";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-bdYXSYjoz2JyFR2J1k7xrGyMmUKEYOuUhmCC5Vf9iN0=";
            type = "tarball";
            url = "https://registry.npmjs.org/unist-util-position-from-estree/-/unist-util-position-from-estree-1.1.2.tgz";
          };
          ident = "unist-util-position-from-estree";
          ltype = "file";
          version = "1.1.2";
        };
        "2.0.0" = {
          depInfo = {
            "@types/unist" = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-ZxOdH/c1dQ5EuSKPoFv72tKQeSBGDnPr5Ss/zDEsqrE=";
            type = "tarball";
            url = "https://registry.npmjs.org/unist-util-position-from-estree/-/unist-util-position-from-estree-2.0.0.tgz";
          };
          ident = "unist-util-position-from-estree";
          ltype = "file";
          version = "2.0.0";
        };
      };
      unist-util-remove-position = {
        "4.0.2" = {
          depInfo = {
            "@types/unist" = {
              descriptor = "^2.0.0";
              pin = "2.0.10";
              runtime = true;
            };
            unist-util-visit = {
              descriptor = "^4.0.0";
              pin = "4.1.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-+hXEKasbCuT2I2vo3vECdMTlgfuFPirzUOIy1U+VFek=";
            type = "tarball";
            url = "https://registry.npmjs.org/unist-util-remove-position/-/unist-util-remove-position-4.0.2.tgz";
          };
          ident = "unist-util-remove-position";
          ltype = "file";
          version = "4.0.2";
        };
        "5.0.0" = {
          depInfo = {
            "@types/unist" = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
            unist-util-visit = {
              descriptor = "^5.0.0";
              pin = "5.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-1psMxhJGVYkoI3Vo2no4XEFlZNvE2gP3X7lN07jHLSw=";
            type = "tarball";
            url = "https://registry.npmjs.org/unist-util-remove-position/-/unist-util-remove-position-5.0.0.tgz";
          };
          ident = "unist-util-remove-position";
          ltype = "file";
          version = "5.0.0";
        };
      };
      unist-util-stringify-position = {
        "3.0.3" = {
          depInfo = {
            "@types/unist" = {
              descriptor = "^2.0.0";
              pin = "2.0.10";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-+qU+mgTnGjDtwgxK0Ct5CoKNCxSGfVsuDG54sGonm1o=";
            type = "tarball";
            url = "https://registry.npmjs.org/unist-util-stringify-position/-/unist-util-stringify-position-3.0.3.tgz";
          };
          ident = "unist-util-stringify-position";
          ltype = "file";
          version = "3.0.3";
        };
        "4.0.0" = {
          depInfo = {
            "@types/unist" = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-KgTBiasuSs4dAFkddau6tQsEd6Oko7N6RioJ32Iu0ik=";
            type = "tarball";
            url = "https://registry.npmjs.org/unist-util-stringify-position/-/unist-util-stringify-position-4.0.0.tgz";
          };
          ident = "unist-util-stringify-position";
          ltype = "file";
          version = "4.0.0";
        };
      };
      unist-util-visit = {
        "1.4.1" = {
          depInfo = {
            unist-util-visit-parents = {
              descriptor = "^2.0.0";
              pin = "2.1.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-SdQNzZ09XCw1IPFkgT2mFKkGKMptrO1Gv89My7YGz7M=";
            type = "tarball";
            url = "https://registry.npmjs.org/unist-util-visit/-/unist-util-visit-1.4.1.tgz";
          };
          ident = "unist-util-visit";
          ltype = "file";
          version = "1.4.1";
        };
        "4.1.2" = {
          depInfo = {
            "@types/unist" = {
              descriptor = "^2.0.0";
              pin = "2.0.10";
              runtime = true;
            };
            unist-util-is = {
              descriptor = "^5.0.0";
              pin = "5.2.1";
              runtime = true;
            };
            unist-util-visit-parents = {
              descriptor = "^5.1.1";
              pin = "5.1.3";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-Yu2x6XFW2Dc5HM24nTxKVFscCYYq+31nOHl2YnYW2L4=";
            type = "tarball";
            url = "https://registry.npmjs.org/unist-util-visit/-/unist-util-visit-4.1.2.tgz";
          };
          ident = "unist-util-visit";
          ltype = "file";
          version = "4.1.2";
        };
        "5.0.0" = {
          depInfo = {
            "@types/unist" = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
            unist-util-is = {
              descriptor = "^6.0.0";
              pin = "6.0.0";
              runtime = true;
            };
            unist-util-visit-parents = {
              descriptor = "^6.0.0";
              pin = "6.0.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-K2qI38TCg33RJURfjHWEXDtu9z+QHoHfIaVYuVSYvL4=";
            type = "tarball";
            url = "https://registry.npmjs.org/unist-util-visit/-/unist-util-visit-5.0.0.tgz";
          };
          ident = "unist-util-visit";
          ltype = "file";
          version = "5.0.0";
        };
      };
      unist-util-visit-parents = {
        "2.1.2" = {
          depInfo = {
            unist-util-is = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-A9Nn1HxknpYcqC1QunY0Fg9ec9UT3CG0ZgXYj8QegqY=";
            type = "tarball";
            url = "https://registry.npmjs.org/unist-util-visit-parents/-/unist-util-visit-parents-2.1.2.tgz";
          };
          ident = "unist-util-visit-parents";
          ltype = "file";
          version = "2.1.2";
        };
        "5.1.3" = {
          depInfo = {
            "@types/unist" = {
              descriptor = "^2.0.0";
              pin = "2.0.10";
              runtime = true;
            };
            unist-util-is = {
              descriptor = "^5.0.0";
              pin = "5.2.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-h7i1yp61vte9Jh0H6Xr7kL6eUZ9EI7zDYmybMNC83Lw=";
            type = "tarball";
            url = "https://registry.npmjs.org/unist-util-visit-parents/-/unist-util-visit-parents-5.1.3.tgz";
          };
          ident = "unist-util-visit-parents";
          ltype = "file";
          version = "5.1.3";
        };
        "6.0.1" = {
          depInfo = {
            "@types/unist" = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
            unist-util-is = {
              descriptor = "^6.0.0";
              pin = "6.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-J2qOBZnosqeNobGzWY1nZ23AXOu5kWAcujrmdlO+KkQ=";
            type = "tarball";
            url = "https://registry.npmjs.org/unist-util-visit-parents/-/unist-util-visit-parents-6.0.1.tgz";
          };
          ident = "unist-util-visit-parents";
          ltype = "file";
          version = "6.0.1";
        };
      };
      update-browserslist-db = {
        "1.0.13" = {
          binInfo = {
            binPairs = {
              update-browserslist-db = "cli.js";
            };
          };
          depInfo = {
            escalade = {
              descriptor = "^3.1.1";
              pin = "3.1.1";
              runtime = true;
            };
            picocolors = {
              descriptor = "^1.0.0";
              pin = "1.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-RrIO29t4oOh91UGTr5vkM4fApmSjbYTgiCvLg2p/kRw=";
            type = "tarball";
            url = "https://registry.npmjs.org/update-browserslist-db/-/update-browserslist-db-1.0.13.tgz";
          };
          ident = "update-browserslist-db";
          ltype = "file";
          peerInfo = {
            browserslist = {
              descriptor = ">= 4.21.0";
            };
          };
          version = "1.0.13";
        };
      };
      uri-js = {
        "4.4.1" = {
          depInfo = {
            punycode = {
              descriptor = "^2.1.0";
              pin = "2.1.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-iMLypOgKbMR/XBQ4pWT/gOyOA0W8YKt1rQ8BUBCNzoY=";
            type = "tarball";
            url = "https://registry.npmjs.org/uri-js/-/uri-js-4.4.1.tgz";
          };
          ident = "uri-js";
          ltype = "file";
          version = "4.4.1";
        };
      };
      usehooks-ts = {
        "2.9.1" = {
          fetchInfo = {
            narHash = "sha256-Jl0PYN5pvgqPMvWKcHKp/JWxbmEegUcNfVyWuHxskmw=";
            type = "tarball";
            url = "https://registry.npmjs.org/usehooks-ts/-/usehooks-ts-2.9.1.tgz";
          };
          ident = "usehooks-ts";
          ltype = "file";
          peerInfo = {
            react = {
              descriptor = "^16.8.0  || ^17.0.0 || ^18.0.0";
            };
            react-dom = {
              descriptor = "^16.8.0  || ^17.0.0 || ^18.0.0";
            };
          };
          treeInfo = { };
          version = "2.9.1";
        };
      };
      uvu = {
        "0.5.6" = {
          binInfo = {
            binPairs = {
              uvu = "bin.js";
            };
          };
          depInfo = {
            dequal = {
              descriptor = "^2.0.0";
              pin = "2.0.3";
              runtime = true;
            };
            diff = {
              descriptor = "^5.0.0";
              pin = "5.1.0";
              runtime = true;
            };
            kleur = {
              descriptor = "^4.0.3";
              pin = "4.1.5";
              runtime = true;
            };
            sade = {
              descriptor = "^1.7.3";
              pin = "1.8.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-j9T9lBid8XTaend58vuJAx7tc2QdOYxqyz3UE8igd6w=";
            type = "tarball";
            url = "https://registry.npmjs.org/uvu/-/uvu-0.5.6.tgz";
          };
          ident = "uvu";
          ltype = "file";
          version = "0.5.6";
        };
      };
      vfile = {
        "5.3.7" = {
          depInfo = {
            "@types/unist" = {
              descriptor = "^2.0.0";
              pin = "2.0.10";
              runtime = true;
            };
            is-buffer = {
              descriptor = "^2.0.0";
              pin = "2.0.5";
              runtime = true;
            };
            unist-util-stringify-position = {
              descriptor = "^3.0.0";
              pin = "3.0.3";
              runtime = true;
            };
            vfile-message = {
              descriptor = "^3.0.0";
              pin = "3.1.4";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-7CMBInUFBgyeNUWtIUz9oLl82QzuVylsE5N5n1/eoa0=";
            type = "tarball";
            url = "https://registry.npmjs.org/vfile/-/vfile-5.3.7.tgz";
          };
          ident = "vfile";
          ltype = "file";
          version = "5.3.7";
        };
        "6.0.1" = {
          depInfo = {
            "@types/unist" = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
            unist-util-stringify-position = {
              descriptor = "^4.0.0";
              pin = "4.0.0";
              runtime = true;
            };
            vfile-message = {
              descriptor = "^4.0.0";
              pin = "4.0.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-ep9h8P98JEsdXwyl7zn4SBGFaY68XYMWM3Il+QP/Xbs=";
            type = "tarball";
            url = "https://registry.npmjs.org/vfile/-/vfile-6.0.1.tgz";
          };
          ident = "vfile";
          ltype = "file";
          version = "6.0.1";
        };
      };
      vfile-location = {
        "5.0.2" = {
          depInfo = {
            "@types/unist" = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
            vfile = {
              descriptor = "^6.0.0";
              pin = "6.0.1";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-aM50oqqAK0vzPbr4yoW7NTGYGh2BWuVtdtrP0hqscOg=";
            type = "tarball";
            url = "https://registry.npmjs.org/vfile-location/-/vfile-location-5.0.2.tgz";
          };
          ident = "vfile-location";
          ltype = "file";
          version = "5.0.2";
        };
      };
      vfile-matter = {
        "3.0.1" = {
          depInfo = {
            "@types/js-yaml" = {
              descriptor = "^4.0.0";
              pin = "4.0.9";
              runtime = true;
            };
            is-buffer = {
              descriptor = "^2.0.0";
              pin = "2.0.5";
              runtime = true;
            };
            js-yaml = {
              descriptor = "^4.0.0";
              pin = "4.1.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-DUf/PEFD0pH4zx2Smo5aAf7PRK1TVuhDTwHSi9VOOkU=";
            type = "tarball";
            url = "https://registry.npmjs.org/vfile-matter/-/vfile-matter-3.0.1.tgz";
          };
          ident = "vfile-matter";
          ltype = "file";
          version = "3.0.1";
        };
      };
      vfile-message = {
        "3.1.4" = {
          depInfo = {
            "@types/unist" = {
              descriptor = "^2.0.0";
              pin = "2.0.10";
              runtime = true;
            };
            unist-util-stringify-position = {
              descriptor = "^3.0.0";
              pin = "3.0.3";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-Dkc7I3fAOKYKhLlS1BzITHbRFSxhP+yaKmUu4MfrXik=";
            type = "tarball";
            url = "https://registry.npmjs.org/vfile-message/-/vfile-message-3.1.4.tgz";
          };
          ident = "vfile-message";
          ltype = "file";
          version = "3.1.4";
        };
        "4.0.2" = {
          depInfo = {
            "@types/unist" = {
              descriptor = "^3.0.0";
              pin = "3.0.0";
              runtime = true;
            };
            unist-util-stringify-position = {
              descriptor = "^4.0.0";
              pin = "4.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-54lGHktHCzPDe5fToID2Q+2H6K9MNnqqXX4aTDbkQ+g=";
            type = "tarball";
            url = "https://registry.npmjs.org/vfile-message/-/vfile-message-4.0.2.tgz";
          };
          ident = "vfile-message";
          ltype = "file";
          version = "4.0.2";
        };
      };
      watchpack = {
        "2.4.0" = {
          depInfo = {
            glob-to-regexp = {
              descriptor = "^0.4.1";
              pin = "0.4.1";
              runtime = true;
            };
            graceful-fs = {
              descriptor = "^4.1.2";
              pin = "4.2.11";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-6gYkU/hjGQAirYRUBO2BEjcUdzm/FQT09ee4KGUplEI=";
            type = "tarball";
            url = "https://registry.npmjs.org/watchpack/-/watchpack-2.4.0.tgz";
          };
          ident = "watchpack";
          ltype = "file";
          version = "2.4.0";
        };
      };
      web-namespaces = {
        "2.0.1" = {
          fetchInfo = {
            narHash = "sha256-IhCbLbq2YI8EQz1CnV4al5IwckFwHWl8woeg/yEM3Oc=";
            type = "tarball";
            url = "https://registry.npmjs.org/web-namespaces/-/web-namespaces-2.0.1.tgz";
          };
          ident = "web-namespaces";
          ltype = "file";
          treeInfo = { };
          version = "2.0.1";
        };
      };
      webpack = {
        "5.89.0" = {
          binInfo = {
            binPairs = {
              webpack = "bin/webpack.js";
            };
          };
          depInfo = {
            "@types/eslint-scope" = {
              descriptor = "^3.7.3";
              pin = "3.7.7";
              runtime = true;
            };
            "@types/estree" = {
              descriptor = "^1.0.0";
              pin = "1.0.5";
              runtime = true;
            };
            "@webassemblyjs/ast" = {
              descriptor = "^1.11.5";
              pin = "1.11.6";
              runtime = true;
            };
            "@webassemblyjs/wasm-edit" = {
              descriptor = "^1.11.5";
              pin = "1.11.6";
              runtime = true;
            };
            "@webassemblyjs/wasm-parser" = {
              descriptor = "^1.11.5";
              pin = "1.11.6";
              runtime = true;
            };
            acorn = {
              descriptor = "^8.7.1";
              pin = "8.10.0";
              runtime = true;
            };
            acorn-import-assertions = {
              descriptor = "^1.9.0";
              pin = "1.9.0";
              runtime = true;
            };
            browserslist = {
              descriptor = "^4.14.5";
              pin = "4.22.2";
              runtime = true;
            };
            chrome-trace-event = {
              descriptor = "^1.0.2";
              pin = "1.0.3";
              runtime = true;
            };
            enhanced-resolve = {
              descriptor = "^5.15.0";
              pin = "5.15.0";
              runtime = true;
            };
            es-module-lexer = {
              descriptor = "^1.2.1";
              pin = "1.4.1";
              runtime = true;
            };
            eslint-scope = {
              descriptor = "5.1.1";
              pin = "5.1.1";
              runtime = true;
            };
            events = {
              descriptor = "^3.2.0";
              pin = "3.3.0";
              runtime = true;
            };
            glob-to-regexp = {
              descriptor = "^0.4.1";
              pin = "0.4.1";
              runtime = true;
            };
            graceful-fs = {
              descriptor = "^4.2.9";
              pin = "4.2.11";
              runtime = true;
            };
            json-parse-even-better-errors = {
              descriptor = "^2.3.1";
              pin = "2.3.1";
              runtime = true;
            };
            loader-runner = {
              descriptor = "^4.2.0";
              pin = "4.3.0";
              runtime = true;
            };
            mime-types = {
              descriptor = "^2.1.27";
              pin = "2.1.35";
              runtime = true;
            };
            neo-async = {
              descriptor = "^2.6.2";
              pin = "2.6.2";
              runtime = true;
            };
            schema-utils = {
              descriptor = "^3.2.0";
              pin = "3.3.0";
              runtime = true;
            };
            tapable = {
              descriptor = "^2.1.1";
              pin = "2.2.1";
              runtime = true;
            };
            terser-webpack-plugin = {
              descriptor = "^5.3.7";
              pin = "5.3.9";
              runtime = true;
            };
            watchpack = {
              descriptor = "^2.4.0";
              pin = "2.4.0";
              runtime = true;
            };
            webpack-sources = {
              descriptor = "^3.2.3";
              pin = "3.2.3";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-9Jh/tW0d1D2VqLFKIYKY/JD0o7FASxKvByk8LxbHpE4=";
            type = "tarball";
            url = "https://registry.npmjs.org/webpack/-/webpack-5.89.0.tgz";
          };
          ident = "webpack";
          ltype = "file";
          peerInfo = {
            webpack-cli = {
              descriptor = "*";
              optional = true;
            };
          };
          version = "5.89.0";
        };
      };
      webpack-sources = {
        "3.2.3" = {
          fetchInfo = {
            narHash = "sha256-Js7pcQ0EGbwnwbrjD1IqHcu5nWzEOcjnC1mTfJL3iCw=";
            type = "tarball";
            url = "https://registry.npmjs.org/webpack-sources/-/webpack-sources-3.2.3.tgz";
          };
          ident = "webpack-sources";
          ltype = "file";
          treeInfo = { };
          version = "3.2.3";
        };
      };
      which = {
        "2.0.2" = {
          binInfo = {
            binPairs = {
              node-which = "bin/node-which";
            };
          };
          depInfo = {
            isexe = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-u114pFUXCCiUamLVVZma0Au+didZhD6RCoGTbrh2OhU=";
            type = "tarball";
            url = "https://registry.npmjs.org/which/-/which-2.0.2.tgz";
          };
          ident = "which";
          ltype = "file";
          version = "2.0.2";
        };
      };
      which-boxed-primitive = {
        "1.0.2" = {
          depInfo = {
            is-bigint = {
              descriptor = "^1.0.1";
              pin = "1.0.4";
              runtime = true;
            };
            is-boolean-object = {
              descriptor = "^1.1.0";
              pin = "1.1.2";
              runtime = true;
            };
            is-number-object = {
              descriptor = "^1.0.4";
              pin = "1.0.7";
              runtime = true;
            };
            is-string = {
              descriptor = "^1.0.5";
              pin = "1.0.7";
              runtime = true;
            };
            is-symbol = {
              descriptor = "^1.0.3";
              pin = "1.0.4";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-5HiYamQ407qG7OtGSNwZSpYIUeWwcT+B54zHUJ5zk5U=";
            type = "tarball";
            url = "https://registry.npmjs.org/which-boxed-primitive/-/which-boxed-primitive-1.0.2.tgz";
          };
          ident = "which-boxed-primitive";
          ltype = "file";
          version = "1.0.2";
        };
      };
      which-builtin-type = {
        "1.1.3" = {
          depInfo = {
            "function.prototype.name" = {
              descriptor = "^1.1.5";
              pin = "1.1.6";
              runtime = true;
            };
            has-tostringtag = {
              descriptor = "^1.0.0";
              pin = "1.0.0";
              runtime = true;
            };
            is-async-function = {
              descriptor = "^2.0.0";
              pin = "2.0.0";
              runtime = true;
            };
            is-date-object = {
              descriptor = "^1.0.5";
              pin = "1.0.5";
              runtime = true;
            };
            is-finalizationregistry = {
              descriptor = "^1.0.2";
              pin = "1.0.2";
              runtime = true;
            };
            is-generator-function = {
              descriptor = "^1.0.10";
              pin = "1.0.10";
              runtime = true;
            };
            is-regex = {
              descriptor = "^1.1.4";
              pin = "1.1.4";
              runtime = true;
            };
            is-weakref = {
              descriptor = "^1.0.2";
              pin = "1.0.2";
              runtime = true;
            };
            isarray = {
              descriptor = "^2.0.5";
              pin = "2.0.5";
              runtime = true;
            };
            which-boxed-primitive = {
              descriptor = "^1.0.2";
              pin = "1.0.2";
              runtime = true;
            };
            which-collection = {
              descriptor = "^1.0.1";
              pin = "1.0.1";
              runtime = true;
            };
            which-typed-array = {
              descriptor = "^1.1.9";
              pin = "1.1.11";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-z3he7fyzoWiGoL7Dwp2M377VkbBb4fgB7ENQNqBVrKc=";
            type = "tarball";
            url = "https://registry.npmjs.org/which-builtin-type/-/which-builtin-type-1.1.3.tgz";
          };
          ident = "which-builtin-type";
          ltype = "file";
          version = "1.1.3";
        };
      };
      which-collection = {
        "1.0.1" = {
          depInfo = {
            is-map = {
              descriptor = "^2.0.1";
              pin = "2.0.2";
              runtime = true;
            };
            is-set = {
              descriptor = "^2.0.1";
              pin = "2.0.2";
              runtime = true;
            };
            is-weakmap = {
              descriptor = "^2.0.1";
              pin = "2.0.1";
              runtime = true;
            };
            is-weakset = {
              descriptor = "^2.0.1";
              pin = "2.0.2";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-rRvM0EkRNEYAthcfx8ILiHX+dP6jQUHCwh/6+OF+mnQ=";
            type = "tarball";
            url = "https://registry.npmjs.org/which-collection/-/which-collection-1.0.1.tgz";
          };
          ident = "which-collection";
          ltype = "file";
          version = "1.0.1";
        };
      };
      which-typed-array = {
        "1.1.11" = {
          depInfo = {
            available-typed-arrays = {
              descriptor = "^1.0.5";
              pin = "1.0.5";
              runtime = true;
            };
            call-bind = {
              descriptor = "^1.0.2";
              pin = "1.0.2";
              runtime = true;
            };
            for-each = {
              descriptor = "^0.3.3";
              pin = "0.3.3";
              runtime = true;
            };
            gopd = {
              descriptor = "^1.0.1";
              pin = "1.0.1";
              runtime = true;
            };
            has-tostringtag = {
              descriptor = "^1.0.0";
              pin = "1.0.0";
              runtime = true;
            };
          };
          fetchInfo = {
            narHash = "sha256-EGELA1/ELVvjyXq2YrCoNU6Sar/u6UVVwAT9y1iMiBo=";
            type = "tarball";
            url = "https://registry.npmjs.org/which-typed-array/-/which-typed-array-1.1.11.tgz";
          };
          ident = "which-typed-array";
          ltype = "file";
          version = "1.1.11";
        };
      };
      wrappy = {
        "1.0.2" = {
          fetchInfo = {
            narHash = "sha256-8EvxGsoK2efCTAOoAHPbfbCoPOJvkmOLPM4XA1rEcVU=";
            type = "tarball";
            url = "https://registry.npmjs.org/wrappy/-/wrappy-1.0.2.tgz";
          };
          ident = "wrappy";
          ltype = "file";
          treeInfo = { };
          version = "1.0.2";
        };
      };
      yallist = {
        "4.0.0" = {
          fetchInfo = {
            narHash = "sha256-JQNNkqswg1ZH4o8PQS2R8WsZWJtv/5R3vRgc4d1vDR0=";
            type = "tarball";
            url = "https://registry.npmjs.org/yallist/-/yallist-4.0.0.tgz";
          };
          ident = "yallist";
          ltype = "file";
          treeInfo = { };
          version = "4.0.0";
        };
      };
      yaml = {
        "1.10.2" = {
          fetchInfo = {
            narHash = "sha256-JPai4yAf+MK8wsaF0gmRNcCD2HiF2sBzf/YHgnjpWEs=";
            type = "tarball";
            url = "https://registry.npmjs.org/yaml/-/yaml-1.10.2.tgz";
          };
          ident = "yaml";
          ltype = "file";
          treeInfo = { };
          version = "1.10.2";
        };
      };
      yocto-queue = {
        "0.1.0" = {
          fetchInfo = {
            narHash = "sha256-DpbkBR6X0fZcRRdqavXuN5z2r2EfhSO5pbc2PuZwDFY=";
            type = "tarball";
            url = "https://registry.npmjs.org/yocto-queue/-/yocto-queue-0.1.0.tgz";
          };
          ident = "yocto-queue";
          ltype = "file";
          treeInfo = { };
          version = "0.1.0";
        };
      };
      zwitch = {
        "2.0.4" = {
          fetchInfo = {
            narHash = "sha256-1YB5sa7Bgll2SIIqSVZP7UQe1wuWj8eJu2saUalphXE=";
            type = "tarball";
            url = "https://registry.npmjs.org/zwitch/-/zwitch-2.0.4.tgz";
          };
          ident = "zwitch";
          ltype = "file";
          treeInfo = { };
          version = "2.0.4";
        };
      };
    };
  };
}
