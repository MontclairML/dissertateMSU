



% ---------------------------------------------------------------------------
%  @LaTeX-class-file{
%     filename        = "DissertateUSU.cls",
%     version         = "1.0",
%     date            = "01 July 2017",
%     codetable       = "ISO/ASCII",
%     keywords        = "LaTeX, Dissertate",
%     note            = "Based on 'Dissertate' by Jordan Suchow,
%                        For support, email 'tyson.barrett@usu.edu',
%     docstring       = "Class for a dissertation at Utah State University."
% ---------------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{DissertateUSU}[2017/07/01 v1.0 DissertateUSU Class]
\LoadClass[12pt, oneside, letterpaper]{book}

%%%%%%%%%%%%%%%%%
%%   Options   %%
%%%%%%%%%%%%%%%%%
\RequirePackage{etoolbox}

%{{{ Line-spacing control
\RequirePackage{setspace}
\newcommand{\singlespaced}{\singlespacing}
\newcommand{\doublespaced}{\doublespacing}
\newcommand{\triplespaced}{\setstretch {2.6}}
%}}}

% Text layout.
\usepackage{ragged2e}
\RaggedRight
\RequirePackage{graphicx}
\usepackage{fixltx2e}
\usepackage{parskip}
\setlength{\parindent}{1cm}
\RequirePackage{lettrine}
\RequirePackage{setspace}
\RequirePackage{verbatim}
\usepackage{indentfirst}

% Fonts.
\RequirePackage{color}
\RequirePackage{xcolor}
\usepackage{hyperref}
\RequirePackage{url}
\RequirePackage{amssymb}
\RequirePackage{mathspec}
\AtBeginEnvironment{tabular}{\addfontfeature{RawFeature=+tnum}}
\widowpenalty=300
\clubpenalty=300
% \setromanfont[Numbers=OldStyle, Ligatures={Common, TeX}, Scale=1.0]{EB Garamond}
% \newfontfamily{\smallcaps}[RawFeature={+c2sc,+scmp}]{EB Garamond}
% \setsansfont[Scale=MatchLowercase, BoldFont={Lato Bold}]{Lato Regular}
% \setmonofont[Scale=MatchLowercase]{Source Code Pro}
\RequirePackage[labelfont={bf,small,singlespacing},
                textfont={small,singlespacing},
                justification={raggedright},
                singlelinecheck=false,
                margin=0pt,
                figurewithin=chapter,
                tablewithin=chapter]{caption}
\RequirePackage{microtype}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%        Headings & Headers         %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{fancyhdr}
\RequirePackage[tiny, md, sc]{titlesec}
\setlength{\headheight}{25pt}
\RequirePackage{titling}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Page number in upper right corner %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\fancypagestyle{plain}{%
\fancyhf{} % clear all header and footer fields
\fancyhead[R]{\thepage} % except the right
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% LAYOUT: TABLE of CONTENTS -auto fill %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setcounter{tocdepth}{2}
\usepackage[titles]{tocloft}
\usepackage[titletoc]{appendix}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cftchapfont}{\normalsize \normalfont}
\renewcommand\contentsname{CONTENTS}
\renewcommand\listfigurename{LIST OF FIGURES}
\renewcommand\listtablename{LIST OF TABLES}
\renewcommand{\cftchapafterpnum}{\vspace{10pt}}
\newcommand{\hsp}{\hspace{20pt}}

\renewcommand*{\tableofcontents}{
    \chapter*{ \begin{center} \textnormal{\contentsname}  \end{center}}
    \hfill Page\\
    \@starttoc{toc}
    \newpage
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% LAYOUT: List of TABLES - auto fill %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%{{{ List of Tables
% LoT should be single-spaced within entries and double-spaced between entries
\renewcommand*{\listoftables}{
    \singlespaced
    % \vskip0pt
    \chapter*{ \begin{center} \textnormal{LIST OF TABLES}  \end{center}}
    \addcontentsline{toc}{section}{LIST OF TABLES}
    % \addcontentsline{toc}{chapter}{\textnormal{LIST OF TABLES}}
    % \addvspace{10pt}
    % \typeout{!! List of Tables...!!}
    \noindent Table \hfill Page\\         % newline allows us to use a vspace...
    % vspace adjusts spacing to get a doublespace between table headings
    % and table contents
    % \vspace{\baselineskip}
    \@starttoc{lot}
    \newpage
    % \doublespaced
}
% Ensure double-spacing between entries
\renewcommand*\l@table{\par\addvspace{\bigskipamount}\pagebreak[2]
 \@dottedtocline{1}{1.5em}{2.3em}}
%}}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% LAYOUT: List of FIGURES -auto fill %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%{{{ List of Figures
% LoF should be single-spaced within entries and double-spaced between entries
\renewcommand*{\listoffigures}{
    \singlespaced
    % \vskip0pt
    \chapter*{\begin{center} \textnormal{LIST OF FIGURES} \end{center}}
    \addcontentsline{toc}{section}{LIST OF FIGURES}
    % \addcontentsline{toc}{chapter}{\textnormal{LIST OF FIGURES}}
    % \addvspace{10pt}
    % \typeout{!! List of Figures...!!}
    \noindent Figure \hfill Page\\         % newline allows us to use a vspace...
    % vspace adjusts spacing to get a doublespace between table headings
    % and table contents
    % \vspace{\baselineskip}
    \@starttoc{lof}
    \newpage
    % \doublespaced
}
% Ensure double-spacing between entries
\renewcommand*\l@figure{\par\addvspace{\bigskipamount}\pagebreak[2]
 \@dottedtocline{1}{1.5em}{2.3em}}
%}}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% LAYOUT: CHAPTER & SECTION HEADINGS - auto fill %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand{\setthesection}{\roman{chapter}.A\roman{section}}
\usepackage{quotchap}
\parskip 0pt

\usepackage{titlesec, blindtext, color}

\titleformat{\chapter}[display]
{\thispagestyle{empty}\center}   %% spacing of chapter headings
{\textbf{Chapter \thechapter}}
{0pt}
{}

\titleformat{\section}[display]
{\normalfont\normalsize\bfseries}
{}
{0pt}
{{}}

\titleformat{\subsection}[display]
{\normalfont\normalsize\itshape}
{}
{0pt}
{{}}

\titleformat{\subsubsection}[display]
{\normalfont\normalsize}
{}
{0pt}
{{}}

% An environment for paragraph-style section.
\providecommand\newthought[1]{%
   \addvspace{1.0\baselineskip plus 0.5ex minus 0.2ex}%
   \textsc{#1}%
}

\usepackage{lastpage}


