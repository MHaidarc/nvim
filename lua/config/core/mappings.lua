-- general remaps

local keymap = vim.keymap

keymap.set("n", "<C-n>", vim.cmd.Explore, { desc = "show file explorer" })

keymap.set("n", "ç", ":")
keymap.set("n", "Ç", ":")

keymap.set("n", "<leader>sp", vim.cmd.sp, { desc = "Split a window horizontally" })
keymap.set("n", "<leader>sv", vim.cmd.vs, { desc = "Split a window vertically" })

keymap.set("n", "U", "<C-r>", { noremap = true })

keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

keymap.set("n", "<leader>fm", function()
	vim.lsp.buf.format({
		filter = function(client)
			return client.name == "null-ls"
		end,
	})
end)


keymap.set("x", "<leader>p", [["_dP]])

keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "J", "mzJ`z")
keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- telescope.nvim remaps

local builtin = require("telescope.builtin")

keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope find words" })
keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope find buffers" })
keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "telescope show recent files" })
keymap.set("n", "<leader>fs", builtin.grep_string, { desc = "Telescope grep string" })
keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope show help tags" })
keymap.set("n", "<C-f>", builtin.git_files, { desc = "Telescope show help tags" })

-- undotree remaps

keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "Toggle undotree" })

-- vim-fugitive remaps

keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "Show Git status" })

-- nvim-dap remaps

keymap.set("n", "<leader>db", vim.cmd.DapToggleBreakpoint, { desc = "Add breakpoint to a line" })
keymap.set("n", "<leader>dr", vim.cmd.DapContinue, { desc = "Start or continue the debugger" })
keymap.set("n", "<leader>dpr", function()
	require("dap-python").test_method()
end, { desc = "Start or continue the python debugger" })

-- crates.nvim remaps

keymap.set("n", "<leader>rcu", function()
	require("crates").upgrade_all_crates()
end, { desc = "update crates" })
