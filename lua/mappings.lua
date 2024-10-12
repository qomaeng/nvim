require "nvchad.mappings"

local map = vim.keymap.set

-- Example
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Nvim
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Buffer
map("n", "<C-x>", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "Close buffer" })

-- Easy Motion
map("n", "f", "<Plug>(easymotion-s2)", { desc = "Multi input find motion" })

-- Git
map("n", "]c", function()
  if vim.wo.diff then
    vim.cmd.normal { "]c", bang = true }
  else
    require("gitsigns").nav_hunk "next"
  end
end, { desc = "Jump to next hunk" })

map("n", "[c", function()
  if vim.wo.diff then
    vim.cmd.normal { "]c", bang = true }
  else
    require("gitsigns").nav_hunk "prev"
  end
end, { desc = "Jump to prev hunk" })

map("n", "<leader>rh", "<CMD>Gitsigns reset_hunk<CR>", { desc = "Git reset hunk" })
map("n", "<leader>ph", "<CMD>Gitsigns preview_hunk<CR>", { desc = "Git preview hunk" })
map("n", "<leader>gf", "<CMD>Gitsigns blame<CR>", { desc = "Git blame" })
map("n", "<leader>gb", "<CMD>Gitsigns blame_line<CR>", { desc = "Git blame line" })

-- Rust
-- map("n", "<leader>rcu", function()
--   require("crates").upgrade_all_crates()
-- end, { desc = "Upgrade all crates" })
