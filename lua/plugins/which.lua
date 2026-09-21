return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = function(_, _)
      local wk = require("which-key")
      wk.add({
        { "<leader>m", group = "music", icon = "🎵" },
        { "<leader>ms", "<cmd>Player play-pause<cr>", desc = "start/stop", icon = "⏯️" },
        { "<leader>mp", "<cmd>Player previous<cr>", desc = "prev", icon = "⏮️" },
        { "<leader>mn", "<cmd>Player next<cr>", desc = "next", icon = "⏭️" },
      })
    end,
  },
}
