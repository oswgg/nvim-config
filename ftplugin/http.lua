vim.api.nvim_set_keymap(
	"n",
	"<leader>rr",
	":lua require('kulala').run()<CR>",
	{ noremap = true, silent = true, desc = "Run http request" }
)
vim.api.nvim_set_keymap(
	"n",
	"<leader>red",
	":lua require('kulala').set_selected_env('dev')<CR>",
	{ noremap = true, silent = true, desc = "Select DEV env" }
)
