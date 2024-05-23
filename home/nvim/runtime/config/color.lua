-- require('rose-pine').setup({
-- 	variant = 'auto',
-- 	dark_variant = 'main',
-- })

vim.cmd('set termguicolors')
-- vim.cmd('colorscheme miasma')
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

vim.cmd([[
  set background=dark
  hi clear

  if exists('syntax on')
      syntax reset
  endif

  let g:colors_name='Untitled'
  set t_Co=256

  " misc

  hi ColorColumn      guisp=NONE guifg=NONE guibg=#333333 ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi Conceal          guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi Cursor           guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi lCursor          guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi CursorIM         guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi CursorColumn     guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi CursorLine       guisp=NONE guifg=NONE guibg=#333333 ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi Directory        guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi DiffAdd          guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi DiffChange       guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi DiffDelete       guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi DiffText         guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi EndOfBuffer      guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi ErrorMsg         guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi VertSplit        guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi Folded           guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi FoldColumn       guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi SignColumn       guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi IncSearch        guisp=NONE guifg=#ffffff guibg=#ff3344 ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi LineNr           guisp=NONE guifg=#bbbbbb guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi LineNrAbove      guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi LineNrBelow      guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi CursorLineNr     guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi MatchParen       guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=bold cterm=NONE
  hi ModeMsg          guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi MoreMsg          guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi NonText          guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi Pmenu            guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi PmenuSel         guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi PmenuSbar        guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi PmenuThumb       guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi Question         guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi QuickFixLine     guisp=NONE guifg=#ffffff guibg=#333333 ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi Search           guisp=NONE guifg=#ffffff guibg=#2244ff ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi SpecialKey       guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi SpellBad         guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi SpellCap         guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi SpellLocal       guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi SpellRare        guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi StatusLine       guisp=NONE guifg=#010101 guibg=#ffffff ctermfg=231 ctermbg=234 gui=bold cterm=NONE
  hi StatusLineNC     guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi StatusLineTerm   guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi StatusLineTermNC guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi TabLine          guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi TabLineFill      guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi TabLineSel       guisp=NONE guifg=#010101 guibg=#ffffff ctermfg=231 ctermbg=234 gui=bold cterm=NONE
  hi Terminal         guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi Title            guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi Visual           guisp=NONE guifg=NONE guibg=#333333 ctermfg=233 ctermbg=234 gui=NONE cterm=NONE
  hi VisualNOS        guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi WarningMsg       guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi WildMenu         guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE

  " major

  hi Normal     guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi Comment    guisp=NONE guifg=#666666 guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi Constant   guisp=NONE guifg=#33ff99 guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi Identifier guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi Statement  guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi PreProc    guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi Type       guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=bold cterm=NONE
  hi Special    guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=bold cterm=NONE
  hi Underlined guisp=NONE guifg=NONE guibg=NONE ctermfg=231 ctermbg=234 gui=underline cterm=NONE
  hi Ignore     guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi Error      guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi Todo       guisp=NONE guifg=#000000 guibg=#ffffff ctermfg=231 ctermbg=234 gui=bold cterm=NONE

  " minor

  hi String         guisp=NONE guifg=#33ff99 guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi Character      guisp=NONE guifg=#33ff99 guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi Number         guisp=NONE guifg=#33ff99 guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi Boolean        guisp=NONE guifg=#33ff99 guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi Float          guisp=NONE guifg=#33ff99 guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi Function       guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi Conditional    guisp=NONE guifg=#bbbbbb guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi Repeat         guisp=NONE guifg=#bbbbbb guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi Label          guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi Operator       guisp=NONE guifg=#bbbbbb guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi Keyword        guisp=NONE guifg=#bbbbbb guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi Exception      guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi Include        guisp=NONE guifg=#bbbbbb guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi Define         guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi Macro          guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi PreCondit      guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi StorageClass   guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi Structure      guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi Typedef        guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi SpecialChar    guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi Tag            guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi Delimiter      guisp=NONE guifg=#bbbbbb guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi SpecialComment guisp=NONE guifg=#bbbbbb guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
  hi Debug          guisp=NONE guifg=#bbbbbb guibg=NONE ctermfg=231 ctermbg=234 gui=NONE cterm=NONE
]])
