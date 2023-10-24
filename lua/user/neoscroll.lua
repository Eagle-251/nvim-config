return {
	{
		"karb94/neoscroll.nvim",
		name = "neoscroll",
		event = "VeryLazy",
		config = function()
			require("neoscroll").setup()
		end,
	},
}
