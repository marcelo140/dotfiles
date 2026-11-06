require("config/set")
require("config/remap")

-- Register before lazy/Mason can attach LSP clients or open Markdown buffers.
vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("virtual-buffer-lsp-guard", { clear = true }),
	callback = function(args)
		local name = vim.api.nvim_buf_get_name(args.buf)
		if name:match("^diffview://") or name:match("^fugitive://") then
			vim.lsp.buf_detach_client(args.buf, args.data.client_id)
		end
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	group = vim.api.nvim_create_augroup("markdown-treesitter-workaround", { clear = true }),
	pattern = "markdown",
	callback = function(args)
		vim.treesitter.stop(args.buf)
		vim.bo[args.buf].syntax = "markdown"
	end,
})

require("config/lazy")
