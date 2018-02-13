.PHONY: all archive

TARGET = $(patsubst src/%.c,bin/%,$(wildcard src/*.c))
ARCHIVE = crackme.tar.gz

all: $(TARGET)

bin/%: src/%.c
	$(CC) $< -o $@

archive: crackme.tar.gz

archive: $(ARCHIVE)

$(ARCHIVE): $(wildcard bin/*)
	tar -zcvf $@ bin
