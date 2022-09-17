" Telescope
nnoremap <leader><space> <cmd>Telescope find_files<CR>
nnoremap <leader>fg <cmd>Telescope live_grep<CR>
nnoremap <leader>bb <cmd>Telescope buffers<CR>
nnoremap <leader>bf <cmd>Telescope current_buffer_fuzzy_find<CR>
nnoremap <leader>fR <cmd>Telescope lsp_references<CR>
nnoremap <leader>fD <cmd>Telescope diagnostics<CR>
nnoremap <leader>gD <cmd>Telescope lsp_definitions<CR>
nnoremap <leader>ft <cmd>Telescope treesitter<CR>
nnoremap <leader>fb <cmd>Telescope file_browser path=%:p:h<CR>
nnoremap <leader>fp <cmd>Telescope project<CR>
nnoremap <leader>cp <cmd>Telescope command_palette<CR>
nnoremap <leader>ff :Telescope file_browser<CR>

" LspSaga
" nnoremap <silent> <leader>d :Lspsaga hover_doc<CR>
" nnoremap <silent> <leader>fr <Cmd>Lspsaga lsp_finder<CR>
" nnoremap <silent><leader>ca :Lspsaga code_action<CR>
" vnoremap <silent> <leader>ca :<C-U>Lspsaga range_code_action<CR>
nnoremap <silent> <leader>tg <Cmd>FloatermNew lazygit<CR>
" nnoremap <silent> gd <Cmd>Lspsaga preview_definition<CR>
" nnoremap <silent> <leader>r :Lspsaga rename<CR>
" nnoremap <silent> <leader>D :Lspsaga show_cursor_diagnostics<CR>
" nnoremap <silent> ]d :Lspsaga diagnostic_jump_next<CR>
" " nnoremap <silent> [d :Lspsaga diagnostic_jump_prev<CR>
nnoremap <silent> <leader>tt :FloatermToggle<CR>
" tnoremap <silent> <A-d> <C-\><C-n>:Lspsaga close_floaterm<CR>

" Window management - alt + arrow switching
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

nmap <silent> <A-k> :wincmd k<CR>
nmap <silent> <A-j> :wincmd j<CR>
nmap <silent> <A-h> :wincmd h<CR>
nmap <silent> <A-l> :wincmd l<CR>

" map control-w to leader w
nnoremap <silent> <leader>w <C-w>

" Exit terminal mode with <esc>
:tnoremap <leader><Esc> <C-\><C-n>

" window management
nmap <silent> <A-<left>> :lua require'nvim-tmux-navigation'.NvimTmuxNavigateLeft()<cr>
nmap <silent> <A-<down>> :lua require'nvim-tmux-navigation'.NvimTmuxNavigateDown()<cr>
nmap <silent> <A-<up>> :lua require'nvim-tmux-navigation'.NvimTmuxNavigateUp()<cr>
nmap <silent> <A-<right>> :lua require'nvim-tmux-navigation'.NvimTmuxNavigateRight()<cr>

nmap <silent> <A-h> :lua require'nvim-tmux-navigation'.NvimTmuxNavigateLeft()<cr>
nmap <silent> <A-j> :lua require'nvim-tmux-navigation'.NvimTmuxNavigateDown()<cr>
nmap <silent> <A-k> :lua require'nvim-tmux-navigation'.NvimTmuxNavigateUp()<cr>
nmap <silent> <A-l> :lua require'nvim-tmux-navigation'.NvimTmuxNavigateRight()<cr>
nnoremap <silent> <A-\> :lua require'nvim-tmux-navigation'.NvimTmuxNavigateLastActive()<cr>
nnoremap <silent> <A-Space> :lua require'nvim-tmux-navigation'.NvimTmuxNavigateNext()<cr>

" Tabs
nnoremap <leader>wt :tabnew<CR>
nnoremap <leader>te :term<CR>
nnoremap <leader>h :tabprevious<CR>
nnoremap <leader>l :tabnext<CR>

" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt

" Settings shortcut
nnoremap <leader>s :Telescope file_browser path=~/.config/nvim<CR>

" Nvimtree
nnoremap <leader>e :NvimTreeToggle<CR>

" Format code
nnoremap <leader>fc :Autoformat<CR>

" Show Outline
nnoremap <leader>o :SymbolsOutline<CR>

" COC
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> <leader>gd <Plug>(coc-definition)
nmap <silent> <leader>gy <Plug>(coc-type-definition)
nmap <silent> <leader>gi <Plug>(coc-implementation)
nmap <silent> <leader>gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>r  <Plug>(coc-rename)

" Formatting selected code.
" xmap <leader>fc  <Plug>(coc-format-selected)
" nmap <leader>fc  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
" nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
" nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
" nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
" nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
" nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
" nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
" nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
