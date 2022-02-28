\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{iu9lab}[2022/02/11 Шаблон лабораторных работ для ИУ9]

\LoadClass[a4paper,12pt,oneside,titlepage]{article}

\RequirePackage{fontspec}
\setmainfont{DejaVu Serif}
\setsansfont{DejaVu Sans}
\setmonofont{DejaVu Sans Mono}
\defaultfontfeatures{Ligatures=TeX}
\RequirePackage{polyglossia}
\RequirePackage[autostyle=true]{csquotes}
\setdefaultlanguage{russian}
\setotherlanguage{english}

\RequirePackage{geometry}
\RequirePackage{listings}
\RequirePackage{graphicx}
\setkeys{Gin}{width=\textwidth}

\lstset{
  columns=fullflexible,
  frame=single,
  breaklines=true,
}

\newcommand{\worktype}[1]{\newcommand{\theworktype}{#1}}
\renewcommand{\title}[1]{\newcommand{\thetitle}{#1}}
\renewcommand{\author}[1]{\newcommand{\theauthor}{#1}}
\newcommand{\teacher}[1]{\newcommand{\theteacher}{#1}}
\newcommand{\group}[1]{\newcommand{\thegroup}{#1}}
\newcommand{\course}[1]{\newcommand{\thecourse}{#1}}
\newcommand{\labnumber}[1]{\newcommand{\thenumber}{%
\def\temp{#1}\ifx\temp\empty
%
\else
№\temp
\fi%
}}

\renewcommand{\maketitle}
{
\newgeometry{
  left=0.7in,
  right=0.7in,
}
\begin{titlepage}
    \centering
    Федеральное государственное бюджетное образовательное учреждение\\
    высшего профессионального образования\\
    <<Московский государственный технический университет\\
    имени Н.Э. Баумана>>\\
    (МГТУ им. Н.Э. Баумана)
    \vspace{1cm}

    \flushleft

    Факультет: \underline{Информатика и системы управления}\\
    Кафедра: \underline{Теоретическая информатика и компьютерные технологии}

    \centering
    \topskip0pt
    \vspace*{\fill}
    \theworktype{} \thenumber{}\\
    <<\thetitle{}>>\\
    по курсу: <<\thecourse{}>>
    \vspace*{\fill}
    \centering

    %\vspace{2cm}

    % TODO сделать ширину по сожержимому
    \hfill\begin{minipage}{0.4\linewidth}
        Выполнил:\\
        Студент группы \thegroup{}\\
        \theauthor\\
        \\
        Проверил:\\
        \theteacher
    \end{minipage}

    \vfill

    Москва, \the\year{}

\end{titlepage}
\restoregeometry{}
}
