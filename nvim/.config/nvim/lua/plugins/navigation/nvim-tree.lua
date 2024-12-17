M = {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup { update_cwd = true, }
	end,
	lazy = false
}

-- vim.api.nvim_create_autocmd("BufWinEnter", {
-- 	pattern = "*",
-- 	callback = function()
-- 		if vim.fn.line('$') == 1 and vim.fn.getline(1) == "" and #vim.api.nvim_list_bufs() == 1 then
-- 			-- vim.defer_fn(function()
-- 				require('nvim-tree.api').tree.toggle()
-- 			-- end, 5)
-- 		end
-- 	end
-- })

return M
