ASC= ~/bin/asciidoc
AFLAGS= -a toc2 -a max-width=55em -b html5

all:	tidy

adoc:
	$(ASC) $(AFLAGS) index.adoc
date:
	date --iso-8601=seconds -u -r sitemap.xml
xml:
	xmllint --noout sitemap.xml
tidy:	adoc
	tidy -utf8 -m -q index.html 1>/dev/null 2>&1
gitadd:
	git add *.adoc *.html makefile sitemap.xml
gitpush:
	git push -u origin master
