require("user.plugins")

vim.cmd[[silent! colorscheme deus]]
require("user.core.highlighting")
require("user.plugins.setups")

require("user.lsp")
require("user.core.keymaps").non_buf()
