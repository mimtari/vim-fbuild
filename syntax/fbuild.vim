" Vim syntax file
" Language: FastBuild

if exists("b:current_syntax")
  finish
endif

let b:current_syntax = "fbuild"

" Syntax definition
syn keyword fbKeyword in

syn keyword fbFunction Alias
syn keyword fbFunction Compiler
syn keyword fbFunction Copy
syn keyword fbFunction CopyDir
syn keyword fbFunction CSAssembly
syn keyword fbFunction DLL
syn keyword fbFunction Exec
syn keyword fbFunction Executable
syn keyword fbFunction ForEach
syn keyword fbFunction Library
syn keyword fbFunction ObjectList
syn keyword fbFunction Print
syn keyword fbFunction Settings
syn keyword fbFunction Test
syn keyword fbFunction Unity
syn keyword fbFunction Using
syn keyword fbFunction VCXProject

syn keyword fbInclude #include
syn keyword fbDefine  #define
syn keyword fbPreCond #if
syn keyword fbPreCond #endif
syn match   fbPreProc "#[a-z]*"
syn match   fbMacro   "__[A-Z0-9]*__"

syn match   fbComment ";.*$"
syn match   fbComment "//.*$"

syn region  fbString start="'" end="'"
syn region  fbString start='"' end='"'

syn match   fbVariable "\.[A-Z][A-Za-z0-9_]*"

" Syntax highlighting
hi def link fbKeyword  Statement
hi def link fbComment  Comment
hi def link fbInclude  Include
hi def link fbDefine   Define
hi def link fbPreCond  PreCond
hi def link fbPreproc  PreProc
hi def link fbMacro    Macro
hi def link fbFunction Function
hi def link fbString   String
hi def link fbVariable Identifier
