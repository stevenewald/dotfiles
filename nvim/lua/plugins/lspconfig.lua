local M = {
	"neovim/nvim-lspconfig",
	dependencies = {
		{ "williamboman/mason.nvim", config = true },
		{ "hrsh7th/nvim-cmp" },
		{ "hrsh7th/cmp-nvim-lsp" },
	},
	event = { "BufReadPost", "BufNewFile" },
	config = function()
		local lspconfig = require("lspconfig")
		local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol
			.make_client_capabilities());
		capabilities.textDocument.completion.completionItem.snippetSupport = true

		local servers = {
			"lua_ls",
			"pyright",
			"clangd"
		}

		local on_attach = function()
			vim.diagnostic.config({
				signs = false
			})
			local bufopts = { noremap = true, silent = true, buffer = 0 }
			vim.keymap.set("n", "fm", function()
				vim.lsp.buf.format({ async = true })
			end, bufopts)
		end

		-- setup servers
		for _, lsp in pairs(servers) do
			lspconfig[lsp].setup({
				capabilities = capabilities,
				on_attach = on_attach,
				settings = {
					Lua = {
						diagnostics = {
							globals = { 'vim' }
						}
					},
				},
			})
		end
	end
}
return M
