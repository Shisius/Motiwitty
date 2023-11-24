cmake_minimum_required(VERSION 3.16)
set(STM32_CUBE_F1_PATH "~/Tools/STM32/STM32CubeF1")
set(CMSIS_INCLUDE_DIRS ${STM32_CUBE_F1_PATH}/CMSIS)
set(CMSIS_SOURCES ${STM32_CUBE_F1_PATH}/CMSIS)

set(CMAKE_TOOLCHAIN_FILE "~/Tools/STM32/stm32-cmake/cmake/stm32_gcc.cmake")

set(PROJECT_NAME motiwitty)

project(${PROJECT_NAME} C ASM)
set(MAIN_SOURCE_FILE mwmain.c)

set(CMAKE_INCLUDE_CURRENT_DIR TRUE)

set(HAL_COMP_LIST RCC GPIO CORTEX)
set(CMSIS_COMP_LIST "")

list(APPEND CMSIS_COMP_LIST STM32F1)
list(APPEND HAL_COMP_LIST STM32F1)

find_package(CMSIS COMPONENTS "${CMSIS_COMP_LIST}" REQUIRED)
find_package(HAL COMPONENTS "${HAL_COMP_LIST}" REQUIRED)

# Find all device specific drivers:
#find_package(HAL COMPONENTS STM32L0 STM32F1 STM32F4 REQUIRED)
# Find drivers for all families:
#find_package(HAL COMPONENTS RCC GPIO CORTEX REQUIRED)
# Find LL driver:
#find_package(HAL COMPONENTS LL_GPIO REQUIRED)
# Find everything:
#find_package(HAL REQUIRED)

add_executable(${PROJECT_NAME} ${MAIN_SOURCE_FILE} stm32f1xx_hal_conf.h)
target_link_libraries(${PROJECT_NAME}
    HAL::STM32::F1::RCC
    HAL::STM32::F1::GPIO
    HAL::STM32::F1::CORTEX
    CMSIS::STM32::F100RB
    STM32::NoSys
)
stm32_print_size_of_target(${PROJECT_NAME})
