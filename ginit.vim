" Enable Mouse
set mouse=a

" Set Editor Font
GuiFont JetBrains Mono:h11

" Disable GUI Tabline
if exists(':GuiTabline')
    GuiTabline 0
endif

" Disable GUI Popupmenu
if exists(':GuiPopupmenu')
    GuiPopupmenu 0
endif

" Enable GUI ScrollBar
if exists(':GuiScrollBar')
    GuiScrollBar 0
endif

if exists(':GuiRenderLigatures')
    GuiRenderLigatures 1
endif

" Right Click Context Menu (Copy-Cut-Paste)
nnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>
inoremap <silent><RightMouse> <Esc>:call GuiShowContextMenu()<CR>
xnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>gv
snoremap <silent><RightMouse> <C-G>:call GuiShowContextMenu()<CR>gv

(when (and (boolean? vim.g.neovide) (= vim.g.neovide true))
  (g! neovide_remember_window_size true)
  (if (= vim.fn.getcwd "/")
      (vim.api.nvim_set_current_dir "~")))
