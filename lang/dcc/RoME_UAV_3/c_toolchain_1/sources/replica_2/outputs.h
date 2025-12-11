#ifndef __outputs_h
#define __outputs_h

#include <stdint.h>
#include <stdbool.h>
#include "interface_c4b.h"
/* Clause SEES */
#include "g_types.h"
#include "lchip_configuration.h"
#include "lchip_interface.h"
#include "logic.h"

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* Array and record constants */

/* Clause CONCRETE_VARIABLES */

extern void SECTION_C4B_FUNCTION outputs__initialisation(void);

/* Clause OPERATIONS */

extern void SECTION_C4B_FUNCTION write_outputs(void);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* __outputs_h */
