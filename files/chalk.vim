set background=dark

hi clear
if exists('syntax_on')
   syntax reset
endif

let g:colors_name = 'monochrome'


function! s:StatusLine(focus)
  if exists("g:colors_name") && g:colors_name == "monochrome"
    if a:focus
      hi StatusLine NONE guifg=#d0d0d0 ctermfg=252 guibg=#000000 ctermbg=0
    else
      hi StatusLine NONE guibg=#303030 ctermbg=236 guifg=#000000 ctermfg=0
    endif
  endif
endfunction
call s:StatusLine(1)

" When another window has focus, no status line is current.
augroup monochrome_colorscheme
    au!
    au FocusLost * call s:StatusLine(0)
    au FocusGained * call s:StatusLine(1)
augroup end

" Main
hi Normal   guifg=LightGray  ctermfg=252    guibg=#131313  gui=NONE    cterm=NONE  term=NONE
hi Comment  ctermfg=243      guifg=#737373  guibg=Black    ctermbg=16  gui=NONE    cterm=NONE  term=NONE

" Constant
hi Constant     ctermfg=252  guifg=LightGray  guibg=#131313  gui=NONE       cterm=NONE     term=NONE
hi String       ctermfg=110  guifg=#778899    guibg=#131313  gui=NONE       cterm=NONE     term=NONE
"hi Character    ctermfg=187  ctermbg=235      cterm=none     guifg=#D7D7AF  guibg=#262626  gui=none
hi Boolean      ctermfg=174  guifg=#D78787    guibg=#131313
hi Float        ctermfg=80   guifg=#5fd7d7    guibg=#131313
hi Number       ctermfg=147   guifg=#afafff    guibg=#131313

" Variable name
hi Identifier   ctermfg=182  guifg=#D7AFD7    guibg=#131313
hi Function     ctermfg=182  guifg=#D7AFD7    guibg=#131313

" Statement
hi Statement    ctermfg=15   guifg=White    guibg=#131313  gui=bold       cterm=bold     term=bold
hi Conditional  ctermfg=110  guifg=#87AFD7  guibg=#131313
hi Label        ctermfg=110  guifg=#87AFD7  guibg=#131313
hi Operator     ctermfg=110  guifg=#87AFD7  guibg=#131313
"hi Repeat       ctermfg=110  ctermbg=235    cterm=none     guifg=#87AFD7  guibg=#262626  gui=none
"hi Keyword      ctermfg=110  ctermbg=235    cterm=none     guifg=#87AFD7  guibg=#262626  gui=none
"hi Exception    ctermfg=110  ctermbg=235    cterm=none     guifg=#87AFD7  guibg=#262626  gui=none

" Preprocessor
hi PreProc    ctermfg=15   guifg=White      guibg=#131313  gui=bold    cterm=bold  term=bold
hi Include    ctermfg=150  guifg=#AFD787    guibg=#131313
hi Macro      ctermfg=150  guifg=#AFD787    guibg=#131313
hi PreCondit  ctermfg=150  guifg=#AFD787    guibg=#131313
"hi Define     ctermfg=150  ctermbg=235      cterm=none     guifg=#AFD787  guibg=#262626  gui=none

" Type
hi Type         ctermfg=15   guifg=White      guibg=#131313  gui=bold    cterm=bold  term=bold
hi StorageClass ctermfg=146  guifg=#AFAFD7    guibg=#131313
hi Structure    ctermfg=146  guifg=#AFAFD7    guibg=#131313
hi Typedef      ctermfg=146  guifg=#AFAFD7    guibg=#131313

" Special
hi Special      ctermfg=252  guifg=LightGray  guibg=#131313  gui=NONE    cterm=NONE  term=NONE
hi Tag          ctermfg=146  guifg=#AFAFD7    guibg=#131313
"hi SpecialChar     ctermfg=174  ctermbg=235  cterm=none       guifg=#D78787  guibg=#262626  gui=none
"hi Delimiter       ctermfg=174  ctermbg=235  cterm=none       guifg=#D78787  guibg=#262626  gui=none
"hi SpecialComment  ctermfg=174  ctermbg=235  cterm=none       guifg=#D78787  guibg=#262626  gui=none
"hi Debug           ctermfg=174  ctermbg=235  cterm=none       guifg=#D78787  guibg=#262626  gui=none
"hi Underlined      ctermfg=249  ctermbg=235  cterm=underline  guifg=#B2B2B2  guibg=#262626  gui=underline
"hi Ignore          ctermfg=235  ctermbg=235  cterm=none       guifg=#262626  guibg=#262626  gui=none
"hi Error           ctermfg=231  ctermbg=167  cterm=none       guifg=#FFFFFF  guibg=#D75F5F  gui=none

" Menu
hi Pmenu       guifg=White    ctermfg=15   guibg=#778899  ctermbg=67     gui=NONE       cterm=NONE  term=NONE
hi PmenuSel    guifg=#778899  ctermfg=67   guibg=White    ctermbg=15     gui=NONE       cterm=NONE  term=NONE
"hi PmenuSbar   ctermfg=231    ctermbg=244  cterm=none     guifg=#FFFFFF  guibg=#808080  gui=none
"hi PmenuThumb  ctermfg=187    ctermbg=187  cterm=none     guifg=#D7D7AF  guibg=#D7D7AF  gui=none
"hi WildMenu    ctermfg=232    ctermbg=98   cterm=none     guifg=#080808  guibg=#875FD7  gui=none

" Selection
hi Visual     guifg=White  ctermfg=15  guibg=#778899  ctermbg=67     gui=NONE       cterm=NONE  term=NONE
"hi VisualNOS  ctermfg=235  ctermbg=80  cterm=none     guifg=#262626  guibg=#5FD7D7  gui=none

" Mark
hi Folded       guifg=LightGray  ctermfg=252    guibg=#131313  gui=NONE       cterm=NONE     term=NONE
hi FoldColumn   guifg=DarkGray   ctermfg=248    guibg=#131313  gui=NONE       cterm=NONE     term=NONE
hi LineNr       guifg=#303030    ctermfg=236    guibg=#080808  ctermbg=232
hi MatchParen   ctermfg=84       guifg=#5fff87  guibg=NONE     ctermbg=16     gui=bold       cterm=bold
"hi SignColumn   ctermfg=79       ctermbg=237    cterm=none     guifg=#5FD7AF  guibg=#3A3A3A  gui=none
"hi ColorColumn  ctermfg=79       ctermbg=237    cterm=none     guifg=#5FD7AF  guibg=#3A3A3A  gui=none

" Cursor
hi Cursor        guifg=Black      ctermfg=16     guibg=LightGray  ctermbg=252  gui=NONE    cterm=NONE  term=NONE
hi CursorLine    guifg=NONE       guibg=NONE  gui=NONE
"hi CursorLine    guifg=NONE       guibg=#e1e1d0  gui=NONE
hi CursorLineNr  guifg=White      ctermfg=201     guibg=Black      ctermbg=16   gui=bold    cterm=bold  term=bold

" Search
hi Search     guifg=White  ctermfg=15   guibg=#778899  ctermbg=67     gui=NONE       cterm=NONE  term=NONE
"hi IncSearch  ctermfg=231  ctermbg=168  cterm=none     guifg=#FFFFFF  guibg=#D75F87  gui=none

" Misc
hi helpSpecial      guifg=LightGray  ctermfg=252  guibg=#131313  gui=NONE       cterm=NONE     term=NONE
hi helpNote         guifg=LightGray  ctermfg=252  guibg=#131313  gui=NONE       cterm=NONE     term=NONE
hi elixirDelimiter  guifg=#778899    ctermfg=67   guibg=#131313  gui=NONE       cterm=NONE     term=NONE
hi NonText          guifg=DarkGray   ctermfg=248  guibg=#131313  gui=NONE       cterm=NONE     term=NONE
hi Directory        guifg=#8787AF    ctermfg=103
hi Title            guifg=White      ctermfg=15   guibg=#131313  gui=bold       cterm=bold     term=bold
"hi SpecialKey       ctermfg=114      ctermbg=235  cterm=none     guifg=#87D787  guibg=#262626  gui=none
"hi Conceal          ctermfg=77       ctermbg=235  cterm=none     guifg=#5FD75F  guibg=#262626  gui=none
"hi Noise            ctermfg=247      ctermbg=235  cterm=none     guifg=#9E9E9E  guibg=#262626  gui=none

" Vim
hi vimOption        guifg=LightGray  ctermfg=252  guibg=#131313  gui=NONE       cterm=NONE       term=NONE
hi vimGroup         guifg=LightGray  ctermfg=252  guibg=#131313  gui=NONE       cterm=NONE       term=NONE
hi vimHiClear       guifg=LightGray  ctermfg=252  guibg=#131313  gui=NONE       cterm=NONE       term=NONE
hi vimHiGroup       guifg=LightGray  ctermfg=252  guibg=#131313  gui=NONE       cterm=NONE       term=NONE
hi vimHiAttrib      guifg=LightGray  ctermfg=252  guibg=#131313  gui=NONE       cterm=NONE       term=NONE
hi vimHiGui         guifg=LightGray  ctermfg=252  guibg=#131313  gui=NONE       cterm=NONE       term=NONE
hi vimHiGuiFgBg     guifg=LightGray  ctermfg=252  guibg=#131313  gui=NONE       cterm=NONE       term=NONE
hi vimHiCTerm       guifg=LightGray  ctermfg=252  guibg=#131313  gui=NONE       cterm=NONE       term=NONE
hi vimHiCTermFgBg   guifg=LightGray  ctermfg=252  guibg=#131313  gui=NONE       cterm=NONE       term=NONE
hi vimSynType       guifg=LightGray  ctermfg=252  guibg=#131313  gui=NONE       cterm=NONE       term=NONE
hi vimCommentTitle  guifg=#737373    ctermfg=243  guibg=#131313  gui=NONE       cterm=NONE       term=NONE
"hi vimFold          ctermfg=244      ctermbg=235  cterm=none     guifg=#808080  guibg=#262626    gui=none

" Ruby
hi rubyConstant         guifg=LightGray  ctermfg=252  guibg=#131313  gui=NONE  cterm=NONE  term=NONE
hi rubySharpBang        guifg=#737373    ctermfg=243  guibg=#131313  gui=NONE  cterm=NONE  term=NONE
hi rubyStringDelimiter  guifg=#778899    ctermfg=67   guibg=#131313  gui=NONE  cterm=NONE  term=NONE
hi rubyStringEscape     guifg=#778899    ctermfg=67   guibg=#131313  gui=NONE  cterm=NONE  term=NONE
hi rubyRegexpEscape     guifg=#778899    ctermfg=67   guibg=#131313  gui=NONE  cterm=NONE  term=NONE
hi rubyRegexpAnchor     guifg=#778899    ctermfg=67   guibg=#131313  gui=NONE  cterm=NONE  term=NONE
hi rubyRegexpSpecial    guifg=#778899    ctermfg=67   guibg=#131313  gui=NONE  cterm=NONE  term=NONE

" Python
hi pythonEscape  guifg=#778899  ctermfg=67  guibg=#131313  gui=NONE  cterm=NONE  term=NONE

" JavaScript
hi javaScriptFunction  guifg=White  ctermfg=15   guibg=#131313  gui=bold       cterm=bold     term=bold
"hi jsFuncCall          ctermfg=116  ctermbg=235  cterm=none     guifg=#87D7D7  guibg=#262626  gui=none

" Markdown
hi markdownHeadingDelimiter  guifg=White    ctermfg=15   guibg=#131313  gui=bold       cterm=bold       term=bold
hi markdownHeadingRule       guifg=White    ctermfg=15   guibg=#131313  gui=bold       cterm=bold       term=bold
hi markdownLinkText          guifg=#778899  ctermfg=67   guibg=#131313  gui=underline  cterm=underline  term=underline
hi markdownCode              ctermfg=147    cterm=none   guifg=#afafff  guibg=#131313    gui=none
"hi markdownCodeBlock         ctermfg=244    ctermbg=235  cterm=none     guifg=#808080  guibg=#262626    gui=none
"hi markdownItalic            ctermfg=252     cterm=none     guifg=#D0D0D0  guibg=#262626    gui=none

" Html
hi helpHyperTextJump  guifg=#778899  ctermfg=67     guibg=#131313  gui=underline  cterm=underline  term=underline
hi javaScriptNumber   ctermfg=179    cterm=none     guifg=#D7AF5F  guibg=#131313  gui=none
hi htmlTag            ctermfg=147    cterm=none     guifg=#AFAFFF  guibg=#131313  gui=none
hi htmlEndTag         ctermfg=147    cterm=none     guifg=#AFAFFF  guibg=#131313  gui=none
hi htmlTagName        ctermfg=175    cterm=none     guifg=#D787AF  guibg=#131313  gui=none
hi htmlString         ctermfg=110    guifg=#778899  guibg=#131313  gui=NONE       cterm=NONE       term=NONE

" Perl
hi perlSharpBang       guifg=#737373  ctermfg=243  guibg=#131313  gui=NONE  cterm=NONE  term=NONE
hi perlStringStartEnd  guifg=#778899  ctermfg=67   guibg=#131313  gui=NONE  cterm=NONE  term=NONE
hi perlStringEscape    guifg=#778899  ctermfg=67   guibg=#131313  gui=NONE  cterm=NONE  term=NONE
hi perlMatchStartEnd   guifg=#778899  ctermfg=67   guibg=#131313  gui=NONE  cterm=NONE  term=NONE

" Window
"hi StatusLineNC ctermfg=244 ctermbg=237 cterm=none guifg=#808080 guibg=#3A3A3A gui=none
"hi TabLine ctermfg=249 ctermbg=237 cterm=none guifg=#B2B2B2 guibg=#3A3A3A gui=none
"hi TabLineSel ctermfg=253 ctermbg=238 cterm=none guifg=#DADADA guibg=#444444 gui=none
"hi TabLineFill ctermfg=249 ctermbg=237 cterm=none guifg=#B2B2B2 guibg=#3A3A3A gui=none
"hi VertSplit ctermfg=237 ctermbg=237 cterm=none guifg=#3A3A3A guibg=#3A3A3A gui=none

" Diff mode
"hi DiffAdd ctermfg=16 ctermbg=149 cterm=none guifg=#000000 guibg=#AFD75F gui=none
"hi DiffChange ctermfg=16 ctermbg=217 cterm=none guifg=#000000 guibg=#FFAFAF gui=none
"hi DiffText ctermfg=16 ctermbg=211 cterm=bold guifg=#000000 guibg=#FF87AF gui=bold
"hi DiffDelete ctermfg=16 ctermbg=249 cterm=none guifg=#000000 guibg=#B2B2B2 gui=none

" Diff File
"hi diffFile ctermfg=244 ctermbg=235 cterm=none guifg=#808080 guibg=#262626 gui=none
"hi diffLine ctermfg=244 ctermbg=235 cterm=none guifg=#808080 guibg=#262626 gui=none
"hi diffAdded ctermfg=107 ctermbg=235 cterm=none guifg=#87AF5F guibg=#262626 gui=none
"hi diffRemoved ctermfg=175 ctermbg=235 cterm=none guifg=#D787AF guibg=#262626 gui=none
"hi diffChanged ctermfg=179 ctermbg=235 cterm=none guifg=#D7AF5F guibg=#262626 gui=none
"hi diffOldLine ctermfg=104 ctermbg=235 cterm=none guifg=#8787D7 guibg=#262626 gui=none

" Mail
"hi mailSubject ctermfg=109 ctermbg=235 cterm=none guifg=#87AFAF guibg=#262626 gui=none
"hi mailSignature ctermfg=244 ctermbg=235 cterm=none guifg=#808080 guibg=#262626 gui=none

" Spell
"hi SpellBad ctermfg=210 ctermbg=235 cterm=underline guifg=#FF8787 guibg=#262626 gui=underline
"hi SpellCap ctermfg=174 ctermbg=235 cterm=underline guifg=#D78787 guibg=#262626 gui=underline
"hi SpellRare ctermfg=181 ctermbg=235 cterm=underline guifg=#D7AFAF guibg=#262626 gui=underline
"hi SpellLocal ctermfg=180 ctermbg=235 cterm=underline guifg=#D7AF87 guibg=#262626 gui=underline

" Message
"hi ErrorMsg ctermfg=210 ctermbg=235 cterm=none guifg=#FF8787 guibg=#262626 gui=none
"hi WarningMsg ctermfg=140 ctermbg=235 cterm=none guifg=#AF87D7 guibg=#262626 gui=none
"hi MoreMsg ctermfg=72 ctermbg=235 cterm=none guifg=#5FAF87 guibg=#262626 gui=none
"hi ModeMsg ctermfg=222 ctermbg=235 cterm=bold guifg=#FFD787 guibg=#262626 gui=bold
"hi Question ctermfg=38 ctermbg=235 cterm=none guifg=#00AFD7 guibg=#262626 gui=none

