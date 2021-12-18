oberon.vim is a simple syntax file to get a colored view
of Oberon modules (`*.Mod` files).

![Vim Oberon syntax highlight](https://free.oberon.org/images/oberon_vim_syntax.png)

*ПО-РУССКИ — СМ. НИЖЕ*

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

You can use the command `vim ~/.vimrc`.

______

oberon.vim реализует подсветку ситаксиса для языка Оберон
(файлы `*.Mod`) в редакторе Vim.

Использование
=============

1. Поместите `oberon.vim` в каталог с синтаксическими файлами Vim.
Обычно это `~/.vim/syntax`. Если директория не существует, создайте её.

2. Впишите следующий текст где-нибудь в файле `.vimrc`:
```
au BufNewFile,BufRead *.Mod set filetype=oberon
au BufNewFile,BufRead *.cp set filetype=oberon
```

Файл `.vimrc` обычно находится в вашем домашнем каталоге.

Можно воспользовать командой `vim ~/.vimrc`.
