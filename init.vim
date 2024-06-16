:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set clipboard+=unnamedplus
:set cursorline
:set background=dark
:set cc=80
:set ttyfast

call plug#begin()

Plug 'https://github.com/ap/vim-css-color'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'romgrk/barbar.nvim'
Plug 'lewis6991/gitsigns.nvim' 
Plug 'nvim-tree/nvim-web-devicons' 
Plug 'numToStr/Comment.nvim'
Plug 'https://github.com/AlessandroYorba/Alduin'
Plug 'windwp/nvim-autopairs'
Plug 'mbbill/undotree'

call plug#end()

lua require('Comment').setup()
lua require("nvim-autopairs").setup {}

colorscheme alduin

inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#confirm() : "\<Tab>"
nnoremap <Space>q :Ex<CR>
nnoremap <Space>s :w!<CR>
nnoremap <Space>[ :q!<CR>
nnoremap <F1> :UndotreeToggle<CR>
nnoremap <F12> :%!cargo fmt<CR>

autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')

nnoremap <silent>    <A-,> <Cmd>BufferPrevious<CR>
nnoremap <silent>    <A-.> <Cmd>BufferNext<CR>
nnoremap <silent>    <A-c> <Cmd>BufferClose<CR>

