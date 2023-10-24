-- Modules
local modules = require("modules")
local search = require("search")

-- Mappings

-- Write buffer
vim.keymap.set('n', '<C-s>', ':w<CR>')

-- Close current window
vim.keymap.set('n', '<leader>wq', ':bd!<CR>')

-- Search for word under cursor
vim.keymap.set('n', '<leader>lw', search.word_under_cursor)

-- Search for word (prompt)
vim.keymap.set('n', '<leader>sw', search.input_word)

-- Navigate up/down the quickfix list
vim.keymap.set('n', '<C-j>', ':cnext<CR>')
vim.keymap.set('n', '<C-k>', ':cprev<CR>')

-- Close the quickfix window
vim.keymap.set('n', '<leader>qq', ':cclose<CR>')

