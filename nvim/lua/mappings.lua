local keymap = vim.keymap.set
local opts = { silent = true }

keymap("i", "jj", "<Esc>", opts)

-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>fg", ":Telescope live_grep<CR>", opts)

-- Relative line numbers
function ToggleLineNumbers()
    local absolute = vim.wo.number
    local relative = vim.wo.relativenumber

    if absolute then
        vim.wo.number = false
        vim.wo.relativenumber = true
    elseif relative then
        vim.wo.relativenumber = false
        vim.wo.number = true
    end
end
vim.wo.number = false
vim.wo.relativenumber = true
keymap("n", "rn", ":lua ToggleLineNumbers()<CR>", opts)
keymap("n", "<Esc>", ":noh<CR><Esc>", opts)

-- Pane nav
keymap("n", '<C-h>', '<C-w>h', opts)
keymap("n", '<C-j>', '<C-w>j', opts)
keymap("n", '<C-k>', '<C-w>k', opts)
keymap("n", '<C-l>', '<C-w>l', opts)
keymap("n", '<tab>', ':bn<CR>', opts)
keymap("n", '<S-tab>', ':bp<CR>', opts)
keymap("n", '<leader>x', ':bd<CR>', opts)

-- Nvim tree
keymap("n", "<C-n>", ":NvimTreeToggle<CR>", opts)
