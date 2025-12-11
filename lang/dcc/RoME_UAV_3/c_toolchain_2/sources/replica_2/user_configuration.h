#ifndef __user_configuration_h
#define __user_configuration_h

#include <stdint.h>
#include <stdbool.h>
#include "interface_c4b.h"
/* Clause SEES */
#include "g_types.h"
#include "lchip_configuration.h"

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */

/* Clause CONCRETE_CONSTANTS */
#include "c4b_constants.h"
#define NB_MODULES ((uint32_t) 1UL)
#define NB_INPUTS ((uint32_t) 3UL)
#define NB_OUTPUTS ((uint32_t) 2UL)
#define module_secu_ids global_constants.co_module_secu_ids
#define module_nb_inputs global_constants.co_module_nb_inputs
#define module_nb_outputs global_constants.co_module_nb_outputs
#define input_module_ids global_constants.co_input_module_ids
#define input_local_ids global_constants.co_input_local_ids
#define output_module_ids global_constants.co_output_module_ids
#define output_local_ids global_constants.co_output_local_ids
/* Basic constants */
/* Array and record constants */

/* Clause CONCRETE_VARIABLES */

extern void SECTION_C4B_FUNCTION user_configuration__initialisation(void);


#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* __user_configuration_h */
