-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- set clang as default C compiler
-- this is no longer allowed?
-- require("nvim-treesitter.install").compilers = { "clang", "gcc" }

-- register GLSL file types
vim.treesitter.language.register("glsl", "vsh")
vim.treesitter.language.register("glsl", "fsh")

-- allow CTRL-backspace in Insert mode
vim.api.nvim_set_keymap("i", "<C-H>", "<C-W>", { noremap = true })

vim.cmd("set spelllang=nl,en")
