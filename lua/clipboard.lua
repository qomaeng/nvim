vim.g.clipboard = "osc52"
vim.opt.clipboard = ""

local map = vim.keymap.set

-- p
map({ "n", "x" }, "p", '""p')
map({ "n", "x" }, "P", '""P')
-- map({ "n", "x" }, "p", '"0p')
-- map({ "n", "x" }, "P", '"0P')
