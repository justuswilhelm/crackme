.PHONY: all archive clean

TARGET = $(patsubst src/%.c,bin/%,$(wildcard src/*.c))
ARCHIVE = crackme.tar.gz

all: $(TARGET)

bin/%: src/%.c
	$(CC) $< -o $@

clean:
	rm -f bin/* $(ARCHIVE)

archive: $(ARCHIVE)

$(ARCHIVE): $(wildcard bin/*)
	tar -zcvf $@ bin
