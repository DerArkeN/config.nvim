return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		require("telescope").setup({})

		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>sf", builtin.find_files, {})
		vim.keymap.set("n", "<leader>sg", builtin.live_grep, {})
		vim.keymap.set("n", "<leader>sd", builtin.diagnostics)
		vim.keymap.set("n", "<leader><leader>", builtin.buffers, {})
		vim.keymap.set("n", "<leader>sn", function()
			builtin.find_files({ cwd = vim.fn.stdpath("config") })
		end)
	end,
}
