-- If nvim called with directory as arg, cd to that directory

vim.cmd("autocmd VimEnter * let g:original_cwd = getcwd()")

vim.api.nvim_create_autocmd("BufEnter", {
	pattern = "*",
	callback = function()
		if vim.fn.isdirectory(vim.fn.expand("%:p")) == 1 then
			vim.cmd("cd " .. vim.fn.expand("%:p"))
		end
	end
})

-- cd back to original directory
vim.cmd("autocmd VimLeave * execute 'cd ' . g:original_cwd")
