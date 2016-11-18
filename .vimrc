set nocompatible              " be iMproved, required
filetype off                  " required
set shell=bash
set t_Co=256

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugin
" call vundle#begin('~/some/path/here')

Plugin 'VundleVim/Vundle.vim'
Plugin 'SirVer/ultisnips'
Plugin 'Shougo/neocomplete.vim'
" Plugin 'Shougo/deoplete.nvim'
" Plugin 'drmingdrmer/xptemplate'
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'Shougo/neosnippet.vim'
" Plugin 'Shougo/neosnippet-snippets'

Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'dyng/ctrlsf.vim'
Plugin 'rking/ag.vim'
Plugin 'Raimondi/delimitMate'

Plugin 'gregsexton/gitv'
Plugin 'vim-scripts/matchit.zip'
Plugin 'tomtom/tcomment_vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-surround'
Plugin 'airblade/vim-gitgutter'

Plugin 'klen/python-mode'
Plugin 'davidhalter/jedi-vim'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-lua-ftplugin'
Plugin 'raymond-w-ko/vim-lua-indent'
Plugin 'fatih/vim-go'

Plugin 'bling/vim-airline'
Plugin 'tomasr/molokai'
Plugin 'zaki/zazen'
Plugin 'noahfrederick/vim-hemisu'


call vundle#end()            " required
filetype plugin indent on    " required
syntax on

set noerrorbells                " No beeps
set number                      " Show line numbers
set backspace=indent,eol,start  " Makes backspace key more powerful.
set showcmd                     " Show me what I'm typing
set showmode                    " Show current mode.

set noswapfile                  " Don't use swapfile
set nobackup                    " Don't create annoying backup files
set splitright                  " Split vertical windows right to the current windows
set splitbelow                  " Split horizontal windows below to the current windows
set encoding=utf-8              " Set default encoding to UTF-8
set autowrite                   " Automatically save before :next, :make etc.
set autoread                    " Automatically reread changed files without asking me anything
set laststatus=2

set expandtab
set fileformats=unix,dos,mac    " Prefer Unix over Windows over OS 9 formats

set showmatch                   " Do not show matching brackets by flickering
set incsearch                   " Shows the match while typing
set hlsearch                    " Highlight found searches
set ignorecase                  " Search case insensitive...
set smartcase                   " ... but not when search pattern contains upper case characters
set clipboard=unnamed

let mapleader = ','
set linespace=0
set updatetime=100
set cursorline
" set switchbuf=usetab,newtab     " open new buffers always in new tabs
set switchbuf=usetab,usetab     " open new buffers always in new tabs
set formatoptions+=tcroqw
autocmd FileType go :set noexpandtab
let g:ackhighlight=1
let g:TagmaBufMgrLastLine = 1
let g:nerdtree_tabs_open_on_gui_startup = 0
let g:NERDTreeDirArrows = 0
set fileencodings=utf-8,ucs-bom,gb18030,default
"}}}
" Colorscheme {{{
" let macvim_skip_colorscheme=1
" let g:molokai_original=1
" set background=light
" }}}
" Map {{{
nmap <c-]> g<c-]>
nmap t ,,s
vmap t ,,s
nmap gst :Gst<CR>
" Run current .go {{{
nmap <S-H> :bp<CR>
nmap <S-L> :bn<CR>
" nmap <S-H> gt
" nmap <S-L> gT
nmap <D-1> 1gt
nmap <D-2> 2gt
nmap <D-3> 3gt
nmap <D-4> 4gt
nmap <D-5> 5gt
nmap <D-6> 6gt
nmap <D-7> 7gt
nmap <D-8> 8gt
nmap <D-9> 9gt
"inoremap <ESC> <ESC>:set iminsert=0<CR>
nmap <expr> <C-J> &diff ? ']c' : '<C-J>'
nmap <expr> <C-K> &diff ? '[c' : '<C-K>'

cmap w!! %!sudo tee > /dev/null %
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
"}}}

set guioptions=''
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l
map <C-h> <C-W>h
set guifont=Source\ Code\ Pro\ Light:h13
set background=dark
colorscheme molokai
set fillchars=vert:\ 
" set guifontwide=方正启体简体
" set guifontwide=FZQiTi-S14S
set clipboard+=unnamed
set numberwidth=4
func! MyCtrlPTag()
        let g:ctrlp_prompt_mappings = {
                                \ 'AcceptSelection("e")': ['<cr>', '<2-LeftMouse>'],
                                \ 'AcceptSelection("t")': ['<c-t>'],
                                \ }
        CtrlPBufTag
endfunc
com! MyCtrlPTag call MyCtrlPTag()
if has("gui_macvim")
        set transparency=10 " Make the window slightly transparent
        set fullscreen
    let g:ctrlp_map = '<D-p>'
    nmap <C-]> g<c-]>
        nmap <D-r> :MyCtrlPTag<cr>
        imap <D-r> <esc>:MyCtrlPTag<cr>
    nmap <D-R> :CtrlPBufTagAll<cr>
    imap <D-R> <esc>:CtrlPBufTagAll<cr>
    nmap <D-w> :bd<cr>
    imap <D-w> <esc>:bd<cr>
    map <D-/> :TComment<cr>
    vmap <D-/> :TComment<cr>gv
    nmap <D-f> :CtrlSF <C-R>=expand("<cword>")<CR>
    imap <D-f> <ESC>:CtrlSF <C-R>=expand("<cword>")<CR>
    vnoremap <D-f>  y :CtrlSF"<C-R>=escape(@", '\\/.*$^~[]()"')<CR>"

    map <D-e> :NERDTreeTabsToggle<CR>
    map <leader>e :NERDTreeFind<CR><CR>
    " Window switch map {{{
    map <D-j> <C-W>j
    map <D-k> <C-W>k
    map <D-l> <C-W>l
    map <D-h> <C-W>h

    " cscope {{{"
    nmap <D-[> :cs find c <C-R>=expand("<cword>")<CR><CR><C-O>:copen<CR>
    nmap <D-\> :cs find s <C-R>=expand("<cword>")<CR><CR><C-O>:copen<CR>
    nmap <D-]> :cs find g <C-R>=expand("<cword>")<CR><CR>
    " }}}
endif

set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/cscope*,*/*.csv/,*/*.log,*tags*,*/bin/*        " Linux/MacOSX


" Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
" let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#auto_completion_start_length = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 2
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
let g:neocomplete#max_keyword_width = 200

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" <C-h>, <BS>: close popup and delete backword char.
" inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
" inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"

" AutoComplPop like behavior.
set completeopt="menu,preview,longest"
let g:neocomplete#enable_auto_select = 1

" Enable omni completion.
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
" autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif

if !exists('g:neocomplete#sources')
    let g:neocomplete#sources = {}
endif
let g:neocomplete#sources.go = [ "buffer", "omni", "ultisnips"]

let g:lua_check_syntax = 0
let g:lua_complete_omni = 1
let g:lua_complete_dynamic = 0
let g:neocomplete#sources.lua = [ "buffer", "dictionary", "member", "tag", "omni", "ultisnips"]

let g:UltiSnipsJumpForwardTrigger="<TAB>"
let g:UltiSnipsJumpBackwardTrigger="<S-TAB>"
let g:UltiSnipsExpandTrigger="<nop>"
let g:ulti_expand_or_jump_res = 0
function! <SID>ExpandSnippetOrReturn()
    " let snippet = UltiSnips#ExpandSnippetOrJump()
    let snippet = UltiSnips#ExpandSnippet()
    if g:ulti_expand_or_jump_res > 0
        return snippet
    else
        return ""
    endif
endfunction
imap <expr> <CR> pumvisible() ?
    \ neocomplete#mappings#close_popup() . "<C-R>=<SID>ExpandSnippetOrReturn()<CR>":
    \ "<Plug>delimitMateCR"


if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

let g:ctrlp_cmd = 'CtrlPMixed'          " search anything (in files, buffers and MRU files at the same time.)
let g:ctrlp_by_filename = 1
let g:ctrlp_working_path_mode = 'ra'    " search for nearest ancestor like .git, .hg, and the directory of the current file
let g:ctrlp_match_window_bottom = 1     " show the match window at the top of the screen
let g:ctrlp_max_height = 10             " maxiumum height of match window
let g:ctrlp_switch_buffer = 'Et'        " jump to a file if it's open already
let g:ctrlp_use_caching = 1             " enable caching
let g:ctrlp_clear_cache_on_exit=1       " speed up by not removing clearing cache evertime
let g:ctrlp_mruf_max = 250              " number of recently opened files
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

let g:delimitMate_expand_cr = 1
let delimitMate_balance_matchpairs = 1
let g:delimitMate_expand_space = 2

imap <expr> <TAB> delimitMate#ShouldJump() ? "<Plug>delimitMateS-Tab" : "<TAB>"
inoremap <expr> <S-Tab> delimitMate#JumpAny()

let g:syntastic_check_on_wq=1
let g:syntastic_auto_jump=1
let g:syntastic_auto_loc_list=1
let g:syntastic_error_symbol = "▶▶"
let g:syntastic_warning_symbol = "⚠"
" let g:syntastic_go_checkers = ['errcheck', 'go']
let g:syntastic_mode_map = { "mode": "passive",
            \ "active_filetypes": ["ruby", "php", "go" ],
            \ "passive_filetypes": ["shell"] }

command! CO CtrlSFOpen

" Remember last location{{{
autocmd BufReadPost *
                        \ if line("'\"")>0&&line("'\"")<=line("$") |
                        \   exe "normal g'\"" |
                        \ endif ""'")
"}}}
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
map <D-y> :TagbarToggle<cr>
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
end

" nerdtree-git-plugin symbols
let g:NERDTreeIndicatorMapCustom = {
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


let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='dark'
let g:airline_powerline_fonts=0
let g:airline#extensions#tabline#exclude_preview = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#tab_nr_type = 2 " splits and tab number
let g:airline#extensions#bufferline#enabled = 1


function! Neoj()
    if pumvisible() == 1
        return "\<C-n>"
    else
    return "\<C-j>"
    endif
endfunction

function! Neok()
    if pumvisible() == 1
        return "\<C-p>"
    else
        return "\<C-k>"
    endif
endfunction

inoremap <silent> <C-j> <C-R>=Neoj()<CR>
inoremap <silent> <C-k> <C-R>=Neok()<CR>

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
let g:go_list_type = "quickfix"

function! OnGolangCompleteDone()
    if !exists('v:completed_item') || empty(v:completed_item)
        return
    endif

    let complete_str = v:completed_item.word
    if complete_str == ''
        return
    endif

    let line = getline('.')
    let next_char = line[col('.')-1]
        if  next_char == "("
                return
        end
    let cur_char =line[col('.')-2]

    let abbr = v:completed_item.abbr
    let startIdx = match(abbr,"(")
    let endIdx = match(abbr,")")
    if endIdx - startIdx > 1
        let argsStr = strpart(abbr, startIdx+1, endIdx - startIdx -1)
        let argsList = split(argsStr, ",")
        let snippet = ""
        if cur_char != "("
            let snippet = "("
        end
        let c = 1
        for i in argsList
            if c > 1 
                let snippet = snippet. ", "
            endif
            " strip space
            let arg = substitute(i, '^\s*\(.\{-}\)\s*$', '\1', '') 
            let snippet = snippet . '${'.c.":".arg.'}'
            let c += 1
        endfor
        let snippet = snippet . ")$0"
        call UltiSnips#Anon(snippet)
    endif
endfunction

autocmd FileType lua :set shiftwidth=4 

set relativenumber
augroup CursorLineOnlyInActiveWindow
        autocmd!
    autocmd InsertLeave * setlocal relativenumber
    autocmd InsertEnter * setlocal norelativenumber
    autocmd BufEnter * setlocal cursorline
    autocmd BufLeave * setlocal nocursorline
    autocmd CompleteDone *.go  call OnGolangCompleteDone()
augroup END

let g:ycm_min_num_of_chars_for_completion = 1

"au BufWritePost *.go GoImports

nmap <Leader>gc :GoErrCheck<CR>
nmap <Leader>gb :GoBuild<CR>
nmap <Leader>gd :GoDoc<CR>
nmap <Leader>gt :GoTest<CR>
nmap <Leader>gi :GoInstall<CR>
nmap <Leader>gr :GoRename<CR>
nmap <Leader>gl :Gpull<CR>
nmap <Leader>gp :Gpush<CR>
nmap <Leader>cc :Gstatus<CR>
nmap <Leader>gs :Gstatus<CR>

set fileencodings=utf-bom,utf-8,gbk,gb2312,gb18030,cp936,latin1
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

let g:ctrlsf_winsize = '30%'

autocmd BufNewFile,BufRead *.define setf define