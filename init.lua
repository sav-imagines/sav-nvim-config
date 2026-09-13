-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- allow CTRL-backspace in Insert mode
vim.api.nvim_set_keymap("i", "<C-H>", "<C-W>", { noremap = true })

vim.cmd("set spelllang=nl,en")
