-- general remaps

local keymap = vim.keymap

keymap.set("n", ";", ":")
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

-- ZenMode remaps

keymap.set("n", "<leader>zm", vim.cmd.ZenMode, { desc = "Toggle Zen Mode" })

-- bufferline remaps

keymap.set("n", "<leader>n", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>x", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

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
