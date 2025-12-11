#ifndef __user_component_h
#define __user_component_h

#include <stdint.h>
#include <stdbool.h>
#include "interface_c4b.h"
/* Clause SEES */
#include "g_types.h"

/* Clause IMPORTS */
#include "user_ctx.h"
#include "inputs.h"
#include "logic.h"
#include "outputs.h"

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* Array and record constants */

/* Clause CONCRETE_VARIABLES */
#include "c4b_safety_variables.h"

#define divergence_test_var safety_variables.fields.v_divergence_test_var

extern void SECTION_C4B_FUNCTION user_component__initialisation(void);

/* Clause OPERATIONS */

extern void SECTION_C4B_FUNCTION user_app(void);
extern void SECTION_C4B_FUNCTION user_consistency_error_detection_test(uint8_t divergence_value);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* __user_component_h */
