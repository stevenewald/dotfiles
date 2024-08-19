local M = {}

function M.confirm_buffer_close()
  -- Check if the buffer is modified
  if vim.bo.modified then
    -- Ask for confirmation
	print("Buffer is unsaved, close anyway? (y/n): ")
    local choice = vim.fn.getchar()
	local char = vim.fn.nr2char(choice)
    if char == 'y' or char == 'Y' then
      vim.cmd('bd!')
    else
      print("Buffer close aborted.")
    end
  else
    -- Close the buffer without confirmation
    vim.cmd('bd')
  end
end

return M

