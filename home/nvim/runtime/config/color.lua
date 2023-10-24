require('rose-pine').setup({
	variant = 'auto',
	dark_variant = 'main',
})

vim.cmd('set termguicolors')
vim.cmd('colorscheme miasma')

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
