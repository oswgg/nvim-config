return {
	"rmagatti/auto-session",
	config = function()
		local auto_session = require("auto-session")
		vim.notify = require("notify")

		auto_session.setup({
			auto_restore_enabled = false,
			auto_session_suppress_dirs = { "~/", "~/Dev/", "~/Downloads", "~/Documents", "~/Desktop/" },
		})

		local keymap = vim.keymap
		local get_folder_name = function()
			local cwd = vim.fn.getcwd()
			local folder_name = cwd:match("([^/]+)$")
			return folder_name .. "/"
		end

		keymap.set("n", "<leader>wr", function()
			vim.cmd("SessionRestore")
			vim.notify("Session restored for " .. get_folder_name(), vim.log.levels.INFO, { render = "compact" })
		end, { desc = "Restore session for cwd" }) -- restore last workspace session for current directory

		keymap.set("n", "<leader>ws", function()
			vim.cmd("SessionSave")
			vim.notify("Session saved for " .. get_folder_name(), vim.log.levels.INFO, { render = "compact" })
		end, { desc = "Save session for auto session root dir" }) -- save workspace session for current working directory

		keymap.set("n", "<leader>wd", function()
			vim.cmd("SessionDelete")
			vim.notify("Session deleted for " .. get_folder_name(), vim.log.levels.WARN, { render = "compact" })
		end, { desc = "Delete session for current working directory" })
	end,
}
