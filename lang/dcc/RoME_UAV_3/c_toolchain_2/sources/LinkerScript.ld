OUTPUT_FORMAT("elf32-tradlittlemips")
OUTPUT_ARCH(pic32mx)
ENTRY(_reset)

/*************************************************************************
* DCC memory configuration
*
* _APP_PROGRAM_MEM_ORIGIN                        = 0x9d019338
* _APP_PROGRAM_MEM_LENGTH                        = 412872
*
* _APP_DATA_MEM_ORIGIN                           = 0xa000839c
* _APP_DATA_MEM_LENGTH                           = 97380
*
* _R1_FN_ADJUST                                  = 0x603c8
*
* have to be replaced by their corresponding values befor running the linkerscript
* WARNING : those values have to be multiple of 4 for alignment contrainst
*************************************************************************/

/*************************************************************************
* Memory Regions
*
* Memory regions without attributes cannot be used for orphaned sections.
* Only sections specifically assigned to these regions can be allocated
* into these regions.
*
* The Debug exception vector is located at 0x9FC00480.
*
* The config_<address> sections are used to locate the config words at
* their absolute addresses.
*************************************************************************/
MEMORY
{
	kseg1_boot_mem             : ORIGIN = 0x9D001970, LENGTH = 0x490

	/* Application flash */
	kseg0_program_mem (rx) :  ORIGIN = 0x9d000000, LENGTH = 0x1000
	/* Application Ram */
	kseg1_data_mem   (w!x) : ORIGIN = 0xA0000000, LENGTH = 0x1000

	/* Application flash */
	kseg0_application_program_mem (rx) :  ORIGIN = 0x9d019338, LENGTH = 412872
	/* Application Ram */
	kseg1_application_data_mem   (w!x) : ORIGIN = 0xa000839c, LENGTH = 97380
}

SECTIONS
{
	/DISCARD/ : { *(.debug_info) }
	/DISCARD/ : { *(.debug_abbrev) }
	/DISCARD/ : { *(.debug_aranges) }
	/DISCARD/ : { *(.debug_line) }
	/DISCARD/ : { *(.debug_frame) }
	/DISCARD/ : { *(.debug_ranges) }
	/DISCARD/ : { *(.comment) }
	/DISCARD/ : { *(.reginfo) }

	/*
	/DISCARD/ : { *(.dinit) }
	/DISCARD/ : { *(.stack) }
	/DISCARD/ : { *(.gnu) }
	*/

	.dinit : {
		_reset = .;
		KEEP(*(.dinit))
	} > kseg0_application_program_mem

	/* ------------------------------------ ITF sections ------------------------------------ */
	/* ----------------------------------- Kernel --------------------------------------------*/
	/* Elements placed by kernel compilation but written by user compilation */
	.R_U_S_CST__USER_STRUCT_SAFETY_VARIABLES_SIZE_MINUS_1 0x9d011ea8 :
	{
		KEEP(*(.ru_s_cst__user_struct_safety_variables_size_minus_1))
	}
	.R_U_S_CST__MODULE_SECU_IDS 0x9d011eac :
	{
		KEEP(*(.ru_s_cst__module_secu_ids))
	}
	.R_U_S_CST__MODULE_NB_INPUTS 0x9d011eb0 :
	{
		KEEP(*(.ru_s_cst__module_nb_inputs))
	}
	.R_U_S_CST__MODULE_NB_OUTPUTS 0x9d011eb4 :
	{
		KEEP(*(.ru_s_cst__module_nb_outputs))
	}
	.R_U_S_CST__INPUT_MODULE_IDS 0x9d011eb8 :
	{
		KEEP(*(.ru_s_cst__input_module_ids))
	}
	.R_U_S_CST__INPUT_LOCAL_IDS 0x9d011ebc :
	{
		KEEP(*(.ru_s_cst__input_local_ids))
	}
	.R_U_S_CST__OUTPUT_MODULE_IDS 0x9d011ec0 :
	{
		KEEP(*(.ru_s_cst__output_module_ids))
	}
	.R_U_S_CST__OUTPUT_LOCAL_IDS 0x9d011ec4 :
	{
		KEEP(*(.ru_s_cst__output_local_ids))
	}
	.R_U_S_CST__NB_MODULES 0x9d011ec8 :
	{
		KEEP(*(.ru_s_cst__NB_MODULES))
	}
	.R_U_S_CST__NB_INPUTS 0x9d011ecc :
	{
		KEEP(*(.ru_s_cst__NB_INPUTS))
	}
	.R_U_S_CST__NB_OUTPUTS 0x9d011ed0 :
	{
		KEEP(*(.ru_s_cst__NB_OUTPUTS))
	}

	.R2_U_PTR__user_component__initialisation 0x9d011ef8 :
	{
		KEEP(*(.r2_u_ptr__user_component__initialisation_ptr))
	}
	.R2_U_PTR__user_app 0x9d011efc :
	{
		KEEP(*(.r2_u_ptr__user_app_ptr))
	}
	.R2_U_PTR__user_consistency_error_detection_test 0x9d011f00 :
	{
		KEEP(*(.r2_u_ptr__user_consistency_error_detection_test_ptr))
	}
	.R2_U_PTR__user_configuration__initialisation 0x9d011eec :
	{
		KEEP(*(.r2_u_ptr__user_configuration__initialisation_ptr))
	}
	.R2_U_PTR__user_safety_variables__initialisation 0x9d011ef0 :
	{
		KEEP(*(.r2_u_ptr__user_safety_variables__initialisation_ptr))
	}
	.R2_U_PTR__user_safety_variables_array 0x9d011ef4 :
	{
		KEEP(*(.r2_u_ptr__user_safety_variables_array_ptr))
	}

	/* ----------------------------------- Non-Replicated ----------------------------------- */
	/* shared constants */
	.NR_S_CST :
	{
		KEEP(*(.nr_s_cst))
		KEEP(*(.nr_s_cst.*))
		. = ALIGN(4) ;
	} >kseg0_application_program_mem

	/* non shared constants */
	.NR_NS_CST :
	{
		KEEP(*(.nr_ns_cst))
		KEEP(*(.nr_ns_cst.*))
		. = ALIGN(4) ;
	} >kseg0_application_program_mem

	/* shared functions */
	.NR_S_FN :
	{
		KEEP(*(.nr_s_fn))
		KEEP(*(.nr_s_fn.*))
		. = ALIGN(4) ;
	} >kseg0_application_program_mem

	/* non shared functions */
	.NR_NS_FN :
	{
		KEEP(*(.nr_ns_fn))
		KEEP(*(.nr_ns_fn.*))
		. = ALIGN(4) ;
		_end_section = . ;
	} >kseg0_application_program_mem

	/* shared variables */
	.NR_S_VAR :
	{
		KEEP(*(.nr_s_var))
		KEEP(*(.nr_s_var.*))
		. = ALIGN(4) ;
	} >kseg1_application_data_mem

	/* non shared variables */
	.NR_NS_VAR :
	{
		KEEP(*(.nr_ns_var))
		KEEP(*(.nr_ns_var.*))
		. = ALIGN(4) ;
	} >kseg1_application_data_mem

	/* ------------------------------------ Replicas ------------------------------------ */
	/* constants */
	.R_CST :
	{
		. = ALIGN(8);
		KEEP(*(.r_cst))
		KEEP(*(.r_cst.*))
		. = ALIGN(8);
	} > kseg0_application_program_mem

	/* ------------------------------------ Replica2 ------------------------------------ */
	/* constants replica2 */
	.R2_CST :
	{
		KEEP(*(.r2_cst))
		KEEP(*(.r2_cst.*))
		. = ALIGN(8);
	} > kseg0_application_program_mem

	/* functions replica2 */
	.R2_FN :
	{
		KEEP(*(.r2_fn))
		KEEP(*(.r2_fn.*))
		. = ALIGN(8);
	} > kseg0_application_program_mem

	/* compared variables */
	.R2_CHK_VAR :
	{
		KEEP(*(.r2_chk_var))
		KEEP(*(.r2_chk_var.*))
		. = ALIGN(8);
	} > kseg1_application_data_mem

	/* non compared variables */
	.R2_NCHK_VAR :
	{
		KEEP(*(.r2_nchk_var))
		KEEP(*(.r2_nchk_var.*))
		. = ALIGN(8);
	} > kseg1_application_data_mem

	/* ------------------------------------ Replica1 ------------------------------------ */
	/* constants replica1 */
	.R1_CST :
	{
		KEEP(*(.r1_cst))
		KEEP(*(.r1_cst.*))
		. = ALIGN(8);
	} > kseg0_application_program_mem

	/* Space left for functions replica1 */
	.R1_FN :
	{
		_end_r1_fn = ORIGIN(kseg0_application_program_mem) + LENGTH(kseg0_application_program_mem);
		_end_r1_fn = _end_r1_fn -
		0x603c8;
		. = _end_r1_fn;
	} > kseg0_application_program_mem

	/* Space left for replica 1 compared variables */
	.R1_CHK_VAR :
	{
		. += SIZEOF(.R2_CHK_VAR);
		. = ALIGN(8);
	} > kseg1_application_data_mem

	/* Space left for replica 1 non compared variables */
	.R1_NCHK_VAR :
	{
		. += SIZEOF(.R2_NCHK_VAR);
		. = ALIGN(8);
	} > kseg1_application_data_mem

	/* ------------------------------------ end ------------------------------------ */

	.FREE_FLASH_SPACE :
	{
		_end_flash_space = ORIGIN(kseg0_application_program_mem) + LENGTH(kseg0_application_program_mem);
		. = _end_flash_space;
		. = ALIGN(8);
	} >kseg0_application_program_mem

	.FREE_RAM_SPACE :
	{
		_end_ram_space = ORIGIN(kseg1_application_data_mem) + LENGTH(kseg1_application_data_mem);
		. = _end_ram_space;
	} > kseg1_application_data_mem

}
