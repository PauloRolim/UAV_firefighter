#ifndef LINK_TO_KERNEL_H
#define LINK_TO_KERNEL_H
#include <stdint.h>
#include <stdbool.h>
#include "link_to_kernel_addr.h"
// #pragma pack(1)
#include "../replica_2/c4b_safety_variables.h"

// #define g_standard_types__initialisation         ((void (*)(void))(g_standard_types__initialisation_addr))
// #define g_operators__initialisation              ((void (*)(void))(g_operators__initialisation_addr))
// #define io_constants__initialisation             ((void (*)(void))(io_constants__initialisation_addr))
// #define lchip_configuration__initialisation      ((void (*)(void))(lchip_configuration__initialisation_addr))

void g_standard_types__initialisation();
void g_operators__initialisation();
void io_constants__initialisation();
void lchip_configuration__initialisation();

struct _struct_safety_variables *get_safety_variables();

void start();
void get_ms_tick(int32_t *ms);
void set_ms_tick(int32_t _ms);
void read_global_input(uint8_t id, uint8_t *val);
void write_global_output(uint8_t id, uint8_t val);
uint8_t read_output(uint8_t id);
void write_input(uint8_t id, uint8_t val);
void print_uint8(uint8_t val1, uint8_t val2);
void print_global_inputs();

#define IO_ON 1
#define IO_OFF 0
#define MAX_NB_MODULES 10
#define MAX_NB_INPUTS 20
#define MAX_NB_OUTPUTS 8

#endif
