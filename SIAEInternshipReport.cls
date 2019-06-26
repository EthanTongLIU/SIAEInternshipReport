%%---------------------------------------------------------------
% Author: LiuTong
% E-MAIL: sunnyliutong@qq.com
% DATE: Juin 5, 2018
%
% This class was made to provide a standard template for the
% internship report for bluecollar, technical and PFE seperately.
%
%%----------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}[2007/10/19]
\ProvidesClass{SIAEInternshipReport}
[2018/07/05 v0.1 Internship Report of Sino-European Institute of Aviation Engineering]

\LoadClass[UTF8,12pt,a4paper,openany,oneside]{book}[2007/10/19]





%--------------------加载常用宏包---------------------------------

\RequirePackage[AutoFakeBold=true]{xeCJK} % --> 中文编码宏包，开启伪加粗功能
\RequirePackage[zihao=-4]{ctex} % --> 中文写作常用设置宏包
\RequirePackage{graphicx} % --> 插图宏包
\RequirePackage{float} % --> 浮动宏包
\RequirePackage{amsmath, amssymb, amsfonts, array} % --> 数学宏包
\RequirePackage[top=3cm, bottom=2.5cm, left=3cm, right=2.5cm]{geometry} % --> 设定页边距
\RequirePackage{xcolor} % --> 颜色宏包
\RequirePackage{multicol, multirow} % --> 多列, 多行, 分栏
\RequirePackage{lipsum} % --> 随机文本
\RequirePackage{fancyvrb} % --> 抄录环境
\RequirePackage{lipsum} % --> 随机文本
\RequirePackage{booktabs} % --> 表格线粗
\RequirePackage{subfigure} % --> 并列子图
\RequirePackage{caption} % --> 标题设置
\RequirePackage{textcomp} % --> 特殊字符
\RequirePackage{latexsym} % --> 符号


%--------------------设置字体--------------------------------------

\setmainfont{Times New Roman}
% \setmainfont[Path=fonts/]{times.ttf} % --> 英文主字体设置
% \setsansfont[Path=fonts/]{times.ttf} % --> 英文无衬线字体，需要修改
% \setmonofont[Path=fonts/]{times.ttf} % --> 英文mono字体设置，需要修改

\setCJKmainfont{SimSun} % --> 中文主字体
% \setCJKsansfont{SimSun} % --> 中文无衬线字体
% \setCJKmonofont{SimSun} % --> 中文mono字体

\newCJKfontfamily\SongTi{SimSun}
\newCJKfontfamily\HeiTi{SimHei}




%--------------------设定基础行距-----------------------------------

\RequirePackage{setspace}
\setlength{\baselineskip}{20pt}






%--------------------设置链接样式-----------------------------------

\RequirePackage[colorlinks, linkcolor=black, anchorcolor=black, citecolor=black]{hyperref}






%--------------------设置参考文献格式-------------------------------

\RequirePackage[numbers,sort&compress]{natbib} % --> 参考文献自动排序
\newcommand{\upcite}[1]{\textsuperscript{\textsuperscript{\cite{#1}}}}




%-------------------报告封面设计-------------------------------------

\makeatletter%



% \def\@cdegree{}%
% \def\cdegree#1{\def\@cdegree{#1}}%

% \def\@edegree{}%
% \def\mdegree#1{\def\@mdegree{#1}}

% --> 作者姓名
\renewcommand*\author[1]{%
    \def\@author{#1}%
}%

% --> 实习类型
\newcommand\internshiptype[1]{%
    \def\@internship@type{#1}%
}%

\def\bluecollar{蓝领}
\def\technical{技术}
\def\pfe{PFE}

% --> 实习地点
\newcommand\internshiplocation[1]{%
    \def\@internship@location{#1}%
}%

% --> 实习开始时间
\newcommand\internshipstarttime[1]{%
    \def\@internship@start@time{#1}%
}%

% --> 实习结束时间
\newcommand\internshipendtime[1]{%
    \def\@internship@end@time{#1}%
}%

% --> 学号
\newcommand\studentid[1]{%
    \def\@student@id{#1}%
}%

% --> 当前日期，年份
\newcommand\currentyear[1]{%
    \def\@current@year{#1}%
}%

% --> 当前日期，月份
\newcommand\currentmonth[1]{%
    \def\@current@month{#1}%
}%

% --> 中文名称
\renewcommand*\title[1]{%
    \def\@title{#1}%
}

% --> 英文名称
\newcommand\englishtitle[1]{%
    \def\@english@title{#1}%
}

% --> 中文摘要
\newcommand\abstract[1]{%
    \def\@abstract{#1}%
}

% --> 中文关键词
\newcommand\keywords[1]{%
    \def\@keywords{#1}%
}

% --> 英文摘要
\newcommand\englishabstract[1]{%
    \def\@english@abstract{#1}%
}

% --> 英文关键词
\newcommand\englishkeywords[1]{%
    \def\@english@keywords{#1}%
}



\newcommand*\makecover[1][]{%


    %--------------------主封面--------------------
    \clearpage
    \newgeometry{top=3cm, bottom=1cm, left=3cm, right=2.5cm}
    \thispagestyle{empty}

    \vspace*{10mm}

    \begin{center}

    { \zihao{0} \CJKfontspec[Path=fonts/]{STXINGKA.TTF} 中国民航大学 }
    \\[6mm]
    { \zihao{0} \CJKfontspec[Path=fonts/]{STXINGKA.TTF} 中欧航空工程师学院 }
    \\[6mm]
    { \zihao{0} \CJKfontspec[Path=fonts/]{STXINGKA.TTF} 实习报告 }

    \vspace*{15mm}

    \begin{figure}[H]
    \centering
    \includegraphics[width=6cm]{figure/cauc_logo_2.png}
    \end{figure}

    \vspace*{10mm}

    { \zihao{3} \SongTi \bfseries 实习类别：\uline{\makebox[80mm]{\@internship@type 实习} } } % 填写
    \\[5mm]
    { \zihao{3} \SongTi \bfseries 实习地点：\uline{\makebox[80mm]{\@internship@location} } } % 填写
    \\[5mm]
    { \zihao{3} \bfseries 实习时间：\uline{\makebox[80mm]{\@internship@start@time --- \@internship@end@time} } } % 填写
    \\[5mm]
    { \zihao{3} \SongTi \bfseries 姓~~~~~~~~名：\uline{\makebox[80mm]{\@author} } } % 填写
    \\[5mm]
    { \zihao{3} \bfseries 学~~~~~~~~号：\uline{\makebox[80mm]{\@student@id} } } % 填写
    \\[10mm]
    { \zihao{4} \bfseries \@current@year 年 \@current@month 月 } % 填写

    \end{center}
    \newpage



    %--------------------标题页--------------------
    \clearpage
    \newgeometry{top=3cm, bottom=1cm, left=3cm, right=2.5cm}
    \thispagestyle{empty}

    \vspace*{5mm}

    \begin{center}

    { \zihao{1} \bfseries 中欧航空工程师学院实习报告 }

    \vspace*{30mm}

    { \zihao{1} \bfseries \@title }
    \\[5mm]
    { \begin{spacing}{1.0} \zihao{1} \bfseries \@english@title \end{spacing} }

    \vspace*{75mm}

    { \zihao{3} \SongTi \bfseries 实习类别：\uline{\makebox[80mm]{\@internship@type 实习} } } % 填写
    \\[5mm]
    { \zihao{3} \SongTi \bfseries 实习地点：\uline{\makebox[80mm]{\@internship@location} } } % 填写
    \\[5mm]
    { \zihao{3} \bfseries 实习时间：\uline{\makebox[80mm]{\@internship@start@time --- \@internship@end@time} } } % 填写
    \\[5mm]
    { \zihao{3} \SongTi \bfseries 姓~~~~~~~~名：\uline{\makebox[80mm]{\@author} } } % 填写
    \\[5mm]
    { \zihao{3} \bfseries 学~~~~~~~~号：\uline{\makebox[80mm]{\@student@id} } } % 填写
    \\[10mm]
    { \zihao{4} \bfseries \@current@year 年 \@current@month 月 } % 填写

    \end{center}
    \newpage



    %--------------------中文摘要页--------------------
    \clearpage
    \newgeometry{top=3cm, bottom=2.5cm, left=3cm, right=2.5cm}
    \thispagestyle{empty}

    \vspace*{-10mm}

    \begin{center}
    { \HeiTi \zihao{3} 摘~~~~~~要 }
    \end{center}

    \vspace*{5mm}

    {
    \begin{spacing}{1.5}
    \zihao{-4}
    \@abstract
    \end{spacing}

    \vspace*{6mm}
    \textbf{关键词：}\@keywords
    }
    \newpage



    %--------------------英文摘要页--------------------
    \clearpage
    \newgeometry{top=3cm, bottom=2.5cm, left=3cm, right=2.5cm}
    \thispagestyle{empty}

    \vspace*{-10mm}

    \begin{center}
    { \zihao{3} \fontspec[Path=fonts/]{timesbd.ttf} ABSTRACT }
    \end{center}

    \vspace*{5mm}

    {
    \begin{spacing}{1.0}
    \zihao{-4}
    \@english@abstract
    \end{spacing}

    \vspace*{6mm}
    { \fontspec[Path=fonts/]{timesbd.ttf} Key Words: }\@english@keywords
    }



    %--------------------目录--------------------
    % \newgeometry{top=3cm, bottom=2.5cm, left=3cm, right=2.5cm}
    % \thispagestyle{empty}

    % \vspace*{0mm}





}











%-------------------目录及各级标题设置-------------------------------------

\RequirePackage{titletoc}

% \titlecontents{chapter}%
%               [0pt]%
%               {\vspace{2pt}\zihao{-4}\heiti}%
%               {\contentsmargin{0pt}%
%                \makebox[0pt][r]{\thecontentslabel\hspace*{6pt}\enspace} }%
%               {}{\titlerule*[3pt]{.}\contentspage}%

\titlecontents{chapter}%
              [0pt]%
              {\vspace{2pt}\zihao{-4}\heiti}%
              {\contentsmargin{0pt}%
               \thecontentslabel \hspace*{8pt} \enspace }%
              {}
              {\titlerule*[3pt]{.}\contentspage}%

\titlecontents{section}%
              [24pt]%
              {\vspace{2pt}\zihao{-4}\songti}%
              {\contentsmargin{0pt}%
               \thecontentslabel \hspace*{8pt} \enspace }%
              {}
              {\titlerule*[3pt]{.}\contentspage}%

\titlecontents{subsection}[48pt]%
              {\vspace{2pt}\zihao{-4}\songti}%
              {\contentsmargin{0pt}%
               \thecontentslabel \hspace*{8pt} \enspace }%
              {}
              {\titlerule*[3pt]{.}\contentspage}%


\RequirePackage{titlesec}

\titleformat{\chapter}%
            {\vspace{-1.8cm}\centering\zihao{3}\heiti}%
            {\thechapter}%
            {1em}%
            {}%
            %[\vspace{-1cm}] % 最后一个方括号中的作用是为了用来删除章后面的多余空白

\titleformat{\section}%
            {\zihao{4}\heiti}%
            {\thesection}%
            {1em}%
            {}%
            %[\vspace{-2mm}]

\titleformat{\subsection}%
            {\zihao{-4}\heiti}%
            {\thesubsection}%
            {1em}%
            {}%
            %[\vspace{-2mm}]







% --------------设置标题和段落之间的间距---------------------------

% 第一个参数为左间距，第二个为段前垂直间距，第三个为标题后垂直间距
\titlespacing*{\section}{0pt}{0pt}{10pt}
\titlespacing*{\subsection}{0pt}{0pt}{10pt}







%-----------设置图标标题上下间距------------------------------------------

\setlength{\abovecaptionskip}{5pt}
\setlength{\belowcaptionskip}{5pt}






%------------------页眉页脚-----------------------------------------

\RequirePackage{fancyhdr}
\RequirePackage{lastpage} % --> 获取总页数

\newcommand*\makeheaderandfooter[1][]{%

    \pagestyle{fancy}

    \lhead{}
    \chead{ \zihao{5} 中国民航大学中欧航空工程师学院\@current@year 年\@internship@type 实习报告 }
    \rhead{}

    \renewcommand{\headrule}{\hrule width\headwidth}
    \renewcommand{\headrulewidth}{0.4pt}

    \fancypagestyle{plain}{
        \fancyhf{}
        \lhead{}
        \chead{ \zihao{5} 中国民航大学中欧航空工程师学院\@current@year 年\@internship@type 实习报告 }
        \cfoot{\thepage}
        \renewcommand{\headrule}{\hrule width\headwidth}
        \renewcommand{\headrulewidth}{0.4pt}
    }

}

%-----------------重定义名称--------------------------------------

%\renewcommand\contentsname{\zihao{3} \heiti \vspace*{-10mm} 目~~~~~~~~录  \vspace*{10mm}


\makeatother%








%-----------------图片路径 ---------------------------------------

\graphicspath{{figure/}}









%----------自定义命令----------------------------------------------------

%---插入单张图片-----------------
\newcommand\FIG[4]{%

    \begin{figure}[H]
    \centering
    \includegraphics[width=#1]{#2}
    \caption{\zihao{5} #3}
    \label{#4}
    \end{figure}

}%

%---并排插入图片------------------
\newcommand\TWOFIG[8]{%

    \begin{figure}[H]
    \centering
    \begin{minipage}[t]{0.48\textwidth}
    \centering
    \includegraphics[width=#1]{#2}
    \caption{\zihao{5} #3}
    \label{#4}
    \end{minipage}
    \begin{minipage}[t]{0.48\textwidth}
    \centering
    \includegraphics[width=#5]{#6}
    \caption{\zihao{5} #7}
    \label{#8}
    \end{minipage}
    \end{figure}

}%

%---并排插入子图------------------
\newcommand\SUBFIG[8]{%

    \begin{figure}[H]
    \centering
    \subfigure[#1]{
    \begin{minipage}{7cm}
    \centering
    \includegraphics[width=#2]{#3}
    \end{minipage}
    }
    \subfigure[#4]{
    \begin{minipage}{7cm}
    \centering
    \includegraphics[width=#5]{#6}
    \end{minipage}
    }
    \caption{\zihao{5} #7}
    \label{#8}
    \end{figure}

}%

%---定义topcaption用于设置表格标题字号大小--------------------
\newcommand\topcaption[1]{ \caption{ \zihao{5} #1 } }








%-----------重定义图表名称及格式-----------------------------------------

\captionsetup[figure]{labelsep=space}
\captionsetup[table]{labelsep=space}
\renewcommand\contentsname{\zihao{3} \heiti \vspace*{-10mm} 目~~~~~~~~录  \vspace*{0mm}  }
\renewcommand\tablename{\zihao{5}表}
\renewcommand\figurename{\zihao{5}图}
\renewcommand{\thefigure}{\thechapter-\arabic{figure}}
\renewcommand{\thetable}{\thechapter-\arabic{table}}