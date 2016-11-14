" Vim syntax file
" Language:	    bake project files
" Maintainer:	Felix Obenhuber <felix@obenhuber.de>
" Last Change:	2015 Jan 11

if exists("b:current_syntax")
    finish
endif

syn keyword	bakeTodo contained TODO FIXME XXX
syn match bakeComment "^#.*" contains=bakeTodo
syn match bakeComment "\s#.*"ms=s+1 contains=bakeTodo
syn keyword bakeProject CustomConfig Description ExecutableConfig LibraryConfig Person Project Responsible RequiredBakeVersion
syn keyword bakeStatement ArtifactName DefaultToolchain Dependency Dependency ExitSteps ExternalLibrary ExternalLibrarySearchPath LinkerScript MapFile Prebuild PostSteps PreSteps StartupSteps Set Toolchain UserLibrary
syn keyword bakeInclude ExcludeFiles Files IncludeDir
syn keyword bakeOption add command cmd config default eclipseOrder email env extends filter inherit inject lib minimum maximum off on outputDir pathTo remove search target value validExitCodes
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
