file = report

.PHONY: all dev pdf create clean Clean

all: pdf

# #### make dev file=<название>
# Запускает `latexmk` в режиме автоматической генерации
# при изменениях в `<название>.tex`.
# Вывод `lualatex` парсится `pplatex`,
# в результате ошибки и предупреждения выводятся в читаемом виде.
# `make` вызывает локальный бинарник `pplatex`, собранный под linux.
# Для работы необходима библиотека PCRE (http://www.pcre.org/).
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
