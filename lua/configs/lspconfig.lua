local configs = require "nvchad.configs.lspconfig"

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
  tsserver = {
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

for name, opts in pairs(servers) do
  opts.on_init = configs.on_init
  opts.on_attach = configs.on_attach
  opts.capabilities = configs.capabilities

  require("lspconfig")[name].setup(opts)
end
