" 插件vim-plug
" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'preservim/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'brooth/far.vim'
Plug 'majutsushi/tagbar'
Plug 'lfv89/vim-interestingwords'
Plug 'tpope/vim-commentary'


" Markdown plugin begin
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
" Markdown plugin end
call plug#end()

" Plug use description
" 
" vim-commentary 注释与反注释
" gcc：注释
" gcgc：反注释

" 配色选择 
" 不是默认的颜色通过vim-plug 安装的需要设置颜色在插件之后
colorscheme dracula 
" jcolorscheme evening 
let g:airline_theme='dracula'

let mapleader=','
inoremap jj <Esc>
nnoremap <leader>g :NERDTreeFind<cr>
nnoremap <leader>n :NERDTreeToggle<cr>
let NERDTreeShowHidden=1
let NERDTreeIgnore = [
		\ '\.git$', '\.hg$', '\.svn$', '\.stversions$', '\.pyo$', '\.swp$',
		\ '\.DS_Store$', '\.sass-cache$', '__pycache__$', '\.egg-info$', '\.repeproject$',
		\]

let g:ctrlp_map = '<c-p>'

" Markdown settings-------
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_override_foldtext = 0
let g:vim_markdown_conceal = 0
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_toml_frontmatter = 1
let g:vim_markdown_json_frontmatter = 1
nnoremap <leader>m :MarkdownPreview<cr>
" ------------------------


" 开启语法高亮
syntax on

" 显示行号
set number
" 在状态栏显示光标位置
set ruler

" 显示括号匹配
set showmatch

" 搜索过程中高亮符合的内容
set incsearch


" 光标所在行加下划线
set cursorline
" hi CursorLine cterm=underline 

" 高亮列
" set cursorcolumn

" tab宽度改为4
set tabstop=4
set softtabstop=4
set shiftwidth=4
" 缩进是否用空格表示
set expandtab
