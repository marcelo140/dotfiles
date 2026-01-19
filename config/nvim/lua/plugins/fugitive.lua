return {
	'tpope/vim-fugitive',

    dependencies = {
        'shumphrey/fugitive-gitlab.vim',
        'sindrets/diffview.nvim'
    },

	config = function()
		vim.keymap.set("n", "<leader>ps", vim.cmd.Git)
        vim.g.fugitive_gitlab_domains = { "https://gitlab.com", "https://gitlab.cfdata.org/" }

        require("diffview").setup({
            enhanced_diff_hl = true, -- Better syntax highlighting for diffs
            use_icons = true,        -- Requires nvim-web-devicons
            icons = {
                folder_closed = "",
                folder_open = "",
            },
            view = {
                default = {
                    winbar_info = true,  -- Show rev info in the window bar
                },
            },
        })
	end
}

