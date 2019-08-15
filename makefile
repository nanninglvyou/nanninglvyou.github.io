ADOC=~/bin/asciidoc
AFLAGS=-b html5 -a toc2 -a theme=flask

all:
	$(ADOC) $(AFLAGS) -o index.html index.asc

rar:
	rar a -rr nanninglvyou.rar *.asc makefile

clean:
	rm index.html nanninglvyou.rar
