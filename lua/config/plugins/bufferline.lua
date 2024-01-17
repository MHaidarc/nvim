return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	opts = {
		options = {
			diagnostics = "nvim_lsp",
			diagnostics_update_in_insert = true,
			separator_style = "thin",
			mode = "tabs",
		},
	},
}
