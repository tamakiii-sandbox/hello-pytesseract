.PHONY: help setup activate terdown

DEFAULT_SHELL := $(SHELL)
SHELL := bash

help:
	@cat $(firstword $(MAKEFILE_LIST))

setup: \
	.venv

activate:
	source .venv/bin/activate && exec $$SHELL --login

teardown:
	rm -rf .venv

.venv:
	uv venv
