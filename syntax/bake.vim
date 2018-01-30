" Vim syntax file
" Language:	    bake project files
" Maintainer:	Felix Obenhuber <felix@obenhuber.de>
" Last Change:	2018 Jan 30

if exists("b:current_syntax")
    finish
endif

syn keyword	bakeTodo contained TODO FIXME XXX
syn match bakeComment "^#.*" contains=bakeTodo
syn match bakeComment "\s#.*"ms=s+1 contains=bakeTodo
syn keyword bakeProject Adapt CustomConfig Description ExecutableConfig If LibraryConfig Person Project Responsible RequiredBakeVersion Unless
syn keyword bakeStatement ArtifactName CleanSteps DefaultToolchain Dependency Dependency ExitSteps ExternalLibrary ExternalLibrarySearchPath LinkerScript MapFile Prebuild PostSteps PreSteps StartupSteps Set Toolchain UserLibrary
syn keyword bakeInclude ExcludeFiles Files IncludeDir
syn keyword bakeOption add command cmd config default eclipseOrder email env extend extends filter inherit inject lib minimum maximum off on outputDir pathTo push_front remove replace search target type value validExitCodes
syn keyword bakeConfig CommandLine Define Docu Except Flags InternalDefines InternalIncludes LibPostfixFlags LibPrefixFlags LintPolicy Makefile
syn keyword bakeCommand ASM Archiver C CPP Compiler Linker
syn region bakeString start=+"+ skip=+\\\\\|\\"+ end=+"+ oneline

hi def link bakeTodo Comment
hi def link bakeComment	Comment
hi def link bakeProject Special
hi def link bakeStatement Statement
hi def link bakeInclude Include
hi def link bakeOption Constant
hi def link bakeConfig Identifier
hi def link bakeCommand Type
hi def link bakeString String

let b:current_syntax = "bake"
