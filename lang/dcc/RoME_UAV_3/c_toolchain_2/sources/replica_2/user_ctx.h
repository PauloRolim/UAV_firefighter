#ifndef __user_ctx_h
#define __user_ctx_h

#include <stdint.h>
#include <stdbool.h>
#include "interface_c4b.h"
/* Clause SEES */
#include "g_types.h"

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */

/* Clause CONCRETE_CONSTANTS */
#include "c4b_constants.h"
#define SimBCMonitor_cycle_def ((uint32_t) 1UL)
#define cycle_unit ((uint32_t) 2000UL)
#define st_READ_INPUTS ((uint32_t) 1UL)
#define st_STATE_MACHINE_CYCLE ((uint32_t) 2UL)
#define st_WRITE_OUTPUTS ((uint32_t) 3UL)
#define st_TIME ((uint32_t) 4UL)
#define INIT ((uint32_t) 0UL)
#define EXEC_1 ((uint32_t) 1UL)
#define EXEC_2 ((uint32_t) 2UL)
#define EXEC_3 ((uint32_t) 3UL)
#define PATTERN true
#define TIMEOUT ((uint32_t) 40000UL)
/* Basic constants */
/* Array and record constants */

/* Clause CONCRETE_VARIABLES */

extern void SECTION_C4B_FUNCTION user_ctx__initialisation(void);


#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* __user_ctx_h */
