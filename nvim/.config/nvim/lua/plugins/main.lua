return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme tokyonight]])
		end,
	},

	{ "williamboman/mason.nvim" },
	{ "williamboman/mason.lspconfig.nvim" },

	{
		"L3MON4D3/LuaSnip", event = "VeryLazy",
		config = function()
			require('luasnip.loaders.from_lua').load({ paths = "./snippets" })
		end
	},

	{
		"nvim-telescope/telescope.nvim", 
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" }
	},



	{ "VonHeikemen/lsp-zero.nvim", branch = "v4.x" },
	{ "neovim/nvim-lspconfig" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/nvim-cmp" },

	{
		"jose-elias-alvarez/null-ls.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function() 
			local null_ls = require("null-ls")
			
			null_ls.setup({
				sources = {
					null_ls.builtins.diagnostics.ruff,
					null_ls.builtins.formatting.ruff,
				}
			})
		end
	},

	{
		"akinsho/toggleterm.nvim", 
		event = "VeryLazy",
		version = "*",
		opts = {
			size = 10,
			open_mapping = "<c-s>",
		},
	},


	{
		"mrcjkb/rustaceanvim",
		version = "^5",
		lazy = false,
	},
}
