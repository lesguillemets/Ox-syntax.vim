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

" define highlight groups {{{1

" keywords listed in /usr/share/OxMetrics7/OxEdit/bin64/ox.def {{{2

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

" comments, numbers, etc. {{{2
syn match   oxComment	 "//.*$" contains=oxTodo
syn region  oxComment start="/\*" end="\*/" contains=oxTodo
syn keyword oxTodo contained TODO

syn match   oxNumber	'\<\d\+\>'
syn match   oxNumber	'\<\d+\.\d*\>'
syn match   oxString	'".\{-}"'

syn region oxInclude	start='#include\s*<' end='>\s*$' contains=oxIncluder,oxIncluded transparent
syn keyword oxIncluder	contained \#include
syn match oxIncluded	contained '(<.*>)\s*$'

" built-in functions {{{2

" date and time functions {{{3
syn keyword oxBuiltinTime	date dayofcalendar dayofeaster dayofmonth dayofweek
syn keyword oxBuiltinTime	time timeofday timer timespan timestr timing today

" general functions {{{3
syn keyword oxBuiltin	any arglist binand bincomp binor columns countc countr
syn keyword oxBuiltin	discretize fuzziness isdotfeq isdotinf isdotmissing
syn keyword oxBuiltin	isdotnan iseq isfeq ismissing isnan limits
syn keyword oxBuiltin	max maxc maxcindex maxr min minc mincindex minr
syn keyword oxBuiltin	prodc prodr rows sizec sizeof sizer sizerc 
syn keyword oxBuiltin	sumc sumr sumsqrc sumsqrr va_arglist

" graphics functions {{{3
syn keyword oxBuiltinGr	CloseDrawWindow Draw DrawAcf DrawAdjust DrawAxis
syn keyword oxBuiltinGr	DrawAxisAuto DrawBoxPlot DrawCorrelogram DrawDensity
syn keyword oxBuiltinGr	DrawHistogram DrawLegend DrawLine DrawMatrix
syn keyword oxBuiltinGr	DrawPLine DrawPSymbol DrawPText DrawQQ
syn keyword oxBuiltinGr	DrawSpectrum DrawSymbol DrawT DrawText DrawTitle
syn keyword oxBuiltinGr	DrawTMatrix DrawX DrawXMatrix DrawXYZ DrawZ
syn keyword oxBuiltinGr	SetDraw SaveDrawWindow SetDrawWindow SetTextWindow
syn keyword oxBuiltinGr	ShowDrawWindow

" input/output functions {{{3
syn keyword oxBuiltinIO	eprintf fclose feof flush fopen format fprint fprintln
syn keyword oxBuiltinIO	fread fremove fscan fseek fsize ftime fwrite
syn keyword oxBuiltinIO	loadmat loadsheet print println savemat scan
syn keyword oxBuiltinIO	sprint sprintbuffer sscan

" istype functions {{{3
syn keyword oxBuiltinIsType	classname clone isarray isclass isdouble isfile
syn keyword oxBuiltinIsType	isfunction isint ismatrix ismember isstring

" mathematical functions {{{3
syn keyword oxBuiltinMath	bessel betafunc binomial cabs cdiv cerf cexp
syn keyword oxBuiltinMath	ceil clog cmul csqrt dawson dfft erf exp expint
syn keyword oxBuiltinMath	fabs factorial fft fft1d floor fmod 
syn keyword oxBuiltinMath	gammafact gammafunc idiv imod log log10 loggamma
syn keyword oxBuiltinMath	polygamma pow round sqr sqrt trunc truncf

" matrix creation {{{3
syn keyword oxBuiltinMatCr	constant diag nans ones range toeplitz unit zeros

" matrix decomposition {{{3
syn keyword oxBuiltinMatDec	choleski decldl decldlband declu 
syn keyword oxBuiltinMatDec	decqr decqrmul decqrupdate decschur decschurgen
syn keyword oxBuiltinMatDec	decsvd eigen eigensym eigensymgen
syn keyword oxBuiltinMatDec	polydiv polyeval polymul polymake polyroots
syn keyword oxBuiltinMatDec	solveldl solveldlband solvelu solvetoeplitz

" matrix functions {{{3
syn keyword oxBuiltinMatFn	determinant diagonalize invert inverteps invertgen
syn keyword oxBuiltinMatFn	invertsym logdet norm nullspace outer rank trace

" matrix modifications / selection / reordering {{{3
syn keyword oxBuiltinMatMSR	aggregatec aggregater deletec deleter
syn keyword oxBuiltinMatMSR	deleteifc deleteifr diagcat diagonal dropc dropr
syn keyword oxBuiltinMatMSR	exclusion find insertc insetr intersection
syn keyword oxBuiltinMatMSR	lower reflect reshape reversec reerser
syn keyword oxBuiltinMatMSR	selectc selectr selectifc selectifr selectrc
syn keyword oxBuiltinMatMSR	setbounds setdiagonal setlower setupper shape
syn keyword oxBuiltinMatMSR	sortbyc sortbyr sortc sortr sortcindex
syn keyword oxBuiltinMatMSR	submat thinc thinr uniion unique invech upper
syn keyword oxBuiltinMatMSR	vec vech vecindex vecr vecrindex

" probability {{{3
syn keyword oxBuiltinProb	denschi densf densn denst probchi probf probn probt
syn keyword oxBuiltinProb	quanchi quanf quann quant tailchi tailf tailn tailt

" random numbers {{{3
syn keyword oxBuiltinRand	ranloopseed rann ranseed ranu

" statistics {{{3
syn keyword oxBuiltinStats	correlation meanc meanr moments
syn keyword oxBuiltinStats	ols2c ols2r olsc olsr quantilec quantiler
syn keyword oxBuiltinStats	standardize spline varc variance varr

" string functions {{{3
" TODO : find might cause overwriting problems.
syn keyword oxBuiltinStr	find replace strfind strfindr strifind strifindr
syn keyword oxBuiltinStr	strlwr strtrim strupr

" system functions {{{3
syn keyword oxBuiltinSys	chdir exit getcwd getenv getfiles getfolders
syn keyword oxBuiltinSys	oxfilename oxprintlevel oxversion
syn keyword oxBuiltinSys	systemcall
" TODO
syn keyword oxBException	oxrunerror oxwarning

" time series (data in columns) {{{3
syn keyword oxBuiltinTimeSr	acf cumsum cumprod cumulate diff0 findsample lag0
syn keyword oxBuiltinTimeSr	periodogram

" trigonometric functions {{{3
syn keyword oxBuiltinTrig	acos asin atan atan2 cos cosh sin sinh tan tanh

" set highlights {{{1

" keywords listed {{{2

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

" comments, numbers, etc {{{2

hi def link oxComment Comment
hi def link oxTodo Todo
hi def link oxNumber Constant
hi def link oxString String

hi def link oxIncluder PreProc
hi def link oxIncluded String

" built-ins {{{2
hi def link oxBuiltinTime Function
hi def link oxBuiltin Function
hi def link oxBuiltinGr Function
hi def link oxBuiltinIO Function
hi def link oxBuiltinIsType Function
hi def link oxBuiltinMath Function
hi def link oxBuiltinMatCr Function
hi def link oxBuiltinMatFn Function
hi def link oxBuiltinMatMSR Function
hi def link oxBuiltinProb Function
hi def link oxBuiltinRand Function
hi def link oxBuiltinStats Function
hi def link oxBuiltinStr Function
hi def link oxBException Exception
hi def link oxBuiltinTimeSr Function
hi def link oxBuiltinTrig Function
