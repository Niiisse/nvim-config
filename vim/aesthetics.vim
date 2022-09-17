let g:edge_enable_italic = 1

" Enable shusia variant for laptop's LCD
if hostname() == 'vivodebian'
  if exists('g:neovide')
    " let g:sonokai_style = 'shusia'
    set guifont=JetBrainsMono\ Nerd\ Font\ Mono:h7.5
  endif
endif

if hostname() == 'arch-desktop'
  set guifont=JetBrainsMono\ Nerd\ Font\ Mono:h10
endif

let g:sonokai_enable_italic=1

colorscheme sonokai

"Match coc-floating bg color to bg
highlight CocFloating ctermbg=bg

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'

