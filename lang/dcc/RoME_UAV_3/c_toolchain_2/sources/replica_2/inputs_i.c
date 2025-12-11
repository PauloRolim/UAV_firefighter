/* WARNING if type checker is not performed, translation could contain errors ! */

#include "inputs.h"

/* Clause SEES */
#include "g_types.h"
#include "io_constants.h"
#include "lchip_configuration.h"
#include "lchip_interface.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

/* Clause INITIALISATION */
void SECTION_C4B_FUNCTION inputs__initialisation(void)
{
    
    board_0_I1 = IO_OFF;
    board_0_I2 = IO_OFF;
    board_0_I3 = IO_OFF;
}

/* Clause OPERATIONS */

void SECTION_C4B_FUNCTION read_inputs(void)
{
    read_global_input(((uint32_t) 0UL), &board_0_I1);
    read_global_input(((uint32_t) 1UL), &board_0_I2);
    read_global_input(((uint32_t) 2UL), &board_0_I3);
}

void SECTION_C4B_FUNCTION get_board_0_I1(uint8_t *po)
{
    (*po) = board_0_I1;
}

void SECTION_C4B_FUNCTION get_board_0_I2(uint8_t *po)
{
    (*po) = board_0_I2;
}

void SECTION_C4B_FUNCTION get_board_0_I3(uint8_t *po)
{
    (*po) = board_0_I3;
}

