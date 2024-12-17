local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "

require("lazy").setup({
	spec = {
		{ import = "plugins.lsp" },
		{ import = "plugins.util" },
		{ import = "plugins.visual" },
		{ import = "plugins.navigation" },
		{ import = "plugins.external" },
	},
	defaults = { lazy = true, version = false },
	ui = { wrap = "true" },
	change_detection = { enabled = true },
	checker = { enabled = false },
	performance = {
		rtp = {
			disabled_plugins = {
			},
		},
	},
})
