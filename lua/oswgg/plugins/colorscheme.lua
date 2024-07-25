return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("tokyonight").setup({
			style = "storm",
			transparent = false,
			terminal_colors = true,
			styles = {
				sidebars = "transparent",
				floats = "transparent",
			},

			on_colors = function() end,
			on_highlights = function(highlights, colors) end,
		})

		vim.cmd([[colorscheme tokyonight]])
	end,
}
