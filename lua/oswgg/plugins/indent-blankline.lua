return {
	"lukas-reineke/indent-blankline.nvim",
	event = { "BufReadPre", "BufNewFile" },
	main = "ibl",
	config = function()
		local scope = "focus"
		local indent = "passive"

		local hooks = require("ibl.hooks")

		hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
			vim.api.nvim_set_hl(0, "focus", { fg = "#3B4261" })
			vim.api.nvim_set_hl(0, "passive", { fg = "#2D324A" })
		end)

		local ibl = require("ibl")

		ibl.setup({
			scope = { highlight = scope },
			indent = { highlight = indent },
		})
	end,
}
