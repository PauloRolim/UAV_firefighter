Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(outputs))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(outputs))==(Machine(outputs));
  Level(Machine(outputs))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(outputs)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(outputs))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(outputs))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(outputs))==(?);
  List_Includes(Machine(outputs))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(outputs))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(outputs))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(outputs))==(?);
  Context_List_Variables(Machine(outputs))==(?);
  Abstract_List_Variables(Machine(outputs))==(?);
  Local_List_Variables(Machine(outputs))==(?);
  List_Variables(Machine(outputs))==(?);
  External_List_Variables(Machine(outputs))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(outputs))==(?);
  Abstract_List_VisibleVariables(Machine(outputs))==(?);
  External_List_VisibleVariables(Machine(outputs))==(?);
  Expanded_List_VisibleVariables(Machine(outputs))==(?);
  List_VisibleVariables(Machine(outputs))==(?);
  Internal_List_VisibleVariables(Machine(outputs))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(outputs))==(btrue);
  Gluing_List_Invariant(Machine(outputs))==(btrue);
  Expanded_List_Invariant(Machine(outputs))==(btrue);
  Abstract_List_Invariant(Machine(outputs))==(btrue);
  Context_List_Invariant(Machine(outputs))==(btrue);
  List_Invariant(Machine(outputs))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(outputs))==(btrue);
  Abstract_List_Assertions(Machine(outputs))==(btrue);
  Context_List_Assertions(Machine(outputs))==(btrue);
  List_Assertions(Machine(outputs))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(outputs))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(outputs))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(outputs))==(skip);
  Context_List_Initialisation(Machine(outputs))==(skip);
  List_Initialisation(Machine(outputs))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(outputs))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(outputs))==(btrue);
  List_Constraints(Machine(outputs))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(outputs))==(write_outputs);
  List_Operations(Machine(outputs))==(write_outputs)
END
&
THEORY ListInputX IS
  List_Input(Machine(outputs),write_outputs)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(outputs),write_outputs)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(outputs),write_outputs)==(write_outputs)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(outputs),write_outputs)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(outputs),write_outputs)==(btrue | skip);
  List_Substitution(Machine(outputs),write_outputs)==(skip)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(outputs))==(?);
  Inherited_List_Constants(Machine(outputs))==(?);
  List_Constants(Machine(outputs))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(outputs))==(?);
  Context_List_Defered(Machine(outputs))==(?);
  Context_List_Sets(Machine(outputs))==(?);
  List_Valuable_Sets(Machine(outputs))==(?);
  Inherited_List_Enumerated(Machine(outputs))==(?);
  Inherited_List_Defered(Machine(outputs))==(?);
  Inherited_List_Sets(Machine(outputs))==(?);
  List_Enumerated(Machine(outputs))==(?);
  List_Defered(Machine(outputs))==(?);
  List_Sets(Machine(outputs))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(outputs))==(?);
  Expanded_List_HiddenConstants(Machine(outputs))==(?);
  List_HiddenConstants(Machine(outputs))==(?);
  External_List_HiddenConstants(Machine(outputs))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(outputs))==(btrue);
  Context_List_Properties(Machine(outputs))==(btrue);
  Inherited_List_Properties(Machine(outputs))==(btrue);
  List_Properties(Machine(outputs))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(outputs),write_outputs)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(outputs)) == (? | ? | ? | ? | write_outputs | ? | ? | ? | outputs);
  List_Of_HiddenCst_Ids(Machine(outputs)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(outputs)) == (?);
  List_Of_VisibleVar_Ids(Machine(outputs)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(outputs)) == (?: ?)
END
&
THEORY OperationsEnvX IS
  Operations(Machine(outputs)) == (Type(write_outputs) == Cst(No_type,No_type));
  Observers(Machine(outputs)) == (Type(write_outputs) == Cst(No_type,No_type))
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
