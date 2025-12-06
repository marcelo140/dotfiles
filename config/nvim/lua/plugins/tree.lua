return {
    'nvim-tree/nvim-tree.lua',

    lazy = false,

    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },


    config = function()
        require("nvim-tree").setup{}

        vim.keymap.set("n", "<C-i>", function()
            require("nvim-tree.api").tree.toggle()
        end, { desc = "Toggle nvim-tree" })

        vim.keymap.set("n", "<leader>i", function()
            require("nvim-tree.api").tree.find_file({open = true})
        end, { desc = "Toggle nvim-tree" })
    end,
}
