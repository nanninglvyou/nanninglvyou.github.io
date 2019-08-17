ADOC=~/bin/asciidoc
AFLAGS=-b html5 -a toc2 -a theme=flask

all:
	$(ADOC) $(AFLAGS) -o index.html index.asc

rar:
	rar a -rr nanninglvyou.rar *.asc makefile

gitadd:
	git add images/*.jpg thumbs/*.jpg *.asc *.html makefile

gitpush:
	git push -u origin master

clean:
	rm index.html nanninglvyou.rar
