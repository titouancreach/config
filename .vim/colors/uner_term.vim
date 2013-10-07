" Maintainer: Mario Gutierrez (mario@mgutz.com)
" Original Theme: Dmitry Kichenko (dmitrykichenko@gmail.com)
" Last Change: Dec 28, 2010
" Version: 0.3

let colors_name = "underwater-mod"

set background=dark
hi clear

if exists("syntax_on")
    syntax reset
endif


if version >= 700
    hi CursorLine       ctermbg=#18374F
    hi CursorColumn     ctermbg=#18374F
    hi MatchParen       ctermfg=magenta   ctermbg=bg        cterm=bold
    hi Pmenu 		ctermfg=#dfeff6   ctermbg=#1E415E
    hi PmenuSel 	ctermfg=#dfeff6   ctermbg=#2D7889

    hi IncSearch        ctermfg=bg        ctermbg=#AF81F4   cterm=bold
    hi Search           ctermfg=bg        ctermbg=#AF81F4   cterm=none
endif

"""""""" General colors

hi Cursor 		ctermfg=black     ctermbg=#55A096   cterm=none
hi Folded 		ctermfg=#68CEE8   ctermbg=#1A3951   cterm=none
hi FoldColumn           ctermfg=#1E415E   ctermbg=#1A3951   cterm=none
hi LineNr 		ctermfg=#1c3249   ctermbg=bg        cterm=none
hi Normal 		ctermfg=#e3f3fa   ctermbg=#102235   cterm=none
hi NonText 		ctermfg=#1c3249   ctermbg=bg        cterm=none
hi StatusLine 	        ctermfg=#ffec99   ctermbg=#0a1721   cterm=none
hi StatusLineNC         ctermfg=#4e6f91   ctermbg=#0a1721   cterm=none
hi TabLine              ctermfg=#555555   ctermbg=#dddddd   cterm=none
hi TabLineSel           ctermfg=#101010   ctermbg=#b0b0b0   cterm=none
hi TabLineFill 		ctermfg=fg        ctermbg=#dddddd   cterm=none
hi Title 		ctermfg=#ef7760   ctermbg=bg        cterm=none
hi VertSplit 	        ctermfg=#0a1721   ctermbg=#0a1721   cterm=none
 " Selected text color
hi Visual		ctermfg=#dfeff6   ctermbg=#24557A   cterm=none

hi ErrorMsg             ctermfg=fg        ctermbg=#C62626
hi WarningMsg           ctermfg=#C62626   ctermbg=bg



"""""""" Syntax highlighting

hi Comment 		ctermfg=#4e6f91   ctermbg=bg        cterm=italic
hi Constant 	        ctermfg=#ffc287   ctermbg=bg        cterm=none
hi Function 	        ctermfg=#AF81F4   ctermbg=bg        cterm=none
hi Identifier 	        ctermfg=#889ce8   ctermbg=bg        cterm=none
hi Ignore 		ctermfg=bg        ctermbg=bg        cterm=none
hi link Number	        Constant	
hi PreProc 		ctermfg=#ef7760   ctermbg=bg        cterm=none
hi Keyword		ctermfg=#8ac6f2   ctermbg=bg        cterm=none
hi Special		ctermfg=#b9e19d   ctermbg=bg        cterm=none
hi Statement 	        ctermfg=#68CEE8   ctermbg=bg        cterm=none
hi String 		ctermfg=#89e14b   ctermbg=bg        cterm=italic
hi Todo 		ctermfg=#ADED80   ctermbg=bg        cterm=bold
hi Type 		ctermfg=#5ba0eb   ctermbg=bg        cterm=none
hi Underlined 	        ctermfg=#8ac6f2   ctermbg=bg        cterm=underline


"""""""" Coffee

hi link coffeeInterpolation     Special


"""""""" ERB

hi link erubyDelimiter          PreProc 


"""""""" HAML

hi link hamlAttributes          htmlArg
hi link hamlTag                 htmlTag 
hi link hamlTagName             htmlTagName 
hi link hamlIdChar              hamlId
hi link hamlClassChar           hamlClass
hi link hamlInterpolation       Special 


"""""""" HTML

hi link htmlTag                 Statement
hi link htmlEndTag              Statement
hi link htmlTagName             Statement 
hi link htmlSpecialChar         Constant


"""""""" JavaScript

hi link javaScriptFunction      Function
hi link javaScriptDocSeeTag     Underlined 


"""""""" Markdown - tpope's

hi link markdownCodeBlock           Statement
hi link markdownCode                Statement 
hi link markdownCodeDelimiter       Statement
hi link markdownHeadingDelimiter    Title
hi link markdownLinkText 	    Underlined 
hi link markdownLinkTextDelimiter   Comment 
hi link markdownLinkDelimiter       Comment
hi link markdownListMarker          Constant
hi link markdownUrl                 Comment


"""""""" NERDTree

hi link treeClosable            PreProc
hi link treeDir                 Statement 
hi link treeDirSlash            NonText 
hi link treeExecFile            Type
hi      treeFlag                ctermfg=#3e71a1 ctermbg=bg cterm=none
hi link treeHelp                Comment
hi link treeLink                Type
hi link treePart                NonText 
hi link treePartFile            NonText 
hi link treeOpenable            treeClosable
hi link treeUp                  treeClosable 


"""""""" Ruby

hi rubyAccess                       ctermfg=#ef7760 ctermbg=bg cterm=italic
hi link rubyBlockParameter          Normal
hi link rubyInterpolation           Special 
hi link rubyInterpolationDelimiter  Special 
hi link rubyStringDelimiter         String


"""""""" SH

hi link shQuote                 String


"""""""" XML

hi link xmlEndTag               htmlEndTag
hi link xmlTag                  htmlTag
hi link xmlTagName              htmlTagName

" vim: set sw=4 sts=4 et :
