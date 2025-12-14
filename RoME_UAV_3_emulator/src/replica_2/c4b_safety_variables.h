#ifndef _safety_variables_h
#define _safety_variables_h

#include "interface_c4b.h"

typedef struct _struct_safety_variables {
	uint8_t v_board_0_I1;
	uint8_t v_board_0_I2;
	uint8_t v_board_0_I3;
	uint8_t v_board_0_O1;
	uint8_t v_board_0_O2;
	uint8_t v_first_time;
	uint8_t v_SM_SimBCMonitor_state;
	uint32_t v_cycle_timer;
	uint8_t v_cycle_state;
	uint32_t v_var_read_1;
	uint8_t v_var_currbit_2;
	uint8_t v_var_highBattery_3;
	uint32_t v_var_P_1;
	uint8_t v_var_patternBit_1;
	uint8_t v_var_patternBit_2;
	uint8_t v_i_MissionStart;
	uint8_t v_i_CommsLink;
	uint8_t v_i_HighBattery;
	uint8_t v_o_Proceed;
	uint8_t v_divergence_test_var;
} struct_safety_variables;

typedef union _union_safety_variables {
	struct_safety_variables fields;
	uint8_t bytes[sizeof(struct_safety_variables)];
} union_safety_variables;

extern union_safety_variables SECTION_C4B_SAFETY_VARIABLES safety_variables;

#endif /* _safety_variables_h */
