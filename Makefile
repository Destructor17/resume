PDF_FILENAME=cv.pdf
HTML_FILENAME=cv.html
SOURCE=cv.md

all: pdf html
pdf:
	pandoc $(SOURCE) -o $(PDF_FILENAME) --pdf-engine=pdflatex

html:
	pandoc $(SOURCE) -o $(HTML_FILENAME) --standalone --embed-resources

clean:
	rm -f $(PDF_FILENAME) $(HTML_FILENAME)
