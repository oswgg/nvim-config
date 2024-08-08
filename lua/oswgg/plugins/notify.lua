return {
	"rcarriga/nvim-notify",
	config = function()
		require("notify").setup({
			background_color = "#1B1B23",
			timeout = 5000,
			max_height = 5,
			max_width = 50,
			render = "compact",
			stages = "static",
		})
	end,
}
