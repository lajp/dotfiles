let mapleader=" "
nnoremap <SPACE> <Nop>
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
tnoremap <Esc> <C-\><C-n>
nnoremap <leader>t :vs term://zsh<CR>
nnoremap <silent> <leader>ee :lua vim.diagnostic.open_float()<CR>
nnoremap <silent> K :lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <leader>af :lua vim.lsp.buf.code_action()<CR>
