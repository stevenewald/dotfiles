local M = {
	"romgrk/barbar.nvim",
	dependencies = {
		'lewis6991/gitsigns.nvim',
		'nvim-tree/nvim-web-devicons',
	},
	event = "BufEnter *.*",
	config = function()
		require("barbar").setup({
			animation = false,
			clickable = false,
			focus_on_close = "previous",
		})
	end,
}
return M
