local telescope = require('telescope')
telescope.setup({
  defaults = {
    sorting_strategy = 'ascending',
    layout_strategy = 'center',
    layout_config = {
      center = {
        height = 0.2,
        preview_cutoff = 40,
        prompt_position = "top",
        width = 0.7
      },
    },
    color_devicons = false,
    preview = false
  }
})

local telescope_builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', telescope_builtin.find_files)
vim.keymap.set('n', '<leader>fg', telescope_builtin.live_grep)
vim.keymap.set('n', '<leader>fb', telescope_builtin.buffers)
vim.keymap.set('n', '<leader>ft', telescope_builtin.tags)
