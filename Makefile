PDF_FILENAME=resume.pdf
HTML_FILENAME=resume.html
SOURCE=resume.md
STYLE=resume.css

all: pdf html
pdf:
	pandoc $(SOURCE) -o $(PDF_FILENAME) --pdf-engine=weasyprint --css $(STYLE)

html:
	pandoc $(SOURCE) -o $(HTML_FILENAME) --standalone --embed-resources --css $(STYLE)

clean:
	rm -f $(PDF_FILENAME) $(HTML_FILENAME)
