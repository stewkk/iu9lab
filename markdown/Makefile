file = report
files := $(wildcard *.md)
pdf := $(addsuffix .pdf, $(basename $(files)))

.PHONY: all create clean

all: pdf

pdf: $(pdf)

$(pdf): %.pdf: %.md
	pandoc -s --template ./pandoc.template --pdf-engine=latexmk \
--pdf-engine-opt="-lualatex" $< -o $@

create:
	cp template $(file).md

clean:
	-rm *.pdf
