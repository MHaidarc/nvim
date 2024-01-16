return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	dependencies = { "nvim-treesitter/nvim-web-devicons" },
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			[[                                                                       ]],
			[[  ██████   █████                   █████   █████  ███                  ]],
			[[ ░░██████ ░░███                   ░░███   ░░███  ░░░                   ]],
			[[  ░███░███ ░███   ██████   ██████  ░███    ░███  ████  █████████████   ]],
			[[  ░███░░███░███  ███░░███ ███░░███ ░███    ░███ ░░███ ░░███░░███░░███  ]],
			[[  ░███ ░░██████ ░███████ ░███ ░███ ░░███   ███   ░███  ░███ ░███ ░███  ]],
			[[  ░███  ░░█████ ░███░░░  ░███ ░███  ░░░█████░    ░███  ░███ ░███ ░███  ]],
			[[  █████  ░░█████░░██████ ░░██████     ░░███      █████ █████░███ █████ ]],
			[[ ░░░░░    ░░░░░  ░░░░░░   ░░░░░░       ░░░      ░░░░░ ░░░░░ ░░░ ░░░░░  ]],
			[[                                                                       ]],
		}
		dashboard.section.buttons.val = {
			dashboard.button("e", "  -> Novo Arquivo", "<cmd>ene<CR>"),
			dashboard.button("<C-n>", "  -> Explorador de Arquivos", "<cmd>NvimTreeToggle<CR>"),
			dashboard.button("SPC ff", "󰱼 -> Encontrar Arquivo", "<cmd>Telescope find_files<CR>"),
			dashboard.button("SPC fg", "  -> Encontrar Palavra", "<cmd>Telescope live_grep<CR>"),
			dashboard.button("SPC fr", "󰙰 -> Arquivos Recentes", "<cmd>Telescope oldfiles<CR>"),
			dashboard.button("SPC gs", "󰊢 -> Git Status", "<cmd>Git<CR>"),
			dashboard.button("q", " -> Sair do NVIM", "<cmd>qa<CR>"),
			dashboard.button("SPC fh", " -> Ajuda", "<cmd>Telescope help_tags<CR>"),
		}

		-- Send config to alpha
		alpha.setup(dashboard.opts)

		-- Disable folding on alpha buffer
		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
	end,
}
