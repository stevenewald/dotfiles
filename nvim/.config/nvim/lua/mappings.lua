local keymap = vim.keymap.set
local opts = { silent = true }

keymap("i", "jj", "<Esc>", opts)

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
keymap("n", "<C-n>", "<Cmd>NvimTreeToggle<CR>", opts)
keymap("n", "<leader>e", "<Cmd>NvimTreeFindFile<CR><Cmd>NvimTreeFocus<CR>", opts)

-- Tabs
keymap("n", "<Tab>", "<Cmd>BufferNext<CR>", opts)
keymap("n", "<S-Tab>", "<Cmd>BufferPrevious<CR>", opts)

keymap("n", "<leader>x", [[:lua require('helpers/buffer_close').confirm_buffer_close()<CR>]], opts)
