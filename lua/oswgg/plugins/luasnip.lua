return {
	"L3MON4D3/LuaSnip",
	version = "v2.*",
	build = "make install_jsregexp",
	config = function()
		local luasnip = require("luasnip")
		local cmp = require("cmp")

		local keymap = vim.keymap

		keymap.set({ "i" }, "<C-k>", function()
			luasnip.expand()
		end, { silent = true })
		keymap.set({ "i", "s" }, "<C-l>", function()
			luasnip.jump(1)
		end, { silent = true })
		keymap.set({ "i", "s" }, "<C-j>", function()
			luasnip.jump(-1)
		end, { silent = true })

		keymap.set({ "i", "s" }, "<C-e>", function()
			if luasnip.choice_active() then
				luasnip.change_choice(1)
			end
		end, { silent = true })
	end,
}
