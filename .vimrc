" ############################################################################
" # >>> -----------        RUNTIME PATH & PATH             ------------- <<< #
" ############################################################################

" PATH & RTP {{{--------------------------------------------------------------

    " force vim to be recursive when use :find etc...
    set path+=**

    " set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
    set rtp+=~/.fzf

    " runtime path for CtrlP
    set runtimepath^=~/.vim/bundle/ctrlp.vim

    " set the runtime path to include Vundle and initialize
    set rtp+=~/.vim/bundle/Vundle.vim

"}}}
" POWERLINE {{{---------------------------------------------------------------

    " See Runtime Path Section
    let g:airline_powerline_fonts = 1

    " Always show statusline
    set laststatus=2

    " Use 256 colours (Use this setting only if your terminal supports 256 colours)
    set t_Co=256

"}}}

" ############################################################################
" # >>> -----------               AIRLINE                  ------------- <<< #
" ############################################################################

" AIRLINE THEME {{{-----------------------------------------------------------

    " vim-airline {
    " Set configuration options for the statusline plugin vim-airline.
    " Use the powerline theme and optionally enable powerline symbols.
    " To use the symbols , , , , , , and .in the statusline
    " segments add the following to your .vimrc.before.local file:
    "   let g:airline_powerline_fonts=1
    " If the previous symbols do not render for you then install a
    " powerline enabled font.

    " See `:echo g:airline_theme_map` for some more choices
    " Default in terminal vim is 'dark'

    if isdirectory(expand("~/.vim/bundle/vim-airline-themes/"))
        if !exists('g:airline_theme')
    	let g:airline_theme = 'powerlineish'
        endif
        if !exists('g:airline_powerline_fonts')
    	" Use the default set of separators with a few customizations
    	let g:airline_left_sep='›'  " Slightly fancier than '>'
    	let g:airline_right_sep='‹' " Slightly fancier than '<'
        endif
    endif
"}}}

" ############################################################################
" # >>> -----------               VUNDLE                   ------------- <<< #
" ############################################################################

    set nocompatible              " required
    filetype off                  " required

" VUNDLE START {{{------------------------------------------------------------

    " -> VUNDLE START ------------------------------------------------------
    " alternatively, pass a path where Vundle should install plugins
    " call vundle#begin('~/some/path/here')
    call vundle#begin()

    " -> YCM {{{------------------------------------------------------------
    Plugin 'Valloric/YouCompleteMe'

    "}}}
    " -> ULTISNIPS {{{------------------------------------------------------
    " Track the engine.
    Plugin 'SirVer/ultisnips'

    " Snippets are separated from the engine. Add this if you want them:
    Plugin 'honza/vim-snippets'

    " Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
    let g:UltiSnipsExpandTrigger="<tab>"
    let g:UltiSnipsJumpForwardTrigger="<tab>"
    let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
    " let g:UltiSnipsJumpForwardTrigger="<c-b>"
    " let g:UltiSnipsJumpBackwardTrigger="<c-z>"

    " If you want :UltiSnipsEdit to split your window.
    let g:UltiSnipsEditSplit="vertical"
    let g:UltiSnipsExpandTrigger="<c-j>"

    "}}}
    " -> VIM AIRLINE {{{----------------------------------------------------
    " Vim airline light
    " Plugin 'itchyny/lightline.vim'
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'

    "}}}
    " -> VIM-EXPAND-REGION {{{----------------------------------------------
    " + _ expand shrink visual selection
    Plugin 'terryma/vim-expand-region'

    "}}}
    " -> MRU {{{------------------------------------------------------------
    " Most Recently Used  (:MRU)
    Plugin 'yegappan/mru'

    "}}}
    " -> BUFEXPLORER {{{----------------------------------------------------
    " Buffers explorer leader be/bs/bv    f F v V a t
    " No more need since Ctrl-space
    " Plugin 'vim-scripts/bufexplorer.zip.git'

    "}}}
    " -> VUNDLE {{{---------------------------------------------------------
    " let Vundle manage Vundle, required
    Plugin 'gmarik/Vundle.vim'

    "}}}
    " -> VIM-TMUX {{{-------------------------------------------------------
	" syntax for .tmux.conf
    Plugin 'tmux-plugins/vim-tmux'

    "}}}
    " -> VIM-TMUX-NAVIGATOR {{{---------------------------------------------
    Bundle 'christoomey/vim-tmux-navigator'

    "}}}
    " -> TAGBAR {{{---------------------------------------------------------
    " Class/module browser > 
    " dependencies on exuberant-ctags (deprecated) or universal-ctags
    Plugin 'majutsushi/tagbar'                  

    "}}}
    " -> CTRLP {{{----------------------------------------------------------
    " Fast transitions on project files >> Ctrl+p
    Plugin 'kien/ctrlp.vim'                     
    
    "}}}
    " -> SUPERTAB {{{-------------------------------------------------------
    Plugin 'ervandew/supertab'
    
    "}}}
    " -> VIM-PEEKABOO {{{---------------------------------------------------
    " show registers in splitted window when use " or @
    Plugin 'junegunn/vim-peekaboo'
    
    "}}}
    " -> INDENTLINE {{{-----------------------------------------------------
    " trace vertical lines to show indentation level
    " Bundle 'Yggdroot/indentLine'
    " let g:indentLine_char = '|'
    " let g:indentLine_color_term = 239
    
    "}}}
    " -> VIM-ESAYMOTION {{{-------------------------------------------------
    "\s \w \L
    Plugin 'easymotion/vim-easymotion'

    "}}}
    " -> VIM-SURROUND {{{---------------------------------------------------
    " cs]' (replace ] par ') cs'<q>  cst'  (t=tag)  ysiw]  cs]{   cs]}   yss)  (sentence) ds)
    Plugin 'tpope/vim-surround'

    "}}}
    " -> VIM-REPEAT {{{-----------------------------------------------------
    " works with surround
    Plugin 'tpope/vim-repeat'

    "}}}
    " -> VIM-COMMENTARY {{{-------------------------------------------------
    " gcc (1 line) gcap (a paragraph) gc2j (2lines) :7,17Commentary  :g/TODO/Commentary
    Plugin 'tpope/vim-commentary'

    "}}}
    " -> VIM-UNIMPAIRED {{{-------------------------------------------------
    " ]q :cnext [q :cprevious, ]a :next [b :bprevious
    Plugin 'tpope/vim-unimpaired'

    "}}}
    " -> VIM-MULTIPLE-CURSOR {{{--------------------------------------------
    " Sublime style <C-n> <C-p> <C-x>
    Plugin 'terryma/vim-multiple-cursors'

    "}}}
    " -> VIM-SYNTASTIC {{{--------------------------------------------------
    Plugin 'vim-syntastic/syntastic'

    "}}}
    " -> VIM-ESAY-ALIGN {{{-------------------------------------------------
    Plugin 'junegunn/vim-easy-align'
    xmap ga <Plug>(EasyAlign)
    " Start interactive EasyAlign in visual mode (e.g. vipga)
    nmap ga <Plug>(EasyAlign)
    " Start interactive EasyAlign for a motion/text object (e.g. gaip)
    " gaip=
    " Start EasyAlign command (ga) for inner paragraph Align around =
    " = Around the 1st occurrences
    " 2= Around the 2nd occurrences
    " *= Around all occurrences
    " **= Left/Right alternating alignment around all occurrences
    " <Enter> Switching between left/right/center alignment modes

    " easy-align ancestor
    " Bundle 'godlygeek/tabular'

    "}}}
    " -> GOYO {{{-----------------------------------------------------------
    Plugin 'junegunn/goyo.vim'
    " :Goyo toggle goyo
    " :Goyo! turn off goyo
    " :Goyo 120x30
    " :Goyo 50%+25%x50%-25%
    " The window can be resized with the usual [count]<CTRL-W> + >, <, +, - keys.

    "}}}
    " -> LIMELIGHT {{{------------------------------------------------------ 
    " Plugin 'junegunn/limelight.vim'
    " " Limelight [0.0 ~ 1.0]   Turn Limelight on
    " " Limelight!              Turn Limelight off
    " " Limelight!! [0.0 ~ 1.0] Toggle Limelight

    " " Color name (:help cterm-colors) or ANSI code
    " let g:limelight_conceal_ctermfg = 'gray'
    " let g:limelight_conceal_ctermfg = 240
    
    " " Color name (:help gui-colors) or RGB color
    " let g:limelight_conceal_guifg = 'DarkGray'
    " let g:limelight_conceal_guifg = '#777777'
    
    " " Default: 0.5
    " let g:limelight_default_coefficient = 0.7
    
    " " Number of preceding/following paragraphs to include (default: 0)
    " let g:limelight_paragraph_span = 1

    " " Beginning/end of paragraph
    " "   When there's no empty line between the paragraphs
    " "   and each paragraph starts with indentation
    " " let g:limelight_bop = '^\s'
    " " let g:limelight_eop = '\ze\n^\s'
    
    " " Highlighting priority (default: 10)
    " "   Set it to -1 not to overrule hlsearch
    " " let g:limelight_priority = -1

    "}}}
    " -> VIMYA {{{----------------------------------------------------------
    " http://www.vim.org/scripts/script.php?script_id=2626
    " Connect to maya 
    " tail plugin
    " http://www.vim.org/scripts/script.php?script_id=1714
    " allow maya's script editor log output in vim's Tab

    "}}}
    " -> MISC COLORSCHEME {{{-----------------------------------------------
    " Color theme
    " Plugin 'nightsense/vim-crunchbang'
    " Plugin 'junegunn/seoul256.vim'
    Plugin 'dylanaraps/wal.vim'

    "}}}
    " -> TMUX-COMPLETE {{{--------------------------------------------------
    " Bundle 'wellle/tmux-complete.vim'
    " " add visible word in tmux panes in completion list
    
    " -> FZF ---------------------------------------------------------------
    " Plugin 'junegunn/fzf.vim'
    " will clone fzf in ~/.fzf and run install script
    Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    
    " -> VIM-SORT-MOTION ---------------------------------------------------
    " Bundle 'christoomey/vim-sort-motion'
    " gs2j (2 lines)  gsip (in paragraph) gsii (indent) gsi( within parenthesis 

    "}}}
    " -> CTRL-SPACE {{{-----------------------------------------------------
    Plugin 'vim-ctrlspace/vim-ctrlspace'

    "}}}
    " -> I3-VIM-SYNTAX {{{--------------------------------------------------
    " i3 Syntax file
    " http://raw.github.com/PotatoesMaster/i3-vim-syntax/master/syntax/i3.vim
    " Plugin 'PotatoesMaster/i3-vim-syntax'

    "}}}
    " -> TMUX-LINE {{{------------------------------------------------------
    " Match Tmux line to Vim airline colorscheme
    Plugin 'edkolev/tmuxline.vim'

    "}}}
    " -> RESTORE VIEW {{{---------------------------------------------------
    " Save View, Cursor, Folds, then reload them
    Plugin 'vim-scripts/restore_view.vim.git'
    
    "}}}

    call vundle#end()            " required

"}}}

" ############################################################################
" # >>> -----------               OPTIONS                  ------------- <<< #
" ############################################################################

" MISC {{{--------------------------------------------------------------------

	set lazyredraw    " Don't redraw while executing macros (good performance config)
	set magic         " For regular expressions turn magic on
	set mat=2         " How many tenths of a second to blink when matching brackets
	set foldcolumn=1  " Add a bit extra margin to the left
    filetype plugin indent on    " required
    filetype plugin on

"}}}
" FOLDS {{{-------------------------------------------------------------------

    " enable folding; http://vim.wikia.com/wiki/Folding
    set foldmethod=marker

    " fold color
    hi Folded cterm=bold ctermfg=DarkBlue ctermbg=none
    hi FoldColumn cterm=bold ctermfg=DarkBlue ctermbg=none

    "refocus folds; close any other fold except the one that you are on
    nnoremap ,z zMzvzz

"}}}
" SOUNDS {{{------------------------------------------------------------------

	" No annoying sound on errors
	set noerrorbells
	set novisualbell
	set t_vb=
	set tm=500
	
	" Properly disable sound on errors on MacVim
	if has("gui_macvim")
	    autocmd GUIEnter * set vb t_vb=
	endif

"}}
" DISPLAY {{------------------------------------------------------------------

    syntax enable
    
    " color theme
    " color crunchbang
    " set background=dark
    " color solarized
    " colorscheme solarized8_dark_high
    " colorscheme desert
    colorscheme wal
    
    " Use the same symbols as TextMate for tabstops and EOLs
    set listchars=tab:▸\ ,eol:¬,trail:.,nbsp:⎵
    " set list
    
    " absolute and relative numbers. See Auto-Cmds section as well
    set number
    set relativenumber
    
    " show line/column
    set ruler
    
    " limit line'slenght and display limit
    set wrap
    set textwidth=79
    set formatoptions=qrn1
    set colorcolumn=100
    highlight ColorColumn ctermbg=238 guibg=lightgrey
    
    " Show partial commands in the last line of the screen
    set showcmd
    
    " Set the command window height to 2 lines, to avoid many cases of having to
    " "press <Enter> to continue"
    set cmdheight=1
    
    " Cursorline Settings
    set cursorline
    highlight CursorLine term=bold cterm=bold ctermbg=Black guibg=Black ctermfg=NONE
    "highlight CursorLineNR ctermbg=235 ctermfg=White cterm=bold
    "autocmd InsertLeave * :highlight CursorLine cterm=bold ctermbg=Black ctermfg=NONE term=bold
    "autocmd InsertEnter * :highlight CursorLine cterm=NONE ctermbg=Black ctermfg=NONE

"}}
" BEHAVIOR {{-----------------------------------------------------------------

    " Encoding
    set enc=utf-8
    set fileencoding=utf-8
    set fileencodings=ucs-bom,utf8,prc
    
    " keep unwritten buffer without being forced to write
    set hidden
    
    " allow backspacing over everything in insert mode
    set backspace=indent,eol,start
    
    " number of lines to see above and below the cursor
    set scrolloff=8
    
    "Open new split panes to right and bottom, which feels more natural than Vim’s default:
    set splitbelow
    set splitright
    
    " Instead of failing a command because of unsaved changes, instead raise a
    " dialogue asking if you wish to save changed files.
    set confirm
    
    " ignore some files when opening
    set wildignore=*.swp,*.bak,*.pyc,*.class

"}}

"}}}
" TIME OUT {{{----------------------------------------------------------------

    " Time out on key codes but not mappings.
    " Basically this makes terminal Vim work sanely.
    set notimeout
    set ttimeout
    set ttimeoutlen=10

"}}}
" UNDO & BACKUPS {{{----------------------------------------------------------

    " remember more command
    set history=1000
    
    " more undo levels
    set undolevels=1000
    
    set undofile                      " enable undo even after file closed
    set backup                        " enable backups
    set noswapfile                    " it's 2017, Vim.
    
    set undodir=~/.vim/tmp/undo//     " undo files
    set backupdir=~/.vim/tmp/backup// " backups
    set directory=~/.vim/tmp/swap//   " swap files
    
    " Make those folders automatically if they don't already exist.
    if !isdirectory(expand(&undodir))
    call mkdir(expand(&undodir), "p")
    endif
    if !isdirectory(expand(&backupdir))
    call mkdir(expand(&backupdir), "p")
    endif
    if !isdirectory(expand(&directory))
        call mkdir(expand(&directory), "p")
    endif

"}}}
" SEARCH OPTIONS {{{----------------------------------------------------------

    " set show matching parenthesis
    set showmatch
    set matchtime=3
    " show search matches as you type
    set incsearch
    " Highlight 
    set hlsearch
    " Use case insensitive search, except when using capital letters
    set ignorecase
    set smartcase

"}}}
" PYTON INDENT {{{------------------------------------------------------------

    " au BufNewFile,BufRead *.py
    set tabstop=4
    set softtabstop=4
    set shiftwidth=4
    set textwidth=79
    set expandtab
    set autoindent
    set fileformat=unix
    
    " Enable folding
    " set foldmethod=indent
    set foldlevel=99
    
    " Enable folding with the spacebar
    "nnoremap <space> za

"}}}
" MOUSE CONTROL {{{-----------------------------------------------------------

    set mouse=a
    
"}}}
"  WILDMENU COMPLETION {{{----------------------------------------------------

    set wildmenu                                     " Better command-line completion
    set wildmode=list:longest
    set wildignore+=.hg,.git,.svn                    " Version control
    set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
    set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
    set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
    set wildignore+=*.spl                            " compiled spelling word lists
    set wildignore+=*.sw?                            " Vim swap files
    set wildignore+=*.DS_Store                       " OSX bullshit
    
    set wildignore+=*.luac                           " Lua byte code
    
    set wildignore+=migrations                       " Django migrations
    set wildignore+=*.pyc                            " Python byte code
    
    set wildignore+=*.orig                           " Merge resolution files
    
    " Clojure/Leiningen
    set wildignore+=classes
    set wildignore+=lib

"}}}
"  VISUAL MODE {{{------------------------------------------------------------

	" Visual mode pressing * or # searches for the current selection
	" Super useful! From an idea by Michael Naumann
	vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
	vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>
	
"}}}
"  STATUS LINE {{{------------------------------------------------------------

    " Automatically displays all buffers when there's only one tab open.
    let g:airline#extensions#tabline#enabled = 1
    let g:airline_theme='base16'
    " options for separators
    " let g:airline#extensions#tabline#left_sep = ' '
    " let g:airline#extensions#tabline#left_alt_sep = '|'
    " choose which path formatter airline uses: default, jsformatter, unique_tail, unique_tail_improved
    let g:airline#extensions#tabline#formatter = 'default'

	" Format the status line without Powerline / Airline etc...
	"set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

    " for tmuxline + vim-airline integration
    let g:airline#extensions#tmuxline#enabled = 1
    " start tmuxline even without vim running
    let airline#extensions#tmuxline#snapshot_file = "~/.tmux-status.conf"

"}}}
"  SYNTASTIC {{{--------------------------------------------------------------

    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*

    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0

    let g:syntastic_python_checkers = ['pylint']

"}}}
"  CTRL-SPACE {{{-------------------------------------------------------------

    if has("gui_running")
        " Settings for MacVim and Inconsolata font
        let g:CtrlSpaceSymbols = { "File": "◯", "CTab": "▣", "Tabs": "▢" }
    endif

    " need ag to be installed
    if executable("ag")
        let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""'
    endif

    " increase plugin fuzzy search delay
    let g:CtrlSpaceSearchTiming = 500

"}}}

" ############################################################################
" # >>> -----------               BINDINGS                 ------------- <<< #
" ############################################################################

" LEADER ESC COMMAND KEYS {{{-------------------------------------------------
    " LEADER
    " let mapleader=','
    " let mapleader="\<Space>"
    " nnoremap <SPACE> <Nop>
    " let mapleader=" "
    map <SPACE> <Leader>

    " ESC
    " Additional mappings for Esc (useful for MacBook with touch bar)
    inoremap jj <Esc>
    inoremap jk <Esc>
    imap fj <esc>
    imap jf <esc>
    " Try ESC Shortcut
    "nnoremap <Tab> <Esc>
    "vnoremap <Tab> <Esc>gV
    "onoremap <Tab> <Esc>
    "cnoremap <Tab> <C-C><Esc>
    "inoremap <Tab> <Esc>`^
    "inoremap <Leader><Tab> <Tab>

    " COMMAND
    " one less key to press everytime I want to save
    " easy access to command, keeping t|T|f|F
    nnoremap ; :
    nnoremap : ;

"}}}
" TAG BAR {{{-----------------------------------------------------------------
    nmap <F8> :TagbarToggle<CR>

"}}}
" EASY MOTION {{{-------------------------------------------------------------

    map <Leader> <Plug>(easymotion-prefix)
    
    " <Leader>f{char} to move to {char}
    map  <Leader>f <Plug>(easymotion-bd-f)
    nmap <Leader>f <Plug>(easymotion-overwin-f)
    
    " s{char}{char} to move to {char}{char}
    nmap <Leader>s <Plug>(easymotion-overwin-f2)
    
    " Move to line
    map <Leader>L <Plug>(easymotion-bd-jk)
    nmap <Leader>L <Plug>(easymotion-overwin-line)
    
    " Move to word
    map  <Leader>w <Plug>(easymotion-bd-w)
    nmap <Leader>w <Plug>(easymotion-overwin-w)

"}}}
" TMUX {{{--------------------------------------------------------------------

    " TMUX: if no vim-tmux-navigator, do the same in Vim only
    " split navigations
    "nnoremap <C-J> <C-W><C-J>
    "nnoremap <C-K> <C-W><C-K>
    "nnoremap <C-L> <C-W><C-L>
    "nnoremap <C-H> <C-W><C-H>

"}}}
" TABULARIZE {{{--------------------------------------------------------------

    " if exists(":Tabularize")
    " nmap <Leader>t= :Tabularize /=<CR>
    " vmap <Leader>t= :Tabularize /=<CR>
    " nmap <Leader>t: :Tabularize /:\zs<CR>
    " vmap <Leader>t: :Tabularize /:\zs<CR>
    " nmap <Leader>t> :Tabularize /><CR>
    " vmap <Leader>t> :Tabularize /><CR>
    " endif

"}}}
" TABS {{{--------------------------------------------------------------------

    " Ctrl+PagUp or Down
    nnoremap th  :tabfirst<CR>
    nnoremap tj  :tabnext<CR>
    nnoremap tk  :tabprev<CR>
    nnoremap tl  :tablast<CR>
    nnoremap tt  :tabedit<Space>
    nnoremap tm  :tabm<Space>
    nnoremap td  :tabclose<CR>
    nnoremap tn :tabnew<CR>
    " in normal mode Tab is useless.Map tab key to switch tab.
    " nmap <tab> gt
    " nmap <s-tab> gT

"}}}
" OTHERS {{{------------------------------------------------------------------

    " Shortcut to rapidly toggle `set list`
    nmap <leader>l :set list!<CR>
    
    " Search mappings: These will make it so that going to the next one in a
    " search will center on the line it's found in.
    map N Nzz
    map n nzz
    
    " free space !
    nmap go o<ESC>xk
    nmap gO O<ESC>j
    nmap g<C-S-O> O<ESC>jo<ESC>k

    " Double quote, bracket etc...
    " doesn't work pretty well
    "imap <leader>' ''<ESC>i
    "imap <leader>" ""<ESC>i
    "imap <leader>( ()<ESC>i
    "imap <leader>[ []<ESC>i
    "imap <leader>{ {}<ESC>i
    
    " Open your .vimrc in a vertical split
    nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
    " Open in a buffer
    nnoremap <leader>eb :e $MYVIMRC<cr>
    
    " Toggle Numbers Relative / Abs
    nnoremap <Leader>n :call NumberToggleMode()<cr>
    highlight LineNr ctermfg=grey
    " nnoremap <Leader><S-n> :call NumberToggleVisibility()<cr>
    " nmap <leader><C-N>n :call NumberToggleVisibility()<cr>
    
    " Buffers Next, Previous, Delete 
    nmap gN ;enew<cr>
    nmap gV ;vnew<cr>
    map gn ;bn<cr>
    map gp ;bp<cr>
    map gd ;bd<cr>
    
    " switch higlight no matter the previous state
    noremap <leader>h :set hlsearch! hlsearch?<cr>
    
    " toggle paste mode. (disable autoindent etc...)
    set pastetoggle=<F2>
    
    " Yank to end of line
    nnoremap Y y$
    " " Reselect last-pasted text
    nnoremap gv `[v`]

"}}}
" No no no! You gonna learn Vim! {{{------------------------------------------

    map      <up>    <nop>
    map      <down>  <nop>
    map      <left>  <nop>
    map      <right> <nop>
    inoremap <up>    <nop>
    inoremap <down>  <nop>
    inoremap <left>  <nop>
    inoremap <right> <nop>
    nnoremap j       gj
    nnoremap k       gk

"}}}

" ############################################################################
" # >>> -----------               ABBREVIATION             ------------- <<< #
" ############################################################################

" CORRECT & DATE {{{----------------------------------------------------------

    iabbr ture true
    iabbr flase false
	iabbr xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>
	iabbr ydate <c-r>=strftime("%d/%m/%y")<cr>

"}}}

" ############################################################################
" # >>> -----------               AUTO-COMMANDs            ------------- <<< #
" ############################################################################

" LINE RETURN {{{-------------------------------------------------------------

    " Make sure Vim returns to the same line when you reopen a file.
    " Thanks, Amit
    augroup line_return
        au!
        au BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \     execute 'normal! g`"zvzz' |
            \ endif
    augroup END

"}}}
" SAVE WHEN LOOSE FOCUS {{{---------------------------------------------------

    " Save when loose focus.
    " au FocusLost * :wa
    " Save when losing focus
    au FocusLost * :silent! wall

"}}}
" SWAP NUMBERS ON FOCUS {{{---------------------------------------------------

    " Works only in GVim ?
    au FocusLost   * :set number
    au FocusLost   * :set norelativenumber
    au FocusGained * :set number
    au FocusGained * :set relativenumber

"}}}
" TOGGLE NUMBERS {{{----------------------------------------------------------

    " Toggle Numbers: Relative / Abs
    augroup numbertoggle
      autocmd!
      autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
      autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
    augroup END

"}}}
" AUTO RELOAD .vimrc On change >> don't work {{{------------------------------

    augroup myvimrc
        au!
        au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
    augroup END

"}}}
" TRAILING WHITESPACE {{{-----------------------------------------------------

    " Only shown when not in insert mode so I don't go insane.
    augroup trailing
        au!
        au InsertEnter * :set listchars-=trail:⌴
        au InsertLeave * :set listchars+=trail:⌴
    augroup END

"}}}

" ############################################################################
" # >>> -----------               FUNCTIONS                ------------- <<< #
" ############################################################################

"  AUTO SAVE FOLDS {{{--------------------------------------------------------

    " augroup AutoSaveFolds
    "     autocmd!
    "     autocmd BufWinLeave * mkview
    "     autocmd BufWinEnter * silent loadview
    " augroup END

"}}}
" TOGGLE NUMBERS Relative / Abs {{{-------------------------------------------

    " Toggle Liner Number Mode -----------------------------------------------
    function! NumberToggleMode()
        if(&relativenumber == 1)&& (&number == 1)
            set number
            set norelativenumber
        else
            if(&relativenumber == 0)&& (&number == 1)
                set nonumber
                set norelativenumber
            else
                if(&relativenumber == 0)&& (&number == 0)
                    set number
                    set relativenumber
                endif
            endif
        endif
    endfunc

"}}}
" HAS PASTE {{{---------------------------------------------------------------

    " Returns true if paste mode is enabled ----------------------------------
    function! HasPaste()
        if &paste
            return 'PASTE MODE  '
        endif
        return ''
    endfunction

"}}}
" RANGER CHOOSER :Leader r launch ranger chooser {{{--------------------------

    " RangerChooser :Leader r  launch ranger chooser -------------------------
    function! RangeChooser()
        let temp = tempname()
        " The option "--choosefiles" was added in ranger 1.5.1. Use the next line
        " with ranger 1.4.2 through 1.5.0 instead.
        "exec 'silent !ranger --choosefile=' . shellescape(temp)
        if has("gui_running")
            exec 'silent !xterm -e ranger --choosefiles=' . shellescape(temp)
        else
            exec 'silent !ranger --choosefiles=' . shellescape(temp)
        endif
        if !filereadable(temp)
            redraw!
            " Nothing to read.
            return
        endif
        let names = readfile(temp)
        if empty(names)
            redraw!
            " Nothing to open.
            return
        endif
        " Edit the first item.
        exec 'edit ' . fnameescape(names[0])
        " Add any remaning items to the arg list/buffer list.
        for name in names[1:]
            exec 'argadd ' . fnameescape(name)
        endfor
        redraw!
    endfunction
    command! -bar RangerChooser call RangeChooser()
    nnoremap <leader>r :<C-U>RangerChooser<CR>

"}}}
" Visual selection search with * or  # {{{------------------------------------

    function! VisualSelection(direction, extra_filter) range
        let l:saved_reg = @"
        execute "normal! vgvy"

        let l:pattern = escape(@", "\\/.*'$^~[]")
        let l:pattern = substitute(l:pattern, "\n$", "", "")

        if a:direction == 'gv'
            call CmdLine("Ack '" . l:pattern . "' " )
        elseif a:direction == 'replace'
            call CmdLine("%s" . '/'. l:pattern . '/')
        endif

        let @/ = l:pattern
        let @" = l:saved_reg
    endfunction

"}}}
" Dont't close win {{{--------------------------------------------------------

    " Don't close window, when deleting a buffer -----------------------------
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

"}}}
