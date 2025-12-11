#ifndef __logic_h
#define __logic_h

#include <stdint.h>
#include <stdbool.h>
#include "interface_c4b.h"
/* Clause SEES */
#include "g_types.h"
#include "g_operators.h"
#include "io_constants.h"
#include "lchip_interface.h"
#include "user_ctx.h"
#include "inputs.h"

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* Array and record constants */

/* Clause CONCRETE_VARIABLES */
#include "c4b_safety_variables.h"

#define board_0_O1 safety_variables.fields.v_board_0_O1
#define board_0_O2 safety_variables.fields.v_board_0_O2
#define first_time safety_variables.fields.v_first_time
#define SM_SimBCMonitor_state safety_variables.fields.v_SM_SimBCMonitor_state
#define cycle_timer safety_variables.fields.v_cycle_timer
#define cycle_state safety_variables.fields.v_cycle_state
#define var_read_1 safety_variables.fields.v_var_read_1
#define var_P_1 safety_variables.fields.v_var_P_1
#define var_patternBit_1 safety_variables.fields.v_var_patternBit_1
#define var_patternBit_2 safety_variables.fields.v_var_patternBit_2
#define valid_pred_5 safety_variables.fields.v_valid_pred_5
#define valid_pred_6 safety_variables.fields.v_valid_pred_6
#define i_MissionStart safety_variables.fields.v_i_MissionStart
#define i_CommsLink safety_variables.fields.v_i_CommsLink
#define i_HighBattery safety_variables.fields.v_i_HighBattery
#define o_Proceed safety_variables.fields.v_o_Proceed

extern void SECTION_C4B_FUNCTION logic__initialisation(void);

/* Clause OPERATIONS */

extern void SECTION_C4B_FUNCTION user_logic(void);
extern void SECTION_C4B_FUNCTION get_board_0_O1(uint8_t *po);
extern void SECTION_C4B_FUNCTION get_board_0_O2(uint8_t *po);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* __logic_h */
