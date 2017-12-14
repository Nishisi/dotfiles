filetype plugin indent on
set t_Co=256
set encoding=utf-8

" -- View --
" 行番号を表示 
set number 
" カーソル行を強調する
set cursorline
set visualbell

" 検索語を強調表示
set hlsearch
set laststatus=2
set autoindent smartindent

" キーマップ：検索ハイライトの解除
nnoremap <ESC><ESC> :<C-u>nohlsearch<CR>

" 検索時に大文字・小文字を区別しない
set ignorecase

"set indent
set shiftwidth=4

set backspace=indent,eol,start

inoremap <silent> jj <ESC>
inoremap <silent> っj <ESC>

syntax enable
set background=dark
"colorscheme solarized
"colorscheme molokai
colorscheme kalisi
let g:solarized_termcolors=256

nnoremap <silent><C-e> :NERDTreeTabsToggle<CR>

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction
"
au VimEnter * call NERDTreeHighlightFile('yml', '44', 'none', 'green', '#151515')
au VimEnter * call NERDTreeHighlightFile('go', '115', 'none', 'yellow', '#151515')
au VimEnter * call NERDTreeHighlightFile('vim', 'Magenta', 'none', '#ff00ff', '#151515')
"au VimEnter * call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
"au VimEnter * call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
"au VimEnter * call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
"au VimEnter * call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
"au VimEnter * call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
"au VimEnter * call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
"au VimEnter * call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
"au VimEnter * call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
"au VimEnter * call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
"au VimEnter * call NERDTreeHighlightFile('js', '5', 'none', '#ffa500', '#151515')
"au VimEnter * call NERDTreeHighlightFile('pl', '1', 'none', '#ffa500', '#151515')
"au VimEnter * call NERDTreeHighlightFile('md', 'Magenta', 'none', '#ff00ff', '#151515')


if argc() == 0
    let g:nerdtree_tabs_open_on_console_startup = 1
end

let g:go_fmt_command = "goimports"

let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name

noremap! ¥ \
"noremap! \ ¥

"autocmd BufNewFile,BufRead *.py nnoremap <C-e> :!python %
"autocmd BufNewFile,BufRead *.pl nnoremap <C-e> :!perl %

