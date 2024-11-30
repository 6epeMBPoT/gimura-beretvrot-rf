WEBROOT ?= root
FILES = index.html style.css

all:

install:
	install -d ${WEBROOT}
	install -Cm644 ${FILES} ${WEBROOT}

.PHONY: all clean install
