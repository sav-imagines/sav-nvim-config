return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = function(_, _)
      local wk = require("which-key")
      wk.add({
        { "<leader>m", group = "music", icon = "🎵" },
        { "<leader>mp", "<cmd>Player play-pause<cr>", desc = "start/stop", icon = "⏯️" },
        { "<leader>mn", "<cmd>Player next<cr>", desc = "next", icon = "⏭️" },
        { "<leader>mN", "<cmd>Player previous<cr>", desc = "prev", icon = "⏮️" },

        {
          "<leader>t",
          callback = function()
            Snacks.terminal.toggle()
          end,
          group = "terminal",
          icon = " ",
        },
      })
    end,
  },
}
