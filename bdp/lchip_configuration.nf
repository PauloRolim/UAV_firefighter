Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(lchip_configuration))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(lchip_configuration))==(Machine(lchip_configuration));
  Level(Machine(lchip_configuration))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(lchip_configuration)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(lchip_configuration))==(g_types)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(lchip_configuration))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(lchip_configuration))==(?);
  List_Includes(Machine(lchip_configuration))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(lchip_configuration))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(lchip_configuration))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(lchip_configuration))==(?);
  Context_List_Variables(Machine(lchip_configuration))==(?);
  Abstract_List_Variables(Machine(lchip_configuration))==(?);
  Local_List_Variables(Machine(lchip_configuration))==(?);
  List_Variables(Machine(lchip_configuration))==(?);
  External_List_Variables(Machine(lchip_configuration))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(lchip_configuration))==(?);
  Abstract_List_VisibleVariables(Machine(lchip_configuration))==(?);
  External_List_VisibleVariables(Machine(lchip_configuration))==(?);
  Expanded_List_VisibleVariables(Machine(lchip_configuration))==(?);
  List_VisibleVariables(Machine(lchip_configuration))==(?);
  Internal_List_VisibleVariables(Machine(lchip_configuration))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(lchip_configuration))==(btrue);
  Gluing_List_Invariant(Machine(lchip_configuration))==(btrue);
  Expanded_List_Invariant(Machine(lchip_configuration))==(btrue);
  Abstract_List_Invariant(Machine(lchip_configuration))==(btrue);
  Context_List_Invariant(Machine(lchip_configuration))==(btrue);
  List_Invariant(Machine(lchip_configuration))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(lchip_configuration))==(btrue);
  Abstract_List_Assertions(Machine(lchip_configuration))==(btrue);
  Context_List_Assertions(Machine(lchip_configuration))==(Convert_Bool: BOOL +-> uint8_t & Convert_Bool: BOOL +-> uint16_t & Convert_Bool: BOOL +-> uint32_t);
  List_Assertions(Machine(lchip_configuration))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(lchip_configuration))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(lchip_configuration))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(lchip_configuration))==(skip);
  Context_List_Initialisation(Machine(lchip_configuration))==(skip);
  List_Initialisation(Machine(lchip_configuration))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(lchip_configuration))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(lchip_configuration),Machine(g_types))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(lchip_configuration))==(btrue);
  List_Constraints(Machine(lchip_configuration))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(lchip_configuration))==(?);
  List_Operations(Machine(lchip_configuration))==(?)
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
  List_Valuable_Constants(Machine(lchip_configuration))==(MAX_NB_MODULES,MAX_NB_INPUTS,MAX_NB_OUTPUTS);
  Inherited_List_Constants(Machine(lchip_configuration))==(?);
  List_Constants(Machine(lchip_configuration))==(MAX_NB_MODULES,MAX_NB_INPUTS,MAX_NB_OUTPUTS)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(lchip_configuration))==(?);
  Context_List_Defered(Machine(lchip_configuration))==(?);
  Context_List_Sets(Machine(lchip_configuration))==(?);
  List_Valuable_Sets(Machine(lchip_configuration))==(?);
  Inherited_List_Enumerated(Machine(lchip_configuration))==(?);
  Inherited_List_Defered(Machine(lchip_configuration))==(?);
  Inherited_List_Sets(Machine(lchip_configuration))==(?);
  List_Enumerated(Machine(lchip_configuration))==(?);
  List_Defered(Machine(lchip_configuration))==(?);
  List_Sets(Machine(lchip_configuration))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(lchip_configuration))==(?);
  Expanded_List_HiddenConstants(Machine(lchip_configuration))==(?);
  List_HiddenConstants(Machine(lchip_configuration))==(?);
  External_List_HiddenConstants(Machine(lchip_configuration))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(lchip_configuration))==(btrue);
  Context_List_Properties(Machine(lchip_configuration))==(uint32_t = 0..4294967295 & uint16_t = 0..65535 & uint8_t = 0..255 & STRUE: uint8_t & SFALSE: uint8_t & MAX_UINT32: uint32_t & MAX_UINT16: uint16_t & MAX_UINT8: uint8_t & STRUE: 0..MAX_UINT8 & SFALSE: 0..MAX_UINT8 & STRUE/=SFALSE & SBOOL = {STRUE,SFALSE} & STRUE<=2 & SFALSE<=2 & MAX_UINT32 = 4294967295 & MAX_UINT16 = 65535 & MAX_UINT8 = 255 & Convert_Bool = {TRUE|->STRUE,FALSE|->SFALSE});
  Inherited_List_Properties(Machine(lchip_configuration))==(btrue);
  List_Properties(Machine(lchip_configuration))==(MAX_NB_MODULES: uint8_t & MAX_NB_INPUTS: uint8_t & MAX_NB_OUTPUTS: uint8_t & MAX_NB_MODULES = 1 & MAX_NB_INPUTS = 3 & MAX_NB_OUTPUTS = 2)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(lchip_configuration),Machine(g_types))==(?);
  Seen_Context_List_Enumerated(Machine(lchip_configuration))==(?);
  Seen_Context_List_Invariant(Machine(lchip_configuration))==(btrue);
  Seen_Context_List_Assertions(Machine(lchip_configuration))==(btrue);
  Seen_Context_List_Properties(Machine(lchip_configuration))==(btrue);
  Seen_List_Constraints(Machine(lchip_configuration))==(btrue);
  Seen_List_Operations(Machine(lchip_configuration),Machine(g_types))==(?);
  Seen_Expanded_List_Invariant(Machine(lchip_configuration),Machine(g_types))==(btrue)
END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(lchip_configuration)) == (MAX_NB_MODULES,MAX_NB_INPUTS,MAX_NB_OUTPUTS | ? | ? | ? | ? | ? | seen(Machine(g_types)) | ? | lchip_configuration);
  List_Of_HiddenCst_Ids(Machine(lchip_configuration)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(lchip_configuration)) == (MAX_NB_MODULES,MAX_NB_INPUTS,MAX_NB_OUTPUTS);
  List_Of_VisibleVar_Ids(Machine(lchip_configuration)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(lchip_configuration)) == (?: ?);
  List_Of_Ids(Machine(g_types)) == (uint32_t,uint16_t,uint8_t,STRUE,SFALSE,MAX_UINT32,MAX_UINT16,MAX_UINT8 | ? | ? | ? | ? | ? | ? | ? | g_types);
  List_Of_HiddenCst_Ids(Machine(g_types)) == (SBOOL,Convert_Bool | ?);
  List_Of_VisibleCst_Ids(Machine(g_types)) == (uint32_t,uint16_t,uint8_t,STRUE,SFALSE,MAX_UINT32,MAX_UINT16,MAX_UINT8);
  List_Of_VisibleVar_Ids(Machine(g_types)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(g_types)) == (?: ?)
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(lchip_configuration)) == (Type(MAX_NB_MODULES) == Cst(btype(INTEGER,?,?));Type(MAX_NB_INPUTS) == Cst(btype(INTEGER,?,?));Type(MAX_NB_OUTPUTS) == Cst(btype(INTEGER,?,?)))
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
