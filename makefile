ADOC=~/bin/asciidoc
AFLAGS=-a linkcss -a stylesheet=styles.css -a stylesdir=./stylesheets -b html5 -a toc2 -a theme=flask

all:
	$(ADOC) $(AFLAGS) -o index.html index.asc

lzh:
	lha c nanninglvyou.lzh images thumbs stylesheets *.asc makefile asciidoc.js

gitadd:
	git add images/*.jpg thumbs/*.jpg *.asc *.html makefile

gitpush:
	git push -u origin master

clean:
	rm *.html nanninglvyou.lzh
