" Vim syntax file
" Language:	OxMetrics
" Maintainer:	lesguillemets (https://github.com/lesguillemets)
" Last Change:	2013 Nov 22

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" We need nocompatible mode in order to continue lines with backslashes.
" Original setting will be restored.
let s:cpo_save = &cpo
set cpo&vim

syn keyword oxRepeat	do for foreach while
syn keyword oxLabel	case default parallel serial
syn keyword oxConditional	if else switch switch_single
syn keyword oxType	array char double int matrix string
syn keyword oxStatement	break continue goto return
syn keyword oxDeclare	decl class struct
syn keyword oxQualifier	const
syn keyword oxSpecifier extern private protected public static
syn keyword oxDeclWrapper namespace
syn keyword oxOp	delete new

syn keyword oxBool FALSE TRUE
syn keyword oxSpecialNum .Nan .Infm

hi def link oxRepeat Repeat
hi def link oxLabel Label
hi 
