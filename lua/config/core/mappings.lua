-- general remaps

local keymap = vim.keymap

keymap.set("n", ";", ":")
keymap.set("n", "ç", ":")
keymap.set("n", "Ç", ":")

keymap.set("n", "<leader>sp", vim.cmd.sp, { desc = "Split a window horizontally" })
keymap.set("n", "<leader>sv", vim.cmd.vs, { desc = "Split a window vertically" })

keymap.set("n", "U", "<C-r>", { noremap = true })

-- telescope.nvim remaps

local builtin = require("telescope.builtin")

keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope find words" })
keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope find buffers" })
keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "telescope show recent files" })
keymap.set("n", "<leader>fs", builtin.grep_string, { desc = "Telescope grep string" })
keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope show help tags" })

-- undotree remaps

keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "Toggle undotree" })

-- vim-fugitive remaps

keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "Show Git status" })

-- nvim-tree remaps

keymap.set("n", "<C-n>", vim.cmd.NvimTreeToggle, { desc = "Toggle file explorer" })

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

-- themery remaps

keymap.set("n", "<leader>th", vim.cmd.Themery, { desc = "Change Themes" })
