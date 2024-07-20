return {
	"nvim-treesitter/nvim-treesitter-context",
	build = ":TSUpdate",
	config = function()
		local configs = require("treesitter-context")

		configs.setup({
			ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html" },
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
			max_lines = 2,
		})
	end,
}
