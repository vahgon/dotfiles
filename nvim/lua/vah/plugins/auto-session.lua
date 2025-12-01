return {
  "rmagatti/auto-session",
  config = function()
    local auto_session = require("auto-session")
    
    auto_session.setup({
      auto_restore_enabled = false,
    })

    local keymap = vim.keymap

    keymap.set("n", "<leader>sr", "<cmd>SessionRestore<CR>", { desc = "Restore session at ./" })
    keymap.set("n", "<leader>ss", "<cmd>SessionSave<CR>", { desc = "Save session" })

  end,
}
