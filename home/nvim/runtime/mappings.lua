-- Modules
local modules = require("modules")
local search = require("search")

-- Mappings
vim.keymap.set('n', ';l', search.word_under_cursor)
vim.keymap.set('n', ';f', search.input_word)
vim.keymap.set('n', '<C-j>', ':cnext<CR>')
vim.keymap.set('n', '<C-k>', ':cprev<CR>')
