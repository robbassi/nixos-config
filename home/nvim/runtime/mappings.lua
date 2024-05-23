-- Modules
local modules = require("modules")
local search = require("search")

-- Mappings

-- Write buffer
vim.keymap.set('n', '<C-s>', ':w<CR>')

-- Clear highlighted search
vim.keymap.set('n', '\\', ':nohls<CR>')

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

-- Toggle the colorcolumn
colorcolumn_tmp=''
vim.keymap.set('n', '<leader>cc', function ()
  if vim.o.colorcolumn ~= '' then
    colorcolumn_tmp = vim.o.colorcolumn
    vim.o.colorcolumn = ''
  else
    vim.o.colorcolumn = colorcolumn_tmp
  end
end)

-- Insert line above or below in insert mode
vim.keymap.set('i', '<C-o>', '<Esc>:normal o<CR>:startinsert<CR>')
vim.keymap.set('i', '<C-i>', '<Esc>:normal O<CR>:startinsert<CR>')


