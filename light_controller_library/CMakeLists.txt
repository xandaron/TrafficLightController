add_library(light_controller_library light_controller.c)

pico_generate_pio_header(light_controller_library ${CMAKE_CURRENT_LIST_DIR}/light_controller.pio)

target_link_libraries(light_controller_library PRIVATE
        pico_stdlib
        hardware_pio
        )

target_include_directories(light_controller_library PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}
        ${CMAKE_CURRENT_BINARY_DIR}
        )