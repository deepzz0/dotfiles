" repo: https://github.com/deepzz0/dotfiles
" email: deepzz.qi@gmail.com

" vundle {{{
  set nocompatible              " be iMproved, required
  filetype off                  " required
  
  " set the runtime path to include Vundle and initialize
  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()
  " alternatively, pass a path where Vundle should install plugin
  " call vundle#begin('~/some/path/here')
  
  " let Vundle manage Vundle, required
  Plugin 'VundleVim/Vundle.vim'
  Plugin 'scrooloose/nerdtree'
  Plugin 'Xuyuanp/nerdtree-git-plugin'
  Plugin 'jistr/vim-nerdtree-tabs'

  Plugin 'Valloric/YouCompleteMe'
  Plugin 'SirVer/ultisnips'
  Plugin 'honza/vim-snippets'
  Plugin 'davidhalter/jedi-vim'
  Plugin 'Raimondi/delimitMate'
  
  Plugin 'ctrlpvim/ctrlp.vim'
  Plugin 'dyng/ctrlsf.vim'
  Plugin 'majutsushi/tagbar'
  Plugin 'rking/ag.vim'
  Plugin 'Lokaltog/vim-easymotion'
  Plugin 'vim-scripts/matchit.zip'

  Plugin 'tomtom/tcomment_vim'
  Plugin 'tpope/vim-surround'
  Plugin 'terryma/vim-multiple-cursors'

  Plugin 'vim-syntastic/syntastic'
  Plugin 'klen/python-mode'
  Plugin 'xolox/vim-lua-ftplugin'
  Plugin 'xolox/vim-misc'
  Plugin 'fatih/vim-go'
  Plugin 'posva/vim-vue'  

  Plugin 'tpope/vim-fugitive'
  Plugin 'gregsexton/gitv'
  Plugin 'airblade/vim-gitgutter'
  Plugin 'bling/vim-airline'
  Plugin 'noahfrederick/vim-hemisu'
  Plugin 'raymond-w-ko/vim-lua-indent'
  Plugin 'tomasr/molokai'
  Plugin 'zaki/zazen'

  
  " All of your Plugins must be added before the following line
  call vundle#end()            " required
  filetype plugin indent on    " required
  " To ignore plugin indent changes, instead use:
  "filetype plugin on
  "
  " Brief help
  " :PluginList       - lists configured plugins
  " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
  " :PluginSearch foo - searches for foo; append `!` to refresh local cache
  " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
  "
  " see :h vundle for more details or wiki for FAQ
  " Put your non-Plugin stuff after this line
" }}}


" vim {{{
  syntax on
  set shell=bash
  let mapleader = ','

  set shortmess=atI              " Close welcome page
  set fillchars=vert:\ 
  
  set history=1000                " Store lots of :cmdline history
  set noswapfile                  " Don't use swapfile
  set nobackup                    " Don't create annoying backup files
  set noerrorbells                " No beeps
  set cursorline                  " Highlight the current line
  set cursorcolumn                " Highlight the current column
  " set mouse-=a                    " not enable mouse
  set clipboard+=unnamed          " Shared clipboard
  set backspace=indent,eol,start  " Allow backspacing over everything in insert mode
  set linespace=0                 " How to change the space between lines in vim?
  set updatetime=100
  set switchbuf=usetab,usetab     " Open new buffers always in new tabs
  set wildignore+=*/.git/*,       " Linux/MacOSX
      \*/.hg/*,*/.svn/*,
      \*/cscope*,*/*.csv/,
      \*/*.log,*tags*,*/bin/*        
  
  set showcmd                     " Show me what I'm typing
  set showmode                    " Show current mode down the bottom
  set number                      " Show line numbers
  set numberwidth=4               " Number width
  set showmatch                   " Do not show matching brackets by flickering
  set completeopt-=preview        " Don't show preview window
  
  set incsearch                   " Shows the match while typing
  set hlsearch                    " Highlight found searches
  set ignorecase                  " Search case insensitive...
  set smartcase                   " ... but not when search pattern contains upper case characters
  
  set shiftwidth=4                " Default indent settings
  set softtabstop=4               " 
  set expandtab                   " Use spaces instead of tabs
  set autoindent                  " Automatic indent
  set smartindent                 " Smart indent
  
  set encoding=utf-8              " Set default encoding to UTF-8
  set fileencodings=utf-8,ucs-bom,gbk,gb2312,gb18030,default
  set fileformats=unix,dos,mac    " Prefer Unix over Windows over OS 9 formats
  set formatoptions+=tcroqw       " 
  
  set splitright                  " Split vertical windows right to the current windows
  set splitbelow                  " Split horizontal windows below to the current windows
  set autowrite                   " Automatically save before :next, :make etc.
  set autoread                    " Automatically reread changed files without asking me anything
  set laststatus=2                " Always show the status line. or 1
  
  " theme setting {{{
    set guioptions=''
    set background=dark           " Background color
    set t_Co=256
    set guifont=Source\ Code\ Pro\ Light:h13
    colorscheme molokai
    " colorscheme solarized
    " colorscheme desert

  " }}}

  " a buffer becomes hidden when it is abandoned {{{
    set hidden
    set wildmode=list:longest
    set ttyfast

  " }}}
  
  " code folding {{{
    set foldenable
    set foldmethod=indent           " manual,indent,expr,syntax,diff,marker
    set foldlevel=99

    let g:FoldMethod = 0
    map <leader>zz :call ToggleFold()<CR>
    fun! ToggleFold()
        if g:FoldMethod == 0
            exe "normal! zM"
            let g:FoldMethod = 1
        else
            exe "normal! zR"
            let g:FoldMethod = 0
        endif
    endfun

  " }}}

  " simple surround {{{
    vmap " S"
    vmap ' S'
    vmap ` S`
    vmap [ S[
    vmap ( S(
    vmap { S{
    vmap } S}
    vmap ] S]
    vmap ) S)
  " }}}
  
  " smart way to move between windows {{{
    map <C-j> <C-W>j
    map <C-k> <C-W>k
    map <C-h> <C-W>h
    map <C-l> <C-W>l
  " }}}
  
  " switch buffer {{{
    nmap <S-H> :bp<CR>
    nmap <S-L> :bn<CR>
  " }}}
  
  " switch tab {{{
    noremap <leader>1 1gt
    noremap <leader>2 2gt
    noremap <leader>3 3gt
    noremap <leader>4 4gt
    noremap <leader>5 5gt
    noremap <leader>6 6gt
    noremap <leader>7 7gt
    noremap <leader>8 8gt
    noremap <leader>9 9gt
    noremap <leader>0 :tablast<CR>
  " }}}

  " relativenumber {{{
    set relativenumber
    augroup CursorLineOnlyInActiveWindow
        autocmd!
        autocmd InsertLeave * setlocal relativenumber
        autocmd InsertEnter * setlocal norelativenumber
        autocmd BufEnter * setlocal cursorline
        autocmd BufLeave * setlocal nocursorline
        " autocmd CompleteDone *.go  call OnGolangCompleteDone()
    augroup END
    function! NumberToggle()
        if(&relativenumber == 1)
            set norelativenumber number
        else
            set relativenumber
        endif
    endfunc
    nnoremap <C-n> :call NumberToggle()<CR>
  " }}}

  " remember last location{{{
    autocmd BufReadPost *
        \ if line("'\"")>0&&line("'\"")<=line("$") |
        \   exe "normal g'\"" |
        \ endif

  "}}}

  " auto load vimrc
  " autocmd! BufWritePost .vimrc source %

  autocmd BufNewFile,BufRead *.define setf define

  autocmd FileType go :set tabstop=4 noexpandtab " Do not use spaces instead of tabs
  autocmd FileType c,cpp :set shiftwidth=4 expandtab
  autocmd FileType lua :set shiftwidth=4 
  autocmd FileType sh :set shiftwidth=2 expandtab
  autocmd FileType python :set tabstop=4 shiftwidth=4 expandtab ai
  autocmd FileType ruby,javascript,html,css,xml :set tabstop=2 shiftwidth=2 softtabstop=2 expandtab ai

" }}}

" hotkey settings {{{
  " save file with sudo
  cmap w!! %!sudo tee > /dev/null %
  " remove searchs highlight
  noremap <silent><leader>/ :nohls<CR>
  " select all
  map <leader>sa ggvG$
  " quickly save the current file
  nnoremap <leader>w :w<CR>
  " map ; to : 
  nnoremap ; :
  " fix for ctags ctrl+] not working
  nmap <c-]> g<c-]>

  "inoremap <esc> <esc>:set iminsert=0<cr>
  " nmap <expr> <c-j> &diff ? ']c' : '<c-j>'
  " nmap <expr> <c-k> &diff ? '[c' : '<c-k>'

  if has('conceal')
      set conceallevel=2 concealcursor=niv
  endif

" }}}

" close the current buffer {{{
  map <leader>bd :Bclose<cr>:tabclose<cr>gT

  " Don't close window, when deleting a buffer
  command! Bclose call <SID>BufcloseCloseIt()
  function! <SID>BufcloseCloseIt()
     let l:currentBufNum = bufnr("%")
     let l:alternateBufNum = bufnr("#")

     if buflisted(l:alternateBufNum)
       buffer #
     else
       bnext
     endif

     if bufnr("%") == l:currentBufNum
       new
     endif

     if buflisted(l:currentBufNum)
       execute("bdelete! ".l:currentBufNum)
     endif
  endfunction
" }}}

" gui {{{
  if has("gui_macvim")
      " Make the window slightly transparent
      set transparency=10 
      " " fullscreen
      " set fullscreen

      " default <c-p>
      let g:ctrlp_map = '<D-p>'
      nmap <D-r> :CtrlPBufTag<CR>
      imap <D-r> <esc>:CtrlPBufTag<CR>
      nmap <D-R> :CtrlPBufTagAll<CR>
      imap <D-R> <esc>:CtrlPBufTagAll<CR>

      " comment
       map <D-/> :TComment<CR>
       vmap <D-/> :TComment<CR>g

      " ctrlsf
      nmap <D-f> :CtrlSF <C-R>=expand("<cword>")<CR>
      imap <D-f> <ESC>:CtrlSF <C-R>=expand("<cword>")<CR>
      vnoremap <D-f>  y :CtrlSF"<C-R>=escape(@", '\\/.*$^~[]()"')<CR>"

      " nerdtree
      map <D-e> :NERDTreeTabsToggle<CR>
      map <leader>e :NERDTreeFind<CR>

      " Window switch map {{{
        " map <D-j> <C-W>j
        " map <D-k> <C-W>k
        " map <D-l> <C-W>l
        " map <D-h> <C-W>h
      " }}}

  endif

" }}}

" python-mode {{{
  " use python 3 syntax and you should compile
  " macvim with --with-python3
  let g:pymode_python = 'python3'
  " close syntax when save file
  let g:pymode_lint_on_write = 0
  
" }}}

" vim-go {{{
  let g:go_highlight_functions = 1
  let g:go_highlight_methods = 1
  let g:go_highlight_fields = 1
  let g:go_highlight_types = 1
  let g:go_highlight_operators = 1
  let g:go_highlight_build_constraints = 1
  let g:go_fmt_command = "goimports"
  let g:go_list_type = "quickfix"
  let g:go_def_mode = 'godef'

  nmap <Leader>gc :GoErrCheck<CR>
  nmap <Leader>gb :GoBuild<CR>
  nmap <Leader>gd :GoDoc<CR>
  nmap <Leader>gt :GoTest<CR>
  nmap <Leader>gi :GoInstall<CR>
  nmap <Leader>gr :GoRename<CR>

  " function! OnGolangCompleteDone()
  "     if !exists('v:completed_item') || empty(v:completed_item)
  "         return
  "     endif
  "
  "     let complete_str = v:completed_item.word
  "     if complete_str == ''
  "         return
  "     endif
  "
  "     let line = getline('.')
  "     let next_char = line[col('.')-1]
  "     if  next_char == "("
  "         return
  "     end
  "     let cur_char =line[col('.')-2]
  "
  "     let abbr = v:completed_item.abbr
  "     let startIdx = match(abbr,"(")
  "     let endIdx = match(abbr,")")
  "     if endIdx - startIdx > 1
  "         let argsStr = strpart(abbr, startIdx+1, endIdx - startIdx -1)
  " 	  let argsList = split(argsStr, ",")
  " 	  let snippet = ""
  " 	  if cur_char != "("
  "             let snippet = "("
  " 	  end
  " 	  let c = 1
  " 	  for i in argsList
  " 	      if c > 1
  " 	          let snippet = snippet. ", "
  "             endif
  "             " strip space
  "             let arg = substitute(i, '^\s*\(.\{-}\)\s*$', '\1', '')
  "             let snippet = snippet . '${'.c.":".arg.'}'
  "             let c += 1
  "         endfor
  "         let snippet = snippet . ")$0"
  "         call UltiSnips#Anon(snippet)
  "     endif
  " endfunction

" }}}

" NERDTree {{{
  let g:NERDTreeDirArrows = 0
  let g:nerdtree_tabs_open_on_gui_startup = 0
  let NERDTreeIgnore=['node_modules']

" }}}

" nerdtree-git-plugin symbols {{{
  let g:NERDTreeGitStatusIndicatorMapCustom = {
      \ "Modified"  : "✹",
      \ "Staged"    : "✚",
      \ "Untracked" : "✭",
      \ "Renamed"   : "➜",
      \ "Unmerged"  : "═",
      \ "Deleted"   : "✖",
      \ "Dirty"     : "✗",
      \ "Clean"     : "✔︎",
      \ "Unknown"   : "?"
      \ }
" }}}

" vim-airline {{{
  let g:airline#extensions#tabline#enabled = 1
  let g:airline_theme='dark'
  let g:airline_powerline_fonts=0
  let g:airline#extensions#tabline#exclude_preview = 1
  let g:airline#extensions#tabline#show_buffers = 1
  let g:airline#extensions#tabline#tab_nr_type = 2 " splits and tab number
  let g:airline#extensions#bufferline#enabled = 1
" }}}

" cscope {{{
  if has("cscope")
      " set csprg=/usr/local/bin/cscope
      set csto=0
      set cscopequickfix=s-,c-,d-,i-,t-,e-
      set cst
      set nocsverb
      " add any database in current directory
      if filereadable("cscope.out")
          cs add cscope.out
          " else add database pointed to by environment
      elseif $CSCOPE_DB != ""
          cs add $CSCOPE_DB
      endif
      set csverb

      nmap <D-[> :cs find c <C-R>=expand("<cword>")<CR><CR><C-O>:copen<CR>
      nmap <D-\> :cs find s <C-R>=expand("<cword>")<CR><CR><C-O>:copen<CR>
      nmap <D-]> :cs find g <C-R>=expand("<cword>")<CR><CR>

  end

" }}}

" tagbar {{{
  map <D-y> :TagbarToggle<CR>

  let g:tagbar_autofocus=1
  let g:tagbar_sort=0
  let g:tagbar_type_go = {
      \ 'ctagstype' : 'go',
      \ 'kinds'     : [
          \ 'p:package',
          \ 'i:imports:1',
          \ 'c:constants',
          \ 'v:variables',
          \ 't:types',
          \ 'n:interfaces',
          \ 'w:fields',
          \ 'e:embedded',
          \ 'm:methods',
          \ 'r:constructor',
          \ 'f:functions'
      \ ],
      \ 'sro' : '.',
      \ 'kind2scope' : {
          \ 't' : 'ctype',
          \ 'n' : 'ntype'
      \ },
      \ 'scope2kind' : {
          \ 'ctype' : 't',
          \ 'ntype' : 'n'
      \ },
      \ 'ctagsbin'  : 'gotags',
      \ 'ctagsargs' : '-sort -silent'
  \ }

" }}}

" CtrlP {{{
  set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
  set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

  let g:ctrlp_cmd = 'CtrlPMixed'               " search anything (in files, buffers and MRU files at the same time.)
  let g:ctrlp_by_filename = 1
  let g:ctrlp_working_path_mode = 'ra'         " search for nearest ancestor like .git, .hg, and the directory of the current file
  let g:ctrlp_match_window_bottom = 1          " show the match window at the top of the screen
  let g:ctrlp_max_height = 10                  " maxiumum height of match window
  let g:ctrlp_switch_buffer = 'Et'             " jump to a file if it's open already
  let g:ctrlp_use_caching = 1                  " enable caching
  let g:ctrlp_clear_cache_on_exit=1            " speed up by not removing clearing cache evertime
  let g:ctrlp_mruf_max = 250                   " number of recently opened files
  let g:ctrlp_open_new_file = 't'
  let g:ctrlp_open_multiple_files = 't'
  let g:ctrlp_open_new_file = 'r'
  let g:ctrlp_custom_ignore = {
      \ 'dir':  '\v[\/](\.git|\.hg|\.svn|\.build|github.com|labix.org|bin|pkg)$',
      \ 'file': '\v(\.exe|\.so|\.dll|\.a|\.xls|\.csv|\.json|\.log|\.out|gs|gw|gm|tags|gotags|\/U)$',
      \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
      \ }
  let g:ctrlp_buftag_types = {
      \ 'go'         : '--language-force=go --golang-types=ftv',
      \ 'as'         : '--language-force=actionscript --actionscript-types=fpvc',
      \ 'actionscript': '--language-force=actionscript --actionscript-types=fpvc',
      \ 'coffee'     : '--language-force=coffee --coffee-types=cmfvf',
      \ 'markdown'   : '--language-force=markdown --markdown-types=hik',
      \ 'objc'       : '--language-force=objc --objc-types=mpci',
      \ 'rc'         : '--language-force=rust --rust-types=fTm'
      \ }
  let g:ctrlp_prompt_mappings = {
      \ 'PrtBS()':              ['<bs>', '<c-]>'],
      \ 'PrtDelete()':          ['<del>'],
      \ 'PrtDeleteWord()':      ['<c-w>'],
      \ 'PrtClear()':           ['<c-u>'],
      \ 'PrtSelectMove("j")':   ['<c-j>', '<down>'],
      \ 'PrtSelectMove("k")':   ['<c-k>', '<up>'],
      \ 'PrtSelectMove("t")':   ['<Home>', '<kHome>'],
      \ 'PrtSelectMove("b")':   ['<End>', '<kEnd>'],
      \ 'PrtSelectMove("u")':   ['<PageUp>', '<kPageUp>'],
      \ 'PrtSelectMove("d")':   ['<PageDown>', '<kPageDown>'],
      \ 'PrtHistory(-1)':       ['<c-n>'],
      \ 'PrtHistory(1)':        ['<c-p>'],
      \ 'AcceptSelection("e")': ['<cr>', '<2-LeftMouse>'],
      \ 'AcceptSelection("h")': ['<c-x>', '<c-cr>', '<c-s>'],
      \ 'AcceptSelection("t")': ['<c-t>'],
      \ 'AcceptSelection("v")': ['<c-v>', '<RightMouse>'],
      \ 'ToggleFocus()':        ['<s-tab>'],
      \ 'ToggleRegex()':        ['<c-r>'],
      \ 'ToggleByFname()':      ['<c-d>'],
      \ 'ToggleType(1)':        ['<c-f>', '<c-up>'],
      \ 'ToggleType(-1)':       ['<c-b>', '<c-down>'],
      \ 'PrtExpandDir()':       ['<tab>'],
      \ 'PrtInsert("c")':       ['<MiddleMouse>', '<insert>'],
      \ 'PrtInsert()':          ['<c-\>'],
      \ 'PrtCurStart()':        ['<c-a>'],
      \ 'PrtCurEnd()':          ['<c-e>'],
      \ 'PrtCurLeft()':         ['<c-h>', '<left>', '<c-^>'],
      \ 'PrtCurRight()':        ['<c-l>', '<right>'],
      \ 'PrtClearCache()':      ['<F5>'],
      \ 'PrtDeleteEnt()':       ['<F7>'],
      \ 'CreateNewFile()':      ['<c-y>'],
      \ 'MarkToOpen()':         ['<c-z>'],
      \ 'OpenMulti()':          ['<D-o>'],
      \ 'PrtExit()':            ['<esc>', '<c-c>', '<c-g>'],
      \ }

" }}}

" syntastic {{{
  set statusline+=%#warningmsg#
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*

  let g:syntastic_check_on_wq=1
  let g:syntastic_auto_jump=1
  let g:syntastic_auto_loc_list=1
  let g:syntastic_error_symbol = "▶▶"
  let g:syntastic_warning_symbol = "⚠"

  let g:syntastic_sh_checkers = ['shellcheck']
  "let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
  " passive
  let g:syntastic_mode_map = { "mode": "active",
      \ "active_filetypes": ["ruby", "go", "python"],
      \ "passive_filetypes": ["shell"] }

" }}}

" CtrlSF {{{
  command! CO CtrlSFOpen

  let g:ctrlsf_ackprg = 'rg'
  let g:ctrlsf_winsize = '30%'
  let g:ctrlsf_auto_close = 1
  let g:ctrlsf_ignore_dir = ['vendor', 'bower_components', 'node_modules']

" }}}

" YouCompleteMe {{{
  " preview window settiing
  let g:ycm_add_preview_to_completeopt = 1
  let g:ycm_autoclose_preview_window_after_completion = 0
  let g:ycm_autoclose_preview_window_after_insertion = 1

  " typing 2 chars
  let g:ycm_min_num_of_chars_for_completion = 2
  " Completion when typing inside comments
  let g:ycm_complete_in_comments = 1  
  " Query the UltiSnips plugin
  let g:ycm_use_ultisnips_completer = 1 
  " Collect identifiers from strings and comments and tag fiels
  let g:ycm_collect_identifiers_from_comments_and_strings = 1   
  let g:ycm_collect_identifiers_from_tags_files = 1

  " some symbols
  let g:ycm_error_symbol = '>>'
  let g:ycm_warning_symbol = '>*'

  " Specifies Python interpreter to run jedi
  let g:ycm_python_binary_path = 'python3'

  " " Seed its identifier database
  " let g:ycm_seed_identifiers_with_syntax=1
  
  " youcompleteme select keys
  let g:ycm_key_list_select_completion = ['<Down>']
  let g:ycm_key_list_previous_completion = ['<Up>']

  " Where GoTo* commands result should be opened, same-buffer
  let g:ycm_goto_buffer_command = 'horizontal-split'
  " nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>
  nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
  nnoremap <leader>gd :YcmCompleter GoToDeclaration<CR>

  let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"
  " blacklist
  let g:ycm_filetype_blacklist = {
      \ 'gitcommit' : 1,
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'unite' : 1,
      \ 'text' : 1,
      \ 'vimwiki' : 1,
      \ 'pandoc' : 1,
      \ 'infolog' : 1,
      \ 'mail' : 1
      \}

" }}}

" UltiSnips {{{
    let g:UltiSnipsExpandTrigger       = "<TAB>"
    let g:UltiSnipsJumpForwardTrigger  = "<TAB>"
    let g:UltiSnipsJumpBackwardTrigger = "<S-TAB>"
    let g:UltiSnipsSnippetDirectories  = ['UltiSnips']
    let g:UltiSnipsSnippetsDir = '~/.vim/bundle/vim-snippets/UltiSnips'
    " edit current filetype's snippets
    map <leader>us :UltiSnipsEdit<CR>

    " ctrl+j/k
    func! g:JInYCM()
        if pumvisible()
            return "\<C-n>"
        else
            return "\<c-j>"
        endif
    endfunction

    func! g:KInYCM()
        if pumvisible()
            return "\<C-p>"
        else
            return "\<c-k>"
        endif
    endfunction
    inoremap <c-j> <c-r>=g:JInYCM()<cr>
    au BufEnter,BufRead * exec "inoremap <silent> " . g:UltiSnipsJumpBackwordTrigger . " <C-R>=g:KInYCM()<cr>"
    let g:UltiSnipsJumpBackwordTrigger = "<c-k>"
" }}}

" delimitMate {{{
  let g:delimitMate_expand_cr = 1
  let delimitMate_balance_matchpairs = 1
  let g:delimitMate_expand_space = 2

  imap <expr> <TAB> delimitMate#ShouldJump() ? "<Plug>delimitMateS-Tab" : "<TAB>"
  inoremap <expr> <S-Tab> delimitMate#JumpAny()
" }}}

" easymotion {{{
  let g:EasyMotion_smartcase = 1
  "let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
  map <Leader><leader>h <Plug>(easymotion-linebackward)
  map <Leader><Leader>j <Plug>(easymotion-j)
  map <Leader><Leader>k <Plug>(easymotion-k)
  map <Leader><leader>l <Plug>(easymotion-lineforward)
  map <Leader><leader>. <Plug>(easymotion-repeat)

" }}}

" fugitive {{{
  " :Gdiff  :Gstatus :Gvsplit
  " use zsh alias
  nnoremap <leader>gaa :Git add .<CR>
  nnoremap <leader>gc :Gcommit<CR>
  nnoremap <leader>gp :Gpush<CR>
  nnoremap <leader>gl :Gpull<CR>
  nnoremap <leader>gb :Gblame<CR>
  nnoremap <leader>gst :Gstatus<CR>
  nnoremap <leader>gd :Gdiff<CR>
  nnoremap <leader>glg :Glog<CR>

" }}}

" multiplecursors {{{
  let g:multi_cursor_use_default_mapping=0
  " Default mapping
  let g:multi_cursor_next_key='<C-m>'
  let g:multi_cursor_prev_key='<C-p>'
  let g:multi_cursor_skip_key='<C-x>'
  let g:multi_cursor_quit_key='<Esc>'
" }}}

hi Pmenu      guifg=#F6F3E8 guibg=#444444
" hi PmenuSel   guifg=#FFFFFF guibg=#0077DD
hi PmenuSel   guifg=#FFFFFF guibg=#11AADD
hi PMenuSbar  guibg=#5A647E
hi PMenuThumb guibg=#AAAAAA
" hi Visual     guibg=#1122FF
" hi Visual     guibg=#0066FF
hi Visual     guibg=#2566FA
" hi VertSplit guibg=#272822
hi VertSplit guibg=#1B1D1E
hi Cursor guibg=#FF0000

