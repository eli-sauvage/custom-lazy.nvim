-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local Util = require("lazyvim.util")
local map = vim.keymap.set

local lazyterm = function()
  Util.terminal(nil, { cwd = Util.root() })
end
map("t", "<M-i>", "<cmd>close<cr>", { desc = "Hide Terminal" })
map("n", "<M-i>", lazyterm, { desc = "Terminal (root dir)" })
