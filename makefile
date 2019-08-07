all:
	~/bin/asciidoc -b html5 -a toc2 -a theme=flask index.asc

clean:
	rm *.html
