 vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
	-- Packer
	use { "wbthomason/packer.nvim" }

	-- Gruvbox colorscheme
	use { "ellisonleao/gruvbox.nvim" }

	-- Usefull Stuff
	use { "nvim-lua/popup.nvim" }
	use { "nvim-lua/plenary.nvim" }
	use { "windwp/nvim-autopairs" , config = function ()
		require("nvim-autopairs").setup{}
		end}
	use { "numToStr/Comment.nvim", config = function ()
		require("Comment").setup()
		end}

	-- Completion
	use { "hrsh7th/nvim-cmp" }
	use { "hrsh7th/cmp-nvim-lsp" }
	use { "hrsh7th/cmp-nvim-lua" }
	use { "hrsh7th/cmp-buffer" }
	use { "hrsh7th/cmp-path" }
	use { "hrsh7th/cmp-cmdline" }
	use { "hrsh7th/cmp-calc" }

	-- Snippets
	use { "L3MON4D3/LuaSnip" }
	use { "rafamadriz/friendly-snippets" }

	-- LSP
	use { "neovim/nvim-lspconfig" }
	use { "williamboman/nvim-lsp-installer" }

	-- Telescope
	use { "nvim-telescope/telescope.nvim" }
	use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
	use {
		'lewis6991/gitsigns.nvim',
		requires = {
			'nvim-lua/plenary.nvim'
		},
		config = function()
		require('gitsigns').setup()
		end
	}
	use { "nvim-lualine/lualine.nvim" }
	use { "kdheepak/tabline.nvim" }
end)
