# Makefile

# Variables
VENV_PATH = /home/lousy/forge/NewStream/venv
PYTHON = $(VENV_PATH)/bin/python3.11
SCRIPT_PATH = /home/lousy/forge/NewStream
HUGO_SITE_PATH = /home/lousy/forge/NotThatJoePerry.github.io
LOG_FILE = /home/lousy/forge/NewStream/cronjob.log

.PHONY: generate deploy all

generate:
	$(PYTHON) $(SCRIPT_PATH)/main.py

deploy:
	cd $(HUGO_SITE_PATH) && \
	git add . && \
	git commit -m "Automated build and deploy" && \
	git push

all: generate deploy
