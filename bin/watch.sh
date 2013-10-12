build(){
  pdflatex -interaction=nonstopmode $1
  bibtex $2
  pdflatex -interaction=nonstopmode $1
  pdflatex -interaction=nonstopmode $1
}

# build once by default
build scratch.tex scratch.aux
build analysis.tex

# watch for alterations
while inotifywait *.tex; do
  build scratch.tex scratch.aux
  build analysis.tex
done
