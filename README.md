Ox-syntax.vim
=============

syntax files for Ox / OxMetrics.

## About
This plugin is an attempt to supply better syntax highlighting for ox programming language.
For I am not familiar with this language, any comments or suggestions (and/or pull requests) are highly appreciated.

## Features
I'm working on this plugin and there aren't many features yet.

* Partial support for reserved word highlighting.
* Numbers : int and float in usual form (1.93), no exp or anything, supported.
* Strings : Roughly supported.
* comments : Basically supported. There may be some bugs.
* To-Dos : string "TODO" will be highlighted accordingly within comment.
* Built-in functions : Fully supported, but I'm not sure if highlighting all the built-in's is preferred.

Everything else is yet to be supported.

## Todo-s

* Categorise reserved words properly and set highlights accordingly.
* Support for `#include` and others.
* See if we can highlight function definitions.
* Full support for numbers.
* Review regular expressions.
* Think of something better and fun.
* Context-sensitive syntax highlighting, if required, and if possible.
* Learn ox. ;-)

## Screenshots

Not ready yet.

## Current Highlighting

I'm thinking of building a table like this:

|object            |grouped as  |highlighted as|
|------            |----------- |--------------|
|TODO (in comment) |oxTodo      |Todo          |
|0,1,2,3,...       |oxNumber    |Constant      |
|built-in functions|oxBuiltinxxx|Function      |

But I'll wait for these to be more stable.

## Author

lesguillemets. I'd like to thank saji for recommending this language to us.

## License

MIT
