set encoding=utf-8
scriptencoding utf-8

" 行番号を表示
set number
" 検索語を強調表示
set hlsearch
" キーマップ：検索ハイライトの解除
nnoremap <ESC><ESC> :<C-u>nohlsearch<CR>
" 検索時に大文字・小文字を区別しない
set ignorecase
" カーソル行を強調する
set cursorline

"set indent
set shiftwidth=4

set backspace=indent,eol,start

set guifont=Ricty


inoremap <silent> jj <ESC>
inoremap <silent> っj <ESC>


if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/Nishiyama/.vim/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('/Users/Nishiyama/.vim')

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')

"call dein#add('Shougo/unite.vim')

call dein#add('Shougo/neocomplete.vim')
let g:neocomplete#enable_at_startup = 1

call dein#add('vim-perl/vim-perl')

call dein#add('altercation/vim-colors-solarized')
syntax enable
set background=dark
colorscheme solarized
"let g:solarized_termcolors=256


" ====================================================
call dein#add('itchyny/lightline.vim')

"if !has('gui_running')
	set t_Co=256
"endif

let g:lightline = {
    \ 'colorscheme': 'wombat',
    \ 'component': {
    \   'readonly': '%{&readonly?"⭤":""}',
    \ },
    \ 'separator': { 'left': "\u2b80", 'right': "\u2b82" },
    \ 'subseparator': { 'left': "\u2b81",'right': "\u2b83" },
    \ }

set laststatus=2


" ====================================================

"call dein#add('vim-airline/vim-airline')
"call dein#add('vim-airline/vim-airline-themes')
"
"let g:airline_theme='papercolor'
"let g:airline_left_sep = '⮀'
"let g:airline_right_sep = '⮂'
"let g:airline_linecolumn_prefix = '⭡'
"let g:airline_branch_prefix = '⭠'
"let g:airline#extensions#tabline#left_sep = '⮀'
"let g:airline#extensions#tabline#left_alt_sep = '⮀'
"
"set t_Co=256
"let g:airline_powerline_fonts = 1
"set laststatus=2
"
"" タブバーのカスタマイズを有効にする
"let g:airline#extensions#tabline#enabled = 1
"
"" タブバーの右領域を非表示にする
"let g:airline#extensions#tabline#show_splits = 0
"let g:airline#extensions#tabline#show_tab_type = 0
"let g:airline#extensions#tabline#show_close_button = 0

" ====================================================

call dein#add('nathanaelkane/vim-indent-guides',{'on_ft' : 'python'})

let g:indent_guides_auto_colors=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd   ctermbg=237
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven  ctermbg=240
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

" ====================================================

call dein#add('davidhalter/jedi-vim')

" ====================================================

call dein#add('kannokanno/previm')

"ブラウザの設定"
let g:previm_open_cmd = 'open -a Firefox'

" <F5>で編集中のファイルをブラウザで表示
nmap <F5> :PrevimOpen<CR>

" =====================================================

"call dein#add('w0ng/vim-hybrid')

"set background=dark
"colorscheme hybrid

" ======================================================

call dein#add('scrooloose/nerdtree')
nnoremap <silent><C-e> :NERDTreeTabsToggle<CR>

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
    exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
    exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction
call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('pl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
" =====================================================

call dein#add('jistr/vim-nerdtree-tabs')
" ファイルが指定されていなければNERD tree を有効にする
if argc() == 0
    let g:nerdtree_tabs_open_on_console_startup = 1
end

" =======================================================

call dein#add('ctrlpvim/ctrlp.vim')

" =======================================================

call dein#add('fatih/vim-go')
let g:go_fmt_command = "goimports"


" =======================================================

" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" 未インストールのものがあったらインストール
if dein#check_install()
    call dein#install()
endif



set t_ut=

noremap! ¥ \
"noremap! \ ¥


