#include "pico/stdlib.h"
#include "hardware/pio.h"

// public API

int light_tx_init(PIO pio, uint pin);
void light_tx(PIO pio, int sm, uint lights);