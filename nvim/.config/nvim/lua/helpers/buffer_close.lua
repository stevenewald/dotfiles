local M = {}

function M.confirm_buffer_close()
	-- Check if the buffer is modified
	if vim.bo.modified then
		-- Ask for confirmation
		print("Buffer is unsaved, save before exit? (y/n): ")
		local choice = vim.fn.getchar()
		local char = vim.fn.nr2char(choice)
		if char == 'y' or char == 'Y' then
			vim.cmd(':w!')
		else
			vim.cmd('bd!')
		end
	else
		-- Close the buffer without confirmation
		vim.cmd('bd')
	end
end

return M
