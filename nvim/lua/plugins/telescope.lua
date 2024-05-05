M = {
	"nvim-telescope/telescope.nvim",
	cmd = { "Telescope" },
	dependencies = {
		"nvim-lua/plenary.nvim"
	}
}


M.opts = {
	defaults = {
		prompt_prefix = "   ",
		path_display = { "smart" },
		file_ignore_patterns = { ".git/", "node_modules", "build/" },
		vimgrep_arguments = {
			"rg",
			"-L",
			"--color=never",
			"--no-heading",
			"--with-filename",
			"--line-number",
			"--column",
			"--smart-case",
		},
		selection_caret = "  ",
		sorting_strategy = "ascending",
		layout_strategy = "horizontal",
		entry_prefix = "  ",
		-- mappings = {
		-- 	n = { ["q"] = require("telescope.actions").close },
		-- },
		layout_config = {
			horizontal = {
				prompt_position = "top",
				preview_width = 0.55,
				results_width = 0.8,
			},
			vertical = {
				mirror = false,
			},
			width = 0.87,
			height = 0.80,
			preview_cutoff = 120,
		},
		color_devicons = true,
		set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,



	},
	extensions_list = { "themes", "terms" },

}
vim.api.nvim_create_autocmd("BufWinEnter", {
	pattern = "*",
	callback = function()
		if vim.fn.line('$') == 1 and vim.fn.getline(1) == "" and #vim.api.nvim_list_bufs() == 1 then
			vim.defer_fn(function()
				require('telescope.builtin').find_files()
			end, 5)
		end
	end
})
return M
