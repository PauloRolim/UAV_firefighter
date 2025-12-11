Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(g_types_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(g_types_i))==(Machine(g_types));
  Level(Implementation(g_types_i))==(1);
  Upper_Level(Implementation(g_types_i))==(Machine(g_types))
END
&
THEORY LoadedStructureX IS
  Implementation(g_types_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(g_types_i))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(g_types_i))==(g_standard_types);
  Inherited_List_Includes(Implementation(g_types_i))==(g_standard_types)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(g_types_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(g_types_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(g_types_i))==(?);
  Context_List_Variables(Implementation(g_types_i))==(?);
  Abstract_List_Variables(Implementation(g_types_i))==(?);
  Local_List_Variables(Implementation(g_types_i))==(?);
  List_Variables(Implementation(g_types_i))==(?);
  External_List_Variables(Implementation(g_types_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(g_types_i))==(?);
  Abstract_List_VisibleVariables(Implementation(g_types_i))==(?);
  External_List_VisibleVariables(Implementation(g_types_i))==(?);
  Expanded_List_VisibleVariables(Implementation(g_types_i))==(?);
  List_VisibleVariables(Implementation(g_types_i))==(?);
  Internal_List_VisibleVariables(Implementation(g_types_i))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(g_types_i))==(btrue);
  Abstract_List_Invariant(Implementation(g_types_i))==(btrue);
  Expanded_List_Invariant(Implementation(g_types_i))==(btrue);
  Context_List_Invariant(Implementation(g_types_i))==(btrue);
  List_Invariant(Implementation(g_types_i))==(btrue)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Implementation(g_types_i))==(Convert_Bool: BOOL +-> uint8_t & Convert_Bool: BOOL +-> uint16_t & Convert_Bool: BOOL +-> uint32_t);
  Expanded_List_Assertions(Implementation(g_types_i))==(btrue);
  Context_List_Assertions(Implementation(g_types_i))==(btrue);
  List_Assertions(Implementation(g_types_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(g_types_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(g_types_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(g_types_i))==(skip);
  Context_List_Initialisation(Implementation(g_types_i))==(skip);
  List_Initialisation(Implementation(g_types_i))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(g_types_i))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Implementation(g_types_i),Machine(g_standard_types))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(g_types_i),Machine(g_standard_types))==(btrue);
  List_Constraints(Implementation(g_types_i))==(btrue);
  List_Context_Constraints(Implementation(g_types_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(g_types_i))==(?);
  List_Operations(Implementation(g_types_i))==(?)
END
&
THEORY ListInputX END
&
THEORY ListOutputX END
&
THEORY ListHeaderX END
&
THEORY ListPreconditionX END
&
THEORY ListSubstitutionX END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(g_types_i))==(uint32_t,uint16_t,uint8_t,STRUE,SFALSE,MAX_UINT32,MAX_UINT16,MAX_UINT8);
  Inherited_List_Constants(Implementation(g_types_i))==(uint32_t,uint16_t,uint8_t,STRUE,SFALSE,MAX_UINT32,MAX_UINT16,MAX_UINT8);
  List_Constants(Implementation(g_types_i))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(g_types_i))==(?);
  Context_List_Defered(Implementation(g_types_i))==(?);
  Context_List_Sets(Implementation(g_types_i))==(?);
  List_Own_Enumerated(Implementation(g_types_i))==(?);
  List_Valuable_Sets(Implementation(g_types_i))==(?);
  Inherited_List_Enumerated(Implementation(g_types_i))==(?);
  Inherited_List_Defered(Implementation(g_types_i))==(?);
  Inherited_List_Sets(Implementation(g_types_i))==(?);
  List_Enumerated(Implementation(g_types_i))==(?);
  List_Defered(Implementation(g_types_i))==(?);
  List_Sets(Implementation(g_types_i))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(g_types_i))==(SBOOL,Convert_Bool);
  Expanded_List_HiddenConstants(Implementation(g_types_i))==(?);
  List_HiddenConstants(Implementation(g_types_i))==(?);
  External_List_HiddenConstants(Implementation(g_types_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(g_types_i))==(uint32_t = 0..4294967295 & uint16_t = 0..65535 & uint8_t = 0..255 & STRUE: uint8_t & SFALSE: uint8_t & MAX_UINT32: uint32_t & MAX_UINT16: uint16_t & MAX_UINT8: uint8_t & STRUE: 0..MAX_UINT8 & SFALSE: 0..MAX_UINT8 & STRUE/=SFALSE & SBOOL = {STRUE,SFALSE} & STRUE<=2 & SFALSE<=2 & MAX_UINT32 = 4294967295 & MAX_UINT16 = 65535 & MAX_UINT8 = 255 & Convert_Bool = {TRUE|->STRUE,FALSE|->SFALSE});
  Context_List_Properties(Implementation(g_types_i))==(btrue);
  Inherited_List_Properties(Implementation(g_types_i))==(uint32_t = 0..4294967295 & uint16_t = 0..65535 & uint8_t = 0..255);
  List_Properties(Implementation(g_types_i))==(btrue)
END
&
THEORY ListValuesX IS
  Precond_Valued_Objects(Implementation(g_types_i))==(btrue);
  Values_Subs(Implementation(g_types_i))==(STRUE,SFALSE,MAX_UINT32,MAX_UINT16,MAX_UINT8: 2,1,4294967295,65535,255);
  List_Values(Implementation(g_types_i))==(STRUE = 2;SFALSE = 1;MAX_UINT32 = 4294967295;MAX_UINT16 = 65535;MAX_UINT8 = 255)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  Constants(Implementation(g_types_i))==(Type(uint32_t) == Cst(SetOf(btype(INTEGER,"[uint32_t","]uint32_t")));Type(uint16_t) == Cst(SetOf(btype(INTEGER,"[uint16_t","]uint16_t")));Type(uint8_t) == Cst(SetOf(btype(INTEGER,"[uint8_t","]uint8_t")));Type(STRUE) == Cst(btype(INTEGER,?,?));Type(SFALSE) == Cst(btype(INTEGER,?,?));Type(MAX_UINT32) == Cst(btype(INTEGER,?,?));Type(MAX_UINT16) == Cst(btype(INTEGER,?,?));Type(MAX_UINT8) == Cst(btype(INTEGER,?,?)))
END
&
THEORY ListVisibleStaticX IS
  List_Constants(Implementation(g_types_i),Machine(g_standard_types))==(uint32_t,uint16_t,uint8_t);
  List_Constants_Env(Implementation(g_types_i),Machine(g_standard_types))==(Type(uint32_t) == Cst(SetOf(btype(INTEGER,"[uint32_t","]uint32_t")));Type(uint16_t) == Cst(SetOf(btype(INTEGER,"[uint16_t","]uint16_t")));Type(uint8_t) == Cst(SetOf(btype(INTEGER,"[uint8_t","]uint8_t"))))
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(g_types_i)) == (? | uint32_t,uint16_t,uint8_t | ? | ? | ? | ? | imported(Machine(g_standard_types)) | ? | g_types_i);
  List_Of_HiddenCst_Ids(Implementation(g_types_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(g_types_i)) == (uint32_t,uint16_t,uint8_t);
  List_Of_VisibleVar_Ids(Implementation(g_types_i)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(g_types_i)) == (?: ?);
  List_Of_Ids(Machine(g_standard_types)) == (uint32_t,uint16_t,uint8_t | ? | ? | ? | ? | ? | ? | ? | g_standard_types);
  List_Of_HiddenCst_Ids(Machine(g_standard_types)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(g_standard_types)) == (uint32_t,uint16_t,uint8_t);
  List_Of_VisibleVar_Ids(Machine(g_standard_types)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(g_standard_types)) == (?: ?)
END
&
THEORY ConstantsEnvX IS
  Constants(Implementation(g_types_i)) == (Type(uint8_t) == Cst(SetOf(btype(INTEGER,"[uint8_t","]uint8_t")));Type(uint16_t) == Cst(SetOf(btype(INTEGER,"[uint16_t","]uint16_t")));Type(uint32_t) == Cst(SetOf(btype(INTEGER,"[uint32_t","]uint32_t")));Type(MAX_UINT8) == Cst(btype(INTEGER,?,?));Type(MAX_UINT16) == Cst(btype(INTEGER,?,?));Type(MAX_UINT32) == Cst(btype(INTEGER,?,?));Type(SFALSE) == Cst(btype(INTEGER,?,?));Type(STRUE) == Cst(btype(INTEGER,?,?));Type(uint8_t) == Cst(SetOf(btype(INTEGER,"[uint8_t","]uint8_t")));Type(uint16_t) == Cst(SetOf(btype(INTEGER,"[uint16_t","]uint16_t")));Type(uint32_t) == Cst(SetOf(btype(INTEGER,"[uint32_t","]uint32_t"))))
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
  List_Local_Operations(Implementation(g_types_i))==(?)
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
  TypingPredicate(Implementation(g_types_i))==(btrue)
END
&
THEORY ImportedVariablesListX IS
  ImportedVariablesList(Implementation(g_types_i),Machine(g_standard_types))==(?);
  ImportedVisVariablesList(Implementation(g_types_i),Machine(g_standard_types))==(?)
END
&
THEORY ListLocalOpInvariantX END
)
