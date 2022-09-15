let g:edge_enable_italic = 1

let g:sonokai_style = 'shusia'
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

" set guifont=JetBrainsMono\ Nerd\ Font\ Mono:h10
"
