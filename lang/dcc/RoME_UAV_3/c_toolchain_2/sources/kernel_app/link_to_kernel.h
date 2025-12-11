#ifndef LINK_TO_KERNEL_H
#define LINK_TO_KERNEL_H

#include "link_to_kernel_addr.h"

#define g_standard_types__initialisation ((void (*)(void))(g_standard_types__initialisation_addr))
#define g_operators__initialisation ((void (*)(void))(g_operators__initialisation_addr))
#define io_constants__initialisation ((void (*)(void))(io_constants__initialisation_addr))
#define lchip_configuration__initialisation ((void (*)(void))(lchip_configuration__initialisation_addr))

#define read_global_input ((void (*)(uint8_t, uint8_t *))(read_global_input_addr))
#define write_global_output ((void (*)(uint8_t, uint8_t))(write_global_output_addr))
#define print_uint8 ((void (*)(uint8_t, uint8_t))(print_uint8_addr))
#define print_global_inputs ((void (*)(void))(print_global_inputs_addr))

#define get_ms_tick ((void (*)(int32_t *))(get_ms_tick_addr))
#define IO_ON (*((uint8_t *)IO_ON_addr))
#define IO_OFF (*((uint8_t *)IO_OFF_addr))
#define MAX_NB_MODULES (*((uint8_t *)MAX_NB_MODULES))
#define MAX_NB_INPUTS (*((uint8_t *)MAX_NB_INPUTS))
#define MAX_NB_OUTPUTS (*((uint8_t *)MAX_NB_OUTPUTS))

#endif
