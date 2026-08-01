.PHONY: install update enable

REPO ?= $(CURDIR)

install:
	scripts/install "$(CURDIR)" "$(HOME)"

update:
	scripts/update "$(HOME)"

enable:
	scripts/enable "$(REPO)" "$(HOME)"
