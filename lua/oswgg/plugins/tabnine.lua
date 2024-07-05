return {
	"codota/tabnine-nvim",
	build = "./dl_binaries.sh",
	config = function()
		local tabnine = require("tabnine")

		tabnine.setup({
			disable_auto_comment = true,
			accept_keymap = "<Tab>",
			dismiss_keymap = "<C-]",
			debounce_ms = 800,
			suggestion_color = { gui = "#808080", cterm = 244 },
			exclude_filetypes = { "TelescopePrompt", "Nvimtree" },
			log_file_path = nil,
		})
	end,
}
