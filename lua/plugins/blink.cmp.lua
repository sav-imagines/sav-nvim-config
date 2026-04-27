-- TODO: override the sources and remove some defaults that irk me
return {
  {
    "saghen/blink.cmp",
    opts = {
      completion = {
        keyword = {
          -- 'prefix' will fuzzy match on the text before the cursor
          -- 'full' will fuzzy match on the text before _and_ after the cursor
          -- example: 'foo_|_bar' will match 'foo_' for 'prefix' and 'foo__bar' for 'full'
          range = "full",
        },
      },
    },
  },
}
