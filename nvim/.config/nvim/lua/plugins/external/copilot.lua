M = {
	"git@github.com:github/copilot.vim.git",
	cmd = { "Copilot" },
	keys = { "<C-x>" },
	config = function()
		vim.keymap.set('i', '<C-x>', 'copilot#Accept("\\<CR>")', {
			expr = true,
			replace_keycodes = false,
			silent = true
		})
		vim.g.copilot_no_tab_map = true
	end
}
return M
