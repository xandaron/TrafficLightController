# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "D:/dev/pico-sdk/tools/pioasm"
  "D:/Projects/Pico/TrafficLightController/build/pioasm"
  "D:/Projects/Pico/TrafficLightController/build/pico-sdk/src/rp2_common/tinyusb/pioasm"
  "D:/Projects/Pico/TrafficLightController/build/pico-sdk/src/rp2_common/tinyusb/pioasm/tmp"
  "D:/Projects/Pico/TrafficLightController/build/pico-sdk/src/rp2_common/tinyusb/pioasm/src/PioasmBuild-stamp"
  "D:/Projects/Pico/TrafficLightController/build/pico-sdk/src/rp2_common/tinyusb/pioasm/src"
  "D:/Projects/Pico/TrafficLightController/build/pico-sdk/src/rp2_common/tinyusb/pioasm/src/PioasmBuild-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "D:/Projects/Pico/TrafficLightController/build/pico-sdk/src/rp2_common/tinyusb/pioasm/src/PioasmBuild-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "D:/Projects/Pico/TrafficLightController/build/pico-sdk/src/rp2_common/tinyusb/pioasm/src/PioasmBuild-stamp${cfgdir}") # cfgdir has leading slash
endif()
