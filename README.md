`oberon.vim` is a simple syntax file to get a colored view
of Oberon modules (*.Mod files).

Usage
=================

1. Put the `oberon.vim` inside Vim `syntax` directory.
   Usually it is `~/.vim/syntax`.
   If the directory does not exist, create it.

2. Add the following lines somewhere in your `.vimrc`:
```
au BufNewFile,BufRead *.Mod set filetype=oberon
au BufNewFile,BufRead *.cp set filetype=oberon
```

The `.vimrc` file is usually located in your home directory.
I.e. use the command `vim ~/.vimrc`.
