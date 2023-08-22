
#include <stdio.h>
#include "pico/stdlib.h"
#include "hardware/pio.h"
#include "hardware/clocks.h"

#include "ir_receiver.h"
#include "light_controller.h"

// PIO programs
#include "light_controller.pio.h"
#include "ir_receiver.pio.h"

int main()
{
    PIO rx_pio = pio0;
    uint rx_gpio = 9;
    int rx_sm = ir_rx_init(rx_pio, rx_gpio);

    PIO light_pio = pio1;
    int light_sm = light_tx_init(light_pio, 0);

    uint mode = 0;
    uint control = 0b000;

    uint8_t rx_address, rx_data;
    while (true) 
    {
        while (!pio_sm_is_rx_fifo_empty(rx_pio, rx_sm)) {
            uint32_t rx_frame = pio_sm_get(rx_pio, rx_sm);

            if (ir_decode_frame(rx_frame, &rx_address, &rx_data)) {
                switch (rx_data)
                {
                case 0x19:
                    control ^= 0b001;
                    break;
                case 0x1b:
                    control ^= 0b100;
                    break;
                case 0x11:
                    control ^= 0b010;
                    break;
                default:
                    break;
                }
            }
        }
        light_tx(light_pio, light_sm, control);
    }
}