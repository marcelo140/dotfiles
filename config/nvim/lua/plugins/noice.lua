return {
    "folke/noice.nvim",
    
    options = {},
    
    event = "VeryLazy",
    
    dependencies = {
        "MunifTanjim/nui.nvim",
        "rcarriga/nvim-notify",
    },

    config = function()
        local function get_hl_bg(group)
            local hl = vim.api.nvim_get_hl(0, { name = group, link = false })
            if hl and hl.bg then
                return string.format("#%06x", hl.bg)
            end
            return "#000000" -- Fallback if group has no background
        end

        require("notify").setup({
            background_colour = get_hl_bg("Normal"),
        })

        require("noice").setup({
            lsp = {
                override = {
                    ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                    ["vim.lsp.util.stylize_markdown"] = true,
                    ["cmp.entry.get_documentation"] = true,
                },
            },
        })
    end
}
