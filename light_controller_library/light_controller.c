
#include <stdio.h>
#include "pico/stdlib.h"
#include "hardware/pio.h"

#include "light_controller.h"
#include "light_controller.pio.h"

int light_tx_init(PIO pio, uint pin_num) {

    gpio_disable_pulls(pin_num);
    uint offset;
    if (pio_can_add_program(pio, &light_controller_program)) {
        offset = pio_add_program(pio, &light_controller_program);
    } else {
        return -1;
    }

    int sm = pio_claim_unused_sm(pio, true);
    if (sm == -1) {
        return -1;
    }

    light_controller_program_init(pio, sm, offset, pin_num, 3);

    return sm;
}

void light_tx(PIO pio, int sm, uint lights) {
    pio_sm_put_blocking(pio, sm, lights);
}