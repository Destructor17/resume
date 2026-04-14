PDF_FILENAME=cv.pdf
HTML_FILENAME=cv.html
SOURCE=cv.md

all: pdf html

help:
	@echo "Available targets:"
	@echo "  all    : Build both PDF and HTML versions"
	@echo "  pdf    : Build PDF version"
	@echo "  html   : Build HTML version"
	@echo "  clean  : Remove built files"
	@echo "  help   : Show this help message"

pdf:
	pandoc $(SOURCE) -o $(PDF_FILENAME) --pdf-engine=pdflatex

html:
	pandoc $(SOURCE) -o $(HTML_FILENAME) --standalone --embed-resources --metadata title="Artem Borovik - Resume"

clean:
	rm -f $(PDF_FILENAME) $(HTML_FILENAME)
