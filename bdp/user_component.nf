Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(user_component))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(user_component))==(Machine(user_component));
  Level(Machine(user_component))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(user_component)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(user_component))==(g_types)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(user_component))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(user_component))==(?);
  List_Includes(Machine(user_component))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(user_component))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(user_component))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(user_component))==(?);
  Context_List_Variables(Machine(user_component))==(?);
  Abstract_List_Variables(Machine(user_component))==(?);
  Local_List_Variables(Machine(user_component))==(?);
  List_Variables(Machine(user_component))==(?);
  External_List_Variables(Machine(user_component))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(user_component))==(?);
  Abstract_List_VisibleVariables(Machine(user_component))==(?);
  External_List_VisibleVariables(Machine(user_component))==(?);
  Expanded_List_VisibleVariables(Machine(user_component))==(?);
  List_VisibleVariables(Machine(user_component))==(?);
  Internal_List_VisibleVariables(Machine(user_component))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(user_component))==(btrue);
  Gluing_List_Invariant(Machine(user_component))==(btrue);
  Expanded_List_Invariant(Machine(user_component))==(btrue);
  Abstract_List_Invariant(Machine(user_component))==(btrue);
  Context_List_Invariant(Machine(user_component))==(btrue);
  List_Invariant(Machine(user_component))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(user_component))==(btrue);
  Abstract_List_Assertions(Machine(user_component))==(btrue);
  Context_List_Assertions(Machine(user_component))==(Convert_Bool: BOOL +-> uint8_t & Convert_Bool: BOOL +-> uint16_t & Convert_Bool: BOOL +-> uint32_t);
  List_Assertions(Machine(user_component))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(user_component))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(user_component))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(user_component))==(skip);
  Context_List_Initialisation(Machine(user_component))==(skip);
  List_Initialisation(Machine(user_component))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(user_component))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(user_component),Machine(g_types))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(user_component))==(btrue);
  List_Constraints(Machine(user_component))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(user_component))==(user_app,user_consistency_error_detection_test);
  List_Operations(Machine(user_component))==(user_app,user_consistency_error_detection_test)
END
&
THEORY ListInputX IS
  List_Input(Machine(user_component),user_app)==(?);
  List_Input(Machine(user_component),user_consistency_error_detection_test)==(divergence_value)
END
&
THEORY ListOutputX IS
  List_Output(Machine(user_component),user_app)==(?);
  List_Output(Machine(user_component),user_consistency_error_detection_test)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(user_component),user_app)==(user_app);
  List_Header(Machine(user_component),user_consistency_error_detection_test)==(user_consistency_error_detection_test(divergence_value))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(user_component),user_app)==(btrue);
  List_Precondition(Machine(user_component),user_consistency_error_detection_test)==(divergence_value: uint8_t)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(user_component),user_consistency_error_detection_test)==(divergence_value: uint8_t | skip);
  Expanded_List_Substitution(Machine(user_component),user_app)==(btrue | skip);
  List_Substitution(Machine(user_component),user_app)==(skip);
  List_Substitution(Machine(user_component),user_consistency_error_detection_test)==(skip)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(user_component))==(?);
  Inherited_List_Constants(Machine(user_component))==(?);
  List_Constants(Machine(user_component))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(user_component))==(?);
  Context_List_Defered(Machine(user_component))==(?);
  Context_List_Sets(Machine(user_component))==(?);
  List_Valuable_Sets(Machine(user_component))==(?);
  Inherited_List_Enumerated(Machine(user_component))==(?);
  Inherited_List_Defered(Machine(user_component))==(?);
  Inherited_List_Sets(Machine(user_component))==(?);
  List_Enumerated(Machine(user_component))==(?);
  List_Defered(Machine(user_component))==(?);
  List_Sets(Machine(user_component))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(user_component))==(?);
  Expanded_List_HiddenConstants(Machine(user_component))==(?);
  List_HiddenConstants(Machine(user_component))==(?);
  External_List_HiddenConstants(Machine(user_component))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(user_component))==(btrue);
  Context_List_Properties(Machine(user_component))==(uint32_t = 0..4294967295 & uint16_t = 0..65535 & uint8_t = 0..255 & STRUE: uint8_t & SFALSE: uint8_t & MAX_UINT32: uint32_t & MAX_UINT16: uint16_t & MAX_UINT8: uint8_t & STRUE: 0..MAX_UINT8 & SFALSE: 0..MAX_UINT8 & STRUE/=SFALSE & SBOOL = {STRUE,SFALSE} & STRUE<=2 & SFALSE<=2 & MAX_UINT32 = 4294967295 & MAX_UINT16 = 65535 & MAX_UINT8 = 255 & Convert_Bool = {TRUE|->STRUE,FALSE|->SFALSE});
  Inherited_List_Properties(Machine(user_component))==(btrue);
  List_Properties(Machine(user_component))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(user_component),Machine(g_types))==(?);
  Seen_Context_List_Enumerated(Machine(user_component))==(?);
  Seen_Context_List_Invariant(Machine(user_component))==(btrue);
  Seen_Context_List_Assertions(Machine(user_component))==(btrue);
  Seen_Context_List_Properties(Machine(user_component))==(btrue);
  Seen_List_Constraints(Machine(user_component))==(btrue);
  Seen_List_Operations(Machine(user_component),Machine(g_types))==(?);
  Seen_Expanded_List_Invariant(Machine(user_component),Machine(g_types))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(user_component),user_app)==(?);
  List_ANY_Var(Machine(user_component),user_consistency_error_detection_test)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(user_component)) == (? | ? | ? | ? | user_app,user_consistency_error_detection_test | ? | seen(Machine(g_types)) | ? | user_component);
  List_Of_HiddenCst_Ids(Machine(user_component)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(user_component)) == (?);
  List_Of_VisibleVar_Ids(Machine(user_component)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(user_component)) == (?: ?);
  List_Of_Ids(Machine(g_types)) == (uint32_t,uint16_t,uint8_t,STRUE,SFALSE,MAX_UINT32,MAX_UINT16,MAX_UINT8 | ? | ? | ? | ? | ? | ? | ? | g_types);
  List_Of_HiddenCst_Ids(Machine(g_types)) == (SBOOL,Convert_Bool | ?);
  List_Of_VisibleCst_Ids(Machine(g_types)) == (uint32_t,uint16_t,uint8_t,STRUE,SFALSE,MAX_UINT32,MAX_UINT16,MAX_UINT8);
  List_Of_VisibleVar_Ids(Machine(g_types)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(g_types)) == (?: ?)
END
&
THEORY OperationsEnvX IS
  Operations(Machine(user_component)) == (Type(user_consistency_error_detection_test) == Cst(No_type,btype(INTEGER,?,?));Type(user_app) == Cst(No_type,No_type));
  Observers(Machine(user_component)) == (Type(user_consistency_error_detection_test) == Cst(No_type,btype(INTEGER,?,?));Type(user_app) == Cst(No_type,No_type))
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
