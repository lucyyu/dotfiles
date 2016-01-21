" plugins
call plug#begin()
	Plug 'tpope/vim-sensible'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
	Plug 'junegunn/fzf.vim'
	Plug 'tpope/vim-fugitive'
	Plug 'fatih/vim-go'
	Plug 'ntpeters/vim-better-whitespace'
call plug#end()

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'simple'
let g:airline_left_sep = ''
let g:airline_right_sep = ''


" key bindings
let mapleader = ","
nnoremap <Leader>` :edit $MYVIMRC<CR> 
nnoremap <Leader>f :Files<CR>
nnoremap <Leader>g :GitFiles<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>h :History<CR>
nnoremap <Leader>l :BLines<CR>
nnoremap <Leader>d :Lines<CR>
nnoremap <Leader>r :BTags<CR>
nnoremap <Leader>t :Tags<CR>
nnoremap <Leader>w :bprevious<CR>
nnoremap <Leader>e :bnext<CR>
nnoremap <Leader>q :bp <BAR> bd #<CR>
nnoremap <Leader>p :!plc %<CR>

" vim-go
" automatic go fmt is quite annoying 
let g:go_fmt_autosave = 0

" misc
set hidden
set nu
set autoindent
