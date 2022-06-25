syntax on

call plug#begin('~/.local/share/nvim/bundle')
  " Plugins

  Plug 'preservim/nerdtree'

  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'

  " Themes
  Plug 'flazz/vim-colorschemes'
  Plug 'morhetz/gruvbox'

  " Typescript Plugins
  Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
  Plug 'ianks/vim-tsx'
  Plug 'leafgarland/typescript-vim'

  " Prettier
  Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }

call plug#end()

" Key map for Nerd Tree \n, CTRL+n, CTRL+t, CTRL+f
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" enable airline theme
let g:airline#extensions#tabline#enabled = 1

" Keys map for tab switching CTRL + arrow_key (left, right, up, down)
nnoremap <C-Left> :bprevious <CR>
nnoremap <C-Right> :bnext <CR>
nnoremap <C-Up> :bfirst <CR>
nnoremap <C-Down> :blast <CR>

" Telescope Key bindings
" <leader> is equivalent to \
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" COC mappings
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Themes
:set background=dark
:colorscheme gruvbox
:set numberwidth=2
:set number

" Typescript plugins config
" coc config
let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html'   , 'coc-json', 'coc-yank']

let g:prettier#autoformat_require_pragma = 0

command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument

