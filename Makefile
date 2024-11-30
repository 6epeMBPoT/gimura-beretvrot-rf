WEBROOT ?= root
FILES = index.html style.css

install:
	install -d ${WEBROOT}
	install -Cm644 ${FILES} ${WEBROOT}

.PHONY: install
