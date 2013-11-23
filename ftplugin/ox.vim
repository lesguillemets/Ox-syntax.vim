" Vim filetype plugin file
" Language:	Ox
" Maintainer:	lesguillemets (https://github.com/lesguillemets)
" Last Change:	2013 Nov 23 
" based on c.vim.

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif

" Don't load another plugin for this buffer
let b:did_ftplugin = 1

" Set 'formatoptions' to break comment lines but not other lines,
" and insert the comment leader when hitting <CR> or using "o".
setlocal fo-=t fo+=croql
