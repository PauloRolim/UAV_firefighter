#ifndef INTERFACE_C4B_H
#define INTERFACE_C4B_H

/* Types */
#include "type.h"

/* Memory sections */
#include "../memory/sections.h"

/* c4b generated elements */
#define SECTION_C4B_STRUCT_SAFETY_VARIABLES_SIZE __attribute__ ((section (".ru_s_cst__user_struct_safety_variables_size_minus_1")))
#define SECTION_C4B_GLOBAL_CONSTANTS SECTION_REPLICAS_CONSTANT
#define SECTION_C4B_NO_CHECK_VARIABLES SECTION_REPLICA2_NO_CHECK_VARIABLE
#define SECTION_C4B_SAFETY_VARIABLES SECTION_REPLICA2_CHECK_VARIABLE
#define SECTION_C4B_FUNCTION SECTION_REPLICA2_FUNCTION

/*
 * Machines B containing constants, no_check_data and safety_data
 * use them to initialize the c4b_constants.c constants structure
 * and to use SETS in structures
 */
#include "include_constants.h"

#endif /* INTERFACE_C4B_H */
