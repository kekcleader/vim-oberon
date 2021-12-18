`oberon.vim` is a simple syntax file to get a colored view
of Oberon modules (`*.Mod` files).

*See Russian below // На русском — ниже*

Usage
=====

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

______

`oberon.vim` — это файл для подсветки ситаксиса языка Оберон
в программе Vim (файлы `*.Mod`).

Использование
=============

1. Поместите oberon.vim в каталог синтаксиса Vim. Обычно это ~/.vim/syntax. Если директория не существует, создайте ее.

2. Впишите следующий текст где-нибудь в файле `.vimrc`:
```
au BufNewFile,BufRead *.Mod set filetype=oberon
au BufNewFile,BufRead *.cp set filetype=oberon
```

Файл `.vimrc` обычно находится в вашем домашнем каталоге.
Можно воспользовать командой `vim ~/.vimrc`.
