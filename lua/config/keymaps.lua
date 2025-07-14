-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- General
vim.keymap.set("n", "+", "<cmd>vertical resize +5<cr>", { desc = "Increase window width" })
vim.keymap.set("n", "-", "<cmd>vertical resize -5<cr>", { desc = "Decrease window width" })
vim.keymap.set("n", "<C-q>", "<cmd>q<cr>", { desc = "Close file" })

-- Telescope
local telescope = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", telescope.git_files, { desc = "Find files (git_files)" })
vim.keymap.set("n", "<leader>sg", function()
  telescope.live_grep({
    file_ignore_patterns = { ".git/", ".cache", "node_modules/" },
    additional_args = function(_)
      return { "--hidden" }
    end,
  })
end, { desc = "Live grep (hidden)" })

-- ToggleTerm
vim.keymap.set("n", "<C-_>", "<cmd>ToggleTerm<cr>", { desc = "Toggle terminals" })
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Gitsings
vim.keymap.set("n", "√", "<cmd>Gitsigns nav_hunk next<cr>", { desc = "Go to next hunk" })
vim.keymap.set("n", "ª", "<cmd>Gitsigns nav_hunk prev<cr>", { desc = "Go to previous hunk" })
vim.keymap.set("n", "<leader>ga", "<cmd>Gitsigns stage_hunk<cr>", { desc = "Stage hunk" })
vim.keymap.set("n", "<leader>gu", "<cmd>Gitsigns undo_stage_hunk<cr>", { desc = "Undo stage hunk" })
vim.keymap.set("n", "<leader>gp", "<cmd>Gitsigns preview_hunk<cr>", { desc = "Preview hunk" })
vim.keymap.set("n", "<leader>gr", "<cmd>Gitsigns reset_hunk<cr>", { desc = "Reset hunk" })
vim.keymap.set("n", "<leader>gb", "<cmd>Gitsigns blame_line<cr>", { desc = "Blame line" })

-- LSP
vim.keymap.set("n", "¬", function()
  vim.diagnostic.jump({ count = 1, float = true })
end, { desc = "Go to next diagnostic" })

vim.keymap.set("n", "º", function()
  vim.diagnostic.jump({ count = -1, float = true })
end, { desc = "Go to previous diagnostic" })
