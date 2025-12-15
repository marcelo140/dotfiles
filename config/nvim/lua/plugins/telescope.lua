return {
	'nvim-telescope/telescope.nvim',

	dependencies = {
		'nvim-lua/plenary.nvim',
        -- 'nvim-telescope/telescope-ui-select.nvim',
	},

	config = function()
		require('telescope').setup({})
        -- require("telescope").load_extension("ui-select")

		local builtin = require('telescope.builtin')

		vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
		vim.keymap.set('n', '<leader>vs', builtin.search_history, {})
		vim.keymap.set('n', '<leader>vc', builtin.command_history, {})
		vim.keymap.set('n', '<leader>vo', builtin.oldfiles, {})

		vim.keymap.set('n', '<leader>gg', builtin.live_grep, {})
		vim.keymap.set('n', '<leader>gs', builtin.grep_string, {})
		vim.keymap.set('n', '<leader>gb', builtin.git_branches, {})

		vim.keymap.set('n', '<C-p>', builtin.git_files, {})
		vim.keymap.set('n', '<C-b>', builtin.buffers, {})
        vim.keymap.set("n", "gd", builtin.lsp_definitions, { noremap = true, silent = true })

        vim.keymap.set("n", "<leader>lr", builtin.lsp_references, { noremap = true, silent = true })
        vim.keymap.set("n", "<leader>li", builtin.lsp_implementations, { noremap = true, silent = true })
        vim.keymap.set("n", "<leader>lt", builtin.treesitter, { noremap = true, silent = true })
        vim.keymap.set("n", "<leader>le", builtin.diagnostics, { noremap = true, silent = true })
        vim.keymap.set("n", "<leader>lq", builtin.quickfix, { noremap = true, silent = true })
	end
}
