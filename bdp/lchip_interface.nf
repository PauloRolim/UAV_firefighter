Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(lchip_interface))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(lchip_interface))==(Machine(lchip_interface));
  Level(Machine(lchip_interface))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(lchip_interface)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(lchip_interface))==(g_types,lchip_configuration)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(lchip_interface))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(lchip_interface))==(?);
  List_Includes(Machine(lchip_interface))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(lchip_interface))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(lchip_interface))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(lchip_interface))==(?);
  Context_List_Variables(Machine(lchip_interface))==(?);
  Abstract_List_Variables(Machine(lchip_interface))==(?);
  Local_List_Variables(Machine(lchip_interface))==(ms_tick);
  List_Variables(Machine(lchip_interface))==(ms_tick);
  External_List_Variables(Machine(lchip_interface))==(ms_tick)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(lchip_interface))==(?);
  Abstract_List_VisibleVariables(Machine(lchip_interface))==(?);
  External_List_VisibleVariables(Machine(lchip_interface))==(?);
  Expanded_List_VisibleVariables(Machine(lchip_interface))==(?);
  List_VisibleVariables(Machine(lchip_interface))==(?);
  Internal_List_VisibleVariables(Machine(lchip_interface))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(lchip_interface))==(btrue);
  Gluing_List_Invariant(Machine(lchip_interface))==(btrue);
  Expanded_List_Invariant(Machine(lchip_interface))==(btrue);
  Abstract_List_Invariant(Machine(lchip_interface))==(btrue);
  Context_List_Invariant(Machine(lchip_interface))==(btrue);
  List_Invariant(Machine(lchip_interface))==(ms_tick: uint32_t)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(lchip_interface))==(btrue);
  Abstract_List_Assertions(Machine(lchip_interface))==(btrue);
  Context_List_Assertions(Machine(lchip_interface))==(Convert_Bool: BOOL +-> uint8_t & Convert_Bool: BOOL +-> uint16_t & Convert_Bool: BOOL +-> uint32_t);
  List_Assertions(Machine(lchip_interface))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(lchip_interface))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(lchip_interface))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(lchip_interface))==(ms_tick:=0);
  Context_List_Initialisation(Machine(lchip_interface))==(skip);
  List_Initialisation(Machine(lchip_interface))==(ms_tick:=0)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(lchip_interface))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(lchip_interface),Machine(g_types))==(?);
  List_Instanciated_Parameters(Machine(lchip_interface),Machine(lchip_configuration))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(lchip_interface))==(btrue);
  List_Constraints(Machine(lchip_interface))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(lchip_interface))==(print_global_inputs,read_global_input,write_global_output,get_ms_tick,print_uint8);
  List_Operations(Machine(lchip_interface))==(print_global_inputs,read_global_input,write_global_output,get_ms_tick,print_uint8)
END
&
THEORY ListInputX IS
  List_Input(Machine(lchip_interface),print_global_inputs)==(?);
  List_Input(Machine(lchip_interface),read_global_input)==(input_id);
  List_Input(Machine(lchip_interface),write_global_output)==(output_id,state);
  List_Input(Machine(lchip_interface),get_ms_tick)==(?);
  List_Input(Machine(lchip_interface),print_uint8)==(tag,value)
END
&
THEORY ListOutputX IS
  List_Output(Machine(lchip_interface),print_global_inputs)==(?);
  List_Output(Machine(lchip_interface),read_global_input)==(state);
  List_Output(Machine(lchip_interface),write_global_output)==(?);
  List_Output(Machine(lchip_interface),get_ms_tick)==(out);
  List_Output(Machine(lchip_interface),print_uint8)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(lchip_interface),print_global_inputs)==(print_global_inputs);
  List_Header(Machine(lchip_interface),read_global_input)==(state <-- read_global_input(input_id));
  List_Header(Machine(lchip_interface),write_global_output)==(write_global_output(output_id,state));
  List_Header(Machine(lchip_interface),get_ms_tick)==(out <-- get_ms_tick);
  List_Header(Machine(lchip_interface),print_uint8)==(print_uint8(tag,value))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(lchip_interface),print_global_inputs)==(btrue);
  List_Precondition(Machine(lchip_interface),read_global_input)==(input_id: uint8_t & input_id<MAX_NB_INPUTS & state: uint8_t);
  List_Precondition(Machine(lchip_interface),write_global_output)==(output_id: uint8_t & output_id<MAX_NB_OUTPUTS & state: uint8_t);
  List_Precondition(Machine(lchip_interface),get_ms_tick)==(out: uint32_t);
  List_Precondition(Machine(lchip_interface),print_uint8)==(tag: uint8_t & value: uint8_t)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(lchip_interface),print_uint8)==(tag: uint8_t & value: uint8_t | skip);
  Expanded_List_Substitution(Machine(lchip_interface),get_ms_tick)==(out: uint32_t | out:=ms_tick);
  Expanded_List_Substitution(Machine(lchip_interface),write_global_output)==(output_id: uint8_t & output_id<MAX_NB_OUTPUTS & state: uint8_t | skip);
  Expanded_List_Substitution(Machine(lchip_interface),read_global_input)==(input_id: uint8_t & input_id<MAX_NB_INPUTS & state: uint8_t | @(state$0).(state$0: uint8_t ==> state:=state$0));
  Expanded_List_Substitution(Machine(lchip_interface),print_global_inputs)==(btrue | skip);
  List_Substitution(Machine(lchip_interface),print_global_inputs)==(skip);
  List_Substitution(Machine(lchip_interface),read_global_input)==(state:: uint8_t);
  List_Substitution(Machine(lchip_interface),write_global_output)==(skip);
  List_Substitution(Machine(lchip_interface),get_ms_tick)==(out:=ms_tick);
  List_Substitution(Machine(lchip_interface),print_uint8)==(skip)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(lchip_interface))==(?);
  Inherited_List_Constants(Machine(lchip_interface))==(?);
  List_Constants(Machine(lchip_interface))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(lchip_interface))==(?);
  Context_List_Defered(Machine(lchip_interface))==(?);
  Context_List_Sets(Machine(lchip_interface))==(?);
  List_Valuable_Sets(Machine(lchip_interface))==(?);
  Inherited_List_Enumerated(Machine(lchip_interface))==(?);
  Inherited_List_Defered(Machine(lchip_interface))==(?);
  Inherited_List_Sets(Machine(lchip_interface))==(?);
  List_Enumerated(Machine(lchip_interface))==(?);
  List_Defered(Machine(lchip_interface))==(?);
  List_Sets(Machine(lchip_interface))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(lchip_interface))==(?);
  Expanded_List_HiddenConstants(Machine(lchip_interface))==(?);
  List_HiddenConstants(Machine(lchip_interface))==(?);
  External_List_HiddenConstants(Machine(lchip_interface))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(lchip_interface))==(btrue);
  Context_List_Properties(Machine(lchip_interface))==(uint32_t = 0..4294967295 & uint16_t = 0..65535 & uint8_t = 0..255 & STRUE: uint8_t & SFALSE: uint8_t & MAX_UINT32: uint32_t & MAX_UINT16: uint16_t & MAX_UINT8: uint8_t & STRUE: 0..MAX_UINT8 & SFALSE: 0..MAX_UINT8 & STRUE/=SFALSE & SBOOL = {STRUE,SFALSE} & STRUE<=2 & SFALSE<=2 & MAX_UINT32 = 4294967295 & MAX_UINT16 = 65535 & MAX_UINT8 = 255 & Convert_Bool = {TRUE|->STRUE,FALSE|->SFALSE} & MAX_NB_MODULES: uint8_t & MAX_NB_INPUTS: uint8_t & MAX_NB_OUTPUTS: uint8_t & MAX_NB_MODULES = 1 & MAX_NB_INPUTS = 3 & MAX_NB_OUTPUTS = 2);
  Inherited_List_Properties(Machine(lchip_interface))==(btrue);
  List_Properties(Machine(lchip_interface))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(lchip_interface),Machine(lchip_configuration))==(?);
  Seen_Context_List_Enumerated(Machine(lchip_interface))==(?);
  Seen_Context_List_Invariant(Machine(lchip_interface))==(btrue);
  Seen_Context_List_Assertions(Machine(lchip_interface))==(Convert_Bool: BOOL +-> uint8_t & Convert_Bool: BOOL +-> uint16_t & Convert_Bool: BOOL +-> uint32_t);
  Seen_Context_List_Properties(Machine(lchip_interface))==(uint32_t = 0..4294967295 & uint16_t = 0..65535 & uint8_t = 0..255 & STRUE: uint8_t & SFALSE: uint8_t & MAX_UINT32: uint32_t & MAX_UINT16: uint16_t & MAX_UINT8: uint8_t & STRUE: 0..MAX_UINT8 & SFALSE: 0..MAX_UINT8 & STRUE/=SFALSE & SBOOL = {STRUE,SFALSE} & STRUE<=2 & SFALSE<=2 & MAX_UINT32 = 4294967295 & MAX_UINT16 = 65535 & MAX_UINT8 = 255 & Convert_Bool = {TRUE|->STRUE,FALSE|->SFALSE});
  Seen_List_Constraints(Machine(lchip_interface))==(btrue);
  Seen_List_Operations(Machine(lchip_interface),Machine(lchip_configuration))==(?);
  Seen_Expanded_List_Invariant(Machine(lchip_interface),Machine(lchip_configuration))==(btrue);
  Seen_Internal_List_Operations(Machine(lchip_interface),Machine(g_types))==(?);
  Seen_List_Operations(Machine(lchip_interface),Machine(g_types))==(?);
  Seen_Expanded_List_Invariant(Machine(lchip_interface),Machine(g_types))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(lchip_interface),print_global_inputs)==(?);
  List_ANY_Var(Machine(lchip_interface),read_global_input)==(?);
  List_ANY_Var(Machine(lchip_interface),write_global_output)==(?);
  List_ANY_Var(Machine(lchip_interface),get_ms_tick)==(?);
  List_ANY_Var(Machine(lchip_interface),print_uint8)==(?)
END
&
THEORY ListOfIdsX IS
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
  List_Of_Ids(Machine(g_types)) == (uint32_t,uint16_t,uint8_t,STRUE,SFALSE,MAX_UINT32,MAX_UINT16,MAX_UINT8 | ? | ? | ? | ? | ? | ? | ? | g_types);
  List_Of_HiddenCst_Ids(Machine(g_types)) == (SBOOL,Convert_Bool | ?);
  List_Of_VisibleCst_Ids(Machine(g_types)) == (uint32_t,uint16_t,uint8_t,STRUE,SFALSE,MAX_UINT32,MAX_UINT16,MAX_UINT8);
  List_Of_VisibleVar_Ids(Machine(g_types)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(g_types)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(lchip_interface)) == (Type(ms_tick) == Mvl(btype(INTEGER,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(lchip_interface)) == (Type(print_uint8) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(get_ms_tick) == Cst(btype(INTEGER,?,?),No_type);Type(write_global_output) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(read_global_input) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(print_global_inputs) == Cst(No_type,No_type));
  Observers(Machine(lchip_interface)) == (Type(print_uint8) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(get_ms_tick) == Cst(btype(INTEGER,?,?),No_type);Type(write_global_output) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(read_global_input) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(print_global_inputs) == Cst(No_type,No_type))
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
