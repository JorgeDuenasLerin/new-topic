\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{upm-template}[Documento de ejercicios de la UPM]

\LoadClass[a4paper]{article}

\RequirePackage[hidelinks]{hyperref}
\RequirePackage[spanish,es-tabla,activeacute]{babel}
\RequirePackage[utf8]{inputenc}
\RequirePackage{geometry}
\RequirePackage{graphicx}
\RequirePackage{url}
\RequirePackage{fancyhdr}
\RequirePackage{scrextend}
\RequirePackage{float}
\RequirePackage{upquote}
\RequirePackage{listings}
\RequirePackage{xcolor}
\RequirePackage{tikz}
\RequirePackage{helvet}
\RequirePackage{etoolbox}
\RequirePackage{amsmath}
\RequirePackage[type={CC},modifier={by-nc-sa},version={4.0}]{doclicense}

% Configurar márgenes
\geometry{top=2.5cm, bottom=2.7cm, left=2.5cm, right=2.5cm}

% Configurar sans-serif como fuente predeterminada
\renewcommand{\familydefault}{\sfdefault} 

% Configurar espacio entre párrafos
\setlength{\parskip}{0.5\baselineskip} % Espacio entre párrafos de 1.1 líneas
\setlength{\parindent}{0pt} % Opcional: sin sangría en los párrafos

% Colores
\definecolor{background-upm}{RGB}{1, 73, 148}
\definecolor{dark-gray-upm}{RGB}{112, 111, 111}
\definecolor{light-gray-upm}{RGB}{227, 227, 227}
\definecolor{blue-upm}{RGB}{0, 110, 183}

% Recuperamos el titulo del documento
\newcommand{\docTitle}{}
\renewcommand{\title}[1]{\gdef\docTitle{#1}}

% Configuración de cabecera y pie de página
\pagestyle{fancy}
\fancyhf{} 
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\setlength\headheight{50pt}
\fancyhead[L]{\includegraphics[height=1.5cm]{logos/upm_logo}} 
\fancyhead[C]{%
    \color{dark-gray-upm}Nuevo tema \\[0.5\baselineskip] 
    \color{blue-upm}\docTitle \\[-0.5\baselineskip]
} 
\fancyhead[R]{\includegraphics[height=1.5cm]{logos/etsisi_logo.png}}
\fancyfoot[C]{%
  \colorbox{dark-gray-upm}{%
    \parbox[c][1.5em][c]{2em}{%
      \centering\color{white}\thepage}%
  }%
}

% Redefinir \maketitle
\renewcommand{\maketitle}{
    \begin{titlepage}
        \begin{tikzpicture}[remember picture, overlay]
            \fill[background-upm] (current page.south west) rectangle (current page.north east);
            \node[align=center, text=white, yshift=0.74\paperheight] at (current page.south) {
              {\huge Nuevo tema} \\[3em]
              {\bfseries\Huge \docTitle}
            };
            \node[anchor=south east, xshift=22cm, yshift=-39.7cm] at (current page.south east) {
              \includegraphics[width=50cm]{logos/escudo-upm.pdf};
            };
        \end{tikzpicture}
    \end{titlepage}
}

