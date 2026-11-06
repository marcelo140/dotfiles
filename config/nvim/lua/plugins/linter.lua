return {
  "mfussenegger/nvim-lint",

  event = { "BufReadPre", "BufNewFile" },

  dependencies = {
    "williamboman/mason.nvim",
    "rshkarin/mason-nvim-lint",
  },

  config = function()
      local lint = require("lint")
      require("mason-nvim-lint").setup({
          -- golangci-lint is managed via Homebrew instead of Mason to avoid
          -- two separate installs silently drifting out of sync (Mason's copy
          -- got stuck on an old, buggy version while `brew upgrade` moved on).
          ignore_install = { "golangcilint" },
      })

      lint.linters_by_ft = {
          go = { "golangcilint" } 
      }

      local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
    
      vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
          group = lint_augroup,
          callback = function()
              lint.try_lint()
          end,
      })
  end,
}
