return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	config = function()
		require("bufferline").setup({
			options = {
				mode = "tabs",
				highlights = {
					background = {
						guibg = "NONE",
					},
					fill = {
						guibg = "NONE",
					},
					close_button = {
						guibg = "NONE",
					},
					separator_visible = {
						guibg = "NONE",
					},
					tab_close = {
						guibg = "NONE",
					},
				},
				diagnostics = "nvim_lsp",
				diagnostics_indicator = function(count, level, diagnostics_dict, context)
					local icon = level:match("error") and " " or " "
					return " " .. icon .. count
				end,
			},
		})
	end,
}
