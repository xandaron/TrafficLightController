#include <stdio.h>
#include "pico/stdlib.h"
#include "hardware/pio.h"
#include "hardware/gpio.h"
#include "hardware/clocks.h"
#include "hardware/xosc.h"

#include "../ir_receiver_library/ir_receiver.h"
#include "../light_controller_library/light_controller.h"

PIO light_pio = pio1;
uint light_gpio = 0;
int light_sm;

uint mode = 0;
uint control = 0b000;
uint64_t time_stamp;
uint speed = 1000000;
uint count = 0;

int main()
{
    stdio_init_all();
    ir_rx_init(pio0, 9);
    light_sm = light_tx_init(light_pio, light_gpio);
    time_stamp = get_absolute_time();
    
    while (true) 
    {   
        while (!is_rx_fifo_empty()) {
            uint8_t rx_address, rx_data;
            uint32_t rx_frame = ir_get();

            if (ir_decode_frame(rx_frame, &rx_address, &rx_data)) {
                printf("Recieved: %X\n", rx_data);
                switch (rx_data)
                {
                    case 0x09:
                        if  (speed > 100000) {
                            speed -= 100000;
                        }
                        printf("Speed: %i\n", speed);
                        break;
                    case 0x1d:
                        if (speed < 2000000) {
                            speed += 100000;
                        }
                        printf("Speed: %i\n", speed);
                        break;
                    case 0x1f: // Off
                        mode = 1000;
                        light_tx(light_pio, light_sm, 0b000);
                        break;
                    case 0x0d: // On
                        mode = 0;
                        control = 0b111;
                        break;
                    case 0x19: // R
                        control ^= 0b001;
                        break;
                    case 0x1b: // G
                        control ^= 0b100;
                        break;
                    case 0x11: // B (amber)
                        control ^= 0b010;
                        break;
                    case 0x15: // 
                        mode = 0;
                        break;
                    case 0x4d: // 
                        mode = 1;
                        speed = 1000000;
                        count = 0;
                        time_stamp = get_absolute_time();
                        break;
                    case 0x00: // 
                        mode = 2;
                        speed = 1000000;
                        count = 0;
                        time_stamp = get_absolute_time();
                        break;
                    case 0x1a: // 
                        mode = 3;
                        speed = 1000000;
                        count = 0;
                        time_stamp = get_absolute_time();
                        break;
                    case 0x0c: // 
                        mode = 4;
                        speed = 1000000;
                        count = 0;
                        time_stamp = get_absolute_time();
                        break;
                }
            }
        }
        uint64_t time_elapsed = absolute_time_diff_us(time_stamp, get_absolute_time());

        switch (mode)
        {
            case 0:
                light_tx(light_pio, light_sm, control);
                break;
            case 1:
                break;
            case 2:
                if (time_elapsed >= speed) {
                    if (count == 0) {
                        light_tx(light_pio, light_sm, 0b000);
                        count++;
                    } else {
                        light_tx(light_pio, light_sm, 0b111);
                        count = 0;
                    }
                    time_stamp = get_absolute_time();
                }
                break;
            case 3:
                if (count == 0 && time_elapsed >= 2000000 * (speed / 1000000)) {
                    light_tx(light_pio, light_sm, 0b100);
                    count++;
                    time_stamp = get_absolute_time();
                }
                else if (count == 1 && time_elapsed >= 5000000 * (speed / 1000000)) {
                    light_tx(light_pio, light_sm, 0b010);
                    count++;
                    time_stamp = get_absolute_time();
                }
                else if (count == 2 && time_elapsed >= 3000000 * (speed / 1000000)) {
                    light_tx(light_pio, light_sm, 0b001);
                    count++;
                    time_stamp = get_absolute_time();
                }
                else if (count == 3 && time_elapsed >= 5000000 * (speed / 1000000)){
                    light_tx(light_pio, light_sm, 0b011);
                    count = 0;
                    time_stamp = get_absolute_time();
                }
                break;
            case 4:
                if (time_elapsed >= speed) {
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
                break;
            default:
                break;
        }
    }
}