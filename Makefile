.PHONY: help setup run terdown

export TESSDATA_PREFIX = $(realpath mnt/data)

help:
	@cat $(firstword $(MAKEFILE_LIST))

setup: \
	mnt/data/jpn.traineddata

run:
	python main.py

teardown:
	rm mnt/data/jpn_vert.traineddata

# https://github.com/tesseract-ocr/tessdata_best/blob/main/jpn_vert.traineddata
mnt/data/jpn.traineddata: mnt/data
	curl -Lo $@ https://github.com/tesseract-ocr/tessdata_best/raw/refs/heads/main/jpn_vert.traineddata

mnt/data: mnt
	mkdir -p $@

mnt:
	mkdir -p $@
	
