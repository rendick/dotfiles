set number
set relativenumber
set clipboard+=unnamedplus

call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/MeanderingProgrammer/markdown.nvim'
call plug#end()

inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#confirm() : "\<Tab>"
nnoremap <Space>q :Ex<CR>
nnoremap <Space>s :w!<CR>
nnoremap <Space>[ :q!<CR>
