ADOC=~/bin/asciidoc
AFLAGS=-b html5 -a toc2

all:
	$(ADOC) $(AFLAGS) -o index.html -a theme=flask index.asc

clean:
	rm *.html
