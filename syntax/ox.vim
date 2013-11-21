" Vim syntax file
" Language:	Ox
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

" keywords listed in /usr/share/OxMetrics7/OxEdit/bin64/ox.def

syn keyword oxRepeat	do for foreach while
syn keyword oxLabel	case default parallel serial
syn keyword oxConditional	if else switch switch_single
syn keyword oxType	array char double int matrix string
syn keyword oxStatement	break continue goto return
syn keyword oxDeclare	decl class struct
syn keyword oxQualifier	const
syn keyword oxSpecifier	extern private protected public static
syn keyword oxDeclWrapper	namespace
syn keyword oxOp	delete new

syn keyword oxBool	FALSE TRUE
syn keyword oxSpecialNum	.Nan .Infm

" comments, numbers, etc.
syn match   oxComment	 "//.*$"
syn region oxComment start="/\*" end="\*/"

syn match oxNumber	'\<\d\+\>'
syn match oxNumber	'\<\d+\.\d*\>'
syn match oxString	'".\{-}"'

" built-in functions

" date and time functions
syn keyword oxBuiltinTime	date dayofcalendar dayofeaster dayofmonth dayofweek
syn keyword oxBuiltinTime	time timeofday timer timespan timestr timing today

" general functions
syn keyword oxBuiltin	any arglist binand bincomp binor columns countc countr
syn keyword oxBuiltin	discretize fuzziness isdotfeq isdotinf isdotmissing
syn keyword oxBuiltin	isdotnan iseq isfeq ismissing isnan limits
syn keyword oxBuiltin	max maxc maxcindex maxr min minc mincindex minr
syn keyword oxBuiltin	prodc prodr rows sizec sizeof sizer sizerc 
syn keyword oxBuiltin	sumc sumr sumsqrc sumsqrr va_arglist

" graphics functions
syn keyword oxBuiltinGr	CloseDrawWindow Draw DrawAcf DrawAdjust DrawAxis
syn keyword oxBuiltinGr	DrawAxisAuto DrawBoxPlot DrawCorrelogram DrawDensity
syn keyword oxBuiltinGr	DrawHistogram DrawLegend DrawLine DrawMatrix
syn keyword oxBuiltinGr	DrawPLine DrawPSymbol DrawPText DrawQQ
syn keyword oxBuiltinGr	DrawSpectrum DrawSymbol DrawT DrawText DrawTitle
syn keyword oxBuiltinGr	DrawTMatrix DrawX DrawXMatrix DrawXYZ DrawZ
syn keyword oxBuiltinGr	SetDraw SaveDrawWindow SetDrawWindow SetTextWindow
syn keyword oxBuiltinGr	ShowDrawWindow

" input/output functions
syn keyword oxBuiltinIO	eprintf fclose feof flush fopen format fprint fprintln
syn keyword oxBuiltinIO	fread fremove fscan fseek fsize ftime fwrite
syn keyword oxBuiltinIO	loadmat loadsheet print println savemat scan
syn keyword oxBuiltinIO	sprint sprintbuffer sscan

" istype functions
syn keyword oxBuiltinIsType	classname clone isarray isclass isdouble isfile
syn keyword oxBuiltinIsType	isfunction isint ismatrix ismember isstring


" set highlights

hi def link oxRepeat Repeat
hi def link oxLabel Label
hi def link oxConditional Conditional
hi def link oxType Type
hi def link oxStatement Statement
hi def link oxDeclare Statement
hi def link oxQualifier StorageClass
hi def link oxSpecifier StorageClass

hi def link oxBool Constant
hi def link oxSpecialNum Constant

hi def link oxComment Comment
hi def link oxNumber Constant
hi def link oxString String

hi def link oxBuiltinTime Function
hi def link oxBuiltin Function
hi def link oxBuiltinGr Function
hi def link oxBuiltinIO Function
hi def link oxBuiltinIsType Function
