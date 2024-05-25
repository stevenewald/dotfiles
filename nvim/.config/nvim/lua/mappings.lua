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

-- -- Pane nav
-- keymap("n", '<C-h>', '<C-w>h', opts)
-- keymap("n", '<C-j>', '<C-w>j', opts)
-- keymap("n", '<C-k>', '<C-w>k', opts)
-- keymap("n", '<C-l>', '<C-w>l', opts)

-- Nvim tree
keymap("n", "<C-n>", ":NvimTreeToggle<CR>", opts)
keymap("n", "<leader>e", "<Cmd>NvimTreeFocus<CR>", opts)

-- Tabs
keymap("n", "<Tab>", "<Cmd>BufferNext<CR>", opts)
keymap("n", "<S-Tab>", "<Cmd>BufferPrevious<CR>", opts)
keymap("n", "<leader>x", "<Cmd>BufferClose<CR>", opts)

-- Tmux
-- vim.g.tmux_navigator_no_mappings = 1
-- keymap("n", "<C-h>", "<Cmd>TmuxNavigateLeft<CR>", opts)
-- keymap("n", "<C-j>", "<Cmd>TmuxNavigateDown<CR>", opts)
-- keymap("n", "<C-k>", "<Cmd>TmuxNavigateUp<CR>", opts)
-- keymap("n", "<C-l>", "<Cmd>TmuxNavigateRight<CR>", opts)
-- keymap("n", "", "<C-U>TmuxNavigatePrevious<cr>", opts)

-- Copilot
