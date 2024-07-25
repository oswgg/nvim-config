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

vim.api.nvim_set_keymap(
	"n",
	"<leader>rep",
	":lua require('kulala').jump_prev('dev')<CR>",
	{ noremap = true, silent = true, desc = "Jumps to previous request" }
)

vim.api.nvim_set_keymap(
	"n",
	"<leader>ren",
	":lua require('kulala').jump_next('dev')<CR>",
	{ noremap = true, silent = true, desc = "Jumps to next request" }
)
