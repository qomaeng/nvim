return {
  -- Neovim Plugin Manager
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      local config = require "configs.mason"
      return vim.tbl_deep_extend("force", opts or {}, config)
    end,
  },

  -- Formatter
  {
    "stevearc/conform.nvim",
    -- event = "BufWritePre", -- uncomment for format on save
    opts = function(_, opts)
      local config = require "configs.conform"
      return vim.tbl_deep_extend("force", opts or {}, config)
    end,
  },

  -- LSP
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
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
    opts = function(_, opts)
      local config = require "configs.treesitter"
      return vim.tbl_deep_extend("force", opts or {}, config)
    end,
  },

  -- Auto Completion
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    opts = function(_, opts)
      local cmp = require "cmp"
      local config = require "nvchad.configs.cmp"

      config.mapping["<Tab>"] = cmp.mapping.confirm {
        behavior = cmp.ConfirmBehavior.Replace,
        select = false,
      }
      config.mapping["<CR>"] = {}

      -- table.insert(config.sources, { name = "crates" })

      return vim.tbl_deep_extend("force", opts or {}, config)
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
      { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
    },
  },

  -- {
  --   "iamcco/markdown-preview.nvim",
  --   lazy = true,
  --   cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  --   ft = { "markdown" },
  --   build = function()
  --     vim.uv.fn["mkdp#util#install"]()
  --   end,
  -- },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons"
    },
    opts = {},
    ft = { "markdown" },
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
