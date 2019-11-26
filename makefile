ADOC= ~/bin/asciidoc
AFLAGS= -a xhtml11 -a toc2 -a max-width=55em

all:
	$(ADOC) $(AFLAGS) index.asc
	tidy -m -language zh_cn -utf8 index.html

gitadd:
	git add images/*.jpg thumbs/*.jpg *.asc *.html makefile

gitpush:
	git push -u origin master
