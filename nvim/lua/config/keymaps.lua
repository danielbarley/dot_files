local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

local mapkey = vim.api.nvim_set_keymap

-- Leader
mapkey("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Normal Mode
mapkey("n", "<C-Up>", ":resize -2<CR>", opts)
mapkey("n", "<C-Down>", ":resize +2<CR>", opts)
mapkey("n", "<C-Left>", ":vertical resize -2<CR>", opts)
mapkey("n", "<C-Right>", ":vertical resize +2<CR>", opts)
mapkey("n", "<leader><Esc>", ":nohlsearch<CR>", opts)
-- Visual
mapkey("v", "<", "<gv", opts)
mapkey("v", ">", ">gv", opts)
-- Terminal
mapkey("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
mapkey("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
mapkey("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
mapkey("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
-- Telescope
mapkey("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts)
mapkey("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", opts)
mapkey("n", "<leader>fb", "<cmd>Telescope buffers<CR>", opts)
mapkey("n", "<leader>fr", "<cmd>Telescope registers<CR>", opts)
