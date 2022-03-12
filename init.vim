
"  ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗
"  ████╗  ██║ ██╔════╝██╔═══█ ╗ ██║   ██║ ██║ ████╗ ████║
"  ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████ ██║
"  ██║╚██ ██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔ ██║
"  ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║
"  ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝
"

call plug#begin('~/AppData/Local/nvim/plugged')

Plug 'dracula/vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Plug 'scrooloose/nerdtree'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" nvim-tree and bufferline
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'
Plug 'akinsho/bufferline.nvim'

"Tree-sister
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
"whichkey-config
Plug 'folke/which-key.nvim'

"auto-pais
Plug 'jiangmiao/auto-pairs'

"Coc-Nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Nvim-cmp 
"Plug 'neovim/nvim-lspconfig'
"Plug 'hrsh7th/cmp-nvim-lsp'
"Plug 'hrsh7th/nvim-cmp'
"Plug 'hrsh7th/vim-vsnip'
"Plug 'hrsh7th/cmp-buffer'
"Plug 'hrsh7th/cmp-vsnip'

"Gitsigns-nvim
"Plug 'nvim-lua/plenary.nvim'
"Plug 'lewis6991/gitsigns.nvim'

"Dashboard-nvim
Plug 'glepnir/dashboard-nvim'

"Vim-snippets
Plug 'honza/vim-snippets'

"enmet-vim
Plug 'mattn/emmet-vim'

"Indent-Blankline
Plug 'lukas-reineke/indent-blankline.nvim'

"Plug 'airblade/vim-gitgutter'

"Toggle-Term
Plug 'akinsho/toggleterm.nvim'

"Lspsaga-nvim
"Plug 'neovim/nvim-lspconfig'
"Plug 'glepnir/lspsaga.nvim'

"Plug 'jose-elias-alvarez/null-ls.nvim'

"Zenmode-nvim
Plug 'folke/zen-mode.nvim'

"Plug 'rcarriga/nvim-notify'


call plug#end()

"============================================================
"lsp config
lua require('nvimtree')
lua require('buffer-line')
lua require('telescope-config')
lua require('options')
lua require('treesister')
lua require('whichkey-config')
lua require('keybindings')
"lua require('cmp-config')
"lua require('gitsigns-config')
lua require('dashboard')
"lua require('indent_blankline-config')
lua require('toggleterm-config')
"lua require('lspsaga')
"lua require('null-ls-config') 
"lua require('notify-config')
"=============================================================
colorscheme dracula

let g:airline#extensions#tabline#enabled = 1

let g:airline_powerline_fonts = 1

let g:coc_global_extensions=[ 'coc-omnisharp', 'coc-html', 'coc-css' ]

let mapleader=' '

set termguicolors

set statusline+=%{get(b:,'gitsigns_status','')}

nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>

"let g:coc_snippet_prev = '<S-Tab>'

"==================================================
"config nvim-tree
let g:nvim_tree_indent_markers = 0 
let g:nvim_tree_git_hl = 1 
let g:nvim_tree_highlight_opened_files = 1 
let g:nvim_tree_root_folder_modifier = ':~' 
let g:nvim_tree_add_trailing = 1 
let g:nvim_tree_group_empty = 1 
let g:nvim_tree_icon_padding = ' ' 
let g:nvim_tree_symlink_arrow = ' >> ' 
let g:nvim_tree_respect_buf_cwd = 1 
let g:nvim_tree_create_in_closed_folder = 1 
let g:nvim_tree_auto_close = 1
let g:nvim_tree_auto_open = 1
let g:nvim_tree_special_files = { 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1 } 
let g:nvim_tree_show_icons = {
    \ 'git': 1,
    \ 'folders': 1,
    \ 'files': 1,
    \ 'folder_arrows': 1,
    \ }

let g:nvim_tree_icons = {
    \ 'default': '',
    \ 'symlink': '',
    \ 'git': {
    \   'unstaged': "✗",
    \   'staged': "✓",
    \   'unmerged': "",
    \   'renamed': "➜",
    \   'untracked': "★",
    \   'deleted': "",
    \   'ignored': "◌"
    \   },
    \ 'folder': {
    \   'arrow_open': "",
    \   'arrow_closed': "",
    \   'default': "",
    \   'open': "",
    \   'empty': "",
    \   'empty_open': "",
    \   'symlink': "",
    \   'symlink_open': "",
    \   }
    \ }

"Mapping-Coc
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') -1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction 

"Dashboard
let g:dashboard_custom_header = [
\' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
\' ████╗  ██║ ██╔════╝██╔═══█╗  ██║   ██║ ██║ ████╗ ████║',
\' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
\' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
\' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
\' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
\]

"Coc-highlight
autocmd CursorHold * silent call CocActionAsync('highlight')

"highlight CursorLine ctermfg=black ctermbg=Yellow cterm=bold guifg=black guibg=#66DEFF gui=bold
"highlight Cursor guifg=white guibg=black

"=======================================================================
"Indent-Blankline
lua << EOF
vim.opt.termguicolors = true
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]
vim.opt.list = true
vim.opt.listchars:append("space:⋅")
vim.opt.listchars:append("eol:↴")

require("indent_blankline").setup {
    filetype_exclude = {"dashboard", "NvimTree", "coc-explorer"},
    space_char_blankline = " ",
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
        "IndentBlanklineIndent3",
        "IndentBlanklineIndent4",
        "IndentBlanklineIndent5",
        "IndentBlanklineIndent6",
    },
}
EOF
 let g:indent_blankline_char_list = [ '', '', '', '', '', '' ]
"=========================================================


let g:gitgutter_enabled = 1
let g:gitgutter_map_keys = 0
highlight GitGutterAdd guifg=#009900 ctermbg=Green
highlight GitGutterChange guifg=#bbbb00 ctermbg=Yellow
highlight GikGutterDelete guifg=#ff2222 ctermbg=Red


lua << EOF
  require("zen-mode").setup {
     window = {
    backdrop = 0.95,
    width = 120,
    height = 1,
    options = {signcolumn = "no", number = false, cursorline = false}
  },
  plugins = {
    options = {enabled = true, ruler = false, showcmd = false},
    twilight = {enabled = true},
    gitsigns = {enabled = false},
    tmux = {enabled = false}
  }
  }
EOF


nmap <space>ed <Cmd>CocCommand explorer<CR>
nmap <space>ef <Cmd>CocCommand explorer --preset floating<CR>
nmap <space>ec <Cmd>CocCommand explorer --preset cocConfig<CR>
nmap <space>eb <Cmd>CocCommand explorer --preset buffer<CR>
nmap <space>el <Cmd>CocList explPresets<CR>
autocmd BufEnter * if (winnr("$") == 1 && &filetype ==  'coc-explorer') | q | endif

let g:markdown_fenced_languages = [
      \ 'vim',
      \ 'help',
      \ 'css',
      \ 'html',
      \ 'javascript',
      \ 'csharp'
      \]


