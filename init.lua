require("oswgg.core")
require("oswgg.lazy")

-- Copiar la ruta completa del archivo actual al portapapeles
function CopyFilePath()
	vim.fn.setreg("+", vim.fn.expand("%:p"))
	print("File path copied to clipboard: " .. vim.fn.expand("%:p"))
end

-- Copiar la ruta relativa del archivo actual al portapapeles
function CopyRelativeFilePath()
	vim.fn.setreg("+", vim.fn.expand("%"))
	print("Relative file path copied to clipboard: " .. vim.fn.expand("%"))
end

--- Asigna la función a una combinación de teclas, por ejemplo, <leader>y
vim.api.nvim_set_keymap(
	"n",
	"<leader>ya",
	":lua CopyRelativeFilePath()<CR>",
	{ noremap = true, silent = true, desc = "Copy relative file path" }
)

vim.api.nvim_set_keymap(
	"n",
	"<leader>yy",
	":lua CopyFilePath()<CR>",
	{ noremap = true, silent = true, desc = "Copy full file path" }
)

-- Copiar el nombre del archivo actual al portapapeles
function CopyFileName()
	vim.fn.setreg("+", vim.fn.expand("%:t"))
	print("File name copied to clipboard: " .. vim.fn.expand("%:t"))
end

-- Asigna la función a una combinación de teclas, por ejemplo, <leader>n
vim.api.nvim_set_keymap(
	"n",
	"<leader>yu",
	":lua CopyFileName()<CR>",
	{ noremap = true, silent = true, desc = "Copy file name" }
)
vim.cmd([[hi NvimTreeNormal guibg=NONE ctermbg=NONE]])
