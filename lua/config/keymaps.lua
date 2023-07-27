-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<C-q>", "<cmd>q<cr>", { desc = "Close file" })

vim.keymap.set("n", "<C-_>", "<cmd>ToggleTerm<cr>", { desc = "Toggle terminals" })

vim.keymap.set("n", "+", "<cmd>vertical resize +5<cr>", { desc = "Increase window width" })
vim.keymap.set("n", "-", "<cmd>vertical resize -5<cr>", { desc = "Decrease window width" })
