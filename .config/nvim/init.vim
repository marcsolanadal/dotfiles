" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

Plug 'chriskempson/base16-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'editorconfig/editorconfig-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

let base16colorspace=256
colorscheme base16-circus
"if exists('$BASE16_THEME')
"    \ && (!exists('g:colors_name') 
"    \ || g:colors_name != 'base16-$BASE16_THEME')
"  let base16colorspace=256
"  colorscheme base16-$BASE16_THEME
"endif

syntax on
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent
set termguicolors
set number relativenumber
set laststatus=2

set backupdir=/tmp//
set directory=/tmp//
set undodir=/tmp//

let mapleader = ","
nnoremap <leader>ve :e $MYVIMRC<CR>
nnoremap <leader>vr :source $MYVIMRC<CR>
nnoremap <leader>be :e ~/.bashrc<CR>
nnoremap <leader>te :e ~/.tmux.conf<CR>
nnoremap <C-Tab> :tabn<CR>
nnoremap <C-S-Tab> :tabp<CR>
 
" FZF
nmap <C-P> :FZF<CR>
