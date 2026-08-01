.PHONY: install update

INSTALL_HOME ?= $(HOME)

install:
	tools/install "$(CURDIR)" "$(INSTALL_HOME)"

update:
	tools/update "$(INSTALL_HOME)"
