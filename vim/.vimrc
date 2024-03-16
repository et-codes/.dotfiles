let mapleader = " " " set leader key to space

set autoindent      " indent new lines
set noflash
set expandtab       " replace tabs with spaces
set tabstop=2       " number of spaces to replace tab with
set noignorecase    " don't ignore case in search
set autowrite       " write files when changing with multiple files open
set nonumber        " no line numbers
set norelativenumber " no relative line numbers
set showmode        " show command and insert mode
set t_vb=           " disable visual bell
set softtabstop=2
set smartindent
set smarttab
set shiftwidth=2
set wrap            " Wrap text at edge of window
set linebreak       " Don't wrap in middle of a word
set scrolloff=10    " 10 lines above and below when scrolling

" Highlight search results
set hlsearch
set incsearch

" Disable search highlighting with <C-L> when refreshing screen
nnoremap <C-L> :nohl<CR><C-L>

" Mark trailing spaces as errors
match IncSearch '\s\+$'

" Wrap when searching
set wrapscan

" Ruler format
set ruler
set rulerformat=%30(%=%#LineNr#%.50F\ [%{strlen(&ft)?&ft:'none'}]\ %l:%c\ %p%%%)

" stop complaints about switching buffer with changes
set hidden

" command history
se history=100

" Turn on syntax highlighting
syntax on

" faster scrolling
set ttyfast

" allow sensing the filetype
filetype plugin on

" Configure backspace
set backspace=indent,eol,start

" Load plugins if Plug is installed
if filereadable(expand("~/.vim/autoload/plug.vim"))
  call plug#begin()
    "Plug 'gruvbox-community/gruvbox'
    Plug 'dense-analysis/ale'
    Plug 'fatih/vim-go', { 'do': 'GoInstallBinaries' }
    Plug 'preservim/nerdtree'
    Plug 'rstacruz/vim-closer'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install()  } }
    Plug 'junegunn/fzf.vim'
  call plug#end()

  " golang options
  let g:go_version_warning = 0
  let g:go_fmt_fail_silently = 0
  let g:go_fmt_command = 'goimports'
  let g:go_fmt_autosave = 1
  let g:go_gopls_enabled = 1
  let g:go_highlight_types = 1
  let g:go_highlight_fields = 1
  let g:go_highlight_functions = 1
  let g:go_highlight_function_calls = 1
  let g:go_highlight_operators = 1
  let g:go_highlight_extra_types = 1
  let g:go_highlight_variable_declarations = 1
  let g:go_highlight_variable_assignments = 1
  let g:go_highlight_build_constraints = 1
  let g:go_highlight_diagnostic_errors = 1
  let g:go_highlight_diagnostic_warnings = 1
  let g:go_auto_sameids = 0

  " map keyboard shortcut for NerdTree
  nnoremap <C-z> :NERDTreeToggle<CR>

  " NOTE: install FZF and ripgrep before using this
  " map keyboard shortcuts for FZF
  nnoremap <C-f> :Files<CR>
  nnoremap <Leader>f :Rg<CR>

endif

" enable omni-completion
set omnifunc=syntaxcomplete#Complete
imap <tab><tab> <c-x><c-o>

" functions keys
map <F1> :set number!<CR> :set relativenumber!<CR>
