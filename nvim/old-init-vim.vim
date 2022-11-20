set number
" set relativenumber
set mouse=a
syntax on
set showcmd
set encoding=utf-8
set showmatch
set sw=2
set ruler

call plug#begin('~/vim/plugged')

" NERDTree
Plug 'preservim/nerdtree'

" tmux
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'

" Themes
Plug 'https://github.com/ellisonleao/gruvbox.nvim'
Plug 'nvim-tree/nvim-web-devicons'

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Airline
Plug 'vim-airline/vim-airline'

" FZF
" Plug 'vijaymarupudi/nvim-fzf'

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

" typing
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'


" Plugins for JS - TS
Plug 'HerringtonDarkholme/yats.vim'
Plug 'pangloss/vim-javascript'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'styled-components/vim-styled-components'
Plug 'elzr/vim-json'
Plug 'jparise/vim-graphql'

" LSP Config
Plug 'neovim/nvim-lspconfig' " Configuration for Nvim LSP
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" snippets para javascript
Plug 'SirVer/ultisnips'

"Comments
Plug 'tpope/vim-commentary'

" Indent Line
Plug 'lukas-reineke/indent-blankline.nvim'

call plug#end()

" Plugins Configs
so ~/.config/nvim/plugins-configs.vim

" GRUVBOX config
set background=dark
colorscheme gruvbox

" LSP config
lua << EOF
require'lspconfig'.tsserver.setup{}
EOF

" Indent Lines Config
lua << EOF
require'indent_blankline'.setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
}
EOF

" NERDTree maps
" map nerdtree to the ctrl+n
function MyNerdToggle()
    if &filetype == 'nerdtree' || exists("g:NERDTree") && g:NERDTree.IsOpen()
        :NERDTreeToggle
    else
        :NERDTreeFind
    endif
endfunction

nnoremap <C-b> :call MyNerdToggle()<CR>

" ============ TELESCOPE CONFIG ===========
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fw <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
