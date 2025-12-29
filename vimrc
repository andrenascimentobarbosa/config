syntax on
set number
set tabstop=4        
set shiftwidth=4    
set expandtab      
set autoindent    
set smartindent  
set splitright
set splitbelow
set relativenumber
set showmatch
set mouse=a
filetype on
filetype plugin on
filetype indent on
set foldmethod=syntax
set foldlevelstart=99 
set hlsearch         
set incsearch       
set clipboard=unnamedplus
set nocompatible
highlight String ctermfg=green
nnoremap <leader>j 10j
nnoremap <leader>k 10k
nnoremap <leader>h 10h
nnoremap <leader>l 10l
highlight LineNr ctermfg=gray guifg=#666666
function! ToggleNumberMode()
    if &relativenumber
        set norelativenumber number
    else
        set relativenumber number
    endif
endfunction
inoremap <Esc> <C-[>








