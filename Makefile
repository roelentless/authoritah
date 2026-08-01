.PHONY: install update

INSTALL_HOME ?= $(HOME)

install:
	scripts/install "$(CURDIR)" "$(INSTALL_HOME)"

update:
	scripts/update "$(INSTALL_HOME)"
