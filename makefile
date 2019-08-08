all:
	~/bin/asciidoc -b html5 -a toc2 index.asc

clean:
	rm *.html
