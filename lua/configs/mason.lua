local options = {
  pkgs = {
    -- Lua
    "lua-language-server",
    "stylua",

    -- Shell
    "shellcheck",
    "shfmt",

    -- C
    "clangd",
    "clang-format",

    -- Rust
    "rust-analyzer",

    -- Python
    "pyright",
    "black",
    "isort",
    "flake8",
    "mypy",
    "pydocstyle",

    -- Web
    "html-lsp",
    "css-lsp",

    -- Javascript/Typescript
    "eslint-lsp",
    -- "eslint_d",
    "typescript-language-server",
    "prettier",

    -- Docker
    "dockerfile-language-server",

    -- Golang
    -- "gopls",

    -- Terraform
    "terraform-ls",
    "tflint",

    -- Security
    "trivy",

    -- Doc
    "marksman",
    "json-lsp",
    "yaml-language-server",
    "yamlfmt",
    "yamllint",
    "taplo",
  },
}

return options
