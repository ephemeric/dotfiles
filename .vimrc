" Trigger FileType event, set syntax highlighting, options, etc.
filetype plugin indent on

syntax on

set hlsearch

" Clear highlighted search matches (:nohl).
noremap <silent> <c-_> :let @/ = ""<CR>

set backspace=indent,eol,start

" Do not clear screen: t_ti: put terminal into "termcap" mode, t_te: end of "termcap" mode.
set t_ti= t_te=

" xterm-256color.
let &t_Co=256

set ruler

set rulerformat=%60(%<%f%M\ %=%l\/%L,%c\ %P%)

" Sudoedit.
command W :execute ':silent w !sudo tee % > /dev/null' | :edit!

" Markdown.
nnoremap mt ciw`<C-r>"`<Esc>
nnoremap ms ciw'<C-r>"'<Esc>
nnoremap md ciw"<C-r>""<Esc>
nnoremap mi ciw_<C-r>"_<Esc>
nnoremap mb ciw**<C-r>"**<Esc>
vnoremap mt <Esc>`>a`<Esc>`<i`

" YAML.
autocmd FileType yaml setlocal ts=4 sts=4 sw=4 expandtab indentkeys-=0# indentkeys-=<:>

" Shell.
autocmd FileType sh setlocal ts=4 sts=4 sw=4 expandtab
