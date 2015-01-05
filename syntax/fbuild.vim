" Vim syntax file
" Language: FastBuild

if exists("b:current_syntax")
  finish
endif

let b:current_syntax = "fbuild"

" Syntax definition
syn keyword fbKeyword in include

syn keyword fbCommand Alias Compiler Copy CopyDir CSAssembly DLL Exec Executable ForEach Library ObjectList Print Settings Test Unity Using VCXProject

syn keyword fbOptions AdditionalOptions ApplicationEnvironment AssemblySearchPath AumidOverride CachePath Compiler CompilerForceUsing CompilerInputExcludePath CompilerInputFiles CompilerInputPath CompilerInputPathRecurse CompilerInputPattern CompilerInputUnity CompilerOptions CompilerOutput CompilerOutputExtension CompilerOutputPath CompilerReferences DebuggerFlavor DefaultLanguage Dest Environment ExecArguments ExecExecutable ExecInput ExecOutput Executable ExecWorkingDir ExtraFiles FileType ForcedIncludes ForcedUsingAssemblies IncludeSearchPath IntermediateDirectory LayoutDir LayoutExtensionFilter Librarian LibrarianAdditionalInputs LibrarianOptions LibrarianOutput Libraries Linker LinkerAssemblyResources LinkerLinkObjects LinkerOptions LinkerOutput LinkerStampExe LinkerStampExeArgs LocalDebuggerCommand LocalDebuggerCommandArguments LocalDebuggerEnvironment LocalDebuggerWorkingDirectory Output OutputDirectory Pattern PCHInputFile PCHOutputFile PCHOptions PlatformToolset PreBuildDependencies PreprocessorDefinitions ProjectBuildCommand ProjectRebuildCommand ProjectCleanCommand ProjectConfigs ProjectOutput ProjectInputPaths ProjectInputPathsExcluded ProjectFiles ProjectFilesToExclude ProjectGuid ProjectBasePath ProjectFileTypes ProjectReferences ProjectProjectReferences RootNamespace Source SourceExcludePaths SourcePaths SourcePathsPattern SourcePathsRecurse Targets TestArguments TestExecutable TestOutput TestWorkingDir UnityInputExcludedFiles UnityInputExcludePath UnityInputFiles UnityInputIsolateWritableFiles UnityInputPath UnityInputPathRecurse UnityInputPattern UnityNumFiles UnityOutputPath UnityOutputPattern UnityPCH Workers X360DebuggerCommand

syn match fbComment ";.*$"
syn match fbComment "//.*$"

syn region fbString start="'" end="'"
syn region fbString start='"' end='"'


" Syntax highlighting
hi def link fbKeyword Statement
hi def link fbComment Comment
hi def link fbOptions Type
hi def link fbCommand PreProc
hi def link fbString Constant
