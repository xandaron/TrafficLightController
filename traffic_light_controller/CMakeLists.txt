# Add executable. Default name is the project name, version 0.1
add_executable(traffic_light_controller traffic_light_controller.c)

pico_enable_stdio_usb(traffic_light_controller 1)
pico_enable_stdio_uart(traffic_light_controller 0)

target_link_libraries(traffic_light_controller PRIVATE
        pico_stdlib
        pico_time
        hardware_pio
        hardware_gpio
        ir_receiver_library
        light_controller_library
        )


pico_add_extra_outputs(traffic_light_controller)