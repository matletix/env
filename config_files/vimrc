""""""""""""""""""""""""""""""""""""""""""""""""""
" Source a global configuration file if available
""""""""""""""""""""""""""""""""""""""""""""""""""
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif


""""""""""""""""""""""""""""""""""""""""""""""""""
" Jump to the last position when reopening a file
""""""""""""""""""""""""""""""""""""""""""""""""""
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif


""""""""""""""""""""""""""""""""""""""""""""""""""
" Mapping F9 for running python files in Vim
""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType python nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""
" Indentation
""""""""""""""""""""""""""""""""""""""""""""""""""
" To see a good and intelligent way of indenting your code, look at :
"
" http://vim.wikia.com/wiki/Indent_with_tabs,_align_with_spaces
" http://www.emacswiki.org/emacs/SmartTabs
"
" It is based on the distinction made between 'Alignment' and 'Indentation' 
" and can be resumed by those three simple rules :
"    * use hard tabs to indent
"    * use spaces to align
"    * never align elements that have different indent levels
"
" For further details about the Vim indent features, see :
" http://vim.wikia.com/wiki/VimTip83
"
" set autoindent                                    " Copy indent from current line when starting a new line
" set shiftwidth=4                                  " Affects what happens when you press >>, << or ==
" set tabstop=4                                     " Width of the TAB character
" set noexpandtab                                   " Default value
filetype plugin indent on                         " Load indentation rules and plugins according to the detected filetype

" In order to change all tabs to 4 spaces, use :
set tabstop=4
set shiftwidth=4
set expandtab

""""""""""""""""""""""""""""""""""""""""""""""""""
" Automatic line wrapping
""""""""""""""""""""""""""""""""""""""""""""""""""
set formatoptions+=t                              " Controls whether or not automatic text wrapping is enabled
                                                  " (on : fo+=t, off : fo-=t)
set textwidth=79                                  " Automatic line wrapping to 79 char 


""""""""""""""""""""""""""""""""""""""""""""""""""
" Some options
""""""""""""""""""""""""""""""""""""""""""""""""""
"set compatible                                   " Make Vim more Vi-compatible
syntax on                                         " Enable syntax highlighting
set background=dark                               " Dark background
set mouse=a                                       " Enable mouse usage (all modes)
set number                                        " Enable line numbering as default
set showcmd	                                      " Show (partial) command in status line.
set showmatch                                     " Show matching brackets.
set ruler                                         " Show the line and column number of the cursor position
set ignorecase                                    " Do case insensitive matching
set smartcase                                     " Do smart case matching
set incsearch                                     " Incremental search
set autowrite                                     " Automatically save before commands like :next and :make
"set hidden                                       " Hide buffers when they are abandoned

""""""""""""""""""""""""""""""""""""""""""""""""""
" SOME OPTIONS FOR THE GRAPHICAL 
" ENVIRONMENT OF VIM
""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme desert                                 " Color theme
set guifont=Monospace\ 11                          " Police

""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM REMAPPING FOR THE BÉPO KEYBOARD LAYOUT
""""""""""""""""""""""""""""""""""""""""""""""""""
" {W} -> [É]
" ——————————
" On remappe W sur É :
noremap é w
noremap É W
" Corollaire, pour effacer/remplacer un mot quand on n’est pas au début (daé / laé).
" (attention, cela diminue la réactivité du {A}…)
noremap aé aw
noremap aÉ aW
" Pour faciliter les manipulations de fenêtres, on utilise {W} comme un Ctrl+W :
noremap w <C-w>
noremap W <C-w><C-w>
 
" [HJKL] -> {CTSR}
" ————————————————
" {cr} = « gauche / droite »
noremap c h
noremap r l
" {ts} = « haut / bas »
noremap t j
noremap s k
" {CR} = « haut / bas de l'écran »
noremap C H
noremap R L
" {TS} = « joindre / aide »
noremap T J
noremap S K
" Corollaire : repli suivant / précédent
noremap zs zj
noremap zt zk
 
" {HJKL} <- [CTSR]
" ————————————————
" {J} = « Jusqu'à »            (j = suivant, J = précédant)
noremap j t
noremap J T
" {L} = « Change »             (l = attend un mvt, L = jusqu'à la fin de ligne)
noremap l c
noremap L C
" {H} = « Remplace »           (h = un caractère slt, H = reste en « Remplace »)
noremap h r
noremap H R
" {K} = « Substitue »          (k = caractère, K = ligne)
noremap k s
noremap K S
" Corollaire : correction orthographique
noremap ]k ]s
noremap [k [s
 
" Désambiguation de {g}
" —————————————————————
" ligne écran précédente / suivante (à l'intérieur d'une phrase)
noremap gs gk
noremap gt gj
" onglet précédant / suivant
noremap gb gT
noremap gé gt
" optionnel : {gB} / {gÉ} pour aller au premier / dernier onglet
noremap gB :exe "silent! tabfirst"<CR>
noremap gÉ :exe "silent! tablast"<CR>
" optionnel : {g"} pour aller au début de la ligne écran
noremap g" g0
 
" <> en direct
" ————————————
noremap « <
noremap » >
 
" Remaper la gestion des fenêtres
" ———————————————————————————————
noremap wt <C-w>j
noremap ws <C-w>k
noremap wc <C-w>h
noremap wr <C-w>l
noremap wd <C-w>c
noremap wo <C-w>s
noremap wp <C-w>o
noremap w<SPACE> :split<CR>
noremap w<CR> :vsplit<CR>

""""""""""""""""""""""""""""""""""""""""""""""
" Here is a memo of useful features of Vim
""""""""""""""""""""""""""""""""""""""""""""""
" select                                   v                                     
" select row(s)                            SHIFT + v                             
" select blocks (columns)                  CTRL  + v                             
" indent selected text                     >                                     
" unindent selected text                   <                                     
" list buffers                             :ls                                   
" open buffer                              :bN (N = buffer number)               
" print                                    :hardcopy                             
" open a file                              :e /path/to/file.txt                  
"                                          :e C:\Path\To\File.txt                
" sort selected rows                       :sort                                 
" search for word under cursor             *                                     
" open file under cursor                   gf                                    
"   (absolute path or relative)                                                  
" format selected code                     =                                     
" select contents of entire file           ggVG                                  
" convert selected text to uppercase       U                                     
" convert selected text to lowercase       u                                     
" invert case of selected text             ~                                     
" convert tabs to spaces                   :retab                                
" start recording a macro                  qX (X = key to assign macro to)       
" stop recording a macro                   q                                       
" playback macro                           @X (X = key macro was assigned to)    
" replay previously played macro *         @@                                    
" auto-complete a word you are typing **   CTRL + n                              
" bookmark current place in file           mX (X = key to assign bookmark to)    
" jump to bookmark                         `X (X = key bookmark was assigned to  
"                                              ` = back tick/tilde key)          
" show all bookmarks                       :marks                                
" delete a bookmark                        :delm X (X = key bookmark to delete)   
" delete all bookmarks                     :delm!                                 
" split screen horizontally                :split                                
" split screen vertically                  :vsplit                               
" navigating split screens                 CTRL + w + j = move down a screen     
"                                          CTRL + w + k = move up a screen       
"                                          CTRL + w + h = move left a screen     
"                                          CTRL + w + l = move right a screen    
" close all other split screens            :only                                 
" 
" *  - As with other commands in vi, you can playback a macro any number of times.
"      The following command would playback the macro assigned to the key `w' 100
"      times: 100@w
" 
" ** - Vim uses words that exist in your current buffer and any other buffer you 
"      may have open for auto-complete suggestions.
