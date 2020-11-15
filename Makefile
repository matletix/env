.PHONY: install
install:  ## Deploy the environment locally
	ansible-playbook -K deploy.yml
