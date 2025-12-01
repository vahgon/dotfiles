return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
        "                                                 ",
        " ██╗   ██╗ █████╗ ██╗  ██╗██╗   ██╗██╗███╗   ███╗",
        " ██║   ██║██╔══██╗██║  ██║██║   ██║██║████╗ ████║",
        " ██║   ██║███████║███████║██║   ██║██║██╔████╔██║",
        " ╚██╗ ██╔╝██╔══██║██╔══██║╚██╗ ██╔╝██║██║╚██╔╝██║",
        "  ╚████╔╝ ██║  ██║██║  ██║ ╚████╔╝ ██║██║ ╚═╝ ██║",
        "   ╚═══╝  ╚═╝  ╚═╝╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝",
        "                                                 ",
    }

    dashboard.section.buttons.val = {
      dashboard.button("e", "  New File", "<cmd>ene<CR>"),
      dashboard.button("SPC tf", "󰈞  Find file", "<cmd>Telescope find_files<CR>"),
      dashboard.button("SPC tg", "󰈬  Find word", "<cmd>Telescope live_grep<CR>"),
    }

    alpha.setup(dashboard.opts)
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])

  end,
}
