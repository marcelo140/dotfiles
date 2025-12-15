return {
    "rachartier/tiny-code-action.nvim",
    dependencies = {
        {"nvim-lua/plenary.nvim"},
    },
    event = "LspAttach",
    opts = {},
    config = function()
        vim.keymap.set({ "n", "x" }, "<C-w><C-e>", function()
            require("tiny-code-action").code_action()
        end, { noremap = true, silent = true })
    end
}
