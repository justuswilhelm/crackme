.PHONY: all

TARGET = $(patsubst src/%.c,bin/%,$(wildcard src/*.c))

all: $(TARGET)

bin/%: src/%.c
	$(CC) $< -o $@
