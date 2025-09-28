require("nvchad.configs.lspconfig").defaults()

local servers = {
  -- Lua
  lua_ls = {},

  -- C
  clangd = {},

  -- Rust
  rust_analyzer = {},

  -- Python
  basedpyright = {},

  -- Golang
  gopls = {},

  -- Protobuf
  --

  -- Docker
  dockerls = {},

  -- HTML
  html = {},
  cssls = {},
  css_variables = {},
  tailwindcss = {},

  -- Javascript/Typescript
  eslint = {},
  ts_ls = {
    init_options = {
      preferences = {
        disableSuggestions = true,
      },
    },
  },

  -- Terraform
  terraformls = {},
  -- tflint = {},

  -- Doc
  marksman = {},
  taplo = {},
  jsonls = {},
  yamlls = {
    settings = {
      redhat = {
        telemetry = {
          enabled = false,
        },
      },
    },
  },
}

for lsp, opts in pairs(servers) do
  vim.lsp.config(lsp, opts)
end

vim.lsp.enable(vim.tbl_keys(servers))
