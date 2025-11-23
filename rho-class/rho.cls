%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% --------------------------------------------------------
% Rho
% LaTeX Class
% Version 2.1.1 (01/09/2024)
%
% Authors: 
% Guillermo Jimenez (memo.notess1@gmail.com)
% Eduardo Gracidas (eduardo.gracidas29@gmail.com)
% 
% License:
% Creative Commons CC BY 4.0
% --------------------------------------------------------
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% --------------------------------------------------------
% You may modify 'rho.cls' file according to your
% needs and preferences. This LaTeX class file defines 
% the document layout and behavior.
% --------------------------------------------------------
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% --------------------------------------------------------
% 						 WARNING!
% --------------------------------------------------------
% It is important to proceed with caution and ensure that 
% any modifications made are compatible with LaTeX 
% syntax and conventions to avoid errors or unexpected 
% behavior in the document compilation process.
% --------------------------------------------------------
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%----------------------------------------------------------
% CLASS CONFIGURATION
%----------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{rho-class/rho}[2024/09/01 Rho LaTeX class]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{extarticle}}
\ProcessOptions\relax
\LoadClass[twocolumn]{extarticle} % onecolumn
\AtEndOfClass{\RequirePackage{microtype}}

%----------------------------------------------------------
% REQUIRED PACKAGES
%----------------------------------------------------------

\RequirePackage[utf8]{inputenc}
\RequirePackage{etoolbox}
\RequirePackage[framemethod=tikz]{mdframed}
\RequirePackage{titling}
\RequirePackage{lettrine}
\RequirePackage[switch]{lineno}
\RequirePackage{microtype}
\RequirePackage[bottom,hang,flushmargin,ragged]{footmisc}
\RequirePackage{fancyhdr}
\RequirePackage{xifthen}
\RequirePackage{adjustbox}
\RequirePackage{adforn}
\RequirePackage{lastpage}
\RequirePackage[explicit]{titlesec}
\RequirePackage{booktabs}
\RequirePackage{array} 
\RequirePackage{caption}
\RequirePackage{setspace}
\RequirePackage{iflang}
\RequirePackage{listings}
\RequirePackage{lipsum}
\RequirePackage{fontawesome5}       % For icons
\RequirePackage{chemfig}            % Chemical structures
\RequirePackage{circuitikz}         % Circuits schematics
\RequirePackage{supertabular}
\RequirePackage{matlab-prettifier}
\RequirePackage{listings}
\RequirePackage{csquotes}
\RequirePackage{ragged2e}
\RequirePackage{ccicons}
\RequirePackage{imakeidx}
\RequirePackage{subcaption}
\RequirePackage{stfloats} 
\RequirePackage{authblk}
% \RequirePackage{pbalance}         % Balances the last columns

%----------------------------------------------------------
% RHO CUSTOM PACKAGES (location/name)
%----------------------------------------------------------

\RequirePackage{rho-class/rhobabel}
\RequirePackage{rho-class/rhoenvs}

%----------------------------------------------------------
% CORRESPONDING AUTHOR SECTION-, ABTRACT-, NEWBOOL
%----------------------------------------------------------

\newbool{corres-info}
\newbool{rho-abstract}

%----------------------------------------------------------
% PAGE LAYOUT
%----------------------------------------------------------

\RequirePackage[
    left=1.25cm, 
    right=1.25cm, 
    top=2cm, 
    bottom=2cm, 
    headsep=0.75cm
]{geometry}
\setlength{\columnsep}{15pt}

%----------------------------------------------------------
% PACKAGES FOR FIGURES
%----------------------------------------------------------

\usepackage{graphicx}
\RequirePackage{here}
\graphicspath{{figures/}{./}} 

%----------------------------------------------------------
% PACKAGES FOR BOXES
%----------------------------------------------------------

\RequirePackage{adjustbox}
\RequirePackage{colortbl}
\RequirePackage{tcolorbox}

%----------------------------------------------------------
% MATH PACKAGES
%----------------------------------------------------------

%!TEX In case of using another font that is not stix2 uncomment 'amssymb'

\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{mathtools}
% \RequirePackage{amssymb}

% Equation skip value
\newlength{\eqskip}\setlength{\eqskip}{8pt}
\expandafter\def\expandafter\normalsize\expandafter{%
    \normalsize%
    \setlength\abovedisplayskip{\eqskip}%
    \setlength\belowdisplayskip{\eqskip}%
    \setlength\abovedisplayshortskip{\eqskip-\baselineskip}%
    \setlength\belowdisplayshortskip{\eqskip}%
}

%----------------------------------------------------------
% FONTS
%----------------------------------------------------------

\usepackage[notextcomp]{stix2}
\RequirePackage[scaled]{helvet}
\renewcommand{\ttdefault}{lmtt}

%----------------------------------------------------------
% URLs STYLE
%----------------------------------------------------------

\RequirePackage{url}
\RequirePackage{xurl}
\renewcommand\UrlFont{\selectfont}

%----------------------------------------------------------

\RequirePackage[colorlinks=true, allcolors=rhocolor]{hyperref}
\RequirePackage{cleveref}
\RequirePackage{bookmark}

%----------------------------------------------------------
% ITEMS
%----------------------------------------------------------

\RequirePackage{enumitem}
\setlist{noitemsep}

%----------------------------------------------------------
% FIRST PAGE-, HEADER AND FOOTER
%----------------------------------------------------------

% New commands
\newcommand{\footerfont}{\normalfont\sffamily\fontsize{7}{9}\selectfont}
\newcommand{\institution}[1]{\def\@institution{#1}}
\newcommand{\leadauthor}[1]{\def\@leadauthor{#1}}
\newcommand{\footinfo}[1]{\def\@footinfo{#1}}
\newcommand{\smalltitle}[1]{\def\@smalltitle{#1}}
\newcommand{\theday}[1]{\def\@theday{#1}}

\pagestyle{fancy}
   \pagenumbering{arabic}

% First page style
\fancypagestyle{firststyle}{
    \fancyfoot[R]{
        {\ifx\@institution\undefined\else\footerfont\@institution\hspace{10pt}\fi}
        {\ifx\@theday\undefined\else\footerfont\bfseries\@theday\hspace{10pt}\fi}
        {\ifx\@smalltitle\undefined\else\footerfont\@smalltitle\hspace{10pt}\fi}
        {\footerfont\textbf\thepage\textendash\pageref{LastPage}}
    }
    \fancyfoot[L]{\ifx\@footinfo\undefined\else\footerfont\@footinfo\fi}
    \fancyfoot[C]{}
    \fancyhead[C]{}
    \fancyhead[R]{}
    \fancyhead[L]{}
}

% Header
\fancyhead[RO,LE]{\ifx\@title\undefined\else\footerfont\@title\fi}
\fancyhead[RE,LO]{\ifx\@leadauthor\undefined\else\footerfont\@leadauthor\fi}

% Footer
\fancyfoot[C]{\footerfont\thepage\textendash\pageref{LastPage}}

\renewcommand{\headrulewidth}{0pt} % No header rule
\renewcommand{\footrulewidth}{0pt} % No footer rule

%----------------------------------------------------------
% RHO START ~ LETTRINE
%----------------------------------------------------------

\newcommand{\dropcapfont}{\color{rhocolor}\bfseries\fontsize{25pt}{28pt}\selectfont}
\newcommand{\rhostart}[1]{\lettrine[lines=2,lraise=0,findent=2pt, nindent=0em]{{\dropcapfont{#1}}}{}}

%----------------------------------------------------------
% CORRESPONDING AUTHOR SECTION
%----------------------------------------------------------

% New commands
\newcommand{\rhoinfofont}{\color{black}\normalfont\sffamily\linespread{1}\fontsize{7.8}{9}\selectfont}
\newcommand{\received}[1]{\def\@received{#1}}
\newcommand{\revised}[1]{\def\@revised{#1}}
\newcommand{\accepted}[1]{\def\@accepted{#1}}
\newcommand{\published}[1]{\def\@published{#1}}
\newcommand{\corres}[1]{\def\@corres{#1}}
\newcommand{\email}[1]{\def\@email{#1}}
\newcommand{\doi}[1]{\def\@doi{#1}}
\newcommand{\license}[1]{\def\@license{#1}}

\newcommand{\rhoinfo}{
    \rhoinfofont
        \vskip5pt
            {\ifx\@corres\undefined\else\textcolor{rhocolor}{\bfseries\ignorespaces\correslanguage}\@corres\fi} 
            {\ifx\@email\undefined\else\textcolor{rhocolor}{\itshape\ignorespaces\emaillanguage}\@email\fi\par}
            {\ifx\@doi\undefined\else\textcolor{rhocolor}{\bfseries DOI: }\@doi\fi\par}
            {\ifx\@received\undefined\else\textcolor{rhocolor}{\bfseries\ignorespaces\receivedlanguage}\@received\hspace{10pt}\fi}
            {\ifx\@revised\undefined\else\textcolor{rhocolor}{\bfseries\ignorespaces\revisedlanguage}\@revised\hspace{10pt}\fi} 
            {\ifx\@accepted\undefined\else\textcolor{rhocolor}{\bfseries\ignorespaces\acceptedlanguage}\@accepted\hspace{10pt}\fi}
            {\ifx\@published\undefined\else\textcolor{rhocolor}{\bfseries\ignorespaces\publishedlanguage}\@published\fi\par}
                \vskip3pt
            {\@license\par}
         \vskip1pt
        \rule{\textwidth}{0.3pt}
}

%----------------------------------------------------------
% ABSTRACT STYLE
%----------------------------------------------------------

% Abstract text style new commands
\newcommand{\keywords}[1]{\def\@keywords{#1}}
\newcommand{\absfont}{\color{black}\normalfont\sffamily\linespread{1}\fontsize{8.5}{11}\selectfont}
\newcommand{\absheadfont}{\color{rhocolor}\normalfont\sffamily\fontsize{9}{11}\selectfont}
\newcommand{\keywordsfont}{\normalfont\sffamily\itshape\linespread{1}\fontsize{7.8}{9}\selectfont}
\newcommand{\keywordheadfont}{\normalfont\sffamily\fontsize{7.8}{9}\selectfont\bfseries}

% Abstract definition
\def\xabstract{abstract}
\long\def\abstract#1\end#2{
    \def\two{#2}\ifx\two\xabstract
    \long\gdef\theabstract{\ignorespaces#1}
    \def\go{\end{abstract}}
\else
    #1\end{#2}
    \gdef\theabstract{\vskip12pt 
    \vskip12pt}
    \let\go\relax\fi
\go}

% Rho class abstract style 
\newcommand{\rhoabstract}{
    \begin{tcolorbox}[colback=rhocolor!22, arc=0pt, boxrule=0pt, left=5pt, right=5pt, top=5pt, bottom=5pt]
        \ifx\@keywords\undefined
            \absheadfont\bfseries\abstractname\vskip0.5em\absfont\theabstract\vskip10pt
        \else
            \absheadfont\bfseries\abstractname\vskip0.5em\absfont\theabstract\vskip10pt
            \keywordsfont\keywordname\hspace{0.1em}\keywordsfont\@keywords
        \fi
    \end{tcolorbox}
}

%----------------------------------------------------------
% TITLE STYLE
%----------------------------------------------------------

% New commands
\newcommand{\journalname}[1]{\def\@journalname{#1}}
\newcommand{\dates}[1]{\def\@dates{#1}}
\newcommand{\datesfont}{\fontsize{7.5}{9}\selectfont}

\renewcommand{\@maketitle}{
    \bgroup\setlength{\parindent}{0pt}
    {
        {\ifx\@journalname\undefined\vskip-18pt\else\vskip-25pt\RaggedRight\sffamily\bfseries\fontsize{8}{14}\selectfont\@journalname\par\fi}
        {\RaggedRight\color{rhocolor}\sffamily\bfseries\fontsize{16}{22}\selectfont\@title\par}
        \vskip10pt
            {\RaggedRight\@author\par}
        \vskip8pt
            {\ifx\@dates\undefined\vskip2pt\else\RaggedRight\datesfont\@dates\par\vskip15pt\fi}
        \ifbool{rho-abstract}{\justify\rhoabstract}{}
        \ifbool{corres-info}{\RaggedRight\rhoinfo}{}
    } 
    \egroup
    \vskip12pt
}

%----------------------------------------------------------
% AFFILIATION SETUP
%----------------------------------------------------------

\setlength{\affilsep}{9pt}
\renewcommand\Authfont{\fontsize{9}{11}\bfseries\sffamily\selectfont}
\renewcommand\Affilfont{\fontsize{7.5}{9}\it\selectfont}
\renewcommand\AB@affilsep{\reset@font\protect\Affilfont}
\renewcommand\AB@affilsepx{\reset@font\protect\\\protect\Affilfont}
% \renewcommand\AB@affilsepx{, \protect\Affilfont}

% Authands language
\renewcommand\Authand{\ignorespaces\andlanguage }
\renewcommand\Authands{\ignorespaces\andlanguage }

%----------------------------------------------------------
% SECTION STYLE
%----------------------------------------------------------

\setcounter{secnumdepth}{5}

\titleformat{\section}
    {\color{rhocolor}\sffamily\large\bfseries}
    {\thesection.}
    {0.5em}
    {#1}
    []

\titleformat{name=\section,numberless}[block]
    {\color{rhocolor}\sffamily\large\bfseries}
    {}
    {0em}
    {\tikz\draw[rhocolor, fill=rhocolor] (0,0) rectangle (6.6pt,6.6pt); \hspace{2.5pt} {#1}}
    []
  
\titleformat{\subsection}[block]
    {\sffamily\bfseries}
    {\thesubsection.}
    {0.5em}
    {#1}     
    []
  
\titleformat{\subsubsection}[block] % You may change it to "runin"
    {\small\sffamily\bfseries\itshape}
    {\thesubsubsection.}
    {0.5em}
    {#1}      % If using runin, change #1 to '#1. ' (space at the end)
    []    
  
\titleformat{\paragraph}[runin]
    {\small\bfseries}
    {}
    {0em}
    {#1} 
  
\titlespacing*{\section}{0pc}{3ex \@plus4pt \@minus3pt}{5pt}
\titlespacing*{\subsection}{0pc}{2.5ex \@plus3pt \@minus2pt}{2pt}
\titlespacing*{\subsubsection}{0pc}{2ex \@plus2.5pt \@minus1.5pt}{2pt}
\titlespacing*{\paragraph}{0pc}{1.5ex \@plus2pt \@minus1pt}{12pt}

%----------------------------------------------------------
% TABLE OF CONTENTS
%----------------------------------------------------------

\newlength{\tocsep} 
\setlength\tocsep{1.5pc} % Sets the indentation of the sections in the table of contents
\setcounter{tocdepth}{5} % Three levels in the table of contents section: sections, subsections and subsubsections

\usepackage{titletoc}
\contentsmargin{0cm}

%!TEX If using numberless sections we recomend to change the values 

\titlecontents{section}[\tocsep] % \setlength\tocsep{0c}
    {\addvspace{4pt}\sffamily\selectfont\bfseries}
    {\contentslabel[\thecontentslabel]{\tocsep}}
    {}
    {\hfill\thecontentspage}
    []

\titlecontents{subsection}[3pc] % 1pc
    {\addvspace{4pt}\small\sffamily\selectfont}
    {\contentslabel[\thecontentslabel]{\tocsep}}
    {}
    {\ \titlerule*[.5pc]{.}\ \thecontentspage}
    []

\titlecontents*{subsubsection}[3pc] % 1pc
    {\footnotesize\sffamily\selectfont}
    {}
    {}
    {}
    [\ \textbullet\ ]

%----------------------------------------------------------
% FIGURE-, TABLE-, LISTINGS- CAPTION STYLE
%----------------------------------------------------------

% General captions
\RequirePackage[
    labelfont={bf,sf},
    list=no,
    labelsep=period,
    singlelinecheck=off,
    font=small,
    justification=centering
]{caption}

% Table caption
\captionsetup[table]{position=below}
\newcommand{\tabletext}[1]{{\setlength{\leftskip}{9pt}\fontsize{7}{9}\vskip2pt\selectfont#1}}

% Listings caption
\newcommand{\captioncodelanguage}{
    \iflanguage{spanish}{
        {C\'odigo}%
    }{%
        {Code}%
    }%
}
\captionsetup[lstlisting]{font=small, labelfont={bf,sf}, belowskip=3pt, position=below, labelsep=period}
\renewcommand\lstlistingname{\captioncodelanguage}
\renewcommand\lstlistlistingname{\captioncodelanguage}

%----------------------------------------------------------
% LISTINGS STYLE
%----------------------------------------------------------

% Defined colors for listings environment
\definecolor{rhocodeback}{RGB}{248, 248, 248}  
% \definecolor{rhocodeback}{RGB}{255, 255, 255}     % Alternative back color
\definecolor{rhocodecomment}{RGB}{1, 136, 0}
\definecolor{rhocodekey}{RGB}{53, 53, 128}
\definecolor{rhocodestring}{RGB}{122, 36, 47}
\definecolor{rhogray}{RGB}{0.5,0.5,0.5}
\definecolor{rhoredmatlab}{RGB}{199, 78, 0}

% Rho codes style
\lstdefinestyle{rhocoding}{
    backgroundcolor=\color{rhocodeback},   
    commentstyle=\color{rhocodecomment},
    keywordstyle=\color{rhocodekey},
    numberstyle=\tiny\color{rhogray},
    stringstyle=\color{rhocodestring},
    breakatwhitespace=false,        
    basicstyle=\small\ttfamily,
    breaklines=true,                 
    captionpos=b,                    
    keepspaces=true,                 
    numbers=left,				 	% if "none" change the values  
    numbersep=8pt,    				% 0pt              
    showspaces=false,                
    showstringspaces=false,
    showtabs=false,                  
    tabsize=2,
    aboveskip=12pt,
    belowskip=8pt,
    xleftmargin=10pt,				% 0pt
    rulecolor=\color{rhogray},
    frame=single
}

% Matlab
\lstset{
    language=Matlab,
    rulecolor=\color{rhogray},
    emph=[1]{for,end,break},
    emphstyle=[1]\color{rhoredmatlab},
}

\lstset{style=rhocoding}

%----------------------------------------------------------
% FOOTNOTE STYLE
%----------------------------------------------------------

\definecolor{black50}{gray}{0.5}
\renewcommand*{\footnotelayout}{\normalfont\fontsize{6}{8}}
\renewcommand{\footnoterule}{
    \kern -3pt
    {\color{black50} \hrule width 75pt height 0.25pt}
    \kern 2.5pt
}

%----------------------------------------------------------
% BIBLATEX
%----------------------------------------------------------

\usepackage[
    backend=biber,
    style=ieee,
    sorting=ynt
]{biblatex}

\addbibresource{rho.bib}

%----------------------------------------------------------

\endinput