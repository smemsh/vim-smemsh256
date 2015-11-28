"
" vim-smemsh-256
"   vim 256-color terminal colorscheme based on elflord
"
" magic incantation used to create this file:
"   - start vim with csapprox plugin installed and enabled
"   - :colorscheme solarized
"   - :colorscheme distinguished
"   - :colorscheme elflord
"   - :source my own hand-made highlights (~/.vim/colors/default.vim)
"   - :redir! > /tmp/thisfile
"   - :highlight
"   - add cterm=NONE, ctermfg=fg, ctermbg=bg where missing
"   - add 'hi' keywords
"   - rearrange 'link' lines to have correct syntax for input
"   - grep out into separate sections: colors, links, and clears
"   - hand fixup and make changes as we go after that
"
" stat:
"   - still under development
"
" note:
"   - $TERM eg xterm-256color, screen-256color, rxvt-unicode-256color
"   - no attempt was made to provide gui values, only cterm
"
" scott@smemsh.net
" http://smemsh.net/src/.vim/
" http://spdx.org/licenses/GPL-2.0
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set background=dark
hi clear

if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "smemsh256"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

hi SpecialKey           cterm=NONE      ctermfg=224     ctermbg=0
hi NonText              cterm=NONE      ctermfg=159     ctermbg=0
hi Directory            cterm=NONE      ctermfg=81      ctermbg=0
hi ErrorMsg             cterm=NONE      ctermfg=224     ctermbg=0
hi IncSearch            cterm=NONE      ctermfg=11      ctermbg=12
hi Search               cterm=NONE      ctermfg=11      ctermbg=12
hi MoreMsg              cterm=NONE      ctermfg=11      ctermbg=12
hi ModeMsg              cterm=NONE      ctermfg=15      ctermbg=0
hi LineNr               cterm=NONE      ctermfg=121     ctermbg=0
hi CursorLineNr         cterm=bold      ctermfg=226     ctermbg=bg
hi Question             cterm=NONE      ctermfg=11      ctermbg=12
hi StatusLine           cterm=NONE      ctermfg=121     ctermbg=12
hi StatusLineNC         cterm=NONE      ctermfg=248     ctermbg=12
hi VertSplit            cterm=reverse   ctermfg=fg      ctermbg=bg
hi Title                cterm=bold      ctermfg=201     ctermbg=bg
hi Visual               cterm=NONE      ctermfg=fg      ctermbg=248
hi WarningMsg           cterm=NONE      ctermfg=11      ctermbg=9
hi WildMenu             cterm=NONE      ctermfg=16      ctermbg=226
hi Folded               cterm=NONE      ctermfg=51      ctermbg=248
hi FoldColumn           cterm=NONE      ctermfg=51      ctermbg=250

hi DiffAdd              cterm=NONE      ctermfg=fg      ctermbg=18
hi DiffChange           cterm=NONE      ctermfg=fg      ctermbg=90
hi DiffDelete           cterm=bold      ctermfg=21      ctermbg=30
hi DiffText             cterm=bold      ctermfg=fg      ctermbg=196

hi SignColumn           cterm=NONE      ctermfg=51      ctermbg=250
hi Conceal              cterm=NONE      ctermfg=252     ctermbg=248

hi SpellBad             cterm=NONE      ctermfg=224     ctermbg=0
hi SpellCap             cterm=NONE      ctermfg=12      ctermbg=0
hi SpellRare            cterm=NONE      ctermfg=13      ctermbg=0
hi SpellLocal           cterm=NONE      ctermfg=81      ctermbg=0

hi Pmenu                cterm=NONE      ctermfg=12      ctermbg=248
hi PmenuSel             cterm=NONE      ctermfg=9       ctermbg=15
hi PmenuSbar            cterm=NONE      ctermfg=fg      ctermbg=250
hi PmenuThumb           cterm=NONE      ctermfg=fg      ctermbg=231

hi TabLine              cterm=underline ctermfg=fg      ctermbg=248
hi TabLineSel           cterm=bold      ctermfg=fg      ctermbg=bg
hi TabLineFill          cterm=reverse   ctermfg=fg      ctermbg=bg

hi CursorColumn         cterm=NONE      ctermfg=fg      ctermbg=241
hi CursorLine           cterm=NONE      ctermfg=fg      ctermbg=241
hi ColorColumn          cterm=NONE      ctermfg=fg      ctermbg=88

hi MatchParen           cterm=NONE      ctermfg=fg      ctermbg=30

hi Constant             cterm=NONE      ctermfg=201     ctermbg=bg
hi Special              cterm=NONE      ctermfg=196     ctermbg=bg
hi Identifier           cterm=NONE      ctermfg=87      ctermbg=bg
hi Statement            cterm=bold      ctermfg=131     ctermbg=bg
hi PreProc              cterm=NONE      ctermfg=213     ctermbg=bg
hi Type                 cterm=bold      ctermfg=83      ctermbg=bg
hi Underlined           cterm=underline ctermfg=111     ctermbg=bg
hi Ignore               cterm=NONE      ctermfg=16      ctermbg=bg
hi Error                ctermfg=231     ctermfg=fg      ctermbg=196
hi Todo                 ctermfg=21      ctermfg=fg      ctermbg=226
hi Function             cterm=NONE      ctermfg=231     ctermbg=bg
hi Repeat               cterm=NONE      ctermfg=231     ctermbg=bg
hi Operator             cterm=NONE      ctermfg=196     ctermbg=bg

hi Normal               cterm=NONE      ctermfg=248     ctermbg=0
hi Comment              cterm=NONE      ctermfg=111     ctermbg=bg
hi Cursor               cterm=NONE      ctermfg=15      ctermbg=0
hi SubtleWarningMsg     cterm=NONE      ctermfg=fg      ctermbg=12

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

hi link String                          Constant
hi link Character                       Constant
hi link Number                          Constant
hi link Boolean                         Constant
hi link Float                           Number
hi link Conditional                     Repeat
hi link Label                           Statement
hi link Keyword                         Statement
hi link Exception                       Statement
hi link Include                         PreProc
hi link Define                          PreProc
hi link Macro                           PreProc
hi link PreCondit                       PreProc
hi link StorageClass                    Type
hi link Structure                       Type
hi link Typedef                         Type
hi link Tag                             Special
hi link SpecialChar                     Special
hi link Delimiter                       Special
hi link SpecialComment                  Special
hi link Debug                           Special

hi link vimTodo                         Todo
hi link vimCommand                      Statement
hi link vimOption                       PreProc
hi link vimErrSetting                   vimError
hi link vimAutoEvent                    Type
hi link vimGroup                        Type
hi link vimHLGroup                      vimGroup
hi link vimFuncName                     Function
hi link vimSubst                        vimCommand
hi link vimNumber                       Number
hi link vimAddress                      vimMark
hi link vimAutoCmd                      vimCommand
hi link vimLet                          vimCommand
hi link vimMap                          vimCommand
hi link vimMark                         Number
hi link vimSyntax                       vimCommand
hi link vimVar                          Identifier
hi link vimFBVar                        vimVar
hi link vimInsert                       vimString
hi link vimBehaveModel                  vimBehave
hi link vimBehaveError                  vimError
hi link vimBehave                       vimCommand
hi link vimFTCmd                        vimCommand
hi link vimFTOption                     vimSynType
hi link vimFTError                      vimError
hi link vimNotFunc                      vimCommand
hi link vimFunctionError                vimError
hi link vimLineComment                  vimComment
hi link vimSpecFile                     Identifier
hi link vimOper                         Operator
hi link vimComment                      Comment
hi link vimString                       String
hi link vimRegister                     SpecialChar
hi link vimCmplxRepeat                  SpecialChar
hi link vimNotation                     Special
hi link vimCtrlChar                     SpecialChar
hi link vimFuncVar                      Identifier
hi link vimContinue                     Special
hi link vimAugroupKey                   vimCommand
hi link vimEnvvar                       PreProc
hi link vimFunc                         vimError
hi link vimParenSep                     Delimiter
hi link vimSep                          Delimiter
hi link vimOperError                    Error
hi link vimFuncKey                      vimCommand
hi link vimFuncSID                      Special
hi link vimAbb                          vimCommand
hi link vimEchoHL                       vimCommand
hi link vimHighlight                    vimCommand
hi link vimNorm                         vimCommand
hi link vimUnmap                        vimMap
hi link vimUserCommand                  vimCommand
hi link vimPattern                      Type
hi link vimSpecFileMod                  vimSpecFile
hi link vimSetString                    vimString
hi link vimUserAttrb                    vimSpecial
hi link vimUserAttrbError               Error
hi link vimUserAttrbKey                 vimOption
hi link vimUserAttrbCmplt               vimSpecial
hi link vimUserCmdError                 Error
hi link vimUserAttrbCmpltFunc           Special
hi link vimCommentString                vimString
hi link vimPatSepErr                    vimPatSep
hi link vimPatSep                       SpecialChar
hi link vimPatSepZ                      vimPatSep
hi link vimPatSepZone                   vimString
hi link vimPatSepR                      vimPatSep
hi link vimNotPatSep                    vimString
hi link vimStringCont                   vimString
hi link vimSubstTwoBS                   vimString
hi link vimSubstSubstr                  SpecialChar
hi link vimSubst1                       vimSubst
hi link vimSubstDelim                   Delimiter
hi link vimSubstFlagErr                 vimError
hi link vimCollClassErr                 vimError
hi link vimSubstFlags                   Special
hi link vimMarkNumber                   vimNumber
hi link vimPlainMark                    vimMark
hi link vimPlainRegister                vimRegister
hi link vimSetMod                       vimOption
hi link vimSetSep                       Statement
hi link vimMapMod                       vimBracket
hi link vimEchoHLNone                   vimGroup
hi link vimMapBang                      vimCommand
hi link vimMapModKey                    vimFuncSID
hi link vimMapModErr                    vimError
hi link vimMenuName                     PreProc
hi link vimMenuMod                      vimMapMod
hi link vimMenuNameMore                 vimMenuName
hi link vimBracket                      Delimiter
hi link vimUserFunc                     Normal
hi link vimElseIfErr                    Error
hi link vimBufnrWarn                    vimWarn
hi link vimGroupSpecial                 Special
hi link vimSynError                     Error
hi link vimSynContains                  vimSynOption
hi link vimSynKeyContainedin            vimSynContains
hi link vimSynNextgroup                 vimSynOption
hi link vimSynType                      vimSpecial
hi link vimSynCase                      Type
hi link vimSynCaseError                 vimError
hi link vimGroupName                    vimGroup
hi link vimGroupAdd                     vimSynOption
hi link vimGroupRem                     vimSynOption
hi link vimSynKeyOpt                    vimSynOption
hi link vimMtchComment                  vimComment
hi link vimSynMtchOpt                   vimSynOption
hi link vimSynRegPat                    vimString
hi link vimSynPatRange                  vimString
hi link vimSynNotPatRange               vimSynRegPat
hi link vimSynRegOpt                    vimSynOption
hi link vimSynReg                       Type
hi link vimSynMtchGrp                   vimSynOption
hi link vimSyncC                        Type
hi link vimSyncError                    Error
hi link vimSyncGroupName                vimGroupName
hi link vimSyncKey                      Type
hi link vimSyncGroup                    vimGroupName
hi link vimSyncNone                     Type
hi link vimHiClear                      vimHighlight
hi link vimHiCtermError                 vimError
hi link vimHiGroup                      vimGroupName
hi link vimHiAttrib                     PreProc
hi link vimFgBgAttrib                   vimHiAttrib
hi link vimHiAttribList                 vimError
hi link vimHiGuiRgb                     vimNumber
hi link vimHiTerm                       Type
hi link vimHiCTerm                      vimHiTerm
hi link vimHiStartStop                  vimHiTerm
hi link vimHiCtermFgBg                  vimHiTerm
hi link vimHiGui                        vimHiTerm
hi link vimHiGuiFont                    vimHiTerm
hi link vimHiGuiFgBg                    vimHiTerm
hi link vimHiKeyError                   vimError
hi link vimHiNmbr                       Number
hi link vimCommentTitle                 PreProc
hi link vimScriptDelim                  Comment
hi link vimSearchDelim                  Statement
hi link vimSearch                       vimString

hi link luaTodo                         Todo
hi link luaComment                      Comment
hi link luaParenError                   Error
hi link luaSpecial                      SpecialChar
hi link luaElse                         Conditional
hi link luaIn                           Operator
hi link luaStatement                    Statement
hi link luaTable                        Structure
hi link luaBraceError                   Error
hi link luaError                        Error
hi link luaFunction                     Function
hi link luaCond                         Conditional
hi link luaRepeat                       Repeat
hi link luaLabel                        Label
hi link luaOperator                     Operator
hi link luaConstant                     Constant
hi link luaString2                      String
hi link luaString                       String
hi link luaNumber                       Number
hi link luaFunc                         Identifier
hi link luaFor                          Repeat

hi link podCmdText                      String
hi link podCommand                      Statement
hi link podOverIndent                   Number
hi link podForKeywd                     Identifier
hi link podFormat                       Identifier
hi link podVerbatimLine                 PreProc
hi link podSpecial                      Identifier
hi link podEscape                       String
hi link podEscape2                      Number

hi link perlTodo                        Todo
hi link perlPOD                         perlComment
hi link perlConditional                 Conditional
hi link perlElseIfError                 Error
hi link perlRepeat                      Repeat
hi link perlOperator                    Operator
hi link perlControl                     PreProc
hi link perlStatementStorage            perlStatement
hi link perlStatementControl            perlStatement
hi link perlStatementScalar             perlStatement
hi link perlStatementRegexp             perlStatement
hi link perlStatementNumeric            perlStatement
hi link perlStatementList               perlStatement
hi link perlStatementHash               perlStatement
hi link perlStatementIOfunc             perlStatement
hi link perlStatementFiledesc           perlStatement
hi link perlStatementVector             perlStatement
hi link perlStatementFiles              perlStatement
hi link perlStatementFlow               perlStatement
hi link perlStatementInclude            perlStatement
hi link perlStatementProc               perlStatement
hi link perlStatementSocket             perlStatement
hi link perlStatementIPC                perlStatement
hi link perlStatementNetwork            perlStatement
hi link perlStatementPword              perlStatement
hi link perlStatementTime               perlStatement
hi link perlStatementMisc               perlStatement
hi link perlStatementIndirObj           perlStatement
hi link perlLabel                       Label
hi link perlVarPlain                    perlIdentifier
hi link perlVarNotInMatches             perlIdentifier
hi link perlVarSlash                    perlIdentifier
hi link perlPackageRef                  perlType
hi link perlVarSimpleMember             perlIdentifier
hi link perlMethod                      perlIdentifier
hi link perlVarPlain2                   perlIdentifier
hi link perlFunctionName                perlIdentifier
hi link perlShellCommand                perlString
hi link perlFloat                       Float
hi link perlNumber                      Number
hi link perlStringUnexpanded            perlString
hi link perlString                      String
hi link perlQQ                          perlString
hi link perlArrow                       perlIdentifier
hi link perlVarSimpleMemberName         perlString
hi link perlFiledescRead                perlIdentifier
hi link perlFiledescStatement           perlIdentifier
hi link perlSpecialString               perlSpecial
hi link perlSpecialStringU2             perlString
hi link perlSpecialStringU              perlSpecial
hi link perlSpecialMatch                perlSpecial
hi link perlNotEmptyLine                Error
hi link perlMatchStartEnd               perlStatement
hi link perlVStringV                    perlStringStartEnd
hi link perlParensSQ                    perlString
hi link perlBracketsSQ                  perlString
hi link perlBracesSQ                    perlString
hi link perlAnglesSQ                    perlString
hi link perlParensDQ                    perlString
hi link perlBracketsDQ                  perlString
hi link perlBracesDQ                    perlString
hi link perlAnglesDQ                    perlString
hi link perlMatch                       perlString
hi link perlComment                     Comment
hi link perlSubstitutionGQQ             perlString
hi link perlSubstitutionSQ              perlString
hi link perlTranslationGQ               perlString
hi link perlStringStartEnd              perlString
hi link perlHereDoc                     perlString
hi link perlStatementPackage            perlStatement
hi link perlPackageDecl                 perlType
hi link perlSubError                    Error
hi link perlSubAttributesCont           perlSubAttributes
hi link perlSubAttributes               PreProc
hi link perlSubPrototypeError           Error
hi link perlSubPrototype                Type
hi link perlSubName                     Function
hi link perlFunction                    Keyword
hi link perlFunctionPRef                perlType
hi link perlSharpBang                   PreProc
hi link perlFormatName                  perlIdentifier
hi link perlFormatField                 perlString
hi link perlDATA                        perlComment
hi link perlInclude                     Include
hi link perlSpecial                     Special
hi link perlCharacter                   Character
hi link perlType                        Type
hi link perlIdentifier                  Identifier
hi link perlStatement                   Statement
hi link perlList                        perlStatement
hi link perlMisc                        perlStatement
hi link perlStorageClass                perlType
hi link perlSpecialAscii                perlSpecial
hi link perlSpecialDollar               perlSpecial

hi link rubyConditional                 Conditional
hi link rubyExceptional                 rubyConditional
hi link rubyMethodExceptional           rubyDefine
hi link rubyTodo                        Todo
hi link rubyStringEscape                Special
hi link rubyQuoteEscape                 rubyStringEscape
hi link rubyInterpolationDelimiter      Delimiter
hi link rubyInstanceVariable            rubyIdentifier
hi link rubyClassVariable               rubyIdentifier
hi link rubyGlobalVariable              rubyIdentifier
hi link rubyPredefinedVariable          rubyPredefinedIdentifier
hi link rubyInvalidVariable             Error
hi link rubyNoInterpolation             rubyString
hi link rubyString                      String
hi link rubyRegexpSpecial               Special
hi link rubyRegexpComment               Comment
hi link rubyRegexpCharClass             rubyRegexpSpecial
hi link rubyRegexpEscape                rubyRegexpSpecial
hi link rubyRegexpQuantifier            rubyRegexpSpecial
hi link rubyRegexpAnchor                rubyRegexpSpecial
hi link rubyRegexpDot                   rubyRegexpCharClass
hi link rubyASCIICode                   Character
hi link rubyInteger                     Number
hi link rubyFloat                       Float
hi link rubyConstant                    Type
hi link rubySymbol                      Constant
hi link rubyBlockParameter              rubyIdentifier
hi link rubyPredefinedConstant          rubyPredefinedIdentifier
hi link rubyRegexpDelimiter             rubyStringDelimiter
hi link rubyRegexp                      rubyString
hi link rubyStringDelimiter             Delimiter
hi link rubySymbolDelimiter             rubyStringDelimiter
hi link rubyHeredoc                     rubyString
hi link rubyBoolean                     Boolean
hi link rubyPseudoVariable              Constant
hi link rubyOperator                    Operator
hi link rubyFunction                    Function
hi link rubyControl                     Statement
hi link rubyKeyword                     Keyword
hi link rubyBeginEnd                    Statement
hi link rubyDefine                      Define
hi link rubyClass                       rubyDefine
hi link rubyModule                      rubyDefine
hi link rubyConditionalModifier         rubyConditional
hi link rubyRepeatModifier              rubyRepeat
hi link rubyRepeat                      Repeat
hi link rubyOptionalDo                  rubyRepeat
hi link rubyAccess                      Statement
hi link rubyAttribute                   Statement
hi link rubyEval                        Statement
hi link rubyException                   Exception
hi link rubyInclude                     Include
hi link rubySharpBang                   PreProc
hi link rubySpaceError                  rubyError
hi link rubyComment                     Comment
hi link rubyDocumentation               Comment
hi link rubyDataDirective               Delimiter
hi link rubyData                        Comment
hi link rubyIdentifier                  Identifier
hi link rubyPredefinedIdentifier        rubyIdentifier
hi link rubyError                       Error

hi link pythonStatement                 Statement
hi link pythonFunction                  Function
hi link pythonConditional               Conditional
hi link pythonRepeat                    Repeat
hi link pythonOperator                  Operator
hi link pythonException                 Exception
hi link pythonInclude                   Include
hi link pythonDecorator                 Define
hi link pythonTodo                      Todo
hi link pythonComment                   Comment
hi link pythonQuotes                    String
hi link pythonEscape                    Special
hi link pythonString                    String
hi link pythonTripleQuotes              pythonQuotes
hi link pythonDoctest                   Special
hi link pythonRawString                 String
hi link pythonNumber                    Number
hi link pythonBuiltin                   Function
hi link pythonExceptions                Structure
hi link pythonDoctestValue              Define

hi link tclCommand                      Statement
hi link tclProcCommand                  Type
hi link tclConditional                  Conditional
hi link tclLabel                        Label
hi link tclRepeat                       Repeat
hi link tcltkSwitch                     Special
hi link tcltkWidgetSwitch               Special
hi link tclVarRef                       Identifier
hi link tclSpecial                      Special
hi link tclExpand                       Special
hi link tcltkWidgetColor                Structure
hi link tclLineContinue                 WarningMsg
hi link tclString                       String
hi link tclNumber                       Number
hi link tcltkCommandColor               Statement
hi link tcltkPackConfColor              Identifier
hi link tcltkPackConfSwitch             Special
hi link tcltkNamespaceSwitch            Special
hi link tcltkMaths                      Special
hi link tcltkPackSwitch                 Special
hi link tcltkStringSwitch               Special
hi link tcltkArraySwitch                Special
hi link tcltkLsortSwitch                Special
hi link tclTodo                         Todo
hi link tclComment                      Comment
hi link tclError                        Error

hi link vimEmbedError                   vimError
hi link vimError                        Error
hi link vimKeyCodeError                 vimError
hi link vimWarn                         WarningMsg
hi link vimAuHighlight                  vimHighlight
hi link vimAutoCmdOpt                   vimOption
hi link vimAutoSet                      vimCommand
hi link vimCondHL                       vimCommand
hi link vimElseif                       vimCondHL
hi link vimFold                         Folded
hi link vimSynOption                    Special
hi link vimHLMod                        PreProc
hi link vimKeyCode                      vimSpecFile
hi link vimKeyword                      Statement
hi link vimSpecial                      Type
hi link vimStatement                    Statement

hi link helpHeadline                    Statement
hi link helpSectionDelim                PreProc
hi link helpIgnore                      Ignore
hi link helpExample                     Comment
hi link helpBar                         Ignore
hi link helpStar                        Ignore
hi link helpHyperTextJump               Identifier
hi link helpHyperTextEntry              String
hi link helpBacktick                    Ignore
hi link helpVim                         Identifier
hi link helpOption                      Type
hi link helpCommand                     Comment
hi link helpHeader                      PreProc
hi link helpNote                        Todo
hi link helpSpecial                     Special
hi link helpNotVi                       Special
hi link helpComment                     Comment
hi link helpConstant                    Constant
hi link helpString                      String
hi link helpCharacter                   Character
hi link helpNumber                      Number
hi link helpBoolean                     Boolean
hi link helpFloat                       Float
hi link helpIdentifier                  Identifier
hi link helpFunction                    Function
hi link helpStatement                   Statement
hi link helpConditional                 Conditional
hi link helpRepeat                      Repeat
hi link helpLabel                       Label
hi link helpOperator                    Operator
hi link helpKeyword                     Keyword
hi link helpException                   Exception
hi link helpPreProc                     PreProc
hi link helpInclude                     Include
hi link helpDefine                      Define
hi link helpMacro                       Macro
hi link helpPreCondit                   PreCondit
hi link helpType                        Type
hi link helpStorageClass                StorageClass
hi link helpStructure                   Structure
hi link helpTypedef                     Typedef
hi link helpSpecialChar                 SpecialChar
hi link helpTag                         Tag
hi link helpDelimiter                   Delimiter
hi link helpSpecialComment              SpecialComment
hi link helpDebug                       Debug
hi link helpUnderlined                  Underlined
hi link helpError                       Error
hi link helpTodo                        Todo
hi link helpURL                         String

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

hi VisualNOS                            clear

hi vimStdPlugin                         clear
hi vimGlobal                            clear
hi vimIsCommand                         clear
hi vimExtCmd                            clear
hi vimFilter                            clear
hi vimSet                               clear
hi vimUserCmd                           clear
hi vimCmdSep                            clear
hi vimFiletype                          clear
hi vimAugroup                           clear
hi vimExecute                           clear
hi vimFunction                          clear
hi vimOperParen                         clear
hi vimRegion                            clear
hi vimSynLine                           clear
hi vimAugroupError                      clear
hi vimAugroupSyncA                      clear
hi vimEcho                              clear
hi vimIf                                clear
hi vimFuncBody                          clear
hi vimFuncBlank                         clear
hi vimEscapeBrace                       clear
hi vimSetEqual                          clear
hi vimSubstRep                          clear
hi vimSubstRange                        clear
hi vimPatRegion                         clear
hi vimCollection                        clear
hi vimSubstPat                          clear
hi vimSubstRep4                         clear
hi vimCollClass                         clear
hi vimMapLhs                            clear
hi vimAutoCmdSpace                      clear
hi vimAutoEventList                     clear
hi vimAutoCmdSfxList                    clear
hi vimMapRhs                            clear
hi vimMapRhsExtend                      clear
hi vimMenuBang                          clear
hi vimMenuPriority                      clear
hi vimMenuMap                           clear
hi vimMenuRhs                           clear
hi vimNormCmds                          clear
hi vimGroupList                         clear
hi vimAuSyntax                          clear
hi vimClusterName                       clear
hi vimSynKeyRegion                      clear
hi vimSynMatchRegion                    clear
hi vimSynMtchCchar                      clear
hi vimSynMtchGroup                      clear
hi vimSynRegion                         clear
hi vimSynPatMod                         clear
hi vimSyncLines                         clear
hi vimSyncMatch                         clear
hi vimSyncLinebreak                     clear
hi vimSyncLinecont                      clear
hi vimSyncRegion                        clear
hi vimHiLink                            clear
hi vimHiKeyList                         clear
hi vimHiBang                            clear
hi vimHiCtermColor                      clear
hi vimHiFontname                        clear
hi vimHiGuiFontname                     clear
hi vimHiTermcap                         clear
hi vimCommentTitleLeader                clear
hi vimLuaRegion                         clear
hi vimPerlRegion                        clear
hi vimRubyRegion                        clear
hi vimPythonRegion                      clear
hi vimTclRegion                         clear
hi vimTclScript                         clear

hi luaInnerComment                      clear
hi luaIfThen                            clear
hi luaElseifThen                        clear
hi luaThenEnd                           clear
hi luaBlock                             clear
hi luaLoopBlock                         clear
hi luaParen                             clear
hi luaTableBlock                        clear
hi luaFunctionBlock                     clear

hi podBoldItalic                        clear
hi podBoldOpen                          clear
hi podBoldAlternativeDelimOpen          clear
hi podItalicBold                        clear
hi podItalicOpen                        clear
hi podItalicAlternativeDelimOpen        clear
hi podNoSpaceOpen                       clear
hi podNoSpaceAlternativeDelimOpen       clear
hi podIndexOpen                         clear
hi podIndexAlternativeDelimOpen         clear
hi podBold                              clear
hi podBoldAlternativeDelim              clear
hi podItalic                            clear
hi podItalicAlternativeDelim            clear

hi perlBraces                           clear
hi perlFakeGroup                        clear
hi perlFiledescStatementNocomma         clear
hi perlFiledescStatementComma           clear
hi perlStatementIndirObjWrap            clear
hi perlVarMember                        clear
hi perlVarBlock                         clear
hi perlVarBlock2                        clear
hi perlPackageConst                     clear

hi perlAutoload                         clear
hi perlFormat                           clear
hi perlSync                             clear
hi perlSyncPOD                          clear

hi rubyInterpolation                    clear
hi rubyDelimEscape                      clear
hi rubyNestedParentheses                clear
hi rubyNestedCurlyBraces                clear
hi rubyNestedAngleBrackets              clear
hi rubyNestedSquareBrackets             clear
hi rubyRegexpParens                     clear
hi rubyRegexpBrackets                   clear
hi rubyLocalVariableOrMethod            clear
hi rubyBlockArgument                    clear
hi rubyBlockParameterList               clear
hi rubyHeredocStart                     clear
hi rubyAliasDeclaration2                clear
hi rubyAliasDeclaration                 clear
hi rubyMethodDeclaration                clear
hi rubyClassDeclaration                 clear
hi rubyModuleDeclaration                clear
hi rubyMethodBlock                      clear
hi rubyBlock                            clear
hi rubyDoBlock                          clear
hi rubyCurlyBlockDelimiter              clear
hi rubyCurlyBlock                       clear
hi rubyArrayDelimiter                   clear
hi rubyArrayLiteral                     clear
hi rubyBlockExpression                  clear
hi rubyCaseExpression                   clear
hi rubyConditionalExpression            clear
hi rubyOptionalDoLine                   clear
hi rubyRepeatExpression                 clear
hi rubyMultilineComment                 clear
hi rubyKeywordAsMethod                  clear

hi pythonSpaceError                     clear
hi pythonSync                           clear

hi tclVars                              clear
hi tclBoolean                           clear
hi tcltkWidget                          clear
hi tcltkCommand                         clear
hi tcltkPackConf                        clear
hi tcltlWidgetSwitch                    clear
hi tclEmbeddedStatement                 clear

hi helpNormal                           clear
hi helpGraphic                          clear
hi helpLeadBlank                        clear
