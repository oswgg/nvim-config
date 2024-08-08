vim.api.nvim_set_keymap(
	"n",
	"<leader>rk",
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
	":lua require('kulala').set_selected_env('prod')<CR>",
	{ noremap = true, silent = true, desc = "Select PROD env" }
)

vim.api.nvim_set_keymap(
	"n",
	"<leader>nk",
	":lua require('kulala').jump_prev('dev')<CR>",
	{ noremap = true, silent = true, desc = "Jumps to previous request" }
)

vim.api.nvim_set_keymap(
	"n",
	"<leader>nj",
	":lua require('kulala').jump_next('dev')<CR>",
	{ noremap = true, silent = true, desc = "Jumps to next request" }
)
