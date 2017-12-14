" plugins
call plug#begin()
  Plug 'tpope/vim-sensible'
  Plug 'tpope/vim-sleuth'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'tpope/vim-fugitive'
  Plug 'fatih/vim-go'
  Plug 'ntpeters/vim-better-whitespace'
  Plug 'majutsushi/tagbar'
  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'
  Plug 'vim-syntastic/syntastic'
call plug#end()

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'simple'
let g:airline_left_sep = ''
let g:airline_right_sep = ''


" key bindings
let mapleader = "\<Space>"

nnoremap <Leader>` :edit $MYVIMRC<CR>

nnoremap <Leader>f :Files<CR>
nnoremap <Leader>g :GitFiles<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>h :History<CR>
nnoremap <Leader>l :BLines<CR>
nnoremap <Leader>d :Lines<CR>
nnoremap <Leader>r :BTags<CR>
nnoremap <Leader>t :Tags<CR>

nnoremap <Leader>z :TagbarToggle<CR>

nnoremap <Leader>w :bprevious<CR>
nnoremap <Leader>e :bnext<CR>
nnoremap <Leader>q :bp <BAR> bd #<CR>

nnoremap <Leader>p :!plc %<CR>

nnoremap <Leader>s :SyntasticCheck<CR>

nnoremap j gj
nnoremap k gk

" fzf
" use Ag for file listing
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" vim-go
" Disable automatic gofmt
let g:go_fmt_autosave = 0

" tagbar for go
let g:tagbar_type_go = {
  \ 'ctagstype' : 'go',
  \ 'kinds'     : [
  \ 'p:package',
  \ 'i:imports:1',
  \ 'c:constants',
  \ 'v:variables',
  \ 't:types',
  \ 'n:interfaces',
  \ 'w:fields',
  \ 'e:embedded',
  \ 'm:methods',
  \ 'r:constructor',
  \ 'f:functions'
  \ ],
  \ 'sro' : '.',
  \ 'kind2scope' : {
  \ 't' : 'ctype',
  \ 'n' : 'ntype'
  \ },
  \ 'scope2kind' : {
  \ 'ctype' : 't',
  \ 'ntype' : 'n'
  \ },
  \ 'ctagsbin'  : 'gotags',
  \ 'ctagsargs' : '-sort -silent'
  \ }

" Misc
set hidden
set nu
set autoindent
set noswapfile
set mouse=a

set cursorcolumn
set cursorline

" built-in TeX indentation is bad
au BufRead,BufNewFile *.tex setlocal ai nocin nosi inde=

" Extra stuff for when the indentation plugin gets confused
:command -nargs=1 Soft set tabstop=<args> softtabstop=<args> shiftwidth=<args> expandtab
:command -nargs=1 Hard set tabstop=<args> softtabstop=<args> shiftwidth=<args> noexpandtab

" JSX on .js files
let g:jsx_ext_required = 0

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" passive mode since Syntastic is pretty slow
let g:syntastic_mode_map = { 'mode': 'passive' }
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 0
" let g:syntastic_check_on_wq = 0
" use eslint for javascript
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_go_checkers = ['go', 'golint', 'errcheck']
