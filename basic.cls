\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{basic}[2023/07/23 Basic Resume Class]

% based on article class, so pass options to it
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[a4paper]{article}

% package imports - add your own in preamble to the document file with \RequirePackage{}
\RequirePackage{titlesec}
\RequirePackage{fullpage}
\RequirePackage{setspace}  % use this package to set linespacing as desired
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{textcomp}
\RequirePackage[utf8]{inputenc}
\RequirePackage{fontawesome}
\RequirePackage[T1]{fontenc}
\RequirePackage[left=0.8in,right=0.8in,bottom=0.8in,top=0.8in]{geometry}
\RequirePackage[bookmarks=true,hidelinks]{hyperref} % should be last(ish)
\RequirePackage{bookmark}

\AtBeginDocument{\renewcommand{\ref}[1]{\autoref{#1}}} % for concision, but can be removed if you know what you're doing
\urlstyle{same} % uses the text font, not a monospace one, for URLs
\hbadness=9000 % suppress some hbox warnings

\textheight=10in
\pagestyle{empty}
\raggedright

% hyperlink coloring, or lack thereof
\hypersetup{
    colorlinks,
    linkcolor={black},
    citecolor={black}, 
    urlcolor={black}
}

% DEFINITIONS FOR RESUME %%%%%%%%%%%%%%%%%%%%%%%
% General Environment
\renewenvironment{section}[1]{

  % Header for section
  {\hspace*{-18pt}\vspace*{6pt} \textsc{#1}}
  \vspace*{-6pt}
  % Creates an underline
  \vspace*{-8pt} \\
  \hspace*{-18pt} \hrulefill  \\
  \vspace{1mm}
}
{}

% Profile
\newcommand{\makeProfile}[8]{
  \vspace*{-40pt}
  \vspace*{-10pt}
  \begin{center}
    {\Huge \scshape {{#1}}}\\
    \vspace{2mm}

    {#2} $\cdot$ {#3} $\cdot$ {#4}\\
    \faLinkedin \enspace \href{{#7}}{#5} \quad \faGithub \enspace \href{#8}{#6}\\ 
  \end{center}
}

% Experience
\newenvironment{role}[4]{
  \textbf{#1} \hfill #2\\
  \textit{#3} \hfill #4\\
  \vspace{-1mm}
  \begin{itemize} \itemsep 1pt
}
{
  \end{itemize}
  \vspace{2mm}
}

% Education
\newcommand{\school} [5] {
    \textbf{#1}\hfill #2\\
    #3 \textit{GPA: #4} \hfill #5\\
    \vspace{2mm}
}


% Skills
\newcommand{\skills}[2]{
  \textbf{#1:} #2\\
  \vspace*{2mm}

}

% Projects
\newcommand{\project}[3]{
  {\textbf{#1}} {\sl #2} \\
  #3 \\
  \vspace*{2mm}

}

% Achievement
\newcommand{\achievement}[4]{
  \textbf{#1} \textit{#2} \hfill #3\\
  #4
\vspace*{2mm}

}

