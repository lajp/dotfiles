filetype plugin indent on

syntax enable

let g:vimtex_view_method = 'zathura'

lua << EOF
require'cmp'.setup {
  sources = {
    { name = 'omni' }
  }
}
EOF

setlocal wrap
setlocal linebreak
