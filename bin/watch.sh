build(){
	pdflatex -interaction=nonstopmode $1
	bibtex $2
	pdflatex -interaction=nonstopmode $1
	pdflatex -interaction=nonstopmode $1
}

# build once by default
build scratch.tex scratch.aux

# watch for alterations
while inotifywait scratch.tex; do
	build scratch.tex scratch.aux
done
