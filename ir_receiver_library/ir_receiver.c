/**
 * Copyright (c) 2021 mjcross
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

#include <stdio.h>
// SDK types and declarations
#include "pico/stdlib.h"
#include "hardware/pio.h"
#include "hardware/clocks.h"    // for clock_get_hz()

#include "ir_receiver.h"

// import the assembled PIO state machine program
#include "ir_receiver.pio.h"

PIO rx_pio;
uint rx_gpio;
int rx_sm;

// Claim an unused state machine on the specified PIO and configure it
// to receive NEC IR frames on the given GPIO pin.
//
// Returns: the state machine number on success, otherwise -1
void ir_rx_init(PIO pio, uint pin_num) {

    rx_pio = pio;
    rx_gpio = pin_num;
    // disable pull-up and pull-down on gpio pin
    gpio_disable_pulls(rx_gpio);

    // install the program in the PIO shared instruction space
    uint offset = pio_add_program(rx_pio, &ir_receiver_program);

    // claim an unused state machine on this PIO
    rx_sm = pio_claim_unused_sm(rx_pio, true);

    // configure and enable the state machine
    ir_receiver_program_init(rx_pio, rx_sm, offset, rx_gpio);
}

// Validate a 32-bit frame and store the address and data at the locations
// provided.
//
// Returns: `true` if the frame was valid, otherwise `false`
bool ir_decode_frame(uint32_t frame, uint8_t *p_address, uint8_t *p_data) {

    // access the frame data as four 8-bit fields
    //
    union {
        uint32_t raw;
        struct {
            uint8_t address;
            uint8_t inverted_address;
            uint8_t data;
            uint8_t inverted_data;
        };
    } f;

    f.raw = frame;

    // a valid (non-extended) 'NEC' frame should contain 8 bit
    // address, inverted address, data and inverted data
    if (f.address != (f.inverted_address ^ 0xff) ||
        f.data != (f.inverted_data ^ 0xff)) {
        return false;
    }

    // store the validated address and data
    *p_address = f.address;
    *p_data = f.data;

    return true;
}

bool is_rx_fifo_empty() {
    return pio_sm_is_rx_fifo_empty(rx_pio, rx_sm);
}

uint32_t ir_get() {
    return pio_sm_get(rx_pio, rx_sm);
}
