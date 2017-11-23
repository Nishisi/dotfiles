" dein configurations.

let g:dein#install_progress_type = 'title'
let g:dein#enable_notification = 1

" プラグインが実際にインストールされるディレクトリ
let s:dein_dir = expand('~/.dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" dein.vim がなければ github から落としてくる
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

" dein 
if dein#load_state(s:dein_dir)
    call dein#begin(s:dein_dir)
    call dein#load_toml('~/.vim/rc/dein.toml',{'lazy':0})
    call dein#load_toml('~/.vim/rc/deinlazy.toml',{'lazy':1})
    call dein#add('Shougo/unite.vim')

    " COLOR 
    call dein#add('altercation/vim-colors-solarized')
    call dein#add('tomasr/molokai')
    call dein#add('freeo/vim-kalisi')
    call dein#add('sjl/badwolf')

    call dein#add('scrooloose/nerdtree')
    call dein#add('jistr/vim-nerdtree-tabs')
    call dein#add('tiagofumo/vim-nerdtree-syntax-highlight')


    call dein#end()
    call dein#save_state()
endif

if dein#check_install()
    call dein#install()
end
