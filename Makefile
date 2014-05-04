default:
	xelatex main.tex
all:
	xelatex main.tex
	bibtex main
	xelatex main.tex
	xelatex main.tex

clean:
	find -name "*.aux" -exec rm -v {} \;
	find -name "*.blg" -exec rm -v {} \;
	find -name "*.thm" -exec rm -v {} \;
	find -name "*.log" -exec rm -v {} \;
	find -name "*.out" -exec rm -v {} \;
	find -name "*.toc" -exec rm -v {} \;
	find -name "*.bbl" -exec rm -v {} \;

suck:
	pdftk main.pdf cat 1 output cover_bak.pdf
	pdftk main.pdf cat 4-5 output toc_raw.pdf
	pdftk main.pdf cat 2-3 output abstruct.pdf
	pdftk main.pdf cat 6-end output body.pdf
	pdftk abstruct.pdf toc_new.pdf   body.pdf cat output print.pdf
