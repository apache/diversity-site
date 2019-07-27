SHELL := /bin/bash
YARN := yarn
BUNDLE := bundle
VENDOR_DIR := assets/vendor/
JEKYLL := bundle exec jekyll

PROJECT_DEPS := package.json Gemfile

.PHONY: all clean install update

all: serve

check:
	$(JEKYLL) doctor

install: $(PROJECT_DEPS)
	$(BUNDLE)
	$(YARN)

update: $(PROJECT_DEPS)
	$(YARN) upgrade

include-npm-deps:
	mkdir -p $(VENDOR_DIR)
	cp node_modules/jquery/dist/jquery.min.js $(VENDOR_DIR)
	cp node_modules/popper.js/dist/umd/popper.min.js $(VENDOR_DIR)
	cp node_modules/bootstrap/dist/js/bootstrap.min.js $(VENDOR_DIR)

build: include-npm-deps
	$(JEKYLL) build

serve: include-npm-deps
	JEKYLL_ENV=production $(JEKYLL) serve
