CC      ?= gcc
CFLAGS  ?= -Wall -Wextra -std=c11
OUT     := out

CONSOLE_BINS := \
	$(OUT)/array_element_counter \
	$(OUT)/number_guessing_game \
	$(OUT)/MoviesWriter \
	$(OUT)/min_max \
	$(OUT)/modern_barbershop

.PHONY: all clean dirs

all: dirs $(CONSOLE_BINS)

dirs:
	@mkdir -p $(OUT)

$(OUT)/array_element_counter: array_element_counter.c
	$(CC) $(CFLAGS) $< -o $@

$(OUT)/number_guessing_game: number_guessing_game.c
	$(CC) $(CFLAGS) $< -o $@

$(OUT)/MoviesWriter: MoviesWriter.c
	$(CC) $(CFLAGS) $< -o $@

$(OUT)/min_max: min_max.c
	$(CC) $(CFLAGS) $< -o $@

$(OUT)/modern_barbershop: final_activity/modern_barbershop.c final_activity/menu.h
	$(CC) $(CFLAGS) final_activity/modern_barbershop.c -o $@

clean:
	rm -rf $(OUT)
