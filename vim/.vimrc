"====Plugin===="
call plug#begin('~/.vim/plugged')
  Plug 'rust-lang/rust.vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'catppuccin/vim', { 'as': 'catppuccin' }
call plug#end()

"====Editor===="
syntax enable
colorscheme default
filetype plugin indent on
set relativenumber
set clipboard=unnamed
set spell

"====Insert mode cursor===="
if has('vim_starting')
    let &t_SI .= "\e[6 q"
    let &t_EI .= "\e[2 q"
    let &t_SR .= "\e[4 q"
endif

"====Indent size===="
"C/C++"
autocmd FileType c,cpp setlocal tabstop=2 shiftwidth=2 expandtab
" TypeScript"
autocmd FileType typescript,typescriptreact setlocal tabstop=2 shiftwidth=2 expandtab
"Java"
autocmd FileType java setlocal tabstop=4 shiftwidth=4 expandtab

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

"====Key config===="
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
"set Ctrl+j as esc"
noremap! <C-j> <esc>
