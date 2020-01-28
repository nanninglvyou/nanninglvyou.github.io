ADOC= ~/bin/asciidoc
AFLAGS= -a toc2 -a max-width=55em -b html5

all:	tidy adoc
adoc:
	$(ADOC) $(AFLAGS) index.adoc
date:
	date --iso-8601=seconds -u -r sitemap.xml
xml:
	xmllint --noout sitemap.xml
tidy:	adoc
	tidy -utf8 -m -q index.html
gitadd:
	git add *.adoc *.html makefile sitemap.xml
gitpush:
	git push -u origin master
