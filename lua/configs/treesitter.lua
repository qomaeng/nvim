local options = {
  ensure_installed = {
    -- Lua
    "lua",
    "luadoc",

    -- C
    "c",

    -- Rust
    "rust",

    -- Python
    "python",

    -- Terraform
    "terraform",

    -- HTML
    "html",
    "css",

    -- Javascript
    "javascript",
    "typescript",
    "tsx",

    -- DOC
    "json",
    "yaml",
    "toml",
    "markdown",
    "markdown_inline",

    -- SQL
    "query",

    -- VIM
    "vim",
    "vimdoc",

    -- ETC
    "printf",
  },

  indent = { enable = true },
  highlight = { enable = true },
}

return options
