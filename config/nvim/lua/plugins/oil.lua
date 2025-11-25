-- return {
--   'stevearc/oil.nvim',
--   opts = {},
--   dependencies = { { "nvim-mini/mini.icons", opts = {} } },
--   -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
--   -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
--   lazy = false,
-- }
return {
    'nvim-tree/nvim-tree.lua',
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("nvim-tree").setup{}
    end,
}
