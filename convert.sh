[ -z "$1" ] && { echo "convert.sh <file>"; exit 1; }
sed -i '/\\begin{longtable}/{
i\
\\begin{figure}[H]
}
/\\end{longtable}/{
a\
\\end{figure}
}' $1

sed -i '/\\begin{verbatim}/{
a\
\\lstset{basicstyle=\\footnotesize,language=sh}\
\\begin{lstlisting}
d
}
/\\end{verbatim}/{
i\
\\end{lstlisting}
s/\\end{verbatim}//
}' $1
