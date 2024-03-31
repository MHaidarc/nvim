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
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	},
	{
		event = { "BufReadPre", "BufNewFile" },
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	},
	{
		"saecki/crates.nvim",
		ft = { "rust", "toml" },
		config = function(_, opts)
			local crates = require("crates")
			crates.setup(opts)
			crates.show()
		end,
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {}, -- this is equalent to setup({}) function
		config = function()
			require("nvim-autopairs").setup({})
			-- If you want insert `(` after select function or method item
			local cmp_autopairs = require("nvim-autopairs.completion.cmp")
			local cmp = require("cmp")
			cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
		end,
	},
	{
		"NvChad/nvim-colorizer.lua",
		event = { "BufReadPre", "BufNewFile" },
    config = function ()
      require("colorizer").setup()
    end
	},
}
