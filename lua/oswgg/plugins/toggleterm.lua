return {
	{
		"akinsho/toggleterm.nvim",
		config = true,
		cmd = "ToggleTerm",
		keys = { { "TT", "<cmd>ToggleTerm<cr>", desc = "Toggle floating terminal" } },
		opts = {
			open_mapping = [[TT]],
			direction = "vertical",
			shade_filetypes = {},
			hide_numbers = true,
			insert_mappings = true,
			terminal_mappings = true,
			start_in_insert = true,
			close_on_exit = true,
			size = 100,
		},
	},
}
