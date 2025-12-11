#include "c4b_constants.h"

// Used to get struc_safety_variables size
#include "c4b_safety_variables.h"
volatile const uint32_t SECTION_C4B_STRUCT_SAFETY_VARIABLES_SIZE struct_safety_variables_size_minus_1 = sizeof(struct_safety_variables)-1;

volatile const struct_constants SECTION_C4B_GLOBAL_CONSTANTS global_constants = {
	.co_STRUE = STRUE,
	.co_SFALSE = SFALSE,
	.co_MAX_UINT32 = MAX_UINT32,
	.co_MAX_UINT16 = MAX_UINT16,
	.co_MAX_UINT8 = MAX_UINT8,
	.co_NB_MODULES = NB_MODULES,
	.co_NB_INPUTS = NB_INPUTS,
	.co_NB_OUTPUTS = NB_OUTPUTS,
	.co_module_secu_ids = {((uint32_t) 986880UL)},
	.co_module_nb_inputs = {((uint32_t) 3UL)},
	.co_module_nb_outputs = {((uint32_t) 2UL)},
	.co_input_module_ids = {((uint32_t) 0UL),((uint32_t) 0UL),((uint32_t) 0UL)},
	.co_input_local_ids = {((uint32_t) 0UL),((uint32_t) 1UL),((uint32_t) 2UL)},
	.co_output_module_ids = {((uint32_t) 0UL),((uint32_t) 0UL)},
	.co_output_local_ids = {((uint32_t) 0UL),((uint32_t) 1UL)},
	.co_SimBCMonitor_cycle_def = SimBCMonitor_cycle_def,
	.co_cycle_unit = cycle_unit,
	.co_st_READ_INPUTS = st_READ_INPUTS,
	.co_st_STATE_MACHINE_CYCLE = st_STATE_MACHINE_CYCLE,
	.co_st_WRITE_OUTPUTS = st_WRITE_OUTPUTS,
	.co_st_TIME = st_TIME,
	.co_INIT = INIT,
	.co_EXEC_1 = EXEC_1,
	.co_EXEC_2 = EXEC_2,
	.co_EXEC_3 = EXEC_3,
	.co_PATTERN = PATTERN,
	.co_TIMEOUT = TIMEOUT,
};
