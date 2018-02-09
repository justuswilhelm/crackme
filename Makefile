.PHONY: all archive

TARGET = $(patsubst src/%.c,bin/%,$(wildcard src/*.c))

all: $(TARGET)

bin/%: src/%.c
	$(CC) $< -o $@

archive: crackme.tar.gz

crackme.tar.gz:
	tar -zcvf $@ bin
