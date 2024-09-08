local lint = require "lint"

lint.linters_by_ft = {
  -- Shell
  sh = { "shellcheck" },
  bash = { "shellcheck" },

  -- c
  -- clang_check not supported in here
  -- c = { "clang_check" },
  -- cpp = { "clang_check" },
  -- objc = { "clang_check" },

  -- python
  -- python = { "flake8", "mypy", "pydocstyle", "trivy" },

  -- -- Javascript (LSP also support lint)
  -- javascript = { "eslint" },
  -- javascriptreact = { "eslint" },
  -- jsx = { "eslint" },
  --
  -- -- Typescript (LSP also support lint)
  -- typescript = { "eslint" },
  -- typescriptreact = { "eslint" },
  -- tsx = { "eslint" },

  -- Terraform
  terraform = { "tflint", "trivy" }, -- terraform validate not supported here

  -- Doc
  -- yaml = { "yamllint" },
}

local augroup = vim.api.nvim_create_augroup("lint", { clear = true })

vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
  group = augroup,
  callback = function()
    lint.try_lint()
  end,
})
