-- add this to your lua/plugins.lua, lua/plugins/init.lua,  or the file you keep your other plugins:
return {
	event = { "BufReadPre", "BufNewFile" },
	"numToStr/Comment.nvim",
	config = function()
		require("Comment").setup()
	end,
}
