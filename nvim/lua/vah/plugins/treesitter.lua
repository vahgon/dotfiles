return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",

  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function() 
    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup({
      highlight = {
        enable = true,
      },
      indent = { enable = true, },

      ensure_installed = {
        "json",
        "c",
        "javascript",
        "dockerfile",
        "gitignore",
        "lua",
        "bash",
        "css",
        "html",
        "cpp",
        "make",
        "scss",
        "sql",
        "python",
      },
    })
  end,
}
