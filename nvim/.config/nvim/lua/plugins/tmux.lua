M = {
  "christoomey/vim-tmux-navigator",
  cmd = {
    "TmuxNavigateLeft",
    "TmuxNavigateDown",
    "TmuxNavigateUp",
    "TmuxNavigateRight",
    "TmuxNavigatePrevious",
  },
  keys = {
    { "<c-h>", "<Cmd>TmuxNavigateLeft<CR>" },
    { "<c-j>", "<Cmd>TmuxNavigateDown<CR>" },
    { "<c-k>", "<Cmd>TmuxNavigateUp<CR>" },
    { "<c-l>", "<Cmd>TmuxNavigateRight<CR>" },
    { "<c-\\>", "<Cmd>TmuxNavigatePrevious<CR>" },
  },
}
return M
