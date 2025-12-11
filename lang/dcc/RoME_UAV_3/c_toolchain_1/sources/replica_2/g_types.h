#ifndef __g_types_h
#define __g_types_h

#include <stdint.h>
#include <stdbool.h>
#include "interface_c4b.h"
/* Clause IMPORTS */
#include "g_standard_types.h"

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */

/* Clause CONCRETE_CONSTANTS */
#include "c4b_constants.h"
#define STRUE ((uint32_t) 2UL)
#define SFALSE ((uint32_t) 1UL)
#define MAX_UINT32 ((uint32_t) 4294967295UL)
#define MAX_UINT16 ((uint32_t) 65535UL)
#define MAX_UINT8 ((uint32_t) 255UL)
/* Basic constants */
/* Array and record constants */

/* Clause CONCRETE_VARIABLES */

extern void SECTION_C4B_FUNCTION g_types__initialisation(void);


#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* __g_types_h */
