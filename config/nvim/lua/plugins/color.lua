return {
	{
		"rose-pine/neovim",

		name = "rose-pine",

		config = function()
			require('rose-pine').setup({ })
		end
	},
    {
        "folke/tokyonight.nvim"
    },
    {
        "ellisonleao/gruvbox.nvim",

        config = function()
            require("gruvbox").setup {}
            vim.cmd.colorscheme("gruvbox")
        end
    }
}

