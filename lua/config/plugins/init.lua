return {
	"christoomey/vim-tmux-navigator",
	{
		"mbbill/undotree",
		event = "VeryLazy",
	},
	{
		"tpope/vim-fugitive",
		event = "VeryLazy",
	},
	{
		"mfussenegger/nvim-dap",
		event = "VeryLazy",
	},
	{
		"j-hui/fidget.nvim",
		event = { "BufReadPre", "BufNewFile" },
		opts = {},
	},
	{
		"NvChad/nvim-colorizer.lua",
		event = { "BufReadPre", "BufNewFile" },
		config = true,
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	},
	{
		"stevearc/dressing.nvim",
		event = "VeryLazy",
	},
}
