return {
	"zaldih/themery.nvim",
	event = "VeryLazy",
	-- Minimal config
	config = function()
		require("themery").setup({
			themes = { "gruvbox", "catppuccin" },
			themeConfigFile = "~/.config/nvim/lua/config/plugins/colorscheme.lua",
			livePreview = true, -- Apply theme while browsing. Default to true.
		})
	end,
}
