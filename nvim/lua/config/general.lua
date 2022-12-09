local options = {
	-- Line Numbers
	number = true,
	relativenumber = true,
	colorcolumn = "80",
	-- Backup
	backup = false,
	writebackup = true,
	undofile = true,
	undodir = vim.fn.stdpath("data") .. "/undo",
	swapfile = false,
	-- Search
	hlsearch = true,
	incsearch = true,
	showmatch = true,
	ignorecase = true,
	smartcase = true,
	-- Splits
	splitright = true,
	splitbelow = true,
	-- Scrolling
	scrolloff = 8,
	sidescrolloff = 8,
	signcolumn = "yes",
	-- Tabs
	list = true,
	listchars = "tab:>-,trail:.,lead:.",
	tabstop = 2,
	softtabstop = 2,
	shiftwidth = 2,
	expandtab = false,
	-- Misc
	showcmd = true,
	cmdheight = 1,
	completeopt = { "menu", "menuone", "noselect"  },
	conceallevel = 0,
	fileencoding = "utf-8",
	showmode = false,
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
	vim.opt[k] = v
end
