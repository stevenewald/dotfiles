local keymap = vim.keymap.set
local opts = { silent = true }

-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>fg", ":Telescope live_grep<CR>", opts)

-- Relative line numbers
function ToggleLineNumbers()
	local relative = vim.wo.relativenumber

	if relative then
		vim.wo.relativenumber = false
		vim.wo.number = true
	else
		vim.wo.number = true
		vim.wo.relativenumber = true
	end
end

vim.opt.number = true
vim.opt.relativenumber = true
keymap("n", "rn", ":lua ToggleLineNumbers()<CR>", opts)
keymap("n", "<Esc>", ":noh<CR><Esc>", opts)

-- Nvim tree
if (vim.g.use_colemak) then
	keymap("n", "<C-m>", "<Cmd>NvimTreeToggle<CR>", opts)
	keymap("i", "jj", "<Esc>", opts)
	keymap("n", "<C-f>", "<Cmd>BufferNext<CR>", opts)
else
	keymap("n", "<C-n>", "<Cmd>NvimTreeToggle<CR>", opts)
	keymap("i", "nn", "<Esc>", opts)
	keymap("n", "<C-e>", "<Cmd>BufferNext<CR>", opts)
end
keymap("n", "<leader>e", "<Cmd>NvimTreeFindFile<CR><Cmd>NvimTreeFocus<CR>", opts)

-- Tabs
keymap("n", "<C-q>", "<Cmd>BufferPrevious<CR>", opts)

keymap("n", "<leader>x", [[:lua require('helpers/buffer_close').confirm_buffer_close()<CR>]], opts)
