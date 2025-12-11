/* WARNING if type checker is not performed, translation could contain errors ! */

#include "user_component.h"

/* Clause SEES */
#include "g_types.h"

/* Clause IMPORTS */
#include "user_ctx.h"
#include "inputs.h"
#include "logic.h"
#include "outputs.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

/* Clause INITIALISATION */
void SECTION_C4B_FUNCTION user_component__initialisation(void)
{
    
    inputs__initialisation();
    outputs__initialisation();
    user_ctx__initialisation();
    logic__initialisation();
    divergence_test_var = ((uint32_t) 0UL);
}

/* Clause OPERATIONS */

void SECTION_C4B_FUNCTION user_app(void)
{
    divergence_test_var = ((uint32_t) 0UL);
    read_inputs();
    user_logic();
    write_outputs();
}

void SECTION_C4B_FUNCTION user_consistency_error_detection_test(uint8_t divergence_value)
{
    divergence_test_var = divergence_value;
}

