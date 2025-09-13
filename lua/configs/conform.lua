local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    -- css = { "prettier" },
    -- html = { "prettier" },
    sh = { "shfmt" },

    -- C
    c = { "clang_format" },
    cpp = { "clang_format" },
    objc = { "clang_format" },

    -- Rust
    rust = { "rustfmt" },

    -- Python
    python = { "ruff", "black" },

    -- Javascript
    javascript = { "prettier" },
    javascriptreact = { "prettier" },
    jsx = { "prettier" },

    -- Typescript
    typescript = { "prettier" },
    typescriptreact = { "prettier" },
    tsx = { "prettier" },

    -- Terraform
    terraform = { "terraform_fmt" },

    -- DOC
    yaml = { "yamlfmt" },

    --------------------------------------------------------------
    -- Below types will be formatted by LSP if not set formatter.
    --
    -- rust_analyzer:
    --   rust
    --
    -- gopls:
    --   go
    --
    -- terraformls:
    --   terraform
    --
    -- eslint:
    --   javascript, javascriptreact, jsx
    --   typescript, typescriptreact, tsx
    --   vue, svelte, astro
    --
    -- html:
    --   html, templ
    --
    -- cssls:
    --   css, scss, less
    --
    -- taplo:
    --   toml
    --
    -- jsonls:
    --   json
    --
    --------------------------------------------------------------
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

return options
