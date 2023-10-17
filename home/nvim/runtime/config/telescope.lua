require('telescope.builtin')

vim.keymap.set('n', '<C-f>', ':Telescope find_files<CR>')
vim.keymap.set('n', '<C-g>', ':Telescope live_grep<CR>')
vim.keymap.set('n', '<C-b>', ':Telescope buffers<CR>')
