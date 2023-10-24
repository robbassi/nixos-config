local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set('n', '<leader>hh', ui.toggle_quick_menu)
vim.keymap.set('n', '<leader>hx', mark.add_file)
