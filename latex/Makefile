file = report

.PHONY: all dev pdf create clean Clean

all: pdf

dev:
	latexmk -pdflua -pdflualatex="lualatex %O %S; ./pplatex -i $(file).log" \
-view=none -pvc -quiet $(file).tex

pdf:
	latexmk -lualatex

create:
	cp template $(file).tex

clean:
	-latexmk -c

Clean:
	-latexmk -C
