# Generated Cmake Pico project file

cmake_minimum_required(VERSION 3.13)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

# Initialise pico_sdk from installed location
# (note this can come from environment, CMake cache etc)
set(PICO_SDK_PATH "D:/dev/pico-sdk")

set(PICO_BOARD waveshare_rp2040_zero CACHE STRING "Board type")

# Pull in Raspberry Pi Pico SDK (must be before project)
include(pico_sdk_import.cmake)

if (PICO_SDK_VERSION_STRING VERSION_LESS "1.4.0")
  message(FATAL_ERROR "Raspberry Pi Pico SDK version 1.4.0 (or later) required. Your version is ${PICO_SDK_VERSION_STRING}")
endif()

project(traffic_light_controller C CXX ASM)

# Initialise the Raspberry Pi Pico SDK
pico_sdk_init()

# Add executable. Default name is the project name, version 0.1

add_executable(traffic_light_controller
              traffic_light_controller.c
              )

pico_generate_pio_header(traffic_light_controller ${CMAKE_CURRENT_LIST_DIR}/light_controller.pio)
pico_generate_pio_header(traffic_light_controller ${CMAKE_CURRENT_LIST_DIR}/ir_receiver.pio)

pico_enable_stdio_usb(traffic_light_controller 1)
pico_enable_stdio_uart(traffic_light_controller 0)

target_link_libraries(traffic_light_controller PRIVATE
        pico_stdlib
        hardware_pio
        )

# Add the standard include files to the build
target_include_directories(traffic_light_controller PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}
  ${CMAKE_CURRENT_LIST_DIR}/.. # for our common lwipopts or any other standard includes, if required
)

pico_add_extra_outputs(traffic_light_controller)