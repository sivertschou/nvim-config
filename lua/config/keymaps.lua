-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- General
vim.keymap.set("n", "+", "<cmd>vertical resize +5<cr>", { desc = "Increase window width" })
vim.keymap.set("n", "-", "<cmd>vertical resize -5<cr>", { desc = "Decrease window width" })
vim.keymap.set("n", "<C-q>", "<cmd>q<cr>", { desc = "Close file" })

-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", builtin.find_files, { desc = "Find files" })

-- ToggleTerm
vim.keymap.set("n", "<C-_>", "<cmd>ToggleTerm<cr>", { desc = "Toggle terminals" })

-- Gitsings
vim.keymap.set("n", "√", "<cmd>Gitsigns next_hunk<cr>", { desc = "Go to next hunk" })
vim.keymap.set("n", "ª", "<cmd>Gitsigns prev_hunk<cr>", { desc = "Go to previous hunk" })
vim.keymap.set("n", "<leader>ga", "<cmd>Gitsigns stage_hunk<cr>", { desc = "Stage hunk" })
vim.keymap.set("n", "<leader>gu", "<cmd>Gitsigns undo_stage_hunk<cr>", { desc = "Undo stage hunk" })
vim.keymap.set("n", "<leader>gp", "<cmd>Gitsigns preview_hunk<cr>", { desc = "Preview hunk" })
vim.keymap.set("n", "<leader>gr", "<cmd>Gitsigns reset_hunk<cr>", { desc = "Reset hunk" })
vim.keymap.set("n", "<leader>gb", "<cmd>Gitsigns blame_lin<cr>", { desc = "Blame line" })

-- LSP
vim.keymap.set("n", "¬", vim.diagnostic.goto_next, { desc = "Go to next diagnostic" })
vim.keymap.set("n", "º", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic" })
