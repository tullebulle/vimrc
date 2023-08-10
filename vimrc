set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

Plugin 'davidhalter/jedi-vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let g:jedi#completions_command = "<C-Space>"
let g:jedi#popup_on_dot = 0
let g:pymode_rope = 0
let g:jedi#show_call_signatures = 2
let g:jedi#use_tabs_not_buffers = 1
" >>>>> Searching

set incsearch         " search as characters are entered
set ignorecase        " Ignore case in searches by default
" ---------------------------------------------------------------

" Status Line Custom
hi statusline guifg=black guibg=#8fbfdc ctermfg=black ctermbg=cyan
let g:currentmode={
    \ 'n'  : 'Normal',
    \ 'no' : 'Normal·Operator Pending',
    \ 'v'  : 'Visual',
    \ 'V'  : 'V·Line',
    \ "\<C-v>" : 'V·Block',
    \ 's'  : 'Select',
    \ 'S'  : 'S·Line',
    \ "\<C-S>" : 'S·Block',
    \ 'i'  : 'Insert',
    \ 'R'  : 'Replace',
    \ 'Rv' : 'V·Replace',
    \ 'c'  : 'Command',
    \ 'cv' : 'Vim Ex',
    \ 'ce' : 'Ex',
    \ 'r'  : 'Prompt',
    \ 'rm' : 'More',
    \ 'r?' : 'Confirm',
    \ '!'  : 'Shell',
    \ 't'  : 'Terminal'
    \}

" status & commandline 
set laststatus=2
set noshowmode
set statusline=
set statusline+=%0*\ %{toupper(g:currentmode[mode()])}\  " The current mode

" div
set relativenumber
set number
set timeoutlen=1000
set ttimeoutlen=50
set hlsearch
set incsearch
set belloff=all
set tabstop=4
filetype indent on
set shiftwidth=4
syntax on 
let mapleader=","

"remaps
nnoremap <C-j> 10j
xnoremap <C-j> 10j
nnoremap <C-l> 10l
xnoremap <C-l> 10l
nnoremap <C-h> 10h
xnoremap <C-h> 10h
nnoremap <C-k> 10k
xnoremap <C-k> 10k

execute "set <M-j>=\ej"
execute "set <M-k>=\ek"
execute "set <M-l>=\el"
execute "set <M-h>=\eh"
nnoremap <M-j> 5j
xnoremap <M-j> 5j
nnoremap <M-l> 5l
xnoremap <M-l> 5l
nnoremap <M-h> 5h
xnoremap <M-h> 5h
nnoremap <M-k> 5k
xnoremap <M-k> 5k

nnoremap <CR> :w <Bar> !python "%"<CR>
nnoremap gm gM
augroup python
		" ---- Minimal configuration:
		set smartindent   " Do smart autoindenting when starting a new line
		set shiftwidth=4  " Set number of spaces per auto indentation
		set expandtab     " When using <Tab>, put spaces instead of a <tab> character
		" ---- Good to have for consistency
		" set tabstop=4   " Number of spaces that a <Tab> in the file counts for
		" set smarttab    " At <Tab> at beginning line inserts spaces set in shiftwidth
		" ---- Bonus for proving the setting
		" Displays '-' for trailing space, '>-' for tabs and '_' for non breakable space
augroup end
