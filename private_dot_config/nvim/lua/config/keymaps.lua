-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
local opts = { silent = true, noremap = true }

map("n", "J", "5j", opts)
-- map("n", "K", "5k", opts)
map("n", "Q", ":q<CR>", opts)
map("n", "S", ":w<CR>", opts)
