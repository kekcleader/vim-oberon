" Vim syntax file
" Language: Oberon
" Maintainer: Arthur Yefimov <arturefimov@gmail.com>
" Last Change: 2021 Dec 17

" To use this file, add this to your .vimrc:
"   au BufNewFile,BufRead *.Mod set filetype=oberon
"   au BufNewFile,BufRead *.cp set filetype=oberon

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn keyword OberonStatement   BEGIN END CODE
syn keyword OberonModule      MODULE
syn keyword OberonInclude     IMPORT SYSTEM
syn keyword OberonConditional IN IS = # < <= > >= IF THEN ELSE ELSIF CASE
syn keyword OberonOperator    MOD DIV OR / * + - & ~ 
syn keyword OberonStatement   := WITH DO TO BY OF
syn keyword OberonRepeat      FOR WHILE REPEAT UNTIL LOOP
syn keyword OberonProcedure   PROCEDURE
syn keyword OberonFunction    ABS ODD CAP LSL ASH ROR LEN MIN MAX SIZE ORD CHR ENTIER FLOOR FLT INC DEC INCL EXCL COPY NEW HALT ASSERT PACK UNPK LONG SHORT
syn keyword OberonType        INTEGER CHAR LONGINT SHORTINT BOOLEAN REAL LONGREAL SET TINYINT BYTE HUGEINT SHORTCHAR LONGCHAR
syn keyword OberonDeclaration CONST VAR TYPE
syn keyword OberonTypedef     POINTER ARRAY RECORD EXTENSIBLE
syn keyword OberonBoolean     TRUE FALSE
syn keyword OberonKeyword     RETURN EXIT NIL

" Words that are marked inside comments
syn keyword OberonTodo         contained TODO FIXME DEBUG

" Strings, Number, Comments
syn region OberonString  start=+L\='+ end=+'+
syn region OberonString  start=+L\="+ end=+"+
syn match  OberonNumber  "\<[0-9]\+\>"
syn match  OberonNumber  "\<[0-9][0-9A-F]*[XHR]\>"
syn match  OberonNumber  "\<[0-9]\+\.[0-9]*\([ED][-+]\?[0-9]\+\)\?\>"
syn region OberonComment start="(\*" end="\*)" contains=OberonComment,OberonTodo fold

if version >= 508 || !exists("did_c_syn_inits")
  if version < 508
    let did_c_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink OberonFunction    Function
  HiLink OberonConditional Conditional
  HiLink OberonRepeat      Repeat
  HiLink OberonNumber      Number
  HiLink OberonBoolean     Boolean
  HiLink OberonOperator    Operator
  HiLink OberonType        Type
  HiLink OberonDeclaration Type
  HiLink OberonTypedef     Typedef
  HiLink OberonInclude     Include
  HiLink OberonModule      Macro
  HiLink OberonProcedure   Tag
  HiLink OberonStatement   Statement
  HiLink OberonString      String
  HiLink OberonComment     Comment
  HiLink OberonTodo        Todo
  HiLink OberonKeyword     Keyword
  delcommand HiLink
endif

let b:current_syntax = "oberon"
