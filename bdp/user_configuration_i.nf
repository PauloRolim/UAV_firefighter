Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(user_configuration_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(user_configuration_i))==(Machine(user_configuration));
  Level(Implementation(user_configuration_i))==(1);
  Upper_Level(Implementation(user_configuration_i))==(Machine(user_configuration))
END
&
THEORY LoadedStructureX IS
  Implementation(user_configuration_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(user_configuration_i))==(g_types,lchip_configuration)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(user_configuration_i))==(?);
  Inherited_List_Includes(Implementation(user_configuration_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(user_configuration_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(user_configuration_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(user_configuration_i))==(?);
  Context_List_Variables(Implementation(user_configuration_i))==(?);
  Abstract_List_Variables(Implementation(user_configuration_i))==(?);
  Local_List_Variables(Implementation(user_configuration_i))==(?);
  List_Variables(Implementation(user_configuration_i))==(?);
  External_List_Variables(Implementation(user_configuration_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(user_configuration_i))==(?);
  Abstract_List_VisibleVariables(Implementation(user_configuration_i))==(?);
  External_List_VisibleVariables(Implementation(user_configuration_i))==(?);
  Expanded_List_VisibleVariables(Implementation(user_configuration_i))==(?);
  List_VisibleVariables(Implementation(user_configuration_i))==(?);
  Internal_List_VisibleVariables(Implementation(user_configuration_i))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(user_configuration_i))==(btrue);
  Expanded_List_Invariant(Implementation(user_configuration_i))==(btrue);
  Abstract_List_Invariant(Implementation(user_configuration_i))==(btrue);
  Context_List_Invariant(Implementation(user_configuration_i))==(btrue);
  List_Invariant(Implementation(user_configuration_i))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(user_configuration_i))==(btrue);
  Abstract_List_Assertions(Implementation(user_configuration_i))==(btrue);
  Context_List_Assertions(Implementation(user_configuration_i))==(Convert_Bool: BOOL +-> uint8_t & Convert_Bool: BOOL +-> uint16_t & Convert_Bool: BOOL +-> uint32_t);
  List_Assertions(Implementation(user_configuration_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(user_configuration_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(user_configuration_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(user_configuration_i))==(skip);
  Context_List_Initialisation(Implementation(user_configuration_i))==(skip);
  List_Initialisation(Implementation(user_configuration_i))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(user_configuration_i))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Implementation(user_configuration_i),Machine(g_types))==(?);
  List_Instanciated_Parameters(Implementation(user_configuration_i),Machine(lchip_configuration))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(user_configuration_i))==(btrue);
  List_Context_Constraints(Implementation(user_configuration_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(user_configuration_i))==(?);
  List_Operations(Implementation(user_configuration_i))==(?)
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
  List_Valuable_Constants(Implementation(user_configuration_i))==(NB_MODULES,NB_INPUTS,NB_OUTPUTS,module_secu_ids,module_nb_inputs,module_nb_outputs,input_module_ids,input_local_ids,output_module_ids,output_local_ids);
  Inherited_List_Constants(Implementation(user_configuration_i))==(NB_MODULES,NB_INPUTS,NB_OUTPUTS,module_secu_ids,module_nb_inputs,module_nb_outputs,input_module_ids,input_local_ids,output_module_ids,output_local_ids);
  List_Constants(Implementation(user_configuration_i))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(user_configuration_i))==(?);
  Context_List_Defered(Implementation(user_configuration_i))==(?);
  Context_List_Sets(Implementation(user_configuration_i))==(?);
  List_Own_Enumerated(Implementation(user_configuration_i))==(?);
  List_Valuable_Sets(Implementation(user_configuration_i))==(?);
  Inherited_List_Enumerated(Implementation(user_configuration_i))==(?);
  Inherited_List_Defered(Implementation(user_configuration_i))==(?);
  Inherited_List_Sets(Implementation(user_configuration_i))==(?);
  List_Enumerated(Implementation(user_configuration_i))==(?);
  List_Defered(Implementation(user_configuration_i))==(?);
  List_Sets(Implementation(user_configuration_i))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(user_configuration_i))==(?);
  Expanded_List_HiddenConstants(Implementation(user_configuration_i))==(?);
  List_HiddenConstants(Implementation(user_configuration_i))==(?);
  External_List_HiddenConstants(Implementation(user_configuration_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(user_configuration_i))==(NB_MODULES: uint8_t & NB_INPUTS: uint8_t & NB_OUTPUTS: uint8_t & NB_MODULES<=MAX_NB_MODULES & NB_INPUTS<=MAX_NB_INPUTS & NB_OUTPUTS<=MAX_NB_OUTPUTS & NB_MODULES = 1 & NB_INPUTS = 3 & NB_OUTPUTS = 2 & module_secu_ids: 0..0 --> uint32_t & module_nb_inputs: 0..0 --> uint8_t & module_nb_outputs: 0..0 --> uint8_t & input_module_ids: 0..2 --> uint8_t & input_local_ids: 0..2 --> uint8_t & output_module_ids: 0..1 --> uint8_t & output_local_ids: 0..1 --> uint8_t);
  Context_List_Properties(Implementation(user_configuration_i))==(uint32_t = 0..4294967295 & uint16_t = 0..65535 & uint8_t = 0..255 & STRUE: uint8_t & SFALSE: uint8_t & MAX_UINT32: uint32_t & MAX_UINT16: uint16_t & MAX_UINT8: uint8_t & STRUE: 0..MAX_UINT8 & SFALSE: 0..MAX_UINT8 & STRUE/=SFALSE & SBOOL = {STRUE,SFALSE} & STRUE<=2 & SFALSE<=2 & MAX_UINT32 = 4294967295 & MAX_UINT16 = 65535 & MAX_UINT8 = 255 & Convert_Bool = {TRUE|->STRUE,FALSE|->SFALSE} & MAX_NB_MODULES: uint8_t & MAX_NB_INPUTS: uint8_t & MAX_NB_OUTPUTS: uint8_t & MAX_NB_MODULES = 1 & MAX_NB_INPUTS = 3 & MAX_NB_OUTPUTS = 2);
  Inherited_List_Properties(Implementation(user_configuration_i))==(btrue);
  List_Properties(Implementation(user_configuration_i))==(btrue)
END
&
THEORY ListValuesX IS
  Precond_Valued_Objects(Implementation(user_configuration_i))==(btrue);
  Values_Subs(Implementation(user_configuration_i))==(NB_MODULES,NB_INPUTS,NB_OUTPUTS,module_secu_ids,module_nb_inputs,module_nb_outputs,input_module_ids,input_local_ids,output_module_ids,output_local_ids: 1,3,2,{0|->986880},{0|->3},{0|->2},{0|->0,1|->0,2|->0},{0|->0,1|->1,2|->2},{0|->0,1|->0},{0|->0,1|->1});
  List_Values(Implementation(user_configuration_i))==(NB_MODULES = 1;NB_INPUTS = 3;NB_OUTPUTS = 2;module_secu_ids = {0|->986880};module_nb_inputs = {0|->3};module_nb_outputs = {0|->2};input_module_ids = {0|->0,1|->0,2|->0};input_local_ids = {0|->0,1|->1,2|->2};output_module_ids = {0|->0,1|->0};output_local_ids = {0|->0,1|->1})
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Implementation(user_configuration_i),Machine(lchip_configuration))==(?);
  Seen_Context_List_Enumerated(Implementation(user_configuration_i))==(?);
  Seen_Context_List_Invariant(Implementation(user_configuration_i))==(btrue);
  Seen_Context_List_Assertions(Implementation(user_configuration_i))==(Convert_Bool: BOOL +-> uint8_t & Convert_Bool: BOOL +-> uint16_t & Convert_Bool: BOOL +-> uint32_t);
  Seen_Context_List_Properties(Implementation(user_configuration_i))==(uint32_t = 0..4294967295 & uint16_t = 0..65535 & uint8_t = 0..255 & STRUE: uint8_t & SFALSE: uint8_t & MAX_UINT32: uint32_t & MAX_UINT16: uint16_t & MAX_UINT8: uint8_t & STRUE: 0..MAX_UINT8 & SFALSE: 0..MAX_UINT8 & STRUE/=SFALSE & SBOOL = {STRUE,SFALSE} & STRUE<=2 & SFALSE<=2 & MAX_UINT32 = 4294967295 & MAX_UINT16 = 65535 & MAX_UINT8 = 255 & Convert_Bool = {TRUE|->STRUE,FALSE|->SFALSE});
  Seen_List_Constraints(Implementation(user_configuration_i))==(btrue);
  Seen_List_Operations(Implementation(user_configuration_i),Machine(lchip_configuration))==(?);
  Seen_Expanded_List_Invariant(Implementation(user_configuration_i),Machine(lchip_configuration))==(btrue);
  Seen_Internal_List_Operations(Implementation(user_configuration_i),Machine(g_types))==(?);
  Seen_List_Operations(Implementation(user_configuration_i),Machine(g_types))==(?);
  Seen_Expanded_List_Invariant(Implementation(user_configuration_i),Machine(g_types))==(btrue)
END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  Constants(Implementation(user_configuration_i))==(Type(NB_MODULES) == Cst(btype(INTEGER,?,?));Type(NB_INPUTS) == Cst(btype(INTEGER,?,?));Type(NB_OUTPUTS) == Cst(btype(INTEGER,?,?));Type(module_secu_ids) == Cst(SetOf(btype(INTEGER,0,0)*btype(INTEGER,"[uint32_t","]uint32_t")));Type(module_nb_inputs) == Cst(SetOf(btype(INTEGER,0,0)*btype(INTEGER,"[uint8_t","]uint8_t")));Type(module_nb_outputs) == Cst(SetOf(btype(INTEGER,0,0)*btype(INTEGER,"[uint8_t","]uint8_t")));Type(input_module_ids) == Cst(SetOf(btype(INTEGER,0,2)*btype(INTEGER,"[uint8_t","]uint8_t")));Type(input_local_ids) == Cst(SetOf(btype(INTEGER,0,2)*btype(INTEGER,"[uint8_t","]uint8_t")));Type(output_module_ids) == Cst(SetOf(btype(INTEGER,0,1)*btype(INTEGER,"[uint8_t","]uint8_t")));Type(output_local_ids) == Cst(SetOf(btype(INTEGER,0,1)*btype(INTEGER,"[uint8_t","]uint8_t"))))
END
&
THEORY ListVisibleStaticX IS
  List_Constants(Implementation(user_configuration_i),Machine(lchip_configuration))==(MAX_NB_MODULES,MAX_NB_INPUTS,MAX_NB_OUTPUTS);
  List_Constants_Env(Implementation(user_configuration_i),Machine(lchip_configuration))==(Type(MAX_NB_MODULES) == Cst(btype(INTEGER,?,?));Type(MAX_NB_INPUTS) == Cst(btype(INTEGER,?,?));Type(MAX_NB_OUTPUTS) == Cst(btype(INTEGER,?,?)));
  List_Constants(Implementation(user_configuration_i),Machine(g_types))==(uint32_t,uint16_t,uint8_t,STRUE,SFALSE,MAX_UINT32,MAX_UINT16,MAX_UINT8);
  List_Constants_Env(Implementation(user_configuration_i),Machine(g_types))==(Type(uint32_t) == Cst(SetOf(btype(INTEGER,"[uint32_t","]uint32_t")));Type(uint16_t) == Cst(SetOf(btype(INTEGER,"[uint16_t","]uint16_t")));Type(uint8_t) == Cst(SetOf(btype(INTEGER,"[uint8_t","]uint8_t")));Type(STRUE) == Cst(btype(INTEGER,?,?));Type(SFALSE) == Cst(btype(INTEGER,?,?));Type(MAX_UINT32) == Cst(btype(INTEGER,?,?));Type(MAX_UINT16) == Cst(btype(INTEGER,?,?));Type(MAX_UINT8) == Cst(btype(INTEGER,?,?)))
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(user_configuration_i)) == (? | ? | ? | ? | ? | ? | seen(Machine(g_types)),seen(Machine(lchip_configuration)) | ? | user_configuration_i);
  List_Of_HiddenCst_Ids(Implementation(user_configuration_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(user_configuration_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(user_configuration_i)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(user_configuration_i)) == (?: ?);
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
  Constants(Implementation(user_configuration_i)) == (Type(output_local_ids) == Cst(SetOf(btype(INTEGER,0,1)*btype(INTEGER,"[uint8_t","]uint8_t")));Type(output_module_ids) == Cst(SetOf(btype(INTEGER,0,1)*btype(INTEGER,"[uint8_t","]uint8_t")));Type(input_local_ids) == Cst(SetOf(btype(INTEGER,0,2)*btype(INTEGER,"[uint8_t","]uint8_t")));Type(input_module_ids) == Cst(SetOf(btype(INTEGER,0,2)*btype(INTEGER,"[uint8_t","]uint8_t")));Type(module_nb_outputs) == Cst(SetOf(btype(INTEGER,0,0)*btype(INTEGER,"[uint8_t","]uint8_t")));Type(module_nb_inputs) == Cst(SetOf(btype(INTEGER,0,0)*btype(INTEGER,"[uint8_t","]uint8_t")));Type(module_secu_ids) == Cst(SetOf(btype(INTEGER,0,0)*btype(INTEGER,"[uint32_t","]uint32_t")));Type(NB_OUTPUTS) == Cst(btype(INTEGER,?,?));Type(NB_INPUTS) == Cst(btype(INTEGER,?,?));Type(NB_MODULES) == Cst(btype(INTEGER,?,?)))
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
  List_Local_Operations(Implementation(user_configuration_i))==(?)
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
  TypingPredicate(Implementation(user_configuration_i))==(btrue)
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
