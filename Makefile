
PLAYBOOK_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
SYMLINKS := true

.PHONY: install
install:  ## Deploy the environment locally
	SYMLINKS=$(SYMLINKS) PLAYBOOK_DIR=$(PLAYBOOK_DIR) ansible-playbook -K deploy.yml
