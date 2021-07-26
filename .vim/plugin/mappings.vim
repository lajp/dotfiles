let mapleader=" "
nnoremap <SPACE> <Nop>
"nnoremap <C-p> :FZF<CR>
nnoremap <C-p> :Telescope find_files<CR>
nnoremap <C-f> :Telescope live_grep<CR>
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<CR>gv=gv
nnoremap j gj
nnoremap k gk
nnoremap <C-q> :cw<CR>
nnoremap <C-j> :cnext<CR>
nnoremap <C-k> :cprev<CR>
nnoremap <leader>uw :!update_website.sh<CR>
