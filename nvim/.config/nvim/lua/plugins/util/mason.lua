M = {
	"williamboman/mason.nvim",
	cmd = { "Mason", "MasonInstall", "MasonInstallAll", "MasonUninstall", "MasonUninstallAll", "MasonLog" },
	dependencies = {
		{
			"williamboman/mason-lspconfig.nvim",
		},
	},
	config = function(_, opts)
		require("mason").setup(opts)
		require("mason-lspconfig").setup {
			ensure_installed = { "pyright", "lua_ls", "cmake", "dockerls", "pylsp", "bashls", "gopls", "clangd", "rust_analyzer" },
			automatic_installation = true,
		}

		-- custom nvchad cmd to install all mason binaries listed
		vim.api.nvim_create_user_command("MasonInstallAll", function()
			vim.cmd("MasonInstall " .. table.concat(opts.ensure_installed, " "))
		end, {})

		vim.g.mason_binaries_list = opts.ensure_installed
	end,
}
return M
