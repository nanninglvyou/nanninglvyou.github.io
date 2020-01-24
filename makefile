ADOC= ~/bin/asciidoc
AFLAGS= -a toc2 -a max-width=55em -b html5

all:
	$(ADOC) $(AFLAGS) index.adoc
date:
	date --iso-8601=seconds -u -r sitemap.xml
xml:
	xmllint --noout sitemap.xml
gitadd:
	git add images/*.jpg thumbs/*.jpg *.adoc index.html makefile sitemap.xml
gitpush:
	git push -u origin master
