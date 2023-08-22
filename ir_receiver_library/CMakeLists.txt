add_library(ir_receiver_library ir_receiver.c)

pico_generate_pio_header(ir_receiver_library ${CMAKE_CURRENT_LIST_DIR}/ir_receiver.pio)

target_link_libraries(ir_receiver_library PRIVATE
        pico_stdlib
        hardware_pio
        )


target_include_directories(ir_receiver_library PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}
        ${CMAKE_CURRENT_BINARY_DIR}
        )