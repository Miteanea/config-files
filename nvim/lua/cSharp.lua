print("cSharp config!!!")
--[[
" plugins
call plug#begin()

	Plug 'tpope/vim-sensible'

	Plug 'tpope/vim-dadbod'
	Plug 'kristijanhusak/vim-dadbod-completion'
	Plug 'kristijanhusak/vim-dadbod-ui'

	Plug 'OmniSharp/omnisharp-vim'

	Plug 'dense-analysis/ale'
	" Plug 'puremourning/vimspector'

call plug#end()

let g:OmniSharp_server_stdio = 1


" Tell ALE to use OmniSharp for linting C# files, and no other linters.
let g:ale_linters = { 'cs': ['OmniSharp'] }

]]--
