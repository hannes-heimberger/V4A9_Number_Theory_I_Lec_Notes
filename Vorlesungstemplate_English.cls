\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Vorlesungstemplate}

\newcounter{boolthirdauth}
\newcounter{boolheads}
\newcounter{booltitlepage}
\newcounter{usewhichtitle}
\newcounter{boollecture}
\newcounter{boolalg}
\newcounter{booltranslate}
\newcounter{boolmath}
\newcounter{boolbibliography}
\newcounter{boolappendix}
\newcounter{boolgerman}
\newcounter{booltoc}
\newcounter{boolchapnumbereddefs}

\newcounter{definition}
\newcounter{exercise}

%Personal Changes
\newcommand{\aName}{\texttt{\textbackslash{}renewcommand\{\textbackslash{}aName\}\{<Name(s)>\}}}
\newcommand{\coaName}{\texttt{\textbackslash{}renewcommand\{\textbackslash{}coaName\}\{<Name(s)>\}}}
\newcommand{\cocoaName}{\texttt{\textbackslash{}renewcommand\{\textbackslash{}cocoaName\}\{<Name(s)>\}}}
\newcommand{\instName}{\texttt{\textbackslash{}renewcommand\{\textbackslash{}instName\}\{<Name>\}}}
\newcommand{\Semester}{\texttt{\textbackslash{}renewcommand\{\textbackslash{}Semester\}\{<Semester>\}}}
\newcommand{\LectureName}{\texttt{\textbackslash{}renewcommand\{\textbackslash{}LectureName\}\{<Lecture>\}}}
\newcommand{\ProfName}{\texttt{\textbackslash{}renewcommand\{\textbackslash{}ProfName\}\{<Prof>\}}}
\newcommand{\groupNum}{\texttt{\textbackslash{}renewcommand\{\textbackslash{}groupNum\}\{<Nummer>\}}}
\newcommand{\titel}{\texttt{\textbackslash{}renewcommand\{\textbackslash{}titel\}\{<Titel>\}}}
\newcommand{\bibresource}{\texttt{\textbackslash{}renewcommand\{\textbackslash{}bibresource\}\{Name der .bib\}}}
% Options
\RequirePackage{kvoptions}
\SetupKeyvalOptions{%
	family=Lec,
	prefix=Lec@
}
\DeclareStringOption[none]{doctype}
\DeclareStringOption[none]{pdftitle}

% Pass all options

\DeclareOption{10pt}{\def\Lec@ptsize{10pt}}
\DeclareOption{11pt}{\def\Lec@ptsize{11pt}}
\DeclareOption{12pt}{\def\Lec@ptsize{12pt}}
%\DeclareStringOption[ngerman]{language}[ngerman]

\ExecuteOptions{11pt}
\ProcessOptions
\ProcessKeyvalOptions*
\DeclareDefaultOption{\PassOptionsToClass{\Lec@ptsize}{scrartcl}}

\PassOptionsToPackage{dvipsnames}{xcolor}

% Process all options
\LoadClass[12pt,a4paper,numbers=noenddot,chapterprefix=true, bookmarkpackage=false]{scrreprt}

\addtokomafont{disposition}{\rmfamily}
\renewcommand\thempfootnote{\arabic{mpfootnote}}

%Page geometry
\RequirePackage[utf8]{inputenc}

\RequirePackage{pdfpages}
\RequirePackage[a4paper, tmargin=0.5in, lmargin=0.8in, rmargin=0.8in]{geometry}
\RequirePackage[%
  autocite    = superscript,
  backend     = bibtex,
  sortcites   = true,
  style       = numeric,
  ]{biblatex}
\RequirePackage{acronym}
\RequirePackage[fleqn]{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amstext}
\RequirePackage{amsthm}
\RequirePackage{aligned-overset}
\RequirePackage[ngerman , ruled, algochapter, linesnumbered]{algorithm2e}
\RequirePackage{booktabs}
\RequirePackage[british]{babel}
\RequirePackage{bm}
\RequirePackage{calc}
\RequirePackage{cancel}
% \RequirePackage{color}
\RequirePackage{dsfont}
\RequirePackage{diffcoeff}
\RequirePackage{enumerate}
\RequirePackage[shortlabels]{enumitem}
\RequirePackage{environ}
\RequirePackage{etoolbox}
\RequirePackage{float}
\RequirePackage[T1]{fontenc}
\RequirePackage{geometry}
\RequirePackage{graphicx}
\RequirePackage{imakeidx}
\RequirePackage{ifthen}
\RequirePackage{listings}
\RequirePackage{lmodern}
\RequirePackage{mathrsfs}
\RequirePackage{mathtools}
\RequirePackage{marvosym}
\RequirePackage[chapter]{minted}
\RequirePackage{nicefrac}
\RequirePackage{pifont}
\RequirePackage{pgf,tikz}
\RequirePackage{tikz-cd}
\RequirePackage{pgfplots}
\RequirePackage{pgfplotstable}
\RequirePackage{qrcode}
\RequirePackage{scrextend}
\RequirePackage[headsepline]{scrlayer-scrpage}
\RequirePackage{selinput}
\RequirePackage{setspace}
\RequirePackage{soul}
\RequirePackage{stmaryrd}
\RequirePackage{tabularx}
\RequirePackage[most]{tcolorbox}
    \tcbuselibrary{theorems}
\RequirePackage{tocloft}
\RequirePackage{wasysym}
\RequirePackage{dsfont}
\RequirePackage{adjustbox}
%\usepackage{xparseh

\RequirePackage[
  colorinlistoftodos
  ,prependcaption
  ,textsize=tiny
  ,disable
  ]{todonotes}


\newenvironment{code}{\captionsetup{type=listing}}{}

\usepackage{xargs}
\RequirePackage{xcolor}
\RequirePackage[normalem]{ulem}
\usetikzlibrary{calc, automata, arrows, babel}
\RequirePackage{tkz-euclide}
\RequirePackage[
  colorlinks=true, citecolor=violet,
  urlcolor=violet, linkcolor=violet]{hyperref}
\RequirePackage[ngerman]{cleveref}
\geometry{a4paper, top=20mm, left=25mm, right=25mm, bottom=20mm, headsep=5mm, footskip=12mm}
% \usetkzobj{all}
\setlist{listparindent=\parindent}

\RequirePackage{footnote}
\BeforeBeginEnvironment{tcolorbox}{\savenotes}
\AfterEndEnvironment{tcolorbox}{\spewnotes}

\tcbuselibrary{theorems}
\tcbuselibrary{skins}

\Crefname{algorithm}{Algorithm}{Algorithms}
\Crefname{exercise}{Exercise}{Exercises}
\Crefname{lemma}{Lemma}{Lemmata}
\Crefname{definition}{Definition}{Definitions}
\Crefname{theorem}{Theorem}{Theorems}
\Crefname{corollary}{Corollary}{Corollaries}
\Crefname{triviality}{Triviality}{Trivialities}
\Crefname{equation}{Equation}{Equations}

\makeatletter
% third parameter of \@dottectocline controls number to title distance
\newcommand{\settcblistofwidth}[1]{%
  \renewcommand{\l@tcolorbox}{\@dottedtocline{1}{1.5em}{#1}}%
  }
\makeatother

\newtcbtheorem[number within=section, list inside={def}]{definition}{Definition}%
{theorem style=standard,label type=definition,enhanced,frame hidden,
boxrule=0mm,titlerule=0mm,toptitle=1mm,bottomtitle=1mm,
fonttitle=\bfseries\large,fontupper=\normalsize,
coltitle=black,colbacktitle=magenta!30!white,
colback=magenta!15!white, borderline={0pt}{0pt}{white}, separator sign={\ --}, breakable}{def}

\newtcbtheorem[use counter from=definition, list inside={triv}, ]{triviality}{Triviality}%
{theorem style=standard,label type=triviality,enhanced,frame hidden,
boxrule=0mm,titlerule=0mm,toptitle=1mm,bottomtitle=1mm,
fonttitle=\bfseries\large,fontupper=\normalsize,
coltitle=black,colbacktitle=orange!30!white,
colback=orange!15!white, borderline={0pt}{0pt}{white}, separator sign none, description delimiters parenthesis, breakable
}{triv}

\newtcbtheorem[use counter from=definition, list inside={thm},]{theorem}{Theorem}%
{theorem style=standard,label type=satz,enhanced,frame hidden,
boxrule=0mm,titlerule=0mm,toptitle=1mm,bottomtitle=1mm,
fonttitle=\bfseries\large,fontupper=\normalsize,
coltitle=black,colbacktitle=violet!30!white,
colback=violet!15!white, borderline={0pt}{0pt}{white}, description delimiters parenthesis, separator sign none, breakable}{thm}

\newtcbtheorem[use counter from=definition, list inside={prop},]{proposition}{Proposition}%
{theorem style=standard,label type=satz,enhanced,frame hidden,
boxrule=0mm,titlerule=0mm,toptitle=1mm,bottomtitle=1mm,
fonttitle=\bfseries\large,fontupper=\normalsize,
coltitle=black,colbacktitle=blue!30!white,
colback=blue!15!white, borderline={0pt}{0pt}{white}, separator sign none, description delimiters parenthesis, breakable
}{prop}

\newtcbtheorem[use counter from=definition, list inside={lem},]{lemma}{Lemma}%
{theorem style=standard,label type=lemma,enhanced,frame hidden,
boxrule=0mm,titlerule=0mm,toptitle=1mm,bottomtitle=1mm,
fonttitle=\bfseries\large,fontupper=\normalsize,
coltitle=black,colbacktitle=red!30!white,
colback=red!15!white, borderline={0pt}{0pt}{white}, separator sign none, description delimiters parenthesis, breakable
}{lem}

\newtcbtheorem[use counter from=definition, list inside={cor},]{corollary}{Corollary}%
{theorem style=standard,label type=korollar,enhanced,frame hidden,
boxrule=0mm,titlerule=0mm,toptitle=1mm,bottomtitle=1mm,
fonttitle=\bfseries\large,fontupper=\normalsize,
coltitle=black,colbacktitle=yellow!40!white,
colback=yellow!25!white, borderline={0pt}{0pt}{white}, separator sign none, description delimiters parenthesis, breakable
}{cor}

\newtcbtheorem[number within=chapter, list inside={aufg}, ]{exercise}{Exercise}%
{theorem style=standard,label type=exercise,enhanced,frame hidden,
boxrule=0mm,titlerule=0mm,toptitle=1mm,bottomtitle=1mm,
fonttitle=\bfseries\large,fontupper=\normalsize,
coltitle=black,colbacktitle=green!30!white,
colback=green!15!white, borderline={0pt}{0pt}{white}, separator sign={\ --}, breakable
}{exc}

\newtcbtheorem[use counter from=definition, list inside={thm},]{titledbox}{}%
{theorem style=standard,label type=satz,enhanced,frame hidden,
boxrule=0mm,titlerule=0mm,toptitle=1mm,bottomtitle=1mm,
fonttitle=\bfseries\large,fontupper=\normalsize,
coltitle=black,colbacktitle=violet!30!white,
colback=violet!15!white, borderline={0pt}{0pt}{white}, separator sign={\ --}, breakable
}{thm}

\newtcbtheorem[use counter from=definition, list inside={ans},]{answer}{Answer}%
{theorem style=standard,label type=satz,enhanced,frame hidden,
boxrule=0mm,titlerule=0mm,toptitle=1mm,bottomtitle=1mm,
fonttitle=\bfseries\large,fontupper=\normalsize,
coltitle=black,colbacktitle=violet!30!white,
colback=violet!15!white, borderline={0pt}{0pt}{white}, separator sign={\ --}, breakable
}{ans}

\newtcbtheorem[use counter from=definition, list inside={fact},]{fact}{Fact}%
{theorem style=standard,label type=satz,enhanced,frame hidden,
boxrule=0mm,titlerule=0mm,toptitle=1mm,bottomtitle=1mm,
fonttitle=\bfseries\large,fontupper=\normalsize,
coltitle=black,colbacktitle=brown!45!white,
colback=brown!15!white, borderline={0pt}{0pt}{white}, separator sign={\ --}, breakable
}{fact}

\newtcbtheorem[use counter from=definition, list inside={hyp},]{hypothesis}{Hypothesis}%
{theorem style=standard,label type=satz,enhanced,frame hidden,
boxrule=0mm,titlerule=0mm,toptitle=1mm,bottomtitle=1mm,
fonttitle=\bfseries\large,fontupper=\normalsize,
coltitle=black,colbacktitle=brown!45!green!45!white,
colback=brown!15!green!15!white, borderline={0pt}{0pt}{white}, separator sign none, description delimiters parenthesis, breakable
}{hyp}

\newtcbtheorem[use counter from=definition, list inside={hyp},]{problem}{Problem}%
{theorem style=standard,label type=satz,enhanced,frame hidden,
boxrule=0mm,titlerule=0mm,toptitle=1mm,bottomtitle=1mm,
fonttitle=\bfseries\large,fontupper=\normalsize,
coltitle=black,colbacktitle=RedViolet!45!white,
colback=RedViolet!15!white, borderline={0pt}{0pt}{white}, separator sign none, description delimiters parenthesis, breakable
}{prob}

\newtcbtheorem[use counter from=definition, list inside={hyp},]{question}{Question}%
{theorem style=standard,label type=satz,enhanced,frame hidden,
boxrule=0mm,titlerule=0mm,toptitle=1mm,bottomtitle=1mm,
fonttitle=\bfseries\large,fontupper=\normalsize,
coltitle=black,colbacktitle=RedViolet!45!white,
colback=RedViolet!15!white, borderline={0pt}{0pt}{white}, separator sign none, description delimiters parenthesis, breakable
}{ques}

\newtcbtheorem[use counter from=definition, list inside={claim},]{claim}{Claim}%
{theorem style=standard,label type=satz,enhanced,frame hidden,
boxrule=0mm,titlerule=0mm,toptitle=1mm,bottomtitle=1mm,
fonttitle=\bfseries\large,fontupper=\normalsize,
coltitle=black,colbacktitle=blue!30!white,
colback=blue!15!white, borderline={0pt}{0pt}{white}, separator sign={\ --}
}{claim}

\newenvironment{addcalc}{\begin{proof}[Additional calculation]}{\end{proof}}
\newenvironment{solblue}{\begin{proof}[\color{blue} Solution]}{\end{proof}}
\newenvironment{solution}{\begin{proof}[Solution]}{\end{proof}}
\newenvironment{pf}{\begin{proof}}{\end{proof}}
\newcommand{\pfcolor}{black}
\newenvironment{colorpf}{\begin{pf}[\color{\pfcolor} Proof]}{\end{pf}}
\newenvironment{answertoquestion}{\begin{proof}[Answer]}{\end{proof}}
\newenvironment{example}{\begin{proof}[Example]}{\end{proof}}
\tcolorboxenvironment{solblue}{% `proof' from `amsthm'
blanker,breakable,left=2mm,
borderline west={0.4mm}{0pt}{blue}}

\tcolorboxenvironment{answertoquestion}{blanker,breakable,left=2mm,
borderline west={0.4mm}{0pt}{RedViolet}}
\tcolorboxenvironment{solution}{% `proof' from `amsthm'
blanker,breakable,left=2mm,
borderline west={0.4mm}{0pt}{blue}}

\tcolorboxenvironment{addcalc}{% `proof' from `amsthm'
blanker,breakable,left=2mm,
borderline west={0.4mm}{0pt}{yellow}}

\tcolorboxenvironment{pf}{% `proof' from `amsthm'
blanker,breakable,left=2mm,
borderline west={0.4mm}{0pt}{red}}

\tcolorboxenvironment{orangepf}{% `proof' from `amsthm'
blanker,breakable,left=2mm,
borderline west={0.4mm}{0pt}{red}}

\tcolorboxenvironment{example}{% `proof' from `amsthm'
blanker,breakable,left=2mm,
borderline west={0.4mm}{0pt}{green}}

%Vorlesungsnummerierung
\newcommand{\currentLectureDate}{}
\newcommand{\lastLectureDate}{}
\newcounter{lecture}
\newcommand{\newLecture}[1]{%
    \renewcommand{\lastLectureDate}{\currentLectureDate}
    \ifnum\thelecture=0
		\else
    \begin{center}
			\textbf{Lecture \thelecture{} (\lastLectureDate)}
		\end{center}
		\vspace{-0.6cm}
		\fi
    \addtocounter{lecture}{1}
		\ifnum\thelecture=1
		\else
    \noindent \dotfill \\
		\fi
    \renewcommand{\currentLectureDate}{#1}
		\ifnum\thelecture=1
		\else
		\vspace*{-0.8cm}
		\begin{center}
			\textbf{Lecture \thelecture{} (\currentLectureDate)}
		\end{center}
		\fi
}

\newcommand{\zettelkopf}{
\vspace{0.5cm}
\noindent
\begin{minipage}[t][0.15\textwidth][c]{0.5\textwidth}
\textbf{\instName} \\
\ProfName \\
\LectureName \\
\Semester
\end{minipage}
\begin{minipage}[t][0.15\textwidth][c]{0.5\textwidth}
\flushright
    \aName \\
    \coaName \\
		\ifnum\theboolthirdauth=1
			\cocoaName \\
		\fi
    \groupNum \\
    \today
    %\vspace{0.102cm}
\end{minipage}
\hfill \\ \hfill \\
{\Huge \noindent \textbf{\titel}}
\hfill \\
}

\newcommand{\skriptkopf}{
\vspace{0.5cm}
\noindent
\begin{minipage}[t][0.15\textwidth][c]{0.119791667\textwidth}
%\includegraphics[width=\textwidth]{/home/hannesheimberger/Documents/LaTeX/Universität/UNI_Bonn_Logo.png}
\Large \textbf{Universität Bonn}  %Hannes: /home/hannesheimberger/Dokumente/LaTeX/Universität/UNI_Bonn_Logo.png, Simon: c:/Users/sirio/Documents/LaTeX/Universität/2_SoSe_2025/UNI_Bonn_Logo.png
\end{minipage}
\begin{minipage}[t][0.15\textwidth][c]{0.880208333\textwidth}
\flushright
  \textbf{\instName} \\
  \ProfName \\
  \LectureName \\
  \Semester
\end{minipage}
\hfill \\ \hfill \\
{\Huge \noindent \textbf{\titel}}
\hfill \\
\textit{\LaTeX{} {\ifnum\thebooltranslate=1 and Translation \fi }by \aName}
}

\newcommand\reversezensur{\bgroup \markoverwith{\textasteriskcentered}\ULon}
\newcommand\zens{\bgroup \markoverwith{\textbackslash}\ULon}

\DeclareMathOperator{\di}{d\!}
\newcommand*\Eval[3]{\left.#1\right\rvert_{#2}^{#3}}

%Acc Commands
\let\oldforall\forall
\let\oldexists\exists
%\renewcommand{\exists}{\ensuremath\oldexists\kern-.67em\oldexists\hspace{.15em}}
\renewcommand{\exists}{\ \rotatebox[origin=c]{180}{$\mathbb{E}$}}
\renewcommand{\forall}{\ \rotatebox[origin=c]{180}{$\mathbb{A}$}}
\newcommand{\jubelforall}{\ {\color{teal} \forall}}
%\renewcommand{\forall}{\ \kern.05em\ensuremath\oldforall\kern-.63em\rotatebox{110}{\rule{.74em}{.4pt}}\hspace{.3em}}
\newcommand{\Res}[1]{\mathop{\mathfrak{Res}}_{#1}}
\newcommand{\rf}{\right\rfloor}
\newcommand{\lf}{\left\lfloor}
\newcommand{\Sing}{\text{Sing}}
\newcommand{\inp}[2]{\langle #1, #2\rangle}
\newcommand{\para}[1]{\par \noindent \textbf{#1}}
\newcommand{\chap}[1]{\newpage {\noindent \huge \textbf{#1}} \\ \addtocounter{chapter}{1} \setcounter{section}{0} \setcounter{tcb@cnt@exercise}{0} \setcounter{tcb@cnt@definition}{0} \addcontentsline{toc}{chapter}{#1}}
\renewcommand{\listingscaption}{Programm}
\renewcommand{\listoflistingscaption}{Liste der Programme}
\SetKwComment{Comment}{/* }{ */}
\newcommand{\emp}[2][]{{\color{red} \textbf{#2}}}
\newcommand{\define}[2][]{{\color{red} \textbf{#2}}\ifthenelse{\equal{#1}{}}{\index{#2}}{\index{#1}}\label{def:#2}}
\newcommand{\definenolabel}[2][]{{\color{red} \textbf{#2}}\ifthenelse{\equal{#1}{}}{\index{#2}}{\index{#1}}}
\newcommand{\Gal}{\text{Gal}}
\newcommand{\F}{\mathbb{F}}
\renewcommand{\L}{\mathcal{L}}
\newcommand{\GL}{\text{GL}}
\newcommand{\Aut}{\text{Aut}}
\renewcommand{\Re}{\mathfrak{Re}}
\renewcommand{\Im}{\mathfrak{Im}}
\newcommand{\smod}{\text{ mod }}
\newcommand{\arsinh}{\text{arsinh}}
\newcommand{\artanh}{\text{artanh}}
\newcommand{\emm}{\mathcal{M}}
\newcommand{\Lin}{\text{Lin}}
\newcommand{\Log}{\text{Log}}
\newcommand{\Kern}{\text{Kern}}
\newcommand{\Eig}{\text{Eig}}
\newcommand{\ind}{\text{ind}}
\newcommand{\Rang}{\text{Rang}}
\newcommand{\rank}{\text{rank}}
\newcommand{\Bild}{\text{Bild}}
\newcommand{\Vol}{\text{Vol}}
\newcommand{\coker}{\text{coker}}
\newcommand{\enquote}[1]{\glqq #1 \grqq \ }
\newcommand{\Symm}{\text{Symm}}
\renewcommand{\phi}{\varphi}
\newcommand{\Span}{\text{Span}}
\newcommand{\lcm}{\text{lcm}}
\newcommand{\ord}{\text{ord}}
\newcommand{\vol}{\text{vol}}
\newcommand{\Grad}{\text{Grad}}
\newcommand{\Rad}{\text{Rad}}
\newcommand{\id}{\text{id}}
\newcommand{\Abb}{\text{Abb}}
\newcommand{\Ann}{\text{Ann}}
\newcommand{\Hom}{\text{Hom}}
\newcommand{\Haupt}{\text{Haupt}}
\newcommand{\End}{\text{End}}
\newcommand{\Var}{\text{Var}}
\newcommand{\JNF}{\text{JNF}}
\newcommand{\SNF}{\text{SNF}}
\newcommand{\FNF}{\text{FNF}}
\newcommand{\Arg}{\text{Arg}}
\newcommand{\WNF}{\text{WNF}}
\newcommand{\abs}[1]{\left| #1\right|}
\newcommand{\Iso}{\text{Iso}}
\newcommand{\ggT}{\text{ggT}}
\newcommand{\Z}{\mathbb{Z}}
\newcommand{\N}{\mathbb{N}}
\newcommand{\Q}{\mathbb{Q}}
\newcommand{\R}{\mathbb{R}}
\newcommand{\C}{\mathbb{C}}
\newcommand{\Zprim}[1]{\Z_{\text{prim}}^{#1}}
\renewcommand{\AA}{\mathbb{A}}
\newcommand{\I}{\mathcal{I}}
\renewcommand{\O}{\mathcal{O}}
\newcommand{\PP}{\mathbb{P}}
\newcommand{\A}{\mathfrak{A}}
\newcommand{\E}{\mathbb{E}}
\renewcommand{\S}{\mathbb{S}}
\newcommand{\titremark}[1]{\paragraph{Remark} \hspace{-3mm}(#1)\textbf{:}}
\newcommand{\1}{\mathds{1}}
\renewcommand{\P}{\mathfrak{P}}
\newcommand{\Unif}{\text{Unif}}
\newcommand{\Geom}{\text{Geom}}
\newcommand{\Spur}{\text{Spur}}
\newcommand{\sgn}{\text{sgn}}
\newcommand{\Sol}{\mathfrak{Sol}}
\newcommand{\subspaceeq}{\sqsubseteq}
\newcommand{\subspace}{\sqsubset}
\newcommand{\tildehat}[1]{\widehat{\widetilde{#1}}}
\newcommand{\hattilde}[1]{\widetilde{\widehat{#1}}}
\newcommand{\tildehathat}[1]{\widehat{\widehat{\widetilde{#1}}}}
\newcommand{\hattildehat}[1]{\widehat{\widetilde{\widehat{#1}}}}
\newcommand{\hathattilde}[1]{\widetilde{\widehat{\widehat{#1}}}}
\newcommand{\twohat}[1]{\widehat{\widehat{#1}}}
\newcommand{\threehat}[1]{\widehat{\widehat{\widehat{#1}}}}
\newcommand{\nhat}[2]{\hspace{-2mm} \stackrel{#1\begin{cases}
    \vspace{-4.5mm} \ \hspace{0.5mm}
    \widehat{}\\
    \vspace{-1.5mm} \ \vdots \\
    \vspace{-2.5mm} \ \hspace{0.5mm} \widehat{} \\
\end{cases}}{\ #2} \hspace{-3mm}}
\newcommand{\ntilde}[2]{\hspace{-2mm} \stackrel{#1\begin{cases}
    \vspace{-4.5mm} \ \hspace{0.5mm}
    \widetilde{}\\
    \vspace{-1.5mm} \ \vdots \\
    \vspace{-2.5mm} \ \hspace{0.5mm} \widetilde{} \\
\end{cases}}{\ #2} \hspace{-3mm}}
\newcommand{\jubelhut}[1]{{\color{teal} \widehat{{\color{black} #1}}}}
\renewcommand{\epsilon}{\varepsilon}

\newcommand{\mail}[1]{\href{mailto:#1}{\texttt{#1}}}
\newcommand{\seperator}[1]{\hfill \\ \vspace{0.1in}
\noindent {\color{purple} \textbf{\dotfill \ #1 \dotfill}} \\
\vspace{-0.35in}}

\makeindex[columns=2, title=Index, intoc]

\DeclareCiteCommand{\supercite}[\mkbibsuperscript]{}{\usebibmacro{cite}%
   \usebibmacro{postnote}}{}{}

\newcommand{\chaptercolor}{black}
\addtokomafont{chapter}{\color{\chaptercolor}}
%\addtokomafont{chapterentry}{\color{\chaptercolor}}
\addtokomafont{section}{\color{\chaptercolor}}
\addtokomafont{subsection}{\color{\chaptercolor}}
\addtokomafont{subsubsection}{\color{\chaptercolor}}
%\addtokomafont{sectionentry}{\color{\chaptercolor}}
%\addtokomafont{subsectionentry}{\color{\chaptercolor}}
%\addtokomafont{subsubsectionentry}{\color{\chaptercolor}}

\newcommand{\clrtoc}[1]{\addtocontents{toc}{\protect\hypersetup{linkcolor=#1}}}
\newcommand{\clrdef}[1]{\addtocontents{def}{\protect\hypersetup{linkcolor=#1}}}
\newcommand{\clrlem}[1]{\addtocontents{lem}{\protect\hypersetup{linkcolor=#1}}}
\newcommand{\clrthm}[1]{\addtocontents{thm}{\protect\hypersetup{linkcolor=#1}}}

\newcommand{\colorchapter}[2]{
\renewcommand{\chaptercolor}{#1}
\addtocontents{toc}{\protect\hypersetup{linkcolor=#1}}
\chapter{#2}
\renewcommand{\chaptercolor}{black}
\addtocontents{toc}{\protect\hypersetup{linkcolor=violet}}
}
\newcommand{\colorsection}[2]{
\renewcommand{\chaptercolor}{#1}
\addtocontents{toc}{\protect\hypersetup{linkcolor=#1}}
\section{#2}
\renewcommand{\chaptercolor}{black}
\addtocontents{toc}{\protect\hypersetup{linkcolor=violet}}
}
\newcommand{\colorsubsection}[2]{
\renewcommand{\chaptercolor}{#1}
\addtocontents{toc}{\protect\hypersetup{linkcolor=#1}}
\subsection{#2}
\renewcommand{\chaptercolor}{black}
\addtocontents{toc}{\protect\hypersetup{linkcolor=violet}}
}
\newcommand{\colorsubsubsection}[2]{
\renewcommand{\chaptercolor}{#1}
\addtocontents{toc}{\protect\hypersetup{linkcolor=#1}}
\subsubsection{#2}
\renewcommand{\chaptercolor}{black}
\addtocontents{toc}{\protect\hypersetup{linkcolor=violet}}
}

%%%% LANGUAGE OPTIONS %%%%


\AtBeginDocument{
\ifnum\theboolheads=1
\ifnum\theboollecture=0
\ohead{Exercise Sheet \thechapter}
\ihead{\aName, \coaName\ifnum\theboolthirdauth=1 , \cocoaName \fi}
\else
\ohead{\LectureName}
\ihead{\ProfName}
\fi
\else
\fi
		\ifnum\thebooltitlepage=1
			\pagenumbering{gobble}
			\begin{titlepage}
		\fi
		\ifnum\theboollecture=1
		\skriptkopf
		\subsubsection*{Corrections and Remarks}
		If you find a mistake in this file or have a remark concerning this document, I would be glad if you let me know.
		It would be great if you wrote a mail. I can be reached through the address
		\mail{hannes.heimberger@uni-bonn.de}.
		\subsubsection*{Solutions to exercises}
		I will add solutions to the exercises after their correction, at least if my tutor marked them correct. These may, however, not be written down
		in the most optimal way. The proofs left as exercsises will be marked as such. If you have suggestions about how to improve these proofs, comments
		are welcome.
		\subsubsection*{Colours}
		My annotations to the notes are {\color{blue} blue}. Additional details that are neither part of the lecture nor relevant to the exam will be coloured in {\color{orange} orange}.
		\subsubsection*{Thanks}
		\thanks
		\else \zettelkopf \ifnum\thebooltoc=1 \tableofcontents \fi
		\fi
		\ifnum\thebooltitlepage=1
		\end{titlepage}
		\pagenumbering{roman}
		\pagebreak
		\fi
		\ifnum\theboollecture=1
		\tableofcontents
		\pagebreak
		\fi
    \pagenumbering{gobble}
		\ifnum\theboollecture=1
		\ifnum\theusewhichtitle=1
		\addcontentsline{toc}{part}{\LectureName}
		\part*{\LectureName}
		\else
		\addcontentsline{toc}{part}{\titel}
		\part*{\titel}
		\fi
		\else
		\ifnum\thebooltitlepage=1
		\addcontentsline{toc}{part}{Content}
		\part*{Content}
		\fi
		\fi
		\pagenumbering{arabic}
}

\AtEndDocument{
\settcblistofwidth{3em}
\ifnum\theboolappendix=1
\pagebreak
\pagenumbering{gobble}
\addcontentsline{toc}{part}{Appendix}\part*{Appendix}
\pagenumbering{Alph}
\ifnum\theboolalg=1
\addcontentsline{toc}{chapter}{List of Algorithms}\listofalgorithms
\addcontentsline{toc}{chapter}{List of Programs}\listoflistings
\fi

\ifnum\theboolmath=1
\ifnum\theboollecture=1
\addcontentsline{toc}{chapter}{List of Definitions}\tcblistof[\chapter*]{def}{List of Definitions}
\pagebreak
\addcontentsline{toc}{chapter}{List of Theorems}\tcblistof[\chapter*]{thm}{List of Theorems}
\pagebreak
\addcontentsline{toc}{chapter}{List of Lemmata}\tcblistof[\chapter*]{lem}{List of Lemmata}
\pagebreak
%\addcontentsline{toc}{chapter}{Liste der Trivialitäten}\tcblistof[\chapter*]{triv}{Liste der Trivialitäten}
%\pagebreak
\printindex
\else
\addcontentsline{toc}{chapter}{List of Exercises}\tcblistof[\chapter*]{aufg}{List of Exercises}
\fi
\else
\printindex
\fi
\ifnum\theboolbibliography=1
\printbibliography
\addcontentsline{toc}{chapter}{Literature}
\fi
\fi
}
