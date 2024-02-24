local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>ff", function()
	builtin.find_files({ hidden = true })
end, {})

require('telescope').setup({
	defaults = {
		mappings = {
			n = {
				["q"] = require("telescope.actions").close,
			}
		}
	},
})
