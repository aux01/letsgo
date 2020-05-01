# ctags - let's go

[Homepage](http://ctags.sourceforge.net) |
[Manual](http://ctags.sourceforge.net/ctags.html) |
[Wikipedia](https://en.wikipedia.org/wiki/Ctags) |
[Blog 1](https://ricostacruz.com/til/navigate-code-with-ctags) |
[Blog 2](https://andrew.stwrt.ca/posts/vim-ctags/)

The `ctags` utility generates a file (usually named `tags`) for source code in
the current directory and, optionally, for subdirectories.

Many editors and especially vim have good support for jumping around code if a
`tags` file is available. For instance, in vim you press <kbd>Ctrl+]</kbd> when
the cursor is over a function name to jump to the definition of that function.
Press <kbd>Ctrl+O</kbd> to jump back.

`ctags` has been around in some form forever and [was even included in early
POSIX/SUS specifications][og].

Unfortunately, the version of ctags installed by default on most systems doesn't
work well with modern C codebases. There is a more feature-rich version
available called exuberant-ctags, here:

<http://ctags.sourceforge.net>

[og]: https://pubs.opengroup.org/onlinepubs/9699919799/utilities/ctags.html

### Installing

#### Debian/Ubuntu

    apt install ctags

#### Mac/Homebrew

    brew install ctags

### Usage

Check out the Makefile example for usage.
