CC = sdcc

SRC = main.c blink.rel button.rel lcd.rel screen.rel global.rel I2C.rel led.rel

OUTPUT = program.hex

CFLAGS = --model-small

# Default target
all: $(OUTPUT)

# Build the output file
$(OUTPUT): $(SRC)
	$(CC) $(CFLAGS) -o $@ $^

# Clean up build files
clean:
	rm -f *.rel $(OUTPUT)

.PHONY: all clean