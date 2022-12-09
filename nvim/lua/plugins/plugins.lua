vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
	-- Packer
	use { "wbthomason/packer.nvim" }

	-- Colorschemes
	use { "ellisonleao/gruvbox.nvim" }
	use { "Mofiqul/dracula.nvim" }
	use { "folke/tokyonight.nvim" }
	use { "EdenEast/nightfox.nvim"}
	use { "rebelot/kanagawa.nvim"}

	-- Usefull Stuff
	use { "nvim-lua/popup.nvim" }
	use { "nvim-lua/plenary.nvim" }
	use { "windwp/nvim-autopairs" , config = function ()
		require("nvim-autopairs").setup{}
		end}
	use { "numToStr/Comment.nvim", config = function ()
		require("Comment").setup()
		end}
	use { "nvim-tree/nvim-tree.lua" }

	-- Completion
	use { "hrsh7th/nvim-cmp" }
	use { "hrsh7th/cmp-nvim-lsp" }
	use { "hrsh7th/cmp-nvim-lua" }
	use { "hrsh7th/cmp-buffer" }
	use { "hrsh7th/cmp-path" }
	use { "hrsh7th/cmp-cmdline" }
	use { "hrsh7th/cmp-calc" }
	use { "ray-x/lsp_signature.nvim" }

	-- Snippets
	use { "L3MON4D3/LuaSnip" }
	use { "rafamadriz/friendly-snippets" }
	use { "saadparwaiz1/cmp_luasnip" }

	-- LSP
	use { "neovim/nvim-lspconfig" }
	use { "williamboman/mason.nvim" }
	use { "williamboman/mason-lspconfig.nvim" }
	use { "RRethy/vim-illuminate" }
	use { "jose-elias-alvarez/null-ls.nvim" }

	-- Telescope
	use { "nvim-telescope/telescope.nvim" }
	use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
	use { 'nvim-treesitter/nvim-treesitter-textobjects' }
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
	use { "skywind3000/asyncrun.vim" }
	use { "numToStr/FTerm.nvim" }
	use {
		"ur4ltz/surround.nvim",
		config = function()
		require"surround".setup {mappings_style = "sandwich"}
		end
	}
	use { "romgrk/barbar.nvim" }
	use { "stevearc/dressing.nvim"}
	use { "folke/which-key.nvim" }
end)
