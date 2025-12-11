Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(user_component_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(user_component_i))==(Machine(user_component));
  Level(Implementation(user_component_i))==(1);
  Upper_Level(Implementation(user_component_i))==(Machine(user_component))
END
&
THEORY LoadedStructureX IS
  Implementation(user_component_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(user_component_i))==(g_types)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(user_component_i))==(user_ctx,inputs,logic,outputs);
  Inherited_List_Includes(Implementation(user_component_i))==(outputs,logic,inputs,user_ctx)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(user_component_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(user_component_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(user_component_i))==(?);
  Context_List_Variables(Implementation(user_component_i))==(?);
  Abstract_List_Variables(Implementation(user_component_i))==(?);
  Local_List_Variables(Implementation(user_component_i))==(?);
  List_Variables(Implementation(user_component_i))==(board_0_I3,board_0_I2,board_0_I1,board_0_O2,board_0_O1);
  External_List_Variables(Implementation(user_component_i))==(board_0_I3,board_0_I2,board_0_I1,board_0_O2,board_0_O1)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(user_component_i))==(?);
  Abstract_List_VisibleVariables(Implementation(user_component_i))==(?);
  External_List_VisibleVariables(Implementation(user_component_i))==(?);
  Expanded_List_VisibleVariables(Implementation(user_component_i))==(?);
  List_VisibleVariables(Implementation(user_component_i))==(divergence_test_var);
  Internal_List_VisibleVariables(Implementation(user_component_i))==(divergence_test_var)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(user_component_i))==(btrue);
  Abstract_List_Invariant(Implementation(user_component_i))==(btrue);
  Expanded_List_Invariant(Implementation(user_component_i))==(board_0_I1: uint8_t & board_0_I2: uint8_t & board_0_I3: uint8_t & board_0_O1: uint8_t & board_0_O2: uint8_t);
  Context_List_Invariant(Implementation(user_component_i))==(btrue);
  List_Invariant(Implementation(user_component_i))==(divergence_test_var: uint8_t)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Implementation(user_component_i))==(btrue);
  Expanded_List_Assertions(Implementation(user_component_i))==(btrue);
  Context_List_Assertions(Implementation(user_component_i))==(Convert_Bool: BOOL +-> uint8_t & Convert_Bool: BOOL +-> uint16_t & Convert_Bool: BOOL +-> uint32_t);
  List_Assertions(Implementation(user_component_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(user_component_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(user_component_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(user_component_i))==(@(board_0_I1$0).(board_0_I1$0: uint8_t ==> board_0_I1:=board_0_I1$0) || @(board_0_I2$0).(board_0_I2$0: uint8_t ==> board_0_I2:=board_0_I2$0) || @(board_0_I3$0).(board_0_I3$0: uint8_t ==> board_0_I3:=board_0_I3$0);(@(board_0_O1$0).(board_0_O1$0: uint8_t ==> board_0_O1:=board_0_O1$0) || @(board_0_O2$0).(board_0_O2$0: uint8_t ==> board_0_O2:=board_0_O2$0));(0: INT | divergence_test_var:=0));
  Context_List_Initialisation(Implementation(user_component_i))==(skip);
  List_Initialisation(Implementation(user_component_i))==(divergence_test_var:=0)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(user_component_i))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Implementation(user_component_i),Machine(user_ctx))==(?);
  List_Instanciated_Parameters(Implementation(user_component_i),Machine(inputs))==(?);
  List_Instanciated_Parameters(Implementation(user_component_i),Machine(logic))==(?);
  List_Instanciated_Parameters(Implementation(user_component_i),Machine(outputs))==(?);
  List_Instanciated_Parameters(Implementation(user_component_i),Machine(g_types))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(user_component_i),Machine(outputs))==(btrue);
  List_Constraints(Implementation(user_component_i))==(btrue);
  List_Context_Constraints(Implementation(user_component_i))==(btrue);
  List_Constraints(Implementation(user_component_i),Machine(logic))==(btrue);
  List_Constraints(Implementation(user_component_i),Machine(inputs))==(btrue);
  List_Constraints(Implementation(user_component_i),Machine(user_ctx))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(user_component_i))==(user_app,user_consistency_error_detection_test);
  List_Operations(Implementation(user_component_i))==(user_app,user_consistency_error_detection_test)
END
&
THEORY ListInputX IS
  List_Input(Implementation(user_component_i),user_app)==(?);
  List_Input(Implementation(user_component_i),user_consistency_error_detection_test)==(divergence_value)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(user_component_i),user_app)==(?);
  List_Output(Implementation(user_component_i),user_consistency_error_detection_test)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(user_component_i),user_app)==(user_app);
  List_Header(Implementation(user_component_i),user_consistency_error_detection_test)==(user_consistency_error_detection_test(divergence_value))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(user_component_i),user_app)==(btrue);
  List_Precondition(Implementation(user_component_i),user_app)==(btrue);
  Own_Precondition(Implementation(user_component_i),user_consistency_error_detection_test)==(btrue);
  List_Precondition(Implementation(user_component_i),user_consistency_error_detection_test)==(divergence_value: uint8_t)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(user_component_i),user_consistency_error_detection_test)==(divergence_value: uint8_t & divergence_value: INT | divergence_test_var:=divergence_value);
  Expanded_List_Substitution(Implementation(user_component_i),user_app)==(btrue | (0: INT | divergence_test_var:=0);(btrue | @(board_0_I1$0).(board_0_I1$0: uint8_t ==> board_0_I1:=board_0_I1$0) || @(board_0_I2$0).(board_0_I2$0: uint8_t ==> board_0_I2:=board_0_I2$0) || @(board_0_I3$0).(board_0_I3$0: uint8_t ==> board_0_I3:=board_0_I3$0));(btrue | skip);(btrue | skip));
  List_Substitution(Implementation(user_component_i),user_app)==(divergence_test_var:=0;read_inputs;user_logic;write_outputs);
  List_Substitution(Implementation(user_component_i),user_consistency_error_detection_test)==(divergence_test_var:=divergence_value)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(user_component_i))==(?);
  Inherited_List_Constants(Implementation(user_component_i))==(SimBCMonitor_cycle_def,cycle_unit,st_READ_INPUTS,st_STATE_MACHINE_CYCLE,st_WRITE_OUTPUTS,st_TIME,INIT,EXEC_1,EXEC_2,EXEC_3,PATTERN,TIMEOUT);
  List_Constants(Implementation(user_component_i))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(user_component_i))==(?);
  Context_List_Defered(Implementation(user_component_i))==(?);
  Context_List_Sets(Implementation(user_component_i))==(?);
  List_Own_Enumerated(Implementation(user_component_i))==(?);
  List_Valuable_Sets(Implementation(user_component_i))==(?);
  Inherited_List_Enumerated(Implementation(user_component_i))==(?);
  Inherited_List_Defered(Implementation(user_component_i))==(?);
  Inherited_List_Sets(Implementation(user_component_i))==(?);
  List_Enumerated(Implementation(user_component_i))==(?);
  List_Defered(Implementation(user_component_i))==(?);
  List_Sets(Implementation(user_component_i))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(user_component_i))==(?);
  Expanded_List_HiddenConstants(Implementation(user_component_i))==(?);
  List_HiddenConstants(Implementation(user_component_i))==(?);
  External_List_HiddenConstants(Implementation(user_component_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(user_component_i))==(btrue);
  Context_List_Properties(Implementation(user_component_i))==(uint32_t = 0..4294967295 & uint16_t = 0..65535 & uint8_t = 0..255 & STRUE: uint8_t & SFALSE: uint8_t & MAX_UINT32: uint32_t & MAX_UINT16: uint16_t & MAX_UINT8: uint8_t & STRUE: 0..MAX_UINT8 & SFALSE: 0..MAX_UINT8 & STRUE/=SFALSE & SBOOL = {STRUE,SFALSE} & STRUE<=2 & SFALSE<=2 & MAX_UINT32 = 4294967295 & MAX_UINT16 = 65535 & MAX_UINT8 = 255 & Convert_Bool = {TRUE|->STRUE,FALSE|->SFALSE});
  Inherited_List_Properties(Implementation(user_component_i))==(SimBCMonitor_cycle_def: uint32_t & cycle_unit: uint32_t & st_READ_INPUTS: uint8_t & st_STATE_MACHINE_CYCLE: uint8_t & st_WRITE_OUTPUTS: uint8_t & st_TIME: uint8_t & INIT: uint8_t & EXEC_1: uint8_t & EXEC_2: uint8_t & EXEC_3: uint8_t & PATTERN: BOOL & TIMEOUT: uint32_t);
  List_Properties(Implementation(user_component_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(user_component_i))==(aa: aa);
  List_Values(Implementation(user_component_i))==(?)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Implementation(user_component_i),Machine(g_types))==(?);
  Seen_Context_List_Enumerated(Implementation(user_component_i))==(?);
  Seen_Context_List_Invariant(Implementation(user_component_i))==(btrue);
  Seen_Context_List_Assertions(Implementation(user_component_i))==(btrue);
  Seen_Context_List_Properties(Implementation(user_component_i))==(btrue);
  Seen_List_Constraints(Implementation(user_component_i))==(btrue);
  Seen_List_Operations(Implementation(user_component_i),Machine(g_types))==(?);
  Seen_Expanded_List_Invariant(Implementation(user_component_i),Machine(g_types))==(btrue)
END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(user_component_i),Machine(outputs))==(write_outputs);
  List_Included_Operations(Implementation(user_component_i),Machine(logic))==(user_logic,get_board_0_O1,get_board_0_O2);
  List_Included_Operations(Implementation(user_component_i),Machine(inputs))==(read_inputs,get_board_0_I1,get_board_0_I2,get_board_0_I3)
END
&
THEORY InheritedEnvX IS
  VisibleVariables(Implementation(user_component_i))==(Type(divergence_test_var) == Mvv(btype(INTEGER,?,?)));
  Operations(Implementation(user_component_i))==(Type(user_consistency_error_detection_test) == Cst(No_type,btype(INTEGER,?,?));Type(user_app) == Cst(No_type,No_type))
END
&
THEORY ListVisibleStaticX IS
  List_Constants(Implementation(user_component_i),Machine(user_ctx))==(SimBCMonitor_cycle_def,cycle_unit,st_READ_INPUTS,st_STATE_MACHINE_CYCLE,st_WRITE_OUTPUTS,st_TIME,INIT,EXEC_1,EXEC_2,EXEC_3,PATTERN,TIMEOUT);
  List_Constants_Env(Implementation(user_component_i),Machine(user_ctx))==(Type(SimBCMonitor_cycle_def) == Cst(btype(INTEGER,?,?));Type(cycle_unit) == Cst(btype(INTEGER,?,?));Type(st_READ_INPUTS) == Cst(btype(INTEGER,?,?));Type(st_STATE_MACHINE_CYCLE) == Cst(btype(INTEGER,?,?));Type(st_WRITE_OUTPUTS) == Cst(btype(INTEGER,?,?));Type(st_TIME) == Cst(btype(INTEGER,?,?));Type(INIT) == Cst(btype(INTEGER,?,?));Type(EXEC_1) == Cst(btype(INTEGER,?,?));Type(EXEC_2) == Cst(btype(INTEGER,?,?));Type(EXEC_3) == Cst(btype(INTEGER,?,?));Type(PATTERN) == Cst(btype(BOOL,?,?));Type(TIMEOUT) == Cst(btype(INTEGER,?,?)));
  List_Constants(Implementation(user_component_i),Machine(g_types))==(uint32_t,uint16_t,uint8_t,STRUE,SFALSE,MAX_UINT32,MAX_UINT16,MAX_UINT8);
  List_Constants_Env(Implementation(user_component_i),Machine(g_types))==(Type(uint32_t) == Cst(SetOf(btype(INTEGER,"[uint32_t","]uint32_t")));Type(uint16_t) == Cst(SetOf(btype(INTEGER,"[uint16_t","]uint16_t")));Type(uint8_t) == Cst(SetOf(btype(INTEGER,"[uint8_t","]uint8_t")));Type(STRUE) == Cst(btype(INTEGER,?,?));Type(SFALSE) == Cst(btype(INTEGER,?,?));Type(MAX_UINT32) == Cst(btype(INTEGER,?,?));Type(MAX_UINT16) == Cst(btype(INTEGER,?,?));Type(MAX_UINT8) == Cst(btype(INTEGER,?,?)))
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(user_component_i)) == (? | SimBCMonitor_cycle_def,cycle_unit,st_READ_INPUTS,st_STATE_MACHINE_CYCLE,st_WRITE_OUTPUTS,st_TIME,INIT,EXEC_1,EXEC_2,EXEC_3,PATTERN,TIMEOUT | ? | board_0_O2,board_0_O1,board_0_I3,board_0_I2,board_0_I1 | user_app,user_consistency_error_detection_test | ? | seen(Machine(g_types)),imported(Machine(user_ctx)),imported(Machine(inputs)),imported(Machine(logic)),imported(Machine(outputs)) | ? | user_component_i);
  List_Of_HiddenCst_Ids(Implementation(user_component_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(user_component_i)) == (SimBCMonitor_cycle_def,cycle_unit,st_READ_INPUTS,st_STATE_MACHINE_CYCLE,st_WRITE_OUTPUTS,st_TIME,INIT,EXEC_1,EXEC_2,EXEC_3,PATTERN,TIMEOUT);
  List_Of_VisibleVar_Ids(Implementation(user_component_i)) == (divergence_test_var | ?);
  List_Of_Ids_SeenBNU(Implementation(user_component_i)) == (seen(Machine(g_types)): (uint32_t,uint16_t,uint8_t,STRUE,SFALSE,MAX_UINT32,MAX_UINT16,MAX_UINT8 | ? | ? | ? | ? | ? | SBOOL,Convert_Bool | ? | ?) | seen(Machine(g_operators)): (bitwise_sll_uint32,bitwise_srl_uint32,bitwise_not_uint32,bitwise_and_uint32,bitwise_xor_uint32,bitwise_or_uint32,bitwise_sll_uint16,bitwise_srl_uint16,bitwise_not_uint16,bitwise_and_uint16,bitwise_xor_uint16,bitwise_or_uint16,bitwise_sll_uint8,bitwise_srl_uint8,bitwise_not_uint8,bitwise_and_uint8,bitwise_xor_uint8,bitwise_or_uint8,add_uint32,sub_uint32,mul_uint32,add_uint16,sub_uint16,mul_uint16,add_uint8,sub_uint8,mul_uint8 | ? | ? | ? | ? | ? | ? | ? | ?) | seen(Machine(io_constants)): (IO_ON,IO_OFF | ? | ? | ? | ? | ? | IO_STATE,TIME | ? | ?) | seen(Machine(lchip_interface)): (? | ? | ms_tick | ? | ? | ? | ? | ? | ?) | seen(Machine(user_ctx)): (SimBCMonitor_cycle_def,cycle_unit,st_READ_INPUTS,st_STATE_MACHINE_CYCLE,st_WRITE_OUTPUTS,st_TIME,INIT,EXEC_1,EXEC_2,EXEC_3,PATTERN,TIMEOUT | ? | ? | ? | ? | ? | ? | ? | ?) | seen(Machine(inputs)): (? | ? | board_0_I3,board_0_I2,board_0_I1 | ? | ? | ? | ? | ? | ?));
  List_Of_Ids(Machine(outputs)) == (? | ? | ? | ? | write_outputs | ? | ? | ? | outputs);
  List_Of_HiddenCst_Ids(Machine(outputs)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(outputs)) == (?);
  List_Of_VisibleVar_Ids(Machine(outputs)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(outputs)) == (?: ?);
  List_Of_Ids(Machine(logic)) == (? | ? | board_0_O2,board_0_O1 | ? | user_logic,get_board_0_O1,get_board_0_O2 | ? | seen(Machine(g_types)),seen(Machine(g_operators)),seen(Machine(io_constants)),seen(Machine(lchip_interface)),seen(Machine(user_ctx)),seen(Machine(inputs)) | ? | logic);
  List_Of_HiddenCst_Ids(Machine(logic)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(logic)) == (?);
  List_Of_VisibleVar_Ids(Machine(logic)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(logic)) == (?: ?);
  List_Of_Ids(Machine(inputs)) == (? | ? | board_0_I3,board_0_I2,board_0_I1 | ? | read_inputs,get_board_0_I1,get_board_0_I2,get_board_0_I3 | ? | seen(Machine(g_types)) | ? | inputs);
  List_Of_HiddenCst_Ids(Machine(inputs)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(inputs)) == (?);
  List_Of_VisibleVar_Ids(Machine(inputs)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(inputs)) == (?: ?);
  List_Of_Ids(Machine(g_types)) == (uint32_t,uint16_t,uint8_t,STRUE,SFALSE,MAX_UINT32,MAX_UINT16,MAX_UINT8 | ? | ? | ? | ? | ? | ? | ? | g_types);
  List_Of_HiddenCst_Ids(Machine(g_types)) == (SBOOL,Convert_Bool | ?);
  List_Of_VisibleCst_Ids(Machine(g_types)) == (uint32_t,uint16_t,uint8_t,STRUE,SFALSE,MAX_UINT32,MAX_UINT16,MAX_UINT8);
  List_Of_VisibleVar_Ids(Machine(g_types)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(g_types)) == (?: ?);
  List_Of_Ids(Machine(user_ctx)) == (SimBCMonitor_cycle_def,cycle_unit,st_READ_INPUTS,st_STATE_MACHINE_CYCLE,st_WRITE_OUTPUTS,st_TIME,INIT,EXEC_1,EXEC_2,EXEC_3,PATTERN,TIMEOUT | ? | ? | ? | ? | ? | seen(Machine(g_types)) | ? | user_ctx);
  List_Of_HiddenCst_Ids(Machine(user_ctx)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(user_ctx)) == (SimBCMonitor_cycle_def,cycle_unit,st_READ_INPUTS,st_STATE_MACHINE_CYCLE,st_WRITE_OUTPUTS,st_TIME,INIT,EXEC_1,EXEC_2,EXEC_3,PATTERN,TIMEOUT);
  List_Of_VisibleVar_Ids(Machine(user_ctx)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(user_ctx)) == (?: ?);
  List_Of_Ids(Machine(lchip_interface)) == (? | ? | ms_tick | ? | print_global_inputs,read_global_input,write_global_output,get_ms_tick,print_uint8 | ? | seen(Machine(g_types)),seen(Machine(lchip_configuration)) | ? | lchip_interface);
  List_Of_HiddenCst_Ids(Machine(lchip_interface)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(lchip_interface)) == (?);
  List_Of_VisibleVar_Ids(Machine(lchip_interface)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(lchip_interface)) == (?: ?);
  List_Of_Ids(Machine(lchip_configuration)) == (MAX_NB_MODULES,MAX_NB_INPUTS,MAX_NB_OUTPUTS | ? | ? | ? | ? | ? | seen(Machine(g_types)) | ? | lchip_configuration);
  List_Of_HiddenCst_Ids(Machine(lchip_configuration)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(lchip_configuration)) == (MAX_NB_MODULES,MAX_NB_INPUTS,MAX_NB_OUTPUTS);
  List_Of_VisibleVar_Ids(Machine(lchip_configuration)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(lchip_configuration)) == (?: ?);
  List_Of_Ids(Machine(io_constants)) == (IO_ON,IO_OFF | ? | ? | ? | ? | ? | seen(Machine(g_types)) | ? | io_constants);
  List_Of_HiddenCst_Ids(Machine(io_constants)) == (IO_STATE,TIME | ?);
  List_Of_VisibleCst_Ids(Machine(io_constants)) == (IO_ON,IO_OFF);
  List_Of_VisibleVar_Ids(Machine(io_constants)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(io_constants)) == (?: ?);
  List_Of_Ids(Machine(g_operators)) == (bitwise_sll_uint32,bitwise_srl_uint32,bitwise_not_uint32,bitwise_and_uint32,bitwise_xor_uint32,bitwise_or_uint32,bitwise_sll_uint16,bitwise_srl_uint16,bitwise_not_uint16,bitwise_and_uint16,bitwise_xor_uint16,bitwise_or_uint16,bitwise_sll_uint8,bitwise_srl_uint8,bitwise_not_uint8,bitwise_and_uint8,bitwise_xor_uint8,bitwise_or_uint8,add_uint32,sub_uint32,mul_uint32,add_uint16,sub_uint16,mul_uint16,add_uint8,sub_uint8,mul_uint8 | ? | ? | ? | ? | ? | seen(Machine(g_types)) | ? | g_operators);
  List_Of_HiddenCst_Ids(Machine(g_operators)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(g_operators)) == (bitwise_sll_uint32,bitwise_srl_uint32,bitwise_not_uint32,bitwise_and_uint32,bitwise_xor_uint32,bitwise_or_uint32,bitwise_sll_uint16,bitwise_srl_uint16,bitwise_not_uint16,bitwise_and_uint16,bitwise_xor_uint16,bitwise_or_uint16,bitwise_sll_uint8,bitwise_srl_uint8,bitwise_not_uint8,bitwise_and_uint8,bitwise_xor_uint8,bitwise_or_uint8,add_uint32,sub_uint32,mul_uint32,add_uint16,sub_uint16,mul_uint16,add_uint8,sub_uint8,mul_uint8);
  List_Of_VisibleVar_Ids(Machine(g_operators)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(g_operators)) == (?: ?)
END
&
THEORY ConstantsEnvX IS
  Constants(Implementation(user_component_i)) == (Type(TIMEOUT) == Cst(btype(INTEGER,?,?));Type(PATTERN) == Cst(btype(BOOL,?,?));Type(EXEC_3) == Cst(btype(INTEGER,?,?));Type(EXEC_2) == Cst(btype(INTEGER,?,?));Type(EXEC_1) == Cst(btype(INTEGER,?,?));Type(INIT) == Cst(btype(INTEGER,?,?));Type(st_TIME) == Cst(btype(INTEGER,?,?));Type(st_WRITE_OUTPUTS) == Cst(btype(INTEGER,?,?));Type(st_STATE_MACHINE_CYCLE) == Cst(btype(INTEGER,?,?));Type(st_READ_INPUTS) == Cst(btype(INTEGER,?,?));Type(cycle_unit) == Cst(btype(INTEGER,?,?));Type(SimBCMonitor_cycle_def) == Cst(btype(INTEGER,?,?)))
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(user_component_i)) == (Type(divergence_test_var) == Mvv(btype(INTEGER,?,?)))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
&
THEORY ListLocalOperationsX IS
  List_Local_Operations(Implementation(user_component_i))==(?)
END
&
THEORY ListLocalInputX END
&
THEORY ListLocalOutputX END
&
THEORY ListLocalHeaderX END
&
THEORY ListLocalPreconditionX END
&
THEORY ListLocalSubstitutionX END
&
THEORY TypingPredicateX IS
  TypingPredicate(Implementation(user_component_i))==(divergence_test_var: INTEGER)
END
&
THEORY ImportedVariablesListX IS
  ImportedVariablesList(Implementation(user_component_i),Machine(user_ctx))==(?);
  ImportedVisVariablesList(Implementation(user_component_i),Machine(user_ctx))==(?);
  ImportedVariablesList(Implementation(user_component_i),Machine(inputs))==(board_0_I3,board_0_I2,board_0_I1);
  ImportedVisVariablesList(Implementation(user_component_i),Machine(inputs))==(?);
  ImportedVariablesList(Implementation(user_component_i),Machine(logic))==(board_0_O2,board_0_O1);
  ImportedVisVariablesList(Implementation(user_component_i),Machine(logic))==(?);
  ImportedVariablesList(Implementation(user_component_i),Machine(outputs))==(?);
  ImportedVisVariablesList(Implementation(user_component_i),Machine(outputs))==(?)
END
&
THEORY ListLocalOpInvariantX END
)
