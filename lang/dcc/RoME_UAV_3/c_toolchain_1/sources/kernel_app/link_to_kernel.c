#include "link_to_kernel.h"


#include "../replica_2/user_component.h"
void* volatile const __attribute__ ((section (".r2_u_ptr__user_component__initialisation_ptr"))) r2__user_component__initialisation_ptr = &user_component__initialisation;
void* volatile const __attribute__ ((section (".r2_u_ptr__user_app_ptr"))) r2__user_app_ptr = &user_app;
void* volatile const __attribute__ ((section (".r2_u_ptr__user_consistency_error_detection_test_ptr"))) r2__user_consistency_error_detection_test_ptr = &user_consistency_error_detection_test;

#include "../replica_2/user_configuration.h"
void* volatile const __attribute__ ((section (".r2_u_ptr__user_configuration__initialisation_ptr"))) r2__user_configuration__initialisation_ptr = &user_configuration__initialisation;

#include "../replica_2/safety_variables.h"
void* volatile const __attribute__ ((section (".r2_u_ptr__user_safety_variables__initialisation_ptr"))) r2__user_safety_variables__initialisation_ptr = &safety_variables__initialisation;
void* volatile const __attribute__ ((section (".r2_u_ptr__user_safety_variables_array_ptr"))) r2__user_safety_variables_array_ptr = &safety_variables_array;

#include "../replica_2/c4b_constants.h"
void* volatile const __attribute__ ((section (".ru_s_cst__module_secu_ids"))) r2__module_secu_ids_ptr = &(global_constants.co_module_secu_ids);
void* volatile const __attribute__ ((section (".ru_s_cst__module_nb_inputs"))) r2__module_nb_inputs_ptr = &(global_constants.co_module_nb_inputs);
void* volatile const __attribute__ ((section (".ru_s_cst__module_nb_outputs"))) r2__module_nb_outputs_ptr = &(global_constants.co_module_nb_outputs);
void* volatile const __attribute__ ((section (".ru_s_cst__input_module_ids"))) r2__input_module_ids_ptr = &(global_constants.co_input_module_ids);
void* volatile const __attribute__ ((section (".ru_s_cst__input_local_ids"))) r2__input_local_ids_ptr = &(global_constants.co_input_local_ids);
void* volatile const __attribute__ ((section (".ru_s_cst__output_module_ids"))) r2__output_module_ids_ptr = &(global_constants.co_output_module_ids);
void* volatile const __attribute__ ((section (".ru_s_cst__output_local_ids"))) r2__output_local_ids_ptr = &(global_constants.co_output_local_ids);
void* volatile const __attribute__ ((section (".ru_s_cst__NB_MODULES"))) r2__NB_MODULES_ptr = &(global_constants.co_NB_MODULES);
void* volatile const __attribute__ ((section (".ru_s_cst__NB_INPUTS"))) r2__NB_INPUTS_ptr = &(global_constants.co_NB_INPUTS);
void* volatile const __attribute__ ((section (".ru_s_cst__NB_OUTPUTS"))) r2__NB_OUTPUTS_ptr = &(global_constants.co_NB_OUTPUTS);
