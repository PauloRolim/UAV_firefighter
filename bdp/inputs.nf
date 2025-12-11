Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(inputs))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(inputs))==(Machine(inputs));
  Level(Machine(inputs))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(inputs)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(inputs))==(g_types)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(inputs))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(inputs))==(?);
  List_Includes(Machine(inputs))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(inputs))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(inputs))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(inputs))==(?);
  Context_List_Variables(Machine(inputs))==(?);
  Abstract_List_Variables(Machine(inputs))==(?);
  Local_List_Variables(Machine(inputs))==(board_0_I3,board_0_I2,board_0_I1);
  List_Variables(Machine(inputs))==(board_0_I3,board_0_I2,board_0_I1);
  External_List_Variables(Machine(inputs))==(board_0_I3,board_0_I2,board_0_I1)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(inputs))==(?);
  Abstract_List_VisibleVariables(Machine(inputs))==(?);
  External_List_VisibleVariables(Machine(inputs))==(?);
  Expanded_List_VisibleVariables(Machine(inputs))==(?);
  List_VisibleVariables(Machine(inputs))==(?);
  Internal_List_VisibleVariables(Machine(inputs))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(inputs))==(btrue);
  Gluing_List_Invariant(Machine(inputs))==(btrue);
  Expanded_List_Invariant(Machine(inputs))==(btrue);
  Abstract_List_Invariant(Machine(inputs))==(btrue);
  Context_List_Invariant(Machine(inputs))==(btrue);
  List_Invariant(Machine(inputs))==(board_0_I1: uint8_t & board_0_I2: uint8_t & board_0_I3: uint8_t)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(inputs))==(btrue);
  Abstract_List_Assertions(Machine(inputs))==(btrue);
  Context_List_Assertions(Machine(inputs))==(Convert_Bool: BOOL +-> uint8_t & Convert_Bool: BOOL +-> uint16_t & Convert_Bool: BOOL +-> uint32_t);
  List_Assertions(Machine(inputs))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(inputs))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(inputs))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(inputs))==(@(board_0_I1$0).(board_0_I1$0: uint8_t ==> board_0_I1:=board_0_I1$0) || @(board_0_I2$0).(board_0_I2$0: uint8_t ==> board_0_I2:=board_0_I2$0) || @(board_0_I3$0).(board_0_I3$0: uint8_t ==> board_0_I3:=board_0_I3$0));
  Context_List_Initialisation(Machine(inputs))==(skip);
  List_Initialisation(Machine(inputs))==(board_0_I1:: uint8_t || board_0_I2:: uint8_t || board_0_I3:: uint8_t)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(inputs))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(inputs),Machine(g_types))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(inputs))==(btrue);
  List_Constraints(Machine(inputs))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(inputs))==(read_inputs,get_board_0_I1,get_board_0_I2,get_board_0_I3);
  List_Operations(Machine(inputs))==(read_inputs,get_board_0_I1,get_board_0_I2,get_board_0_I3)
END
&
THEORY ListInputX IS
  List_Input(Machine(inputs),read_inputs)==(?);
  List_Input(Machine(inputs),get_board_0_I1)==(?);
  List_Input(Machine(inputs),get_board_0_I2)==(?);
  List_Input(Machine(inputs),get_board_0_I3)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(inputs),read_inputs)==(?);
  List_Output(Machine(inputs),get_board_0_I1)==(po);
  List_Output(Machine(inputs),get_board_0_I2)==(po);
  List_Output(Machine(inputs),get_board_0_I3)==(po)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(inputs),read_inputs)==(read_inputs);
  List_Header(Machine(inputs),get_board_0_I1)==(po <-- get_board_0_I1);
  List_Header(Machine(inputs),get_board_0_I2)==(po <-- get_board_0_I2);
  List_Header(Machine(inputs),get_board_0_I3)==(po <-- get_board_0_I3)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(inputs),read_inputs)==(btrue);
  List_Precondition(Machine(inputs),get_board_0_I1)==(po: uint8_t);
  List_Precondition(Machine(inputs),get_board_0_I2)==(po: uint8_t);
  List_Precondition(Machine(inputs),get_board_0_I3)==(po: uint8_t)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(inputs),get_board_0_I3)==(po: uint8_t | po:=board_0_I3);
  Expanded_List_Substitution(Machine(inputs),get_board_0_I2)==(po: uint8_t | po:=board_0_I2);
  Expanded_List_Substitution(Machine(inputs),get_board_0_I1)==(po: uint8_t | po:=board_0_I1);
  Expanded_List_Substitution(Machine(inputs),read_inputs)==(btrue | @(board_0_I1$0).(board_0_I1$0: uint8_t ==> board_0_I1:=board_0_I1$0) || @(board_0_I2$0).(board_0_I2$0: uint8_t ==> board_0_I2:=board_0_I2$0) || @(board_0_I3$0).(board_0_I3$0: uint8_t ==> board_0_I3:=board_0_I3$0));
  List_Substitution(Machine(inputs),read_inputs)==(board_0_I1:: uint8_t || board_0_I2:: uint8_t || board_0_I3:: uint8_t);
  List_Substitution(Machine(inputs),get_board_0_I1)==(po:=board_0_I1);
  List_Substitution(Machine(inputs),get_board_0_I2)==(po:=board_0_I2);
  List_Substitution(Machine(inputs),get_board_0_I3)==(po:=board_0_I3)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(inputs))==(?);
  Inherited_List_Constants(Machine(inputs))==(?);
  List_Constants(Machine(inputs))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(inputs))==(?);
  Context_List_Defered(Machine(inputs))==(?);
  Context_List_Sets(Machine(inputs))==(?);
  List_Valuable_Sets(Machine(inputs))==(?);
  Inherited_List_Enumerated(Machine(inputs))==(?);
  Inherited_List_Defered(Machine(inputs))==(?);
  Inherited_List_Sets(Machine(inputs))==(?);
  List_Enumerated(Machine(inputs))==(?);
  List_Defered(Machine(inputs))==(?);
  List_Sets(Machine(inputs))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(inputs))==(?);
  Expanded_List_HiddenConstants(Machine(inputs))==(?);
  List_HiddenConstants(Machine(inputs))==(?);
  External_List_HiddenConstants(Machine(inputs))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(inputs))==(btrue);
  Context_List_Properties(Machine(inputs))==(uint32_t = 0..4294967295 & uint16_t = 0..65535 & uint8_t = 0..255 & STRUE: uint8_t & SFALSE: uint8_t & MAX_UINT32: uint32_t & MAX_UINT16: uint16_t & MAX_UINT8: uint8_t & STRUE: 0..MAX_UINT8 & SFALSE: 0..MAX_UINT8 & STRUE/=SFALSE & SBOOL = {STRUE,SFALSE} & STRUE<=2 & SFALSE<=2 & MAX_UINT32 = 4294967295 & MAX_UINT16 = 65535 & MAX_UINT8 = 255 & Convert_Bool = {TRUE|->STRUE,FALSE|->SFALSE});
  Inherited_List_Properties(Machine(inputs))==(btrue);
  List_Properties(Machine(inputs))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(inputs),Machine(g_types))==(?);
  Seen_Context_List_Enumerated(Machine(inputs))==(?);
  Seen_Context_List_Invariant(Machine(inputs))==(btrue);
  Seen_Context_List_Assertions(Machine(inputs))==(btrue);
  Seen_Context_List_Properties(Machine(inputs))==(btrue);
  Seen_List_Constraints(Machine(inputs))==(btrue);
  Seen_List_Operations(Machine(inputs),Machine(g_types))==(?);
  Seen_Expanded_List_Invariant(Machine(inputs),Machine(g_types))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(inputs),read_inputs)==(?);
  List_ANY_Var(Machine(inputs),get_board_0_I1)==(?);
  List_ANY_Var(Machine(inputs),get_board_0_I2)==(?);
  List_ANY_Var(Machine(inputs),get_board_0_I3)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(inputs)) == (? | ? | board_0_I3,board_0_I2,board_0_I1 | ? | read_inputs,get_board_0_I1,get_board_0_I2,get_board_0_I3 | ? | seen(Machine(g_types)) | ? | inputs);
  List_Of_HiddenCst_Ids(Machine(inputs)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(inputs)) == (?);
  List_Of_VisibleVar_Ids(Machine(inputs)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(inputs)) == (?: ?);
  List_Of_Ids(Machine(g_types)) == (uint32_t,uint16_t,uint8_t,STRUE,SFALSE,MAX_UINT32,MAX_UINT16,MAX_UINT8 | ? | ? | ? | ? | ? | ? | ? | g_types);
  List_Of_HiddenCst_Ids(Machine(g_types)) == (SBOOL,Convert_Bool | ?);
  List_Of_VisibleCst_Ids(Machine(g_types)) == (uint32_t,uint16_t,uint8_t,STRUE,SFALSE,MAX_UINT32,MAX_UINT16,MAX_UINT8);
  List_Of_VisibleVar_Ids(Machine(g_types)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(g_types)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(inputs)) == (Type(board_0_I3) == Mvl(btype(INTEGER,?,?));Type(board_0_I2) == Mvl(btype(INTEGER,?,?));Type(board_0_I1) == Mvl(btype(INTEGER,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(inputs)) == (Type(get_board_0_I3) == Cst(btype(INTEGER,?,?),No_type);Type(get_board_0_I2) == Cst(btype(INTEGER,?,?),No_type);Type(get_board_0_I1) == Cst(btype(INTEGER,?,?),No_type);Type(read_inputs) == Cst(No_type,No_type));
  Observers(Machine(inputs)) == (Type(get_board_0_I3) == Cst(btype(INTEGER,?,?),No_type);Type(get_board_0_I2) == Cst(btype(INTEGER,?,?),No_type);Type(get_board_0_I1) == Cst(btype(INTEGER,?,?),No_type))
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
