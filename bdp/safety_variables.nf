Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(safety_variables))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(safety_variables))==(Machine(safety_variables));
  Level(Machine(safety_variables))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(safety_variables)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(safety_variables))==(g_types)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(safety_variables))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(safety_variables))==(?);
  List_Includes(Machine(safety_variables))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(safety_variables))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(safety_variables))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(safety_variables))==(?);
  Context_List_Variables(Machine(safety_variables))==(?);
  Abstract_List_Variables(Machine(safety_variables))==(?);
  Local_List_Variables(Machine(safety_variables))==(?);
  List_Variables(Machine(safety_variables))==(?);
  External_List_Variables(Machine(safety_variables))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(safety_variables))==(?);
  Abstract_List_VisibleVariables(Machine(safety_variables))==(?);
  External_List_VisibleVariables(Machine(safety_variables))==(?);
  Expanded_List_VisibleVariables(Machine(safety_variables))==(?);
  List_VisibleVariables(Machine(safety_variables))==(safety_variables_array);
  Internal_List_VisibleVariables(Machine(safety_variables))==(safety_variables_array)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(safety_variables))==(btrue);
  Gluing_List_Invariant(Machine(safety_variables))==(btrue);
  Expanded_List_Invariant(Machine(safety_variables))==(btrue);
  Abstract_List_Invariant(Machine(safety_variables))==(btrue);
  Context_List_Invariant(Machine(safety_variables))==(btrue);
  List_Invariant(Machine(safety_variables))==(safety_variables_array: 0..struct_safety_variables_size_minus_1 --> uint8_t)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(safety_variables))==(btrue);
  Abstract_List_Assertions(Machine(safety_variables))==(btrue);
  Context_List_Assertions(Machine(safety_variables))==(Convert_Bool: BOOL +-> uint8_t & Convert_Bool: BOOL +-> uint16_t & Convert_Bool: BOOL +-> uint32_t);
  List_Assertions(Machine(safety_variables))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(safety_variables))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(safety_variables))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(safety_variables))==(@(safety_variables_array$0).(safety_variables_array$0: 0..struct_safety_variables_size_minus_1 --> uint8_t ==> safety_variables_array:=safety_variables_array$0));
  Context_List_Initialisation(Machine(safety_variables))==(skip);
  List_Initialisation(Machine(safety_variables))==(safety_variables_array:: 0..struct_safety_variables_size_minus_1 --> uint8_t)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(safety_variables))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(safety_variables),Machine(g_types))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(safety_variables))==(btrue);
  List_Constraints(Machine(safety_variables))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(safety_variables))==(?);
  List_Operations(Machine(safety_variables))==(?)
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
  List_Valuable_Constants(Machine(safety_variables))==(struct_safety_variables_size_minus_1);
  Inherited_List_Constants(Machine(safety_variables))==(?);
  List_Constants(Machine(safety_variables))==(struct_safety_variables_size_minus_1)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(safety_variables))==(?);
  Context_List_Defered(Machine(safety_variables))==(?);
  Context_List_Sets(Machine(safety_variables))==(?);
  List_Valuable_Sets(Machine(safety_variables))==(?);
  Inherited_List_Enumerated(Machine(safety_variables))==(?);
  Inherited_List_Defered(Machine(safety_variables))==(?);
  Inherited_List_Sets(Machine(safety_variables))==(?);
  List_Enumerated(Machine(safety_variables))==(?);
  List_Defered(Machine(safety_variables))==(?);
  List_Sets(Machine(safety_variables))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(safety_variables))==(?);
  Expanded_List_HiddenConstants(Machine(safety_variables))==(?);
  List_HiddenConstants(Machine(safety_variables))==(?);
  External_List_HiddenConstants(Machine(safety_variables))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(safety_variables))==(btrue);
  Context_List_Properties(Machine(safety_variables))==(uint32_t = 0..4294967295 & uint16_t = 0..65535 & uint8_t = 0..255 & STRUE: uint8_t & SFALSE: uint8_t & MAX_UINT32: uint32_t & MAX_UINT16: uint16_t & MAX_UINT8: uint8_t & STRUE: 0..MAX_UINT8 & SFALSE: 0..MAX_UINT8 & STRUE/=SFALSE & SBOOL = {STRUE,SFALSE} & STRUE<=2 & SFALSE<=2 & MAX_UINT32 = 4294967295 & MAX_UINT16 = 65535 & MAX_UINT8 = 255 & Convert_Bool = {TRUE|->STRUE,FALSE|->SFALSE});
  Inherited_List_Properties(Machine(safety_variables))==(btrue);
  List_Properties(Machine(safety_variables))==(struct_safety_variables_size_minus_1: uint32_t & struct_safety_variables_size_minus_1<MAX_UINT32)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(safety_variables),Machine(g_types))==(?);
  Seen_Context_List_Enumerated(Machine(safety_variables))==(?);
  Seen_Context_List_Invariant(Machine(safety_variables))==(btrue);
  Seen_Context_List_Assertions(Machine(safety_variables))==(btrue);
  Seen_Context_List_Properties(Machine(safety_variables))==(btrue);
  Seen_List_Constraints(Machine(safety_variables))==(btrue);
  Seen_List_Operations(Machine(safety_variables),Machine(g_types))==(?);
  Seen_Expanded_List_Invariant(Machine(safety_variables),Machine(g_types))==(btrue)
END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(safety_variables)) == (struct_safety_variables_size_minus_1 | ? | ? | ? | ? | ? | seen(Machine(g_types)) | ? | safety_variables);
  List_Of_HiddenCst_Ids(Machine(safety_variables)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(safety_variables)) == (struct_safety_variables_size_minus_1);
  List_Of_VisibleVar_Ids(Machine(safety_variables)) == (safety_variables_array | ?);
  List_Of_Ids_SeenBNU(Machine(safety_variables)) == (?: ?);
  List_Of_Ids(Machine(g_types)) == (uint32_t,uint16_t,uint8_t,STRUE,SFALSE,MAX_UINT32,MAX_UINT16,MAX_UINT8 | ? | ? | ? | ? | ? | ? | ? | g_types);
  List_Of_HiddenCst_Ids(Machine(g_types)) == (SBOOL,Convert_Bool | ?);
  List_Of_VisibleCst_Ids(Machine(g_types)) == (uint32_t,uint16_t,uint8_t,STRUE,SFALSE,MAX_UINT32,MAX_UINT16,MAX_UINT8);
  List_Of_VisibleVar_Ids(Machine(g_types)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(g_types)) == (?: ?)
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(safety_variables)) == (Type(struct_safety_variables_size_minus_1) == Cst(btype(INTEGER,?,?)))
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Machine(safety_variables)) == (Type(safety_variables_array) == Mvv(SetOf(btype(INTEGER,0,struct_safety_variables_size_minus_1)*btype(INTEGER,"[uint8_t","]uint8_t"))))
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
