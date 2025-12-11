Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(io_constants))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(io_constants))==(Machine(io_constants));
  Level(Machine(io_constants))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(io_constants)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(io_constants))==(g_types)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(io_constants))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(io_constants))==(?);
  List_Includes(Machine(io_constants))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(io_constants))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(io_constants))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(io_constants))==(?);
  Context_List_Variables(Machine(io_constants))==(?);
  Abstract_List_Variables(Machine(io_constants))==(?);
  Local_List_Variables(Machine(io_constants))==(?);
  List_Variables(Machine(io_constants))==(?);
  External_List_Variables(Machine(io_constants))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(io_constants))==(?);
  Abstract_List_VisibleVariables(Machine(io_constants))==(?);
  External_List_VisibleVariables(Machine(io_constants))==(?);
  Expanded_List_VisibleVariables(Machine(io_constants))==(?);
  List_VisibleVariables(Machine(io_constants))==(?);
  Internal_List_VisibleVariables(Machine(io_constants))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(io_constants))==(btrue);
  Gluing_List_Invariant(Machine(io_constants))==(btrue);
  Expanded_List_Invariant(Machine(io_constants))==(btrue);
  Abstract_List_Invariant(Machine(io_constants))==(btrue);
  Context_List_Invariant(Machine(io_constants))==(btrue);
  List_Invariant(Machine(io_constants))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(io_constants))==(btrue);
  Abstract_List_Assertions(Machine(io_constants))==(btrue);
  Context_List_Assertions(Machine(io_constants))==(Convert_Bool: BOOL +-> uint8_t & Convert_Bool: BOOL +-> uint16_t & Convert_Bool: BOOL +-> uint32_t);
  List_Assertions(Machine(io_constants))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(io_constants))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(io_constants))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(io_constants))==(skip);
  Context_List_Initialisation(Machine(io_constants))==(skip);
  List_Initialisation(Machine(io_constants))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(io_constants))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(io_constants),Machine(g_types))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(io_constants))==(btrue);
  List_Constraints(Machine(io_constants))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(io_constants))==(?);
  List_Operations(Machine(io_constants))==(?)
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
  List_Valuable_Constants(Machine(io_constants))==(IO_ON,IO_OFF);
  Inherited_List_Constants(Machine(io_constants))==(?);
  List_Constants(Machine(io_constants))==(IO_ON,IO_OFF)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(io_constants))==(?);
  Context_List_Defered(Machine(io_constants))==(?);
  Context_List_Sets(Machine(io_constants))==(?);
  List_Valuable_Sets(Machine(io_constants))==(?);
  Inherited_List_Enumerated(Machine(io_constants))==(?);
  Inherited_List_Defered(Machine(io_constants))==(?);
  Inherited_List_Sets(Machine(io_constants))==(?);
  List_Enumerated(Machine(io_constants))==(?);
  List_Defered(Machine(io_constants))==(?);
  List_Sets(Machine(io_constants))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(io_constants))==(?);
  Expanded_List_HiddenConstants(Machine(io_constants))==(?);
  List_HiddenConstants(Machine(io_constants))==(IO_STATE,TIME);
  External_List_HiddenConstants(Machine(io_constants))==(IO_STATE,TIME)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(io_constants))==(btrue);
  Context_List_Properties(Machine(io_constants))==(uint32_t = 0..4294967295 & uint16_t = 0..65535 & uint8_t = 0..255 & STRUE: uint8_t & SFALSE: uint8_t & MAX_UINT32: uint32_t & MAX_UINT16: uint16_t & MAX_UINT8: uint8_t & STRUE: 0..MAX_UINT8 & SFALSE: 0..MAX_UINT8 & STRUE/=SFALSE & SBOOL = {STRUE,SFALSE} & STRUE<=2 & SFALSE<=2 & MAX_UINT32 = 4294967295 & MAX_UINT16 = 65535 & MAX_UINT8 = 255 & Convert_Bool = {TRUE|->STRUE,FALSE|->SFALSE});
  Inherited_List_Properties(Machine(io_constants))==(btrue);
  List_Properties(Machine(io_constants))==(TIME = uint32_t & IO_STATE = uint8_t & IO_ON: uint8_t & IO_OFF: uint8_t & IO_ON/=IO_OFF & IO_ON: IO_STATE & IO_OFF: IO_STATE)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(io_constants),Machine(g_types))==(?);
  Seen_Context_List_Enumerated(Machine(io_constants))==(?);
  Seen_Context_List_Invariant(Machine(io_constants))==(btrue);
  Seen_Context_List_Assertions(Machine(io_constants))==(btrue);
  Seen_Context_List_Properties(Machine(io_constants))==(btrue);
  Seen_List_Constraints(Machine(io_constants))==(btrue);
  Seen_List_Operations(Machine(io_constants),Machine(g_types))==(?);
  Seen_Expanded_List_Invariant(Machine(io_constants),Machine(g_types))==(btrue)
END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(io_constants)) == (IO_ON,IO_OFF | ? | ? | ? | ? | ? | seen(Machine(g_types)) | ? | io_constants);
  List_Of_HiddenCst_Ids(Machine(io_constants)) == (IO_STATE,TIME | ?);
  List_Of_VisibleCst_Ids(Machine(io_constants)) == (IO_ON,IO_OFF);
  List_Of_VisibleVar_Ids(Machine(io_constants)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(io_constants)) == (?: ?);
  List_Of_Ids(Machine(g_types)) == (uint32_t,uint16_t,uint8_t,STRUE,SFALSE,MAX_UINT32,MAX_UINT16,MAX_UINT8 | ? | ? | ? | ? | ? | ? | ? | g_types);
  List_Of_HiddenCst_Ids(Machine(g_types)) == (SBOOL,Convert_Bool | ?);
  List_Of_VisibleCst_Ids(Machine(g_types)) == (uint32_t,uint16_t,uint8_t,STRUE,SFALSE,MAX_UINT32,MAX_UINT16,MAX_UINT8);
  List_Of_VisibleVar_Ids(Machine(g_types)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(g_types)) == (?: ?)
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(io_constants)) == (Type(IO_ON) == Cst(btype(INTEGER,?,?));Type(IO_OFF) == Cst(btype(INTEGER,?,?)))
END
&
THEORY HiddenConstantsEnvX IS
  HiddenConstants(Machine(io_constants)) == (Type(IO_STATE) == HCst(SetOf(btype(INTEGER,"[uint8_t","]uint8_t")));Type(TIME) == HCst(SetOf(btype(INTEGER,"[uint32_t","]uint32_t"))))
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
