-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

local M = {}

M.base46 = {
  theme = "poimandres",
  theme_toggle = { "poimandres", "nord" },

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
  -- hl_add = {
  --   NvimTreeOpenedFolderName = { fg = "green", bold = true },
  -- },
}

return M
