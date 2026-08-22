HUGO_VERSION ?= 0.133.0
BASE_URL ?=

default: build

.PHONY: default build serve clean install sync

install:
ifeq ($(shell uname),Linux)
	wget -O /tmp/hugo.deb https://github.com/gohugoio/hugo/releases/download/v$(HUGO_VERSION)/hugo_extended_$(HUGO_VERSION)_linux-amd64.deb
	sudo dpkg -i /tmp/hugo.deb
else ifeq ($(shell uname),Darwin)
	which hugo || brew install hugo
endif

build: clean
	hugo --gc --ignoreCache --minify $(if $(BASE_URL),--baseURL "$(BASE_URL)")

serve:
	hugo server

clean:
	rm -rf public resources/_gen

# Push the current Sessionize schedule live: dispatch the deploy, wait for it,
# then check every session in the feed actually made it onto the page. Needs an
# authenticated gh. See "Sessionize sync" in AGENTS.md.
sync:
	@bash scripts/sync.sh
