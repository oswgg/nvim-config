return {
	"chrisgrieser/nvim-scissors",
	dependencies = { "nvim-telescope/telescope.nvim", "garymjr/nvim-snippets" },
	opts = {
		snippetDir = "/Users/oswgg/.config/nvim/snippets",
	},
	config = function()
		local keymap = vim.keymap
		require("luasnip.loaders.from_vscode").lazy_load({
			paths = { "/Users/oswgg/.config/nvim/snippets" },
		})

		keymap.set("n", "<leader>se", function()
			require("scissors").editSnippet()
		end)

		-- when used in visual mode, prefills the selection as snippet body
		keymap.set({ "n", "x" }, "<leader>sa", function()
			require("scissors").addNewSnippet()
		end)

		require("scissors").setup({
			snippetDir = vim.fn.stdpath("config") .. "/snippets",
			editSnippetPopup = {
				height = 0.4, -- relative to the editor, number between 0 and 1
				width = 0.6,
				border = "rounded",
				keymaps = {
					cancel = "q",
					saveChanges = "<CR>", -- alternatively, can also use `:w`
					goBackToSearch = "<BS>",
					deleteSnippet = "<C-BS>",
					duplicateSnippet = "<C-d>",
					openInFile = "<C-o>",
					insertNextPlaceholder = "<C-p>", -- insert & normal mode
				},
			},
			backdrop = {
				enabled = true,
				blend = 50, -- between 0-100
			},
			telescope = {
				-- By default, the query only searches snippet prefixes. Set this to
				-- `true` to also search the body of the snippets.
				alsoSearchSnippetBody = false,
			},
			-- `none` writes as a minified json file using `vim.encode.json`.
			-- `yq`/`jq` ensure formatted & sorted json files, which is relevant when
			-- you version control your snippets.
			jsonFormatter = "none", -- "yq"|"jq"|"none"
		})
	end,
}
