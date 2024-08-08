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
				floats = "transparent",
			},

			on_colors = function() end,
			on_highlights = function(highlights, colors)
				-- cambia los colores del bufferline aquí
				highlights.bufferlinefill = { bg = "#1c1e2c" }
				highlights.bufferlinebackground = { bg = "#1c1e2c" }
				highlights.bufferlinebufferselected = { bg = "#1f2335" }
				highlights.treesittercontext = { bg = "#1f2335" }
			end,
		})

		vim.cmd([[colorscheme tokyonight-storm]])
	end,
}
