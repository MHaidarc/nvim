-- general remaps

vim.keymap.set("n", "ç", ":")
vim.keymap.set("n", "Ç", ":")
vim.keymap.set("n", ";", ":")




-- telescope.nvim remaps

local builtin = require("telescope.builtin")

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fr', builtin.oldfiles, {})
vim.keymap.set('n', '<leader>fs', builtin.grep_string, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- undotree remaps

vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- vim-fugitive remaps

vim.keymap.set("n", "<leader>gs", vim.cmd.Git);

-- nvim-tree remaps

vim.keymap.set("n", "<C-n>", vim.cmd.NvimTreeToggle)

-- ZenMode remaps

vim.keymap.set("n", "<leader>zm", vim.cmd.ZenMode)
