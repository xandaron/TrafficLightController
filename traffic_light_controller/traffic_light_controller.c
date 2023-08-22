
#include <stdio.h>
#include "pico/stdlib.h"
#include "hardware/pio.h"
#include "hardware/clocks.h"

#include "../ir_receiver_library/ir_receiver.h"
#include "../light_controller_library/light_controller.h"

int main()
{
    stdio_init_all();
    PIO rx_pio = pio0;
    uint rx_gpio = 9;
    int rx_sm = ir_rx_init(rx_pio, rx_gpio);

    PIO light_pio = pio1;
    int light_sm = light_tx_init(light_pio, 0);
    uint mode = 0;
    uint control = 0b000;
    uint32_t time_stamp = get_absolute_time();
    uint speed = 500;
    uint clock_hz = (uint)(clock_get_hz) / 1000;
    uint count = 0;

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
                case 0x1d:
                    if (speed < 1000) {
                        speed += 100;
                    }
                case 0x09:
                    if  (speed > 100) {
                        speed -= 100;
                    }
                case 0x15:
                    count = 0;
                    mode = 0;
                    break;
                case 0x4d:
                    count = 0;
                    mode = 1;
                    break;
                case 0x00:
                    count = 0;
                    mode = 2;
                    break;
                case 0x1a:
                    count = 0;
                    mode = 3;
                    break;
                case 0x0c:
                    count = 0;
                    mode = 4;
                    break;
                default:
                    break;
                }
            }
        }
        uint32_t time_elapsed = absolute_time_diff_us(time_stamp, get_absolute_time()) / 1000;
        if (mode == 0) {
            light_tx(light_pio, light_sm, control);
        } else if (mode == 1) {

        } else if (mode == 2 && time_elapsed >= speed) {
            if (count == 0) {
                light_tx(light_pio, light_sm, 0b000);
                count++;
            } else {
                light_tx(light_pio, light_sm, 0b111);
                count = 0;
            }
            time_stamp = get_absolute_time();
        } else if (mode == 3) {
            if (count == 0 && time_elapsed >= speed * 0.2) {
                light_tx(light_pio, light_sm, 0b100);
                count++;
                time_stamp = get_absolute_time();
            }
            else if (count == 1 && time_elapsed >= speed) {
                light_tx(light_pio, light_sm, 0b010);
                count++;
                time_stamp = get_absolute_time();
            }
            else if (count == 2 && time_elapsed >= speed * 0.2) {
                light_tx(light_pio, light_sm, 0b001);
                count++;
                time_stamp = get_absolute_time();
            }
            else if (count == 3 && time_elapsed >= speed){
                light_tx(light_pio, light_sm, 0b011);
                count = 0;
                time_stamp = get_absolute_time();
            }
        } else if (mode == 4 && time_elapsed >= speed) {
            if (count == 0) {
                light_tx(light_pio, light_sm, 0b001);
                count++;
            } else if (count == 1) {
                light_tx(light_pio, light_sm, 0b010);
                count++;
            } else {
                light_tx(light_pio, light_sm, 0b100);
                count = 0;
            }
            time_stamp = get_absolute_time();
        }
    }
}