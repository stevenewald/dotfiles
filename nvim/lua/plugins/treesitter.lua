local M = {
  "nvim-treesitter/nvim-treesitter",
  event = "BufReadPost",
  dependencies = {
    {
      "nvim-tree/nvim-web-devicons",
      event = "VeryLazy",
    },
  },
}
config = function(_, opts)
  local treesitter = require "nvim-treesitter"
  local configs = require "nvim-treesitter.configs"

  configs.setup {
    cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
    ensure_installed = { "lua", "markdown", "markdown_inline", "bash", "python", "cpp", "cmake", "regex", "go", "rust" },
    ignore_install = { "" },                                                       
    sync_install = false,                                                         

    highlight = {
      enable = true,       
      disable = { "css" }, 
    },
    autopairs = {
      enable = true,
    },
    indent = { enable = true, disable = { "css" } },

    context_commentstring = {
      enable = true,
      enable_autocmd = false,
    },
  }
end

return M
