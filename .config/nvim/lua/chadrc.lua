-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "tokyonight",
}

M.mason = {
  cmd = true,
  pkgs = {
    "rust-analyzer",
    "cmake-language-server",
    "nil",
    "prettier",
    "codelldb",
    "pyright",
    "debugpy",
  }
}

M.nvdash = {
  load_on_startup = true
}

return M
