Ox-syntax.vim
=============

syntax files for Ox / OxMetrics.

## About
This plugin is an attempt to supply better syntax highlighting for ox programming language.
For I am not familiar with this language, any comments or suggestions (and/or pull requests) are highly appreciated.


## Features
I'm working on this plugin and there aren't many features yet.

* Full, yet provisional support for reserved word highlighting.
* Numbers : int and float in usual form (1.93), no exp or anything, supported.
* Strings : Supported.
* Comments : Supported.
* `#include` and others : I think I've managed to support them, but there can be some bugs.
* To-Dos : string "TODO" will be highlighted accordingly within comment.
* Built-in functions : Fully supported, but I'm not sure if highlighting all the built-in's is preferred.
* ftplugin to set format options and comment options properly.

The features listed above are not fully tested yet, thus
there are probably some bugs. Please let me know if you find something.

## Installation
If you're using `neobundle`, Put this line in your `.vimrc`

```vim
Neobundle 'git://github.com/lesguillemets/Ox-syntax.vim.git'
```

and call `:NeoBundleInstall`. 
This plugin is very young and thus may be updated very frequently, 
so using some kind of plugin manager is highly recommended.

If you don't want to use any of these, Download and put files in your `$VIM/`.  
In my environment, for example, `syntax/ox.vim` will go to `~/.vim/syntax/ox.vim`.

## Configuration

This plugin should work out of the box, and there are few options available.

If you want to disable highlighting all the built-in functions, try adding

```vim
let g:OXSyntaxHighlightBuiltins=0
```

to your .vimrc.

## Todo-s

* Revise the categorization and highlighting of reserved keywords.
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

Any comments, issues and/or pull requests are greatly appreciated. You can use either English or Japanese, or French if absolutely necessary, to contact me.

## License

MIT

## History

22 Nov 2013 : First commit.   
23 Nov 2013 : Basic features are implemented.
