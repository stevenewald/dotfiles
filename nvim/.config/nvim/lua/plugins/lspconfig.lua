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
			"tsserver",
			"pyright",
		}

		local on_attach = function()
			vim.diagnostic.config({
				signs = false
			})
			local bufopts = { noremap = true, silent = true, buffer = 0 }
			vim.keymap.set("n", "f", function()
				vim.lsp.buf.format({ async = true })
			end, bufopts)
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
			vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
			vim.keymap.set("n", "<space>df", vim.diagnostic.goto_next, bufopts)
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

		lspconfig.clangd.setup({
			cmd = {
				"clangd",
				"--background-index",
				"-j=12",
				"--clang-tidy",
				"--clang-tidy-checks=*",
				"--suggest-missing-includes",
				"--all-scopes-completion",
				"--cross-file-rename",
				"--completion-style=detailed",
				"--header-insertion-decorators",
				"--header-insertion=iwyu",
				"--pch-storage=memory",
			},
			capabilities = capabilities,
			on_attach = on_attach,
			init_options = {
				clangdFileStatus = true,
				usePlaceholders = true,
				completeUnimported = true,
				semanticHighlighting = true,
			},
			settings = {
				clangd = {
					checkUpdates = true,
					completion = {
						enableSnippets = true,
					},
					diagnostic = {
						clangTidy = {
							enabled = true,
						},
					},
				},
			},
		})
	end
}
return M
