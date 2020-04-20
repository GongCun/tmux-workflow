[ -z "$1" ] && { echo "convert.sh <file>"; exit 1; }
sed -i '/\\begin{verbatim}/{
a\
\\lstset{basicstyle=\\scriptsize,language=C}\
\\begin{lstlisting}
d
}
/\\end{verbatim}/{
i\
\\end{lstlisting}
s/\\end{verbatim}//
}' $1
