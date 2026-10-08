return {
  "uga-rosa/ccc.nvim",
  opts = function()
    -- Enable true color
    vim.opt.termguicolors = true

    local ccc = require("ccc")
    local mapping = ccc.mapping

    -- see docs at https://github.com/uga-rosa/ccc.nvim/blob/main/doc/ccc.txt for config
    ccc.setup({
      inputs = {
        ccc.input.oklch,
        ccc.input.rgb,
        ccc.input.hsl,
        ccc.input.cmyk,
      },
      outputs = {
        ccc.output.hex,
        ccc.output.css_hsl,
        ccc.output.css_oklch,
      },
      highlighter = {
        auto_enable = false,
        lsp = false,
      },
    })
    local wk = require("which-key")
    wk.add({
      { "<leader>p", group = "picker", icon = "󰭍" },
      { "<leader>pc", "<cmd>CccPick<cr>", desc = "Pick color", icon = "󰴱" },
      { "<leader>pc", "<cmd>CccPick<cr>", desc = "Pick color", icon = " " },
    })
  end,
}
