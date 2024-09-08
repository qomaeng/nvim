-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

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
