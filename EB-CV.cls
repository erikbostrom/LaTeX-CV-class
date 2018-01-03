\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{EB-CV}
	[2018/01/02 CV class by Erik Boström]
	
\LoadClass{article}
\RequirePackage[utf8]{inputenc}
\RequirePackage{bbding,wasysym,lipsum,marvosym}
\RequirePackage[T1]{fontenc}
\pagestyle{empty}

\renewcommand{\normalsize}{\fontsize{8}{9.6}\selectfont}
\renewcommand{\large}{\fontsize{9}{10.8}\selectfont}
\renewcommand{\Large}{\fontsize{10}{12}\selectfont}
\renewcommand{\huge}{\fontsize{15}{20}\selectfont}

\newcommand\contact[3]{\gdef\@contact{
\large\Letter\normalsize\enspace#1\quad $\cdot$\quad \textbf{@}\enspace#2 \quad $\cdot$\quad \phone\enspace#3
%\begin{minipage}{6cm}
%\Envelope\quad #1\\
%\textbf{@}\quad #2\\
%\phone\quad #3
%\end{minipage}
}}
\newcommand\@contact{}

\renewcommand{\maketitle}
{\begin{center}{\huge\textbf{\MakeUppercase\@title}}\\[10pt]\@contact\end{center}}

\newcommand{\name}{\title}
\newcommand{\addnameandcontact}{\maketitle}

\RequirePackage{geometry}
\geometry{left={15mm}, right={15mm}, top={10mm}, bottom={5mm}}

\RequirePackage{titlesec}
\titleformat{\section}         	% Customise the \section command 
{\Large\bf\scshape\raggedright} 	% Make the \section headers large (\Large),
								% small capitals (\scshape) and left aligned (\raggedright)
{}{0em}                      	% Can be used to give a prefix to all sections, like 'Section ...'
{}                           	% Can be used to insert code before the heading
[\titlerule]                 	% Inserts a horizontal line after the heading

\titleformat{\subsection}
{\large\bf\raggedright}
{}{0em}
{}
\newcommand{\datedsection}[2]{ %
	\section[#1]{#1 \hfill #2}%
}
\newcommand{\datedsubsection}[2]{ %
	\subsection[#1]{#1 \hfill #2}%
}

\setlength{\leftskip}{0.5cm}

\titlespacing*{\section}{0pt}{15pt}{10pt}
\titlespacing*{\subsection}{0pt}{8pt}{4pt}
