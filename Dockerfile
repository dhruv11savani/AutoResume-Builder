FROM blang/latex:ctanfull

WORKDIR /app
COPY resume.tex .

RUN pdflatex resume.tex
