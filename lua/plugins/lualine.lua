return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      -- remove separator from second to last element
      local list = opts.sections.lualine_y
      -- #list grabs the length of list, so final element index
      list[#list].separator = { right = nil }

      -- insert word count element
      table.insert(opts.sections.lualine_y, {
        function()
          return vim.fn.wordcount().words
        end,
        separator = { left = "" },
      })
    end,
  },
}
