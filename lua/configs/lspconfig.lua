require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

local servers = {
  -- Lua
  lua_ls = {},

  -- C
  clangd = {},

  -- Rust
  rust_analyzer = {},

  -- Python
  pyright = {},

  -- Golang
  -- gopls = {},

  -- Protobuf
  --

  -- Docker
  dockerls = {},

  -- HTML
  html = {},
  cssls = {},

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

local nvlsp = require "nvchad.configs.lspconfig"

for lsp, opts in pairs(servers) do
  opts.on_init = nvlsp.on_init
  opts.on_attach = nvlsp.on_attach
  opts.capabilities = nvlsp.capabilities

  lspconfig[lsp].setup(opts)
end
