.PHONY: all

SRC=$(wildcard *.md)
PDF=$(SRC:.md=.pdf)

all: $(PDF)

%.pdf: %.md
	pandoc $*.md --pdf-engine=xelatex -o $*.pdf

%.html: %.md
	pandoc -s --katex $*.md -o $*.html
