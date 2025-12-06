return {
	'tpope/vim-fugitive',

    dependencies = {
        'shumphrey/fugitive-gitlab.vim'
    },

	config = function()
		vim.keymap.set("n", "<leader>ps", vim.cmd.Git)
        vim.g.fugitive_gitlab_domains = { "https://gitlab.com", "https://gitlab.cfdata.org/" }
	end
}

