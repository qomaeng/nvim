return {
  -- Neovim Plugin Manager
  {
    "williamboman/mason.nvim",
    opts = require "configs.mason"
  },

  -- Formatter
  {
    "stevearc/conform.nvim",
    -- event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- LSP
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- Linter
  {
    "mfussenegger/nvim-lint",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require "configs.lint"
    end,
  },

  -- Language Syntax
  {
    "nvim-treesitter/nvim-treesitter",
    opts = require "configs.treesitter"
  },

  -- Auto Completion
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    opts = function()
      local cmp = require "cmp"
      local options = require "nvchad.configs.cmp"

      options.mapping["<Tab>"] = cmp.mapping.confirm {
        behavior = cmp.ConfirmBehavior.Replace,
        select = false,
      }
      options.mapping["<CR>"] = {}

      table.insert(options.sources, { name = "crates" })

      return options
    end,
  },

  {
    "easymotion/vim-easymotion",
    lazy = false,
  },

  -- File Type Overrider
  -- {
  --   "nathom/filetype.nvim",
  --   overrides = {
  --     extensions = {
  --       tf = "terraform",
  --       tfvars = "terraform-vars",
  --       tfstate = "json",
  --     },
  --   },
  -- },

  -- Auto Tag
  {
    "windwp/nvim-ts-autotag",
    event = "VeryLazy",
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = function()
      require("nvim-ts-autotag").setup {
        opts = {
          enable_rename = true,
          enable_close = true,
          enable_close_on_slash = true,
          filetypes = {
            "html",
            "javascript",
            "javascriptreact",
            "jsx",
            "typescript",
            "typescriptreact",
            "tsx",
            "xml",
          },
        },
      }
    end,
  },

  {
    "kdheepak/lazygit.nvim",
    lazy = true,
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    -- optional for floating window border decoration
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    keys = {
      { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" }
    }
  },
}

-- {
--   "saecki/crates.nvim",
--   dependencies = "hrsh7th/nvim-cmp",
--   ft = { "rust", "toml" },
--   config = function(_, opts)
--     local crates = require "crates"
--     crates.setup(opts)
--     crates.show()
--   end,
-- },
-- {
--   "kevinhwang91/nvim-ufo",
--   dependencies = { "kevinhwang91/promise-async" },
--   event = "BufRead",
--   keys = {
--     { "zR", function() require("ufo").openAllFolds() end },
--     { "zM", function() require("ufo").closeAllFolds() end },
--     { "K", function()
--       local winid = require('ufo').peekFoldedLinesUnderCursor()
--       if not winid then
--         vim.lsp.buf.hover()
--       end
--     end }
--   },
--   config = function()
--     vim.o.foldcolumn = '1'
--     vim.o.foldlevel = 99
--     vim.o.foldlevelstart = 99
--     vim.o.foldenable = true
--     require("ufo").setup({
--       close_fold_kinds = { "imports" },
--     })
--   end,
-- },
-- {
--   "mfussenegger/nvim-dap"
-- },
