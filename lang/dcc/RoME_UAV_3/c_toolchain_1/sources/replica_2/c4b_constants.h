#ifndef _c4b_constants_h
#define _c4b_constants_h

#include "interface_c4b.h"

typedef struct _struct_constants {
	uint8_t co_STRUE;
	uint8_t co_SFALSE;
	uint32_t co_MAX_UINT32;
	uint16_t co_MAX_UINT16;
	uint8_t co_MAX_UINT8;
	uint8_t co_NB_MODULES;
	uint8_t co_NB_INPUTS;
	uint8_t co_NB_OUTPUTS;
	uint32_t co_module_secu_ids[1];
	uint8_t co_module_nb_inputs[1];
	uint8_t co_module_nb_outputs[1];
	uint8_t co_input_module_ids[3];
	uint8_t co_input_local_ids[3];
	uint8_t co_output_module_ids[2];
	uint8_t co_output_local_ids[2];
	uint32_t co_SimBCMonitor_cycle_def;
	uint32_t co_cycle_unit;
	uint8_t co_st_READ_INPUTS;
	uint8_t co_st_STATE_MACHINE_CYCLE;
	uint8_t co_st_WRITE_OUTPUTS;
	uint8_t co_st_TIME;
	uint8_t co_INIT;
	uint8_t co_EXEC_1;
	uint8_t co_EXEC_2;
	uint8_t co_EXEC_3;
	uint8_t co_PATTERN;
	uint32_t co_TIMEOUT;
} struct_constants;

extern volatile const uint32_t SECTION_C4B_STRUCT_SAFETY_VARIABLES_SIZE struct_safety_variables_size_minus_1;
extern volatile const struct_constants SECTION_C4B_GLOBAL_CONSTANTS global_constants;

#endif /* _constants_h */
