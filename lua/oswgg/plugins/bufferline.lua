return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	config = function()
		require("bufferline").setup({
			options = {
				mode = "tabs",
				diagnostics = "nvim_lsp",
				diagnostics_indicator = function(count, level, diagnostics_dict, context)
					local icon = level:match("error") and " " or " "
					return " " .. icon .. count
				end,
				offsets = {
					{
						filetype = "NvimTree",
						text = "🚀 File Explorer",
						text_align = "left",
						background = "#1C1E2C",
					},
				},
			},
			highlights = {
				background = { bg = "#1F2335" },
			},
		})
	end,
}
