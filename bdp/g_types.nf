Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(g_types))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(g_types))==(Machine(g_types));
  Level(Machine(g_types))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(g_types)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(g_types))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(g_types))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(g_types))==(?);
  List_Includes(Machine(g_types))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(g_types))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(g_types))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(g_types))==(?);
  Context_List_Variables(Machine(g_types))==(?);
  Abstract_List_Variables(Machine(g_types))==(?);
  Local_List_Variables(Machine(g_types))==(?);
  List_Variables(Machine(g_types))==(?);
  External_List_Variables(Machine(g_types))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(g_types))==(?);
  Abstract_List_VisibleVariables(Machine(g_types))==(?);
  External_List_VisibleVariables(Machine(g_types))==(?);
  Expanded_List_VisibleVariables(Machine(g_types))==(?);
  List_VisibleVariables(Machine(g_types))==(?);
  Internal_List_VisibleVariables(Machine(g_types))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(g_types))==(btrue);
  Gluing_List_Invariant(Machine(g_types))==(btrue);
  Expanded_List_Invariant(Machine(g_types))==(btrue);
  Abstract_List_Invariant(Machine(g_types))==(btrue);
  Context_List_Invariant(Machine(g_types))==(btrue);
  List_Invariant(Machine(g_types))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(g_types))==(btrue);
  Abstract_List_Assertions(Machine(g_types))==(btrue);
  Context_List_Assertions(Machine(g_types))==(btrue);
  List_Assertions(Machine(g_types))==(Convert_Bool: BOOL +-> uint8_t & Convert_Bool: BOOL +-> uint16_t & Convert_Bool: BOOL +-> uint32_t)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(g_types))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(g_types))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(g_types))==(skip);
  Context_List_Initialisation(Machine(g_types))==(skip);
  List_Initialisation(Machine(g_types))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(g_types))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(g_types))==(btrue);
  List_Constraints(Machine(g_types))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(g_types))==(?);
  List_Operations(Machine(g_types))==(?)
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
  List_Valuable_Constants(Machine(g_types))==(uint32_t,uint16_t,uint8_t,STRUE,SFALSE,MAX_UINT32,MAX_UINT16,MAX_UINT8);
  Inherited_List_Constants(Machine(g_types))==(?);
  List_Constants(Machine(g_types))==(uint32_t,uint16_t,uint8_t,STRUE,SFALSE,MAX_UINT32,MAX_UINT16,MAX_UINT8)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(g_types))==(?);
  Context_List_Defered(Machine(g_types))==(?);
  Context_List_Sets(Machine(g_types))==(?);
  List_Valuable_Sets(Machine(g_types))==(?);
  Inherited_List_Enumerated(Machine(g_types))==(?);
  Inherited_List_Defered(Machine(g_types))==(?);
  Inherited_List_Sets(Machine(g_types))==(?);
  List_Enumerated(Machine(g_types))==(?);
  List_Defered(Machine(g_types))==(?);
  List_Sets(Machine(g_types))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(g_types))==(?);
  Expanded_List_HiddenConstants(Machine(g_types))==(?);
  List_HiddenConstants(Machine(g_types))==(SBOOL,Convert_Bool);
  External_List_HiddenConstants(Machine(g_types))==(SBOOL,Convert_Bool)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(g_types))==(btrue);
  Context_List_Properties(Machine(g_types))==(btrue);
  Inherited_List_Properties(Machine(g_types))==(btrue);
  List_Properties(Machine(g_types))==(uint32_t = 0..4294967295 & uint16_t = 0..65535 & uint8_t = 0..255 & STRUE: uint8_t & SFALSE: uint8_t & MAX_UINT32: uint32_t & MAX_UINT16: uint16_t & MAX_UINT8: uint8_t & STRUE: 0..MAX_UINT8 & SFALSE: 0..MAX_UINT8 & STRUE/=SFALSE & SBOOL = {STRUE,SFALSE} & STRUE<=2 & SFALSE<=2 & MAX_UINT32 = 4294967295 & MAX_UINT16 = 65535 & MAX_UINT8 = 255 & Convert_Bool = {TRUE|->STRUE,FALSE|->SFALSE})
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(g_types)) == (uint32_t,uint16_t,uint8_t,STRUE,SFALSE,MAX_UINT32,MAX_UINT16,MAX_UINT8 | ? | ? | ? | ? | ? | ? | ? | g_types);
  List_Of_HiddenCst_Ids(Machine(g_types)) == (SBOOL,Convert_Bool | ?);
  List_Of_VisibleCst_Ids(Machine(g_types)) == (uint32_t,uint16_t,uint8_t,STRUE,SFALSE,MAX_UINT32,MAX_UINT16,MAX_UINT8);
  List_Of_VisibleVar_Ids(Machine(g_types)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(g_types)) == (?: ?)
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(g_types)) == (Type(uint32_t) == Cst(SetOf(btype(INTEGER,"[uint32_t","]uint32_t")));Type(uint16_t) == Cst(SetOf(btype(INTEGER,"[uint16_t","]uint16_t")));Type(uint8_t) == Cst(SetOf(btype(INTEGER,"[uint8_t","]uint8_t")));Type(STRUE) == Cst(btype(INTEGER,?,?));Type(SFALSE) == Cst(btype(INTEGER,?,?));Type(MAX_UINT32) == Cst(btype(INTEGER,?,?));Type(MAX_UINT16) == Cst(btype(INTEGER,?,?));Type(MAX_UINT8) == Cst(btype(INTEGER,?,?)))
END
&
THEORY HiddenConstantsEnvX IS
  HiddenConstants(Machine(g_types)) == (Type(SBOOL) == HCst(SetOf(btype(INTEGER,?,?)));Type(Convert_Bool) == HCst(SetOf(btype(BOOL,0,1)*btype(INTEGER,?,?))))
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
