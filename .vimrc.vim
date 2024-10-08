let mapleader=" "

set nu
set relativenumber

set scrolloff=8
set showmode
set showcmd
set visualbell
set clipboard+=unnamedplus


set ignorecase
set smartcase
set incsearch
set hlsearch


" Map to clear the highlighting
nnoremap <leader>/ :noh<CR>

augroup highlight_yank

    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank({higroup="IncSearch", timeout=700})
augroup END

