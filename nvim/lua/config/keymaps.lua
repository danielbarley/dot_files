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
mapkey("n", "<leader>lm", ":AsyncRun make<CR>", opts)
mapkey("n", "<leader>s", ":Telescope lsp_document_symbols<CR>", opts)
-- Visual
mapkey("v", "<", "<gv", opts)
mapkey("v", ">", ">gv", opts)
-- Terminal
mapkey("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
mapkey("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
mapkey("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
mapkey("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
mapkey("n", "<C-t>", "<CMD>lua require('FTerm').toggle()<CR>", term_opts)
mapkey("t", "<C-t>", "<CMD>lua require('FTerm').toggle()<CR>", term_opts)
-- Telescope
mapkey("n", "<leader>ff", "<cmd>Telescope find_files theme=ivy<CR>", opts)
mapkey("n", "<leader>fg", "<cmd>Telescope live_grep theme=ivy<CR>", opts)
mapkey("n", "<leader>fb", "<cmd>Telescope buffers theme=ivy<CR>", opts)
mapkey("n", "<leader>fr", "<cmd>Telescope registers theme=ivy<CR>", opts)
-- Buffer Picker
mapkey("n", "<leader>bb", "<cmd>BufferPick<CR>", opts)
mapkey("n", "<leader>bc", "<cmd>BufferClose<CR>", opts)
mapkey("n", "<leader>bp", "<cmd>BufferPin<CR>", opts)
-- Tree
mapkey("n", "<leader>tt", "<cmd>NvimTreeToggle<CR>", opts)
mapkey("n", "<leader>to", "<cmd>NvimTreeOpen<CR>", opts)
mapkey("n", "<leader>tc", "<cmd>NvimTreeClose<CR>", opts)
mapkey("n", "<leader>tr", "<cmd>NvimTreeRefresh<CR>", opts)
