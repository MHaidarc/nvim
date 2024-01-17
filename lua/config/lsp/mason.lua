return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"nvimtools/none-ls.nvim",
		"jay-babu/mason-null-ls.nvim",
		"neovim/nvim-lspconfig",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_null_ls = require("mason-null-ls")

		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			ensure_installed = {
				"clangd",
				"lua_ls",
				"rust_analyzer",
				"pyright",
			},
			automatic_installation = true,
		})
		mason_null_ls.setup({
			ensure_installed = {
				"stylua",
				"clang_format",
				"mypy",
				"ruff",
				"black",
				"debugpy",
			},
		})
	end,
}
