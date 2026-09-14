-- lazy.nvim
return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    dashboard = {
      sections = {
        {
          section = "terminal",
          cmd = "chafa ~/Downloads/IMG_2298.jpg --symbols all --view-size 200x20; sleep .1",
          height = 20,
          padding = 1,
        },
        {
          pane = 2,
          { section = "keys", gap = 1, padding = 1 },
          { section = "startup" },
        },
      },
    },
    explorer = {
      -- your explorer configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    picker = {
      sources = {
        explorer = {
          -- your explorer picker configuration comes here
          -- or leave it empty to use the default settings
          exclude = {
            "*.meta",
          },
        },
      },
    },
  },
}
