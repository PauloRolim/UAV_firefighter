Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(user_ctx))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(user_ctx))==(Machine(user_ctx));
  Level(Machine(user_ctx))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(user_ctx)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(user_ctx))==(g_types)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(user_ctx))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(user_ctx))==(?);
  List_Includes(Machine(user_ctx))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(user_ctx))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(user_ctx))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(user_ctx))==(?);
  Context_List_Variables(Machine(user_ctx))==(?);
  Abstract_List_Variables(Machine(user_ctx))==(?);
  Local_List_Variables(Machine(user_ctx))==(?);
  List_Variables(Machine(user_ctx))==(?);
  External_List_Variables(Machine(user_ctx))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(user_ctx))==(?);
  Abstract_List_VisibleVariables(Machine(user_ctx))==(?);
  External_List_VisibleVariables(Machine(user_ctx))==(?);
  Expanded_List_VisibleVariables(Machine(user_ctx))==(?);
  List_VisibleVariables(Machine(user_ctx))==(?);
  Internal_List_VisibleVariables(Machine(user_ctx))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(user_ctx))==(btrue);
  Gluing_List_Invariant(Machine(user_ctx))==(btrue);
  Expanded_List_Invariant(Machine(user_ctx))==(btrue);
  Abstract_List_Invariant(Machine(user_ctx))==(btrue);
  Context_List_Invariant(Machine(user_ctx))==(btrue);
  List_Invariant(Machine(user_ctx))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(user_ctx))==(btrue);
  Abstract_List_Assertions(Machine(user_ctx))==(btrue);
  Context_List_Assertions(Machine(user_ctx))==(Convert_Bool: BOOL +-> uint8_t & Convert_Bool: BOOL +-> uint16_t & Convert_Bool: BOOL +-> uint32_t);
  List_Assertions(Machine(user_ctx))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(user_ctx))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(user_ctx))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(user_ctx))==(skip);
  Context_List_Initialisation(Machine(user_ctx))==(skip);
  List_Initialisation(Machine(user_ctx))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(user_ctx))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(user_ctx),Machine(g_types))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(user_ctx))==(btrue);
  List_Constraints(Machine(user_ctx))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(user_ctx))==(?);
  List_Operations(Machine(user_ctx))==(?)
END
&
THEORY ListInputX END
&
THEORY ListOutputX END
&
THEORY ListHeaderX END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX END
&
THEORY ListSubstitutionX END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(user_ctx))==(SimBCMonitor_cycle_def,cycle_unit,st_READ_INPUTS,st_STATE_MACHINE_CYCLE,st_WRITE_OUTPUTS,st_TIME,INIT,EXEC_1,EXEC_2,EXEC_3,PATTERN,TIMEOUT);
  Inherited_List_Constants(Machine(user_ctx))==(?);
  List_Constants(Machine(user_ctx))==(SimBCMonitor_cycle_def,cycle_unit,st_READ_INPUTS,st_STATE_MACHINE_CYCLE,st_WRITE_OUTPUTS,st_TIME,INIT,EXEC_1,EXEC_2,EXEC_3,PATTERN,TIMEOUT)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(user_ctx))==(?);
  Context_List_Defered(Machine(user_ctx))==(?);
  Context_List_Sets(Machine(user_ctx))==(?);
  List_Valuable_Sets(Machine(user_ctx))==(?);
  Inherited_List_Enumerated(Machine(user_ctx))==(?);
  Inherited_List_Defered(Machine(user_ctx))==(?);
  Inherited_List_Sets(Machine(user_ctx))==(?);
  List_Enumerated(Machine(user_ctx))==(?);
  List_Defered(Machine(user_ctx))==(?);
  List_Sets(Machine(user_ctx))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(user_ctx))==(?);
  Expanded_List_HiddenConstants(Machine(user_ctx))==(?);
  List_HiddenConstants(Machine(user_ctx))==(?);
  External_List_HiddenConstants(Machine(user_ctx))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(user_ctx))==(btrue);
  Context_List_Properties(Machine(user_ctx))==(uint32_t = 0..4294967295 & uint16_t = 0..65535 & uint8_t = 0..255 & STRUE: uint8_t & SFALSE: uint8_t & MAX_UINT32: uint32_t & MAX_UINT16: uint16_t & MAX_UINT8: uint8_t & STRUE: 0..MAX_UINT8 & SFALSE: 0..MAX_UINT8 & STRUE/=SFALSE & SBOOL = {STRUE,SFALSE} & STRUE<=2 & SFALSE<=2 & MAX_UINT32 = 4294967295 & MAX_UINT16 = 65535 & MAX_UINT8 = 255 & Convert_Bool = {TRUE|->STRUE,FALSE|->SFALSE});
  Inherited_List_Properties(Machine(user_ctx))==(btrue);
  List_Properties(Machine(user_ctx))==(SimBCMonitor_cycle_def: uint32_t & cycle_unit: uint32_t & st_READ_INPUTS: uint8_t & st_STATE_MACHINE_CYCLE: uint8_t & st_WRITE_OUTPUTS: uint8_t & st_TIME: uint8_t & INIT: uint8_t & EXEC_1: uint8_t & EXEC_2: uint8_t & EXEC_3: uint8_t & PATTERN: BOOL & TIMEOUT: uint32_t)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(user_ctx),Machine(g_types))==(?);
  Seen_Context_List_Enumerated(Machine(user_ctx))==(?);
  Seen_Context_List_Invariant(Machine(user_ctx))==(btrue);
  Seen_Context_List_Assertions(Machine(user_ctx))==(btrue);
  Seen_Context_List_Properties(Machine(user_ctx))==(btrue);
  Seen_List_Constraints(Machine(user_ctx))==(btrue);
  Seen_List_Operations(Machine(user_ctx),Machine(g_types))==(?);
  Seen_Expanded_List_Invariant(Machine(user_ctx),Machine(g_types))==(btrue)
END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(user_ctx)) == (SimBCMonitor_cycle_def,cycle_unit,st_READ_INPUTS,st_STATE_MACHINE_CYCLE,st_WRITE_OUTPUTS,st_TIME,INIT,EXEC_1,EXEC_2,EXEC_3,PATTERN,TIMEOUT | ? | ? | ? | ? | ? | seen(Machine(g_types)) | ? | user_ctx);
  List_Of_HiddenCst_Ids(Machine(user_ctx)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(user_ctx)) == (SimBCMonitor_cycle_def,cycle_unit,st_READ_INPUTS,st_STATE_MACHINE_CYCLE,st_WRITE_OUTPUTS,st_TIME,INIT,EXEC_1,EXEC_2,EXEC_3,PATTERN,TIMEOUT);
  List_Of_VisibleVar_Ids(Machine(user_ctx)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(user_ctx)) == (?: ?);
  List_Of_Ids(Machine(g_types)) == (uint32_t,uint16_t,uint8_t,STRUE,SFALSE,MAX_UINT32,MAX_UINT16,MAX_UINT8 | ? | ? | ? | ? | ? | ? | ? | g_types);
  List_Of_HiddenCst_Ids(Machine(g_types)) == (SBOOL,Convert_Bool | ?);
  List_Of_VisibleCst_Ids(Machine(g_types)) == (uint32_t,uint16_t,uint8_t,STRUE,SFALSE,MAX_UINT32,MAX_UINT16,MAX_UINT8);
  List_Of_VisibleVar_Ids(Machine(g_types)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(g_types)) == (?: ?)
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(user_ctx)) == (Type(SimBCMonitor_cycle_def) == Cst(btype(INTEGER,?,?));Type(cycle_unit) == Cst(btype(INTEGER,?,?));Type(st_READ_INPUTS) == Cst(btype(INTEGER,?,?));Type(st_STATE_MACHINE_CYCLE) == Cst(btype(INTEGER,?,?));Type(st_WRITE_OUTPUTS) == Cst(btype(INTEGER,?,?));Type(st_TIME) == Cst(btype(INTEGER,?,?));Type(INIT) == Cst(btype(INTEGER,?,?));Type(EXEC_1) == Cst(btype(INTEGER,?,?));Type(EXEC_2) == Cst(btype(INTEGER,?,?));Type(EXEC_3) == Cst(btype(INTEGER,?,?));Type(PATTERN) == Cst(btype(BOOL,?,?));Type(TIMEOUT) == Cst(btype(INTEGER,?,?)))
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
)
