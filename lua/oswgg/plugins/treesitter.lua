return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	dependendies = {
		"windwp/nvim-ts-autotag",
	},
	config = function()
		local treesitter = require("nvim-treesitter.configs")

		treesitter.setup({
			highlight = {
				enable = true,
			},

			indent = { enable = true },

			autotag = { enable = true },

			ensure_installed = {
				"lua",
				"http",
				"graphql",
				"json",
				"javascript",
				"typescript",
				"tsx",
				"html",
				"css",
				"prisma",
				"markdown",
				"svelte",
				"bash",
				"lua",
				"vim",
				"gitignore",
				"query",
				"cpp",
				"php",
				"python",
				"scss",
				"toml",
				"xml",
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-space>",
					node_incremental = "<C-space>",
					scope_incremental = false,
					node_decremental = "<bs>",
				},
			},
		})
	end,
}
