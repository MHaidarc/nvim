return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "mocha", -- latte, frappe, macchiato, mocha
				background = { -- :h background
					light = "latte",
					dark = "mocha",
				},
				transparent_background = true, -- disables setting the background color.
				show_end_of_buffer = true, -- shows the '~' characters after the end of buffers
				term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
				integrations = {
					cmp = true,
					gitsigns = true,
					nvimtree = true,
					treesitter = true,
					mason = true,
					alpha = true,
					dap = true,
					dap_ui = true,
					native_lsp = {
						enabled = true,
						virtual_text = {
							errors = { "italic" },
							hints = { "italic" },
							warnings = { "italic" },
							information = { "italic" },
						},
					},
					telescope = {
						enabled = true,
						-- style = "nvchad"
					},
					notify = false,
					mini = {
						enabled = true,
						indentscope_color = "",
					},
					-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
				},
			})
			-- setup must be called before loading
			--		vim.cmd.colorscheme("catppuccin")
			-- Themery block
-- This block will be replaced by Themery.
vim.cmd("colorscheme gruvbox")
vim.g.theme_id = 1
-- end themery block
		end,
	},
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = true,
	},
}
