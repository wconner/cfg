syntax enable 		" allows for highlighting

colo desert

" Tabs and Spaces
set tabstop=4		" visually show 4 spaces per tab
set softtabstop=4	" number of spaces in tab when editing
set shiftwidth=4    " I believe this is for shifting with >> <<
set ai              " Smarter indenting
set cindent         " Smart c indenting (hopefully)

" UI Config
set number			" show line numbers
set showcmd			" show command in bottom bar
set showmatch		" highlights matching [{()}]
set laststatus=2    "Always show status line

"Searching
set hlsearch		" highlight search matches
set ignorecase
set smartcase       " These 2 lines ignores case in search unless an uppercase letter is used      

" Visual mode pressing * or # searches for the current selection
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

"Movement
" Move vertically by visual line
noremap j gj		
noremap k gk

"Key mappings
command W w !sudo tee % > /dev/null     " :W sudo saves the file 

" Move between split screens
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>

" Split to the right, and to the bottom
set splitbelow
set splitright
