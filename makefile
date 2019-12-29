ADOC= ~/bin/asciidoc
AFLAGS= -a toc2 -a max-width=55em -b html5

all:
	$(ADOC) $(AFLAGS) index.adoc

gitadd:
	git add images/*.jpg thumbs/*.jpg *.adoc index.html makefile

gitpush:
	git push -u origin master
