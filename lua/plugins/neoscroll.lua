return {
	"karb94/neoscroll.nvim",
	opts = {},
	config = function()
		require("neoscroll").setup({
			hide_cursor = true,
			easing = "quadratic",
			duration_multiplier = 0.5,
		})
	end,
}
