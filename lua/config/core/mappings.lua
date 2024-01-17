-- general remaps

local keymap = vim.keymap

keymap.set("n", "ç", ":")
keymap.set("n", "Ç", ":")
keymap.set("n", ";", ":")
keymap.set("n", "<leader>sp", vim.cmd.sp)
keymap.set("n", "<leader>sv", vim.cmd.vs)

-- telescope.nvim remaps

local builtin = require("telescope.builtin")

keymap.set("n", "<leader>ff", builtin.find_files, {})
keymap.set("n", "<leader>fg", builtin.live_grep, {})
keymap.set("n", "<leader>fb", builtin.buffers, {})
keymap.set("n", "<leader>fr", builtin.oldfiles, {})
keymap.set("n", "<leader>fs", builtin.grep_string, {})
keymap.set("n", "<leader>fh", builtin.help_tags, {})

-- undotree remaps

keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- vim-fugitive remaps

keymap.set("n", "<leader>gs", vim.cmd.Git)

-- nvim-tree remaps

keymap.set("n", "<C-n>", vim.cmd.NvimTreeToggle)

-- ZenMode remaps

keymap.set("n", "<leader>zm", vim.cmd.ZenMode)

-- bufferline remaps

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
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
