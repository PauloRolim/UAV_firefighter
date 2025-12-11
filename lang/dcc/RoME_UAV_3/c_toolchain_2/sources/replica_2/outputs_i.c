/* WARNING if type checker is not performed, translation could contain errors ! */

#include "outputs.h"

/* Clause SEES */
#include "g_types.h"
#include "lchip_configuration.h"
#include "lchip_interface.h"
#include "logic.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

/* Clause INITIALISATION */
void SECTION_C4B_FUNCTION outputs__initialisation(void)
{
    
}

/* Clause OPERATIONS */

void SECTION_C4B_FUNCTION write_outputs(void)
{
    uint8_t lsb;
    
    get_board_0_O1(&lsb);
    write_global_output(((uint32_t) 0UL), lsb);
    get_board_0_O2(&lsb);
    write_global_output(((uint32_t) 1UL), lsb);
}

