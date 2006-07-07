VERSION := $(shell date +%Y-%m-%d)

DIST = README NEWS adplug.db

dist:
	mkdir $(VERSION)
	cp $(DIST) $(VERSION)
	tar cfz adplugdb-$(VERSION).tar.gz $(VERSION)
	rm -r $(VERSION)
