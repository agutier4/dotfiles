require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- Gitsigns
map('n', '<leader>gs', "<cmd>Gitsigns stage_hunk<CR>", {desc = "git stage hunk"})
map('n', '<leader>gr', "<cmd>Gitsigns reset_hunk<CR>", {desc = "git reset hunk"})
map('n', '<leader>gS', "<cmd>Gitsigns stage_buffer<CR>", {desc = "git stage buffer"})
map('n', '<leader>gu', "<cmd>Gitsigns undo_stage_hunk<CR>", {desc = "git undo stage hunk"})
map('n', '<leader>gR', "<cmd>Gitsigns reset_buffer<CR>", {desc = "git reset buffer"})
map('n', '<leader>gp', "<cmd>Gitsigns preview_hunk<CR>", {desc = "git preview hunk"})
map('n', '<leader>gn', "<cmd>Gitsigns next_hunk<CR>", {desc = "git next hunk"})
map('n', '<leader>gN', "<cmd>Gitsigns prev_hunk<CR>", {desc = "git previous hunk"})
map('n', '<leader>gb', "<cmd>Gitsigns blame_line<CR>", {desc = "git blame line"})
map('n', '<leader>gd', "<cmd>Gitsigns diffthis<CR>", {desc = "git diff"})
map('n', '<leader>td', "<cmd>Gitsigns toggle_deleted<CR>", {desc = "git toggle deleted"})

-- DAP
map('n', '<leader>db', "<cmd>DapToggleBreakpoint<CR>", {desc = "dap toggle breakpoint"})
map('n', '<leader>dc', "<cmd>DapContinue<CR>", {desc = "dap run/continue"})
map('n', '<leader>di', "<cmd>DapStepInto<CR>", {desc = "dap step into"})
map('n', '<leader>do', "<cmd>DapStepOut<CR>", {desc = "dap step out"})
map('n', '<leader>dO', "<cmd>DapStepOver<CR>", {desc = "dap step over"})
map('n', '<leader>dr', "<cmd>DapToggleRepl<CR>", {desc = "dap toggle REPL"})
map('n', '<leader>dt', "<cmd>DapTerminate<CR>", {desc = "dap terminate"})

map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
