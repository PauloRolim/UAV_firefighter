Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(logic_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(logic_i))==(Machine(logic));
  Level(Implementation(logic_i))==(1);
  Upper_Level(Implementation(logic_i))==(Machine(logic))
END
&
THEORY LoadedStructureX IS
  Implementation(logic_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(logic_i))==(g_types,g_operators,io_constants,lchip_interface,user_ctx,inputs)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(logic_i))==(?);
  Inherited_List_Includes(Implementation(logic_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(logic_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(logic_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(logic_i))==(?);
  Context_List_Variables(Implementation(logic_i))==(?);
  Abstract_List_Variables(Implementation(logic_i))==(board_0_O2,board_0_O1);
  Local_List_Variables(Implementation(logic_i))==(?);
  List_Variables(Implementation(logic_i))==(?);
  External_List_Variables(Implementation(logic_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(logic_i))==(?);
  Abstract_List_VisibleVariables(Implementation(logic_i))==(?);
  External_List_VisibleVariables(Implementation(logic_i))==(?);
  Expanded_List_VisibleVariables(Implementation(logic_i))==(?);
  List_VisibleVariables(Implementation(logic_i))==(o_Proceed,i_HighBattery,i_CommsLink,i_MissionStart,var_patternBit_2,var_patternBit_1,var_P_1,var_highBattery_3,var_currbit_2,var_read_1,cycle_state,cycle_timer,SM_SimBCMonitor_state,first_time,board_0_O2,board_0_O1);
  Internal_List_VisibleVariables(Implementation(logic_i))==(o_Proceed,i_HighBattery,i_CommsLink,i_MissionStart,var_patternBit_2,var_patternBit_1,var_P_1,var_highBattery_3,var_currbit_2,var_read_1,cycle_state,cycle_timer,SM_SimBCMonitor_state,first_time,board_0_O2,board_0_O1)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(logic_i))==(btrue);
  Expanded_List_Invariant(Implementation(logic_i))==(btrue);
  Abstract_List_Invariant(Implementation(logic_i))==(board_0_O1: uint8_t & board_0_O2: uint8_t);
  Context_List_Invariant(Implementation(logic_i))==(ms_tick: uint32_t & board_0_I1: uint8_t & board_0_I2: uint8_t & board_0_I3: uint8_t);
  List_Invariant(Implementation(logic_i))==(board_0_O1: uint8_t & board_0_O2: uint8_t & first_time: BOOL & SM_SimBCMonitor_state: uint8_t & SM_SimBCMonitor_state: {INIT,EXEC_1,EXEC_2,EXEC_3} & cycle_timer: uint32_t & cycle_state: uint8_t & cycle_state: {st_READ_INPUTS,st_STATE_MACHINE,st_WRITE_OUTPUTS,st_TIME} & var_read_1: uint32_t & var_currbit_2: BOOL & var_highBattery_3: BOOL & var_P_1: uint32_t & var_patternBit_1: BOOL & var_patternBit_2: BOOL & i_MissionStart: uint8_t & i_CommsLink: uint8_t & i_HighBattery: uint8_t & o_Proceed: uint8_t)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(logic_i))==(btrue);
  Abstract_List_Assertions(Implementation(logic_i))==(btrue);
  Context_List_Assertions(Implementation(logic_i))==(Convert_Bool: BOOL +-> uint8_t & Convert_Bool: BOOL +-> uint16_t & Convert_Bool: BOOL +-> uint32_t);
  List_Assertions(Implementation(logic_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(logic_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(logic_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(logic_i))==((IO_OFF: INT | board_0_O1:=IO_OFF);(IO_OFF: INT | board_0_O2:=IO_OFF);first_time:=TRUE;(INIT: INT | SM_SimBCMonitor_state:=INIT);(0: INT | cycle_timer:=0);(1: INT | cycle_state:=1);(0: INT | var_read_1:=0);var_currbit_2:=FALSE;var_highBattery_3:=FALSE;(0: INT | var_P_1:=0);var_patternBit_1:=TRUE;var_patternBit_2:=FALSE;(IO_OFF: INT | i_MissionStart:=IO_OFF);(IO_OFF: INT | i_CommsLink:=IO_OFF);(IO_OFF: INT | i_HighBattery:=IO_OFF);(IO_OFF: INT | o_Proceed:=IO_OFF));
  Context_List_Initialisation(Implementation(logic_i))==(skip);
  List_Initialisation(Implementation(logic_i))==(board_0_O1:=IO_OFF;board_0_O2:=IO_OFF;first_time:=TRUE;SM_SimBCMonitor_state:=INIT;cycle_timer:=0;cycle_state:=1;var_read_1:=0;var_currbit_2:=FALSE;var_highBattery_3:=FALSE;var_P_1:=0;var_patternBit_1:=TRUE;var_patternBit_2:=FALSE;i_MissionStart:=IO_OFF;i_CommsLink:=IO_OFF;i_HighBattery:=IO_OFF;o_Proceed:=IO_OFF)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(logic_i))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Implementation(logic_i),Machine(g_types))==(?);
  List_Instanciated_Parameters(Implementation(logic_i),Machine(g_operators))==(?);
  List_Instanciated_Parameters(Implementation(logic_i),Machine(io_constants))==(?);
  List_Instanciated_Parameters(Implementation(logic_i),Machine(lchip_interface))==(?);
  List_Instanciated_Parameters(Implementation(logic_i),Machine(user_ctx))==(?);
  List_Instanciated_Parameters(Implementation(logic_i),Machine(inputs))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(logic_i))==(btrue);
  List_Context_Constraints(Implementation(logic_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(logic_i))==(user_logic,execute_model_cycle,since,land,lor,lnot,read_model_inputs,write_model_outputs,SM_SimBCMonitor,validBitPattern,get_board_0_O1,get_board_0_O2);
  List_Operations(Implementation(logic_i))==(user_logic,execute_model_cycle,since,land,lor,lnot,read_model_inputs,write_model_outputs,SM_SimBCMonitor,validBitPattern,get_board_0_O1,get_board_0_O2)
END
&
THEORY ListInputX IS
  List_Input(Implementation(logic_i),user_logic)==(?);
  List_Input(Implementation(logic_i),execute_model_cycle)==(?);
  List_Input(Implementation(logic_i),since)==(timer);
  List_Input(Implementation(logic_i),land)==(pp,qq);
  List_Input(Implementation(logic_i),lor)==(pp,qq);
  List_Input(Implementation(logic_i),lnot)==(pp);
  List_Input(Implementation(logic_i),read_model_inputs)==(?);
  List_Input(Implementation(logic_i),write_model_outputs)==(?);
  List_Input(Implementation(logic_i),SM_SimBCMonitor)==(?);
  List_Input(Implementation(logic_i),validBitPattern)==(pp,rr,cc);
  List_Input(Implementation(logic_i),get_board_0_O1)==(?);
  List_Input(Implementation(logic_i),get_board_0_O2)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(logic_i),user_logic)==(?);
  List_Output(Implementation(logic_i),execute_model_cycle)==(?);
  List_Output(Implementation(logic_i),since)==(elapsed);
  List_Output(Implementation(logic_i),land)==(result);
  List_Output(Implementation(logic_i),lor)==(result);
  List_Output(Implementation(logic_i),lnot)==(result);
  List_Output(Implementation(logic_i),read_model_inputs)==(?);
  List_Output(Implementation(logic_i),write_model_outputs)==(?);
  List_Output(Implementation(logic_i),SM_SimBCMonitor)==(?);
  List_Output(Implementation(logic_i),validBitPattern)==(valid);
  List_Output(Implementation(logic_i),get_board_0_O1)==(po);
  List_Output(Implementation(logic_i),get_board_0_O2)==(po)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(logic_i),user_logic)==(user_logic);
  List_Header(Implementation(logic_i),execute_model_cycle)==(execute_model_cycle);
  List_Header(Implementation(logic_i),since)==(elapsed <-- since(timer));
  List_Header(Implementation(logic_i),land)==(result <-- land(pp,qq));
  List_Header(Implementation(logic_i),lor)==(result <-- lor(pp,qq));
  List_Header(Implementation(logic_i),lnot)==(result <-- lnot(pp));
  List_Header(Implementation(logic_i),read_model_inputs)==(read_model_inputs);
  List_Header(Implementation(logic_i),write_model_outputs)==(write_model_outputs);
  List_Header(Implementation(logic_i),SM_SimBCMonitor)==(SM_SimBCMonitor);
  List_Header(Implementation(logic_i),validBitPattern)==(valid <-- validBitPattern(pp,rr,cc));
  List_Header(Implementation(logic_i),get_board_0_O1)==(po <-- get_board_0_O1);
  List_Header(Implementation(logic_i),get_board_0_O2)==(po <-- get_board_0_O2)
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(logic_i),user_logic)==(btrue);
  List_Precondition(Implementation(logic_i),user_logic)==(btrue);
  Own_Precondition(Implementation(logic_i),execute_model_cycle)==(btrue);
  List_Precondition(Implementation(logic_i),execute_model_cycle)==(btrue);
  Own_Precondition(Implementation(logic_i),since)==(btrue);
  List_Precondition(Implementation(logic_i),since)==(timer: uint32_t & elapsed: uint32_t);
  Own_Precondition(Implementation(logic_i),land)==(btrue);
  List_Precondition(Implementation(logic_i),land)==(pp: BOOL & qq: BOOL & result: BOOL);
  Own_Precondition(Implementation(logic_i),lor)==(btrue);
  List_Precondition(Implementation(logic_i),lor)==(pp: BOOL & qq: BOOL & result: BOOL);
  Own_Precondition(Implementation(logic_i),lnot)==(btrue);
  List_Precondition(Implementation(logic_i),lnot)==(pp: BOOL & result: BOOL);
  Own_Precondition(Implementation(logic_i),read_model_inputs)==(btrue);
  List_Precondition(Implementation(logic_i),read_model_inputs)==(cycle_state = st_READ_INPUTS);
  Own_Precondition(Implementation(logic_i),write_model_outputs)==(btrue);
  List_Precondition(Implementation(logic_i),write_model_outputs)==(cycle_state = st_WRITE_OUTPUTS);
  Own_Precondition(Implementation(logic_i),SM_SimBCMonitor)==(btrue);
  List_Precondition(Implementation(logic_i),SM_SimBCMonitor)==(cycle_state = st_STATE_MACHINE);
  Own_Precondition(Implementation(logic_i),validBitPattern)==(btrue);
  List_Precondition(Implementation(logic_i),validBitPattern)==(valid: BOOL & pp: BOOL & rr: uint32_t & cc: BOOL);
  Own_Precondition(Implementation(logic_i),get_board_0_O1)==(btrue);
  List_Precondition(Implementation(logic_i),get_board_0_O1)==(po: uint8_t);
  Own_Precondition(Implementation(logic_i),get_board_0_O2)==(btrue);
  List_Precondition(Implementation(logic_i),get_board_0_O2)==(po: uint8_t)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(logic_i),get_board_0_O2)==(po: uint8_t & board_0_O2: INT | po:=board_0_O2);
  Expanded_List_Substitution(Implementation(logic_i),get_board_0_O1)==(po: uint8_t & board_0_O1: INT | po:=board_0_O1);
  Expanded_List_Substitution(Implementation(logic_i),validBitPattern)==(valid: BOOL & pp: BOOL & rr: uint32_t & cc: BOOL | @(valid$1).(valid$1: BOOL ==> valid:=valid$1);(rr: INT | var_read_1:=rr);(cc = TRUE ==> (var_patternBit_1:=FALSE;var_patternBit_2:=pp;valid:=TRUE) [] not(cc = TRUE) ==> (var_patternBit_1:=TRUE;var_patternBit_2:=FALSE;valid:=FALSE)));
  Expanded_List_Substitution(Implementation(logic_i),SM_SimBCMonitor)==(cycle_state = st_STATE_MACHINE | SM_SimBCMonitor_state = INIT ==> (EXEC_1: INT | SM_SimBCMonitor_state:=EXEC_1) [] not(SM_SimBCMonitor_state = INIT) ==> (SM_SimBCMonitor_state = EXEC_1 ==> (i_MissionStart = IO_OFF ==> (EXEC_1: INT | SM_SimBCMonitor_state:=EXEC_1) [] not(i_MissionStart = IO_OFF) ==> skip;(i_MissionStart = IO_ON ==> ((var_P_1: uint32_t | var_P_1:=ms_tick);(EXEC_2: INT | SM_SimBCMonitor_state:=EXEC_2)) [] not(i_MissionStart = IO_ON) ==> skip)) [] not(SM_SimBCMonitor_state = EXEC_1) ==> (SM_SimBCMonitor_state = EXEC_2 ==> ((0: INT | var_read_1:=0);@(guard_1,guard_2,guard_3,guard_4,guard_5,guard_6,guard_7,guard_8,guard_9,guard_10,local_since,local_read,predicate_1,predicate_2,predicate_3,predicate_4,predicate_5,predicate_6,predicate_7,predicate_8,predicate_9,predicate_10,predicate_11,predicate_12,predicate_13,predicate_14,predicate_15,predicate_16,predicate_17,predicate_18,predicate_19).(@(guard_1$2).(guard_1$2: BOOL ==> guard_1:=guard_1$2);@(guard_2$2).(guard_2$2: BOOL ==> guard_2:=guard_2$2);@(guard_3$2).(guard_3$2: BOOL ==> guard_3:=guard_3$2);@(guard_4$2).(guard_4$2: BOOL ==> guard_4:=guard_4$2);@(guard_5$2).(guard_5$2: BOOL ==> guard_5:=guard_5$2);@(guard_6$2).(guard_6$2: BOOL ==> guard_6:=guard_6$2);@(guard_7$2).(guard_7$2: BOOL ==> guard_7:=guard_7$2);@(guard_8$2).(guard_8$2: BOOL ==> guard_8:=guard_8$2);@(guard_9$2).(guard_9$2: BOOL ==> guard_9:=guard_9$2);@(guard_10$2).(guard_10$2: BOOL ==> guard_10:=guard_10$2);@(local_since$2).(local_since$2: uint32_t ==> local_since:=local_since$2);@(local_read$2).(local_read$2: uint32_t ==> local_read:=local_read$2);@(predicate_1$2).(predicate_1$2: BOOL ==> predicate_1:=predicate_1$2);@(predicate_2$2).(predicate_2$2: BOOL ==> predicate_2:=predicate_2$2);@(predicate_3$2).(predicate_3$2: BOOL ==> predicate_3:=predicate_3$2);@(predicate_4$2).(predicate_4$2: BOOL ==> predicate_4:=predicate_4$2);@(predicate_5$2).(predicate_5$2: BOOL ==> predicate_5:=predicate_5$2);@(predicate_6$2).(predicate_6$2: BOOL ==> predicate_6:=predicate_6$2);@(predicate_7$2).(predicate_7$2: BOOL ==> predicate_7:=predicate_7$2);@(predicate_8$2).(predicate_8$2: BOOL ==> predicate_8:=predicate_8$2);@(predicate_9$2).(predicate_9$2: BOOL ==> predicate_9:=predicate_9$2);@(predicate_10$2).(predicate_10$2: BOOL ==> predicate_10:=predicate_10$2);@(predicate_11$2).(predicate_11$2: BOOL ==> predicate_11:=predicate_11$2);@(predicate_12$2).(predicate_12$2: BOOL ==> predicate_12:=predicate_12$2);@(predicate_13$2).(predicate_13$2: BOOL ==> predicate_13:=predicate_13$2);@(predicate_14$2).(predicate_14$2: BOOL ==> predicate_14:=predicate_14$2);@(predicate_15$2).(predicate_15$2: BOOL ==> predicate_15:=predicate_15$2);@(predicate_16$2).(predicate_16$2: BOOL ==> predicate_16:=predicate_16$2);@(predicate_17$2).(predicate_17$2: BOOL ==> predicate_17:=predicate_17$2);@(predicate_18$2).(predicate_18$2: BOOL ==> predicate_18:=predicate_18$2);@(predicate_19$2).(predicate_19$2: BOOL ==> predicate_19:=predicate_19$2);predicate_1:=bool(i_CommsLink = IO_ON);var_currbit_2:=predicate_1;predicate_2:=bool(i_HighBattery = IO_ON);var_highBattery_3:=predicate_2;(predicate_1: BOOL & predicate_2: BOOL & guard_1: BOOL | @(result$0).(result$0: BOOL ==> guard_1:=result$0));predicate_3:=bool(i_CommsLink = IO_OFF);var_currbit_2:=predicate_3;predicate_4:=bool(i_HighBattery = IO_OFF);var_highBattery_3:=predicate_4;(predicate_3: BOOL & predicate_4: BOOL & guard_2: BOOL | @(result$0).(result$0: BOOL ==> guard_2:=result$0));(var_P_1: uint32_t & local_since: uint32_t | @(elapsed$0).(elapsed$0: uint32_t ==> local_since:=elapsed$0));guard_3:=bool(local_since<=TIMEOUT);guard_4:=bool(TIMEOUT<local_since);(var_read_1: INT | local_read:=var_read_1);(local_read,1: dom(add_uint32) & predicate_5: BOOL & PATTERN: BOOL & add_uint32(local_read,1): uint32_t & var_currbit_2: BOOL | @(valid$0).(valid$0: BOOL ==> predicate_5:=valid$0) || @(var_read_1$0).(var_read_1$0: uint32_t ==> var_read_1:=var_read_1$0) || @(var_patternBit_1$0).(var_patternBit_1$0: BOOL ==> var_patternBit_1:=var_patternBit_1$0) || @(var_patternBit_2$0).(var_patternBit_2$0: BOOL ==> var_patternBit_2:=var_patternBit_2$0));(predicate_5: BOOL & predicate_6: BOOL | @(result$0).(result$0: BOOL ==> predicate_6:=result$0));predicate_7:=var_highBattery_3;(predicate_6: BOOL & predicate_7: BOOL & guard_5: BOOL | @(result$0).(result$0: BOOL ==> guard_5:=result$0));(var_read_1: INT | local_read:=var_read_1);(local_read,1: dom(add_uint32) & predicate_8: BOOL & PATTERN: BOOL & add_uint32(local_read,1): uint32_t & var_currbit_2: BOOL | @(valid$0).(valid$0: BOOL ==> predicate_8:=valid$0) || @(var_read_1$0).(var_read_1$0: uint32_t ==> var_read_1:=var_read_1$0) || @(var_patternBit_1$0).(var_patternBit_1$0: BOOL ==> var_patternBit_1:=var_patternBit_1$0) || @(var_patternBit_2$0).(var_patternBit_2$0: BOOL ==> var_patternBit_2:=var_patternBit_2$0));predicate_9:=var_highBattery_3;(predicate_8: BOOL & predicate_9: BOOL & guard_6: BOOL | @(result$0).(result$0: BOOL ==> guard_6:=result$0));predicate_10:=bool(i_CommsLink = IO_OFF);var_currbit_2:=predicate_10;predicate_11:=bool(i_HighBattery = IO_OFF);var_highBattery_3:=predicate_11;(predicate_10: BOOL & predicate_11: BOOL & predicate_12: BOOL | @(result$0).(result$0: BOOL ==> predicate_12:=result$0));predicate_13:=bool(TIMEOUT<local_since);predicate_14:=var_highBattery_3;(predicate_13: BOOL & predicate_14: BOOL & predicate_15: BOOL | @(result$0).(result$0: BOOL ==> predicate_15:=result$0));(predicate_12: BOOL & predicate_15: BOOL & guard_7: BOOL | @(result$0).(result$0: BOOL ==> guard_7:=result$0));predicate_16:=var_highBattery_3;(predicate_16: BOOL & guard_8: BOOL | @(result$0).(result$0: BOOL ==> guard_8:=result$0));predicate_17:=bool(i_CommsLink = IO_ON);var_currbit_2:=predicate_17;predicate_18:=bool(i_HighBattery = IO_ON);var_highBattery_3:=predicate_18;(predicate_17: BOOL & predicate_18: BOOL & guard_9: BOOL | @(result$0).(result$0: BOOL ==> guard_9:=result$0));predicate_19:=var_highBattery_3;(predicate_19: BOOL & guard_10: BOOL | @(result$0).(result$0: BOOL ==> guard_10:=result$0));(guard_1 = TRUE ==> (guard_5 = TRUE ==> (guard_3 = TRUE ==> ((IO_ON: INT | o_Proceed:=IO_ON);(EXEC_2: INT | SM_SimBCMonitor_state:=EXEC_2)) [] not(guard_3 = TRUE) ==> (guard_4 = TRUE ==> ((IO_OFF: INT | o_Proceed:=IO_OFF);(EXEC_2: INT | SM_SimBCMonitor_state:=EXEC_2)) [] not(guard_4 = TRUE) ==> skip)) [] not(guard_5 = TRUE) ==> (guard_6 = TRUE ==> (guard_7 = TRUE ==> ((IO_OFF: INT | o_Proceed:=IO_OFF);(EXEC_2: INT | SM_SimBCMonitor_state:=EXEC_2)) [] not(guard_7 = TRUE) ==> (guard_8 = TRUE ==> (EXEC_3: INT | SM_SimBCMonitor_state:=EXEC_3) [] not(guard_8 = TRUE) ==> (guard_9 = TRUE ==> (guard_5 = TRUE ==> (guard_3 = TRUE ==> ((IO_ON: INT | o_Proceed:=IO_ON);(EXEC_2: INT | SM_SimBCMonitor_state:=EXEC_2)) [] not(guard_3 = TRUE) ==> (guard_4 = TRUE ==> ((IO_OFF: INT | o_Proceed:=IO_OFF);(EXEC_2: INT | SM_SimBCMonitor_state:=EXEC_2)) [] not(guard_4 = TRUE) ==> skip)) [] not(guard_5 = TRUE) ==> (guard_10 = TRUE ==> (EXEC_3: INT | SM_SimBCMonitor_state:=EXEC_3) [] not(guard_10 = TRUE) ==> skip)) [] not(guard_9 = TRUE) ==> skip))) [] not(guard_6 = TRUE) ==> (guard_10 = TRUE ==> (EXEC_3: INT | SM_SimBCMonitor_state:=EXEC_3) [] not(guard_10 = TRUE) ==> skip))) [] not(guard_1 = TRUE) ==> (guard_2 = TRUE ==> (guard_3 = TRUE ==> ((IO_ON: INT | o_Proceed:=IO_ON);(EXEC_2: INT | SM_SimBCMonitor_state:=EXEC_2)) [] not(guard_3 = TRUE) ==> (guard_4 = TRUE ==> ((IO_OFF: INT | o_Proceed:=IO_OFF);(EXEC_2: INT | SM_SimBCMonitor_state:=EXEC_2)) [] not(guard_4 = TRUE) ==> skip)) [] not(guard_2 = TRUE) ==> skip)))) [] not(SM_SimBCMonitor_state = EXEC_2) ==> (SM_SimBCMonitor_state = EXEC_3 ==> (IO_OFF: INT | o_Proceed:=IO_OFF) [] not(SM_SimBCMonitor_state = EXEC_3) ==> skip)));(st_WRITE_OUTPUTS: INT | cycle_state:=st_WRITE_OUTPUTS));
  Expanded_List_Substitution(Implementation(logic_i),write_model_outputs)==(cycle_state = st_WRITE_OUTPUTS | (o_Proceed: INT | board_0_O1:=o_Proceed);(IO_OFF: INT | board_0_O2:=IO_OFF);(st_TIME: INT | cycle_state:=st_TIME));
  Expanded_List_Substitution(Implementation(logic_i),read_model_inputs)==(cycle_state = st_READ_INPUTS | (i_MissionStart: uint8_t | i_MissionStart:=board_0_I1);(i_CommsLink: uint8_t | i_CommsLink:=board_0_I2);(i_HighBattery: uint8_t | i_HighBattery:=board_0_I3);(st_STATE_MACHINE: INT | cycle_state:=st_STATE_MACHINE));
  Expanded_List_Substitution(Implementation(logic_i),lnot)==(pp: BOOL & result: BOOL | result:=FALSE;(pp = FALSE ==> result:=TRUE [] not(pp = FALSE) ==> skip));
  Expanded_List_Substitution(Implementation(logic_i),lor)==(pp: BOOL & qq: BOOL & result: BOOL | result:=TRUE;(pp = FALSE ==> (qq = FALSE ==> result:=FALSE [] not(qq = FALSE) ==> skip) [] not(pp = FALSE) ==> skip));
  Expanded_List_Substitution(Implementation(logic_i),land)==(pp: BOOL & qq: BOOL & result: BOOL | result:=FALSE;(pp = TRUE ==> (qq = TRUE ==> result:=TRUE [] not(qq = TRUE) ==> skip) [] not(pp = TRUE) ==> skip));
  Expanded_List_Substitution(Implementation(logic_i),since)==(timer: uint32_t & elapsed: uint32_t | @(elapsed$1).(elapsed$1: uint32_t ==> elapsed:=elapsed$1);@local_time.(@(local_time$2).(local_time$2: uint32_t ==> local_time:=local_time$2);(local_time: uint32_t | local_time:=ms_tick);(sub_uint32(local_time,timer): INT & local_time,timer: dom(sub_uint32) | elapsed:=sub_uint32(local_time,timer))));
  Expanded_List_Substitution(Implementation(logic_i),execute_model_cycle)==(btrue | (cycle_state = st_READ_INPUTS | @(var_currbit_2$0).(var_currbit_2$0: BOOL ==> var_currbit_2:=var_currbit_2$0) || @(var_highBattery_3$0).(var_highBattery_3$0: BOOL ==> var_highBattery_3:=var_highBattery_3$0) || @(cycle_state$0).(cycle_state$0: uint8_t ==> cycle_state:=cycle_state$0) || @(i_MissionStart$0).(i_MissionStart$0: uint8_t ==> i_MissionStart:=i_MissionStart$0) || @(i_CommsLink$0).(i_CommsLink$0: uint8_t ==> i_CommsLink:=i_CommsLink$0) || @(i_HighBattery$0).(i_HighBattery$0: uint8_t ==> i_HighBattery:=i_HighBattery$0));(cycle_state = st_STATE_MACHINE | @(cycle_state$0).(cycle_state$0: uint8_t ==> cycle_state:=cycle_state$0) || @(SM_SimBCMonitor_state$0).(SM_SimBCMonitor_state$0: uint32_t ==> SM_SimBCMonitor_state:=SM_SimBCMonitor_state$0) || @(var_patternBit_1$0).(var_patternBit_1$0: BOOL ==> var_patternBit_1:=var_patternBit_1$0) || @(var_patternBit_2$0).(var_patternBit_2$0: BOOL ==> var_patternBit_2:=var_patternBit_2$0) || @(var_P_1$0).(var_P_1$0: uint32_t ==> var_P_1:=var_P_1$0) || @(var_read_1$0).(var_read_1$0: uint32_t ==> var_read_1:=var_read_1$0) || @(var_currbit_2$0).(var_currbit_2$0: BOOL ==> var_currbit_2:=var_currbit_2$0) || @(var_highBattery_3$0).(var_highBattery_3$0: BOOL ==> var_highBattery_3:=var_highBattery_3$0) || @(o_Proceed$0).(o_Proceed$0: uint8_t ==> o_Proceed:=o_Proceed$0));(cycle_state = st_WRITE_OUTPUTS | @(cycle_state$0).(cycle_state$0: uint8_t ==> cycle_state:=cycle_state$0) || @(board_0_O1$0).(board_0_O1$0: uint8_t ==> board_0_O1:=board_0_O1$0) || @(board_0_O2$0).(board_0_O2$0: uint8_t ==> board_0_O2:=board_0_O2$0)));
  Expanded_List_Substitution(Implementation(logic_i),user_logic)==(btrue | first_time = TRUE ==> ((cycle_timer: uint32_t | cycle_timer:=ms_tick);(btrue | @(first_time$0).(first_time$0: BOOL ==> first_time:=first_time$0) || @(SM_SimBCMonitor_state$0).(SM_SimBCMonitor_state$0: uint8_t ==> SM_SimBCMonitor_state:=SM_SimBCMonitor_state$0) || @(cycle_timer$0).(cycle_timer$0: uint32_t ==> cycle_timer:=cycle_timer$0) || @(var_patternBit_1$0).(var_patternBit_1$0: BOOL ==> var_patternBit_1:=var_patternBit_1$0) || @(var_patternBit_2$0).(var_patternBit_2$0: BOOL ==> var_patternBit_2:=var_patternBit_2$0) || @(cycle_state$0).(cycle_state$0: uint8_t ==> cycle_state:=cycle_state$0) || @(var_P_1$0).(var_P_1$0: uint32_t ==> var_P_1:=var_P_1$0) || @(var_currbit_2$0).(var_currbit_2$0: BOOL ==> var_currbit_2:=var_currbit_2$0) || @(var_highBattery_3$0).(var_highBattery_3$0: BOOL ==> var_highBattery_3:=var_highBattery_3$0) || @(o_Proceed$0).(o_Proceed$0: uint8_t ==> o_Proceed:=o_Proceed$0));(st_READ_INPUTS: INT | cycle_state:=st_READ_INPUTS);first_time:=FALSE) [] not(first_time = TRUE) ==> @(time_elapsed,cycle_duration).(@(time_elapsed$2).(time_elapsed$2: uint32_t ==> time_elapsed:=time_elapsed$2);@(cycle_duration$2).(cycle_duration$2: uint32_t ==> cycle_duration:=cycle_duration$2);(cycle_timer: uint32_t & time_elapsed: uint32_t | @(elapsed$0).(elapsed$0: uint32_t ==> time_elapsed:=elapsed$0));(mul_uint32(SimBCMonitor_cycle_def,cycle_unit): INT & SimBCMonitor_cycle_def,cycle_unit: dom(mul_uint32) | cycle_duration:=mul_uint32(SimBCMonitor_cycle_def,cycle_unit));(cycle_duration<=time_elapsed ==> ((cycle_timer: uint32_t | cycle_timer:=ms_tick);(btrue | @(first_time$0).(first_time$0: BOOL ==> first_time:=first_time$0) || @(SM_SimBCMonitor_state$0).(SM_SimBCMonitor_state$0: uint8_t ==> SM_SimBCMonitor_state:=SM_SimBCMonitor_state$0) || @(cycle_timer$0).(cycle_timer$0: uint32_t ==> cycle_timer:=cycle_timer$0) || @(var_patternBit_1$0).(var_patternBit_1$0: BOOL ==> var_patternBit_1:=var_patternBit_1$0) || @(var_patternBit_2$0).(var_patternBit_2$0: BOOL ==> var_patternBit_2:=var_patternBit_2$0) || @(cycle_state$0).(cycle_state$0: uint8_t ==> cycle_state:=cycle_state$0) || @(var_P_1$0).(var_P_1$0: uint32_t ==> var_P_1:=var_P_1$0) || @(var_currbit_2$0).(var_currbit_2$0: BOOL ==> var_currbit_2:=var_currbit_2$0) || @(var_highBattery_3$0).(var_highBattery_3$0: BOOL ==> var_highBattery_3:=var_highBattery_3$0) || @(o_Proceed$0).(o_Proceed$0: uint8_t ==> o_Proceed:=o_Proceed$0));(st_READ_INPUTS: INT | cycle_state:=st_READ_INPUTS)) [] not(cycle_duration<=time_elapsed) ==> skip)));
  List_Substitution(Implementation(logic_i),user_logic)==(IF first_time = TRUE THEN cycle_timer <-- get_ms_tick;execute_model_cycle;cycle_state:=st_READ_INPUTS;first_time:=FALSE ELSE VAR time_elapsed,cycle_duration IN time_elapsed: (time_elapsed: uint32_t);cycle_duration: (cycle_duration: uint32_t);time_elapsed <-- since(cycle_timer);cycle_duration:=mul_uint32(SimBCMonitor_cycle_def,cycle_unit);IF cycle_duration<=time_elapsed THEN cycle_timer <-- get_ms_tick;execute_model_cycle;cycle_state:=st_READ_INPUTS END END END);
  List_Substitution(Implementation(logic_i),execute_model_cycle)==(read_model_inputs;SM_SimBCMonitor;write_model_outputs);
  List_Substitution(Implementation(logic_i),since)==(elapsed: (elapsed: uint32_t);VAR local_time IN local_time: (local_time: uint32_t);local_time <-- get_ms_tick;elapsed:=sub_uint32(local_time,timer) END);
  List_Substitution(Implementation(logic_i),land)==(result:=FALSE;IF pp = TRUE THEN IF qq = TRUE THEN result:=TRUE END END);
  List_Substitution(Implementation(logic_i),lor)==(result:=TRUE;IF pp = FALSE THEN IF qq = FALSE THEN result:=FALSE END END);
  List_Substitution(Implementation(logic_i),lnot)==(result:=FALSE;IF pp = FALSE THEN result:=TRUE END);
  List_Substitution(Implementation(logic_i),read_model_inputs)==(i_MissionStart <-- get_board_0_I1;i_CommsLink <-- get_board_0_I2;i_HighBattery <-- get_board_0_I3;cycle_state:=st_STATE_MACHINE);
  List_Substitution(Implementation(logic_i),write_model_outputs)==(board_0_O1:=o_Proceed;board_0_O2:=IO_OFF;cycle_state:=st_TIME);
  List_Substitution(Implementation(logic_i),SM_SimBCMonitor)==(IF SM_SimBCMonitor_state = INIT THEN SM_SimBCMonitor_state:=EXEC_1 ELSIF SM_SimBCMonitor_state = EXEC_1 THEN IF i_MissionStart = IO_OFF THEN SM_SimBCMonitor_state:=EXEC_1 END;IF i_MissionStart = IO_ON THEN var_P_1 <-- get_ms_tick;SM_SimBCMonitor_state:=EXEC_2 END ELSIF SM_SimBCMonitor_state = EXEC_2 THEN var_read_1:=0;VAR guard_1,guard_2,guard_3,guard_4,guard_5,guard_6,guard_7,guard_8,guard_9,guard_10,local_since,local_read,predicate_1,predicate_2,predicate_3,predicate_4,predicate_5,predicate_6,predicate_7,predicate_8,predicate_9,predicate_10,predicate_11,predicate_12,predicate_13,predicate_14,predicate_15,predicate_16,predicate_17,predicate_18,predicate_19 IN guard_1: (guard_1: BOOL);guard_2: (guard_2: BOOL);guard_3: (guard_3: BOOL);guard_4: (guard_4: BOOL);guard_5: (guard_5: BOOL);guard_6: (guard_6: BOOL);guard_7: (guard_7: BOOL);guard_8: (guard_8: BOOL);guard_9: (guard_9: BOOL);guard_10: (guard_10: BOOL);local_since: (local_since: uint32_t);local_read: (local_read: uint32_t);predicate_1: (predicate_1: BOOL);predicate_2: (predicate_2: BOOL);predicate_3: (predicate_3: BOOL);predicate_4: (predicate_4: BOOL);predicate_5: (predicate_5: BOOL);predicate_6: (predicate_6: BOOL);predicate_7: (predicate_7: BOOL);predicate_8: (predicate_8: BOOL);predicate_9: (predicate_9: BOOL);predicate_10: (predicate_10: BOOL);predicate_11: (predicate_11: BOOL);predicate_12: (predicate_12: BOOL);predicate_13: (predicate_13: BOOL);predicate_14: (predicate_14: BOOL);predicate_15: (predicate_15: BOOL);predicate_16: (predicate_16: BOOL);predicate_17: (predicate_17: BOOL);predicate_18: (predicate_18: BOOL);predicate_19: (predicate_19: BOOL);predicate_1:=bool(i_CommsLink = IO_ON);var_currbit_2:=predicate_1;predicate_2:=bool(i_HighBattery = IO_ON);var_highBattery_3:=predicate_2;guard_1 <-- land(predicate_1,predicate_2);predicate_3:=bool(i_CommsLink = IO_OFF);var_currbit_2:=predicate_3;predicate_4:=bool(i_HighBattery = IO_OFF);var_highBattery_3:=predicate_4;guard_2 <-- lor(predicate_3,predicate_4);local_since <-- since(var_P_1);guard_3:=bool(local_since<=TIMEOUT);guard_4:=bool(TIMEOUT<local_since);local_read:=var_read_1;predicate_5 <-- validBitPattern(PATTERN,add_uint32(local_read,1),var_currbit_2);predicate_6 <-- lnot(predicate_5);predicate_7:=var_highBattery_3;guard_5 <-- land(predicate_6,predicate_7);local_read:=var_read_1;predicate_8 <-- validBitPattern(PATTERN,add_uint32(local_read,1),var_currbit_2);predicate_9:=var_highBattery_3;guard_6 <-- land(predicate_8,predicate_9);predicate_10:=bool(i_CommsLink = IO_OFF);var_currbit_2:=predicate_10;predicate_11:=bool(i_HighBattery = IO_OFF);var_highBattery_3:=predicate_11;predicate_12 <-- lor(predicate_10,predicate_11);predicate_13:=bool(TIMEOUT<local_since);predicate_14:=var_highBattery_3;predicate_15 <-- land(predicate_13,predicate_14);guard_7 <-- land(predicate_12,predicate_15);predicate_16:=var_highBattery_3;guard_8 <-- lnot(predicate_16);predicate_17:=bool(i_CommsLink = IO_ON);var_currbit_2:=predicate_17;predicate_18:=bool(i_HighBattery = IO_ON);var_highBattery_3:=predicate_18;guard_9 <-- land(predicate_17,predicate_18);predicate_19:=var_highBattery_3;guard_10 <-- lnot(predicate_19);IF guard_1 = TRUE THEN IF guard_5 = TRUE THEN IF guard_3 = TRUE THEN o_Proceed:=IO_ON;SM_SimBCMonitor_state:=EXEC_2 ELSIF guard_4 = TRUE THEN o_Proceed:=IO_OFF;SM_SimBCMonitor_state:=EXEC_2 END ELSIF guard_6 = TRUE THEN IF guard_7 = TRUE THEN o_Proceed:=IO_OFF;SM_SimBCMonitor_state:=EXEC_2 ELSIF guard_8 = TRUE THEN SM_SimBCMonitor_state:=EXEC_3 ELSIF guard_9 = TRUE THEN IF guard_5 = TRUE THEN IF guard_3 = TRUE THEN o_Proceed:=IO_ON;SM_SimBCMonitor_state:=EXEC_2 ELSIF guard_4 = TRUE THEN o_Proceed:=IO_OFF;SM_SimBCMonitor_state:=EXEC_2 END ELSIF guard_10 = TRUE THEN SM_SimBCMonitor_state:=EXEC_3 END END ELSIF guard_10 = TRUE THEN SM_SimBCMonitor_state:=EXEC_3 END ELSIF guard_2 = TRUE THEN IF guard_3 = TRUE THEN o_Proceed:=IO_ON;SM_SimBCMonitor_state:=EXEC_2 ELSIF guard_4 = TRUE THEN o_Proceed:=IO_OFF;SM_SimBCMonitor_state:=EXEC_2 END END END ELSIF SM_SimBCMonitor_state = EXEC_3 THEN o_Proceed:=IO_OFF END;cycle_state:=st_WRITE_OUTPUTS);
  List_Substitution(Implementation(logic_i),validBitPattern)==(valid: (valid: BOOL);var_read_1:=rr;IF cc = TRUE THEN var_patternBit_1:=FALSE;var_patternBit_2:=pp;valid:=TRUE ELSE var_patternBit_1:=TRUE;var_patternBit_2:=FALSE;valid:=FALSE END);
  List_Substitution(Implementation(logic_i),get_board_0_O1)==(po:=board_0_O1);
  List_Substitution(Implementation(logic_i),get_board_0_O2)==(po:=board_0_O2)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(logic_i))==(?);
  Inherited_List_Constants(Implementation(logic_i))==(?);
  List_Constants(Implementation(logic_i))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(logic_i))==(?);
  Context_List_Defered(Implementation(logic_i))==(?);
  Context_List_Sets(Implementation(logic_i))==(?);
  List_Own_Enumerated(Implementation(logic_i))==(?);
  List_Valuable_Sets(Implementation(logic_i))==(?);
  Inherited_List_Enumerated(Implementation(logic_i))==(?);
  Inherited_List_Defered(Implementation(logic_i))==(?);
  Inherited_List_Sets(Implementation(logic_i))==(?);
  List_Enumerated(Implementation(logic_i))==(?);
  List_Defered(Implementation(logic_i))==(?);
  List_Sets(Implementation(logic_i))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(logic_i))==(?);
  Expanded_List_HiddenConstants(Implementation(logic_i))==(?);
  List_HiddenConstants(Implementation(logic_i))==(?);
  External_List_HiddenConstants(Implementation(logic_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(logic_i))==(btrue);
  Context_List_Properties(Implementation(logic_i))==(uint32_t = 0..4294967295 & uint16_t = 0..65535 & uint8_t = 0..255 & STRUE: uint8_t & SFALSE: uint8_t & MAX_UINT32: uint32_t & MAX_UINT16: uint16_t & MAX_UINT8: uint8_t & STRUE: 0..MAX_UINT8 & SFALSE: 0..MAX_UINT8 & STRUE/=SFALSE & SBOOL = {STRUE,SFALSE} & STRUE<=2 & SFALSE<=2 & MAX_UINT32 = 4294967295 & MAX_UINT16 = 65535 & MAX_UINT8 = 255 & Convert_Bool = {TRUE|->STRUE,FALSE|->SFALSE} & bitwise_sll_uint32: uint32_t*uint8_t --> uint32_t & bitwise_srl_uint32: uint32_t*uint8_t --> uint32_t & bitwise_not_uint32: uint32_t --> uint32_t & bitwise_and_uint32: uint32_t*uint32_t --> uint32_t & bitwise_xor_uint32: uint32_t*uint32_t --> uint32_t & bitwise_or_uint32: uint32_t*uint32_t --> uint32_t & bitwise_sll_uint16: uint16_t*uint8_t --> uint16_t & bitwise_srl_uint16: uint16_t*uint8_t --> uint16_t & bitwise_not_uint16: uint16_t --> uint16_t & bitwise_and_uint16: uint16_t*uint16_t --> uint16_t & bitwise_xor_uint16: uint16_t*uint16_t --> uint16_t & bitwise_or_uint16: uint16_t*uint16_t --> uint16_t & bitwise_sll_uint8: uint8_t*uint8_t --> uint8_t & bitwise_srl_uint8: uint8_t*uint8_t --> uint8_t & bitwise_not_uint8: uint8_t --> uint8_t & bitwise_and_uint8: uint8_t*uint8_t --> uint8_t & bitwise_xor_uint8: uint8_t*uint8_t --> uint8_t & bitwise_or_uint8: uint8_t*uint8_t --> uint8_t & add_uint32: uint32_t*uint32_t --> uint32_t & sub_uint32: uint32_t*uint32_t --> uint32_t & mul_uint32: uint32_t*uint32_t --> uint32_t & add_uint16: uint16_t*uint16_t --> uint16_t & sub_uint16: uint16_t*uint16_t --> uint16_t & mul_uint16: uint16_t*uint16_t --> uint16_t & add_uint8: uint8_t*uint8_t --> uint8_t & sub_uint8: uint8_t*uint8_t --> uint8_t & mul_uint8: uint8_t*uint8_t --> uint8_t & bitwise_sll_uint32 = %(x1,x2).(x1: uint32_t & x2: uint8_t | x1*2**x2 mod (MAX_UINT32+1)) & bitwise_sll_uint16 = %(x1,x2).(x1: uint16_t & x2: uint8_t | x1*2**x2 mod (MAX_UINT16+1)) & bitwise_sll_uint8 = %(x1,x2).(x1: uint8_t & x2: uint8_t | x1*2**x2 mod (MAX_UINT8+1)) & bitwise_srl_uint32 = %(x1,x2).(x1: uint32_t & x2: uint8_t | x1/2**x2) & bitwise_srl_uint16 = %(x1,x2).(x1: uint16_t & x2: uint8_t | x1/2**x2) & bitwise_srl_uint8 = %(x1,x2).(x1: uint8_t & x2: uint8_t | x1/2**x2) & add_uint32 = %(x1,x2).(x1: uint32_t & x2: uint32_t | (x1+x2) mod (MAX_UINT32+1)) & sub_uint32 = %(x1,x2).(x1: uint32_t & x2: uint32_t | (x1-x2+MAX_UINT32+1) mod (MAX_UINT32+1)) & mul_uint32 = %(x1,x2).(x1: uint32_t & x2: uint32_t | x1*x2 mod (MAX_UINT32+1)) & add_uint16 = %(y1,y2).(y1: uint16_t & y2: uint16_t | (y1+y2) mod (MAX_UINT16+1)) & sub_uint16 = %(y1,y2).(y1: uint16_t & y2: uint16_t | (y1-y2+MAX_UINT16+1) mod (MAX_UINT16+1)) & mul_uint16 = %(y1,y2).(y1: uint16_t & y2: uint16_t | y1*y2 mod (MAX_UINT16+1)) & add_uint8 = %(y1,y2).(y1: uint8_t & y2: uint8_t | (y1+y2) mod (MAX_UINT8+1)) & sub_uint8 = %(y1,y2).(y1: uint8_t & y2: uint8_t | (y1-y2+MAX_UINT8+1) mod (MAX_UINT8+1)) & mul_uint8 = %(y1,y2).(y1: uint8_t & y2: uint8_t | y1*y2 mod (MAX_UINT8+1)) & !(ui1,ui2).(ui1: uint16_t & ui2: uint16_t => bitwise_and_uint16(ui1|->ui2)<=ui2) & !(ui1,ui2).(ui1: uint32_t & ui2: uint32_t => bitwise_and_uint32(ui1|->ui2)<=ui2) & TIME = uint32_t & IO_STATE = uint8_t & IO_ON: uint8_t & IO_OFF: uint8_t & IO_ON/=IO_OFF & IO_ON: IO_STATE & IO_OFF: IO_STATE & SimBCMonitor_cycle_def: uint32_t & cycle_unit: uint32_t & st_READ_INPUTS: uint8_t & st_STATE_MACHINE: uint8_t & st_WRITE_OUTPUTS: uint8_t & st_TIME: uint8_t & INIT: uint8_t & EXEC_1: uint8_t & EXEC_2: uint8_t & EXEC_3: uint8_t & PATTERN: BOOL & TIMEOUT: uint32_t);
  Inherited_List_Properties(Implementation(logic_i))==(btrue);
  List_Properties(Implementation(logic_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(logic_i))==(aa: aa);
  List_Values(Implementation(logic_i))==(?)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Implementation(logic_i),Machine(inputs))==(read_inputs,get_board_0_I1,get_board_0_I2,get_board_0_I3);
  Seen_Context_List_Enumerated(Implementation(logic_i))==(?);
  Seen_Context_List_Invariant(Implementation(logic_i))==(btrue);
  Seen_Context_List_Assertions(Implementation(logic_i))==(Convert_Bool: BOOL +-> uint8_t & Convert_Bool: BOOL +-> uint16_t & Convert_Bool: BOOL +-> uint32_t);
  Seen_Context_List_Properties(Implementation(logic_i))==(uint32_t = 0..4294967295 & uint16_t = 0..65535 & uint8_t = 0..255 & STRUE: uint8_t & SFALSE: uint8_t & MAX_UINT32: uint32_t & MAX_UINT16: uint16_t & MAX_UINT8: uint8_t & STRUE: 0..MAX_UINT8 & SFALSE: 0..MAX_UINT8 & STRUE/=SFALSE & SBOOL = {STRUE,SFALSE} & STRUE<=2 & SFALSE<=2 & MAX_UINT32 = 4294967295 & MAX_UINT16 = 65535 & MAX_UINT8 = 255 & Convert_Bool = {TRUE|->STRUE,FALSE|->SFALSE} & MAX_NB_MODULES: uint8_t & MAX_NB_INPUTS: uint8_t & MAX_NB_OUTPUTS: uint8_t & MAX_NB_MODULES = 1 & MAX_NB_INPUTS = 3 & MAX_NB_OUTPUTS = 2);
  Seen_List_Constraints(Implementation(logic_i))==(btrue);
  Seen_List_Precondition(Implementation(logic_i),get_board_0_I3)==(po: uint8_t);
  Seen_Expanded_List_Substitution(Implementation(logic_i),get_board_0_I3)==(po:=board_0_I3);
  Seen_List_Precondition(Implementation(logic_i),get_board_0_I2)==(po: uint8_t);
  Seen_Expanded_List_Substitution(Implementation(logic_i),get_board_0_I2)==(po:=board_0_I2);
  Seen_List_Precondition(Implementation(logic_i),get_board_0_I1)==(po: uint8_t);
  Seen_Expanded_List_Substitution(Implementation(logic_i),get_board_0_I1)==(po:=board_0_I1);
  Seen_List_Precondition(Implementation(logic_i),read_inputs)==(btrue);
  Seen_Expanded_List_Substitution(Implementation(logic_i),read_inputs)==(@(board_0_I1$0).(board_0_I1$0: uint8_t ==> board_0_I1:=board_0_I1$0) || @(board_0_I2$0).(board_0_I2$0: uint8_t ==> board_0_I2:=board_0_I2$0) || @(board_0_I3$0).(board_0_I3$0: uint8_t ==> board_0_I3:=board_0_I3$0));
  Seen_List_Operations(Implementation(logic_i),Machine(inputs))==(read_inputs,get_board_0_I1,get_board_0_I2,get_board_0_I3);
  Seen_Expanded_List_Invariant(Implementation(logic_i),Machine(inputs))==(btrue);
  Seen_Internal_List_Operations(Implementation(logic_i),Machine(user_ctx))==(?);
  Seen_List_Operations(Implementation(logic_i),Machine(user_ctx))==(?);
  Seen_Expanded_List_Invariant(Implementation(logic_i),Machine(user_ctx))==(btrue);
  Seen_Internal_List_Operations(Implementation(logic_i),Machine(lchip_interface))==(print_global_inputs,read_global_input,write_global_output,get_ms_tick,print_uint8);
  Seen_List_Precondition(Implementation(logic_i),print_uint8)==(tag: uint8_t & value: uint8_t);
  Seen_Expanded_List_Substitution(Implementation(logic_i),print_uint8)==(skip);
  Seen_List_Precondition(Implementation(logic_i),get_ms_tick)==(out: uint32_t);
  Seen_Expanded_List_Substitution(Implementation(logic_i),get_ms_tick)==(out:=ms_tick);
  Seen_List_Precondition(Implementation(logic_i),write_global_output)==(output_id: uint8_t & output_id<MAX_NB_OUTPUTS & state: uint8_t);
  Seen_Expanded_List_Substitution(Implementation(logic_i),write_global_output)==(skip);
  Seen_List_Precondition(Implementation(logic_i),read_global_input)==(input_id: uint8_t & input_id<MAX_NB_INPUTS & state: uint8_t);
  Seen_Expanded_List_Substitution(Implementation(logic_i),read_global_input)==(@(state$0).(state$0: uint8_t ==> state:=state$0));
  Seen_List_Precondition(Implementation(logic_i),print_global_inputs)==(btrue);
  Seen_Expanded_List_Substitution(Implementation(logic_i),print_global_inputs)==(skip);
  Seen_List_Operations(Implementation(logic_i),Machine(lchip_interface))==(print_global_inputs,read_global_input,write_global_output,get_ms_tick,print_uint8);
  Seen_Expanded_List_Invariant(Implementation(logic_i),Machine(lchip_interface))==(btrue);
  Seen_Internal_List_Operations(Implementation(logic_i),Machine(io_constants))==(?);
  Seen_List_Operations(Implementation(logic_i),Machine(io_constants))==(?);
  Seen_Expanded_List_Invariant(Implementation(logic_i),Machine(io_constants))==(btrue);
  Seen_Internal_List_Operations(Implementation(logic_i),Machine(g_operators))==(?);
  Seen_List_Operations(Implementation(logic_i),Machine(g_operators))==(?);
  Seen_Expanded_List_Invariant(Implementation(logic_i),Machine(g_operators))==(btrue);
  Seen_Internal_List_Operations(Implementation(logic_i),Machine(g_types))==(?);
  Seen_List_Operations(Implementation(logic_i),Machine(g_types))==(?);
  Seen_Expanded_List_Invariant(Implementation(logic_i),Machine(g_types))==(btrue)
END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(logic_i),Machine(inputs))==(read_inputs,get_board_0_I1,get_board_0_I2,get_board_0_I3);
  List_Included_Operations(Implementation(logic_i),Machine(lchip_interface))==(print_global_inputs,read_global_input,write_global_output,get_ms_tick,print_uint8)
END
&
THEORY InheritedEnvX IS
  VisibleVariables(Implementation(logic_i))==(Type(board_0_O1) == Mvv(btype(INTEGER,?,?));Type(board_0_O2) == Mvv(btype(INTEGER,?,?));Type(first_time) == Mvv(btype(BOOL,?,?));Type(SM_SimBCMonitor_state) == Mvv(btype(INTEGER,?,?));Type(cycle_timer) == Mvv(btype(INTEGER,?,?));Type(cycle_state) == Mvv(btype(INTEGER,?,?));Type(var_read_1) == Mvv(btype(INTEGER,?,?));Type(var_currbit_2) == Mvv(btype(BOOL,?,?));Type(var_highBattery_3) == Mvv(btype(BOOL,?,?));Type(var_P_1) == Mvv(btype(INTEGER,?,?));Type(var_patternBit_1) == Mvv(btype(BOOL,?,?));Type(var_patternBit_2) == Mvv(btype(BOOL,?,?));Type(i_MissionStart) == Mvv(btype(INTEGER,?,?));Type(i_CommsLink) == Mvv(btype(INTEGER,?,?));Type(i_HighBattery) == Mvv(btype(INTEGER,?,?));Type(o_Proceed) == Mvv(btype(INTEGER,?,?)));
  Operations(Implementation(logic_i))==(Type(get_board_0_O2) == Cst(btype(INTEGER,?,?),No_type);Type(get_board_0_O1) == Cst(btype(INTEGER,?,?),No_type);Type(user_logic) == Cst(No_type,No_type))
END
&
THEORY ListVisibleStaticX IS
  List_Constants(Implementation(logic_i),Machine(user_ctx))==(SimBCMonitor_cycle_def,cycle_unit,st_READ_INPUTS,st_STATE_MACHINE,st_WRITE_OUTPUTS,st_TIME,INIT,EXEC_1,EXEC_2,EXEC_3,PATTERN,TIMEOUT);
  List_Constants_Env(Implementation(logic_i),Machine(user_ctx))==(Type(SimBCMonitor_cycle_def) == Cst(btype(INTEGER,?,?));Type(cycle_unit) == Cst(btype(INTEGER,?,?));Type(st_READ_INPUTS) == Cst(btype(INTEGER,?,?));Type(st_STATE_MACHINE) == Cst(btype(INTEGER,?,?));Type(st_WRITE_OUTPUTS) == Cst(btype(INTEGER,?,?));Type(st_TIME) == Cst(btype(INTEGER,?,?));Type(INIT) == Cst(btype(INTEGER,?,?));Type(EXEC_1) == Cst(btype(INTEGER,?,?));Type(EXEC_2) == Cst(btype(INTEGER,?,?));Type(EXEC_3) == Cst(btype(INTEGER,?,?));Type(PATTERN) == Cst(btype(BOOL,?,?));Type(TIMEOUT) == Cst(btype(INTEGER,?,?)));
  List_Constants(Implementation(logic_i),Machine(io_constants))==(IO_ON,IO_OFF);
  List_Constants_Env(Implementation(logic_i),Machine(io_constants))==(Type(IO_ON) == Cst(btype(INTEGER,?,?));Type(IO_OFF) == Cst(btype(INTEGER,?,?)));
  List_Constants(Implementation(logic_i),Machine(g_operators))==(bitwise_sll_uint32,bitwise_srl_uint32,bitwise_not_uint32,bitwise_and_uint32,bitwise_xor_uint32,bitwise_or_uint32,bitwise_sll_uint16,bitwise_srl_uint16,bitwise_not_uint16,bitwise_and_uint16,bitwise_xor_uint16,bitwise_or_uint16,bitwise_sll_uint8,bitwise_srl_uint8,bitwise_not_uint8,bitwise_and_uint8,bitwise_xor_uint8,bitwise_or_uint8,add_uint32,sub_uint32,mul_uint32,add_uint16,sub_uint16,mul_uint16,add_uint8,sub_uint8,mul_uint8);
  List_Constants_Env(Implementation(logic_i),Machine(g_operators))==(Type(bitwise_sll_uint32) == Cst(SetOf(btype(INTEGER,"[uint32_t","]uint32_t")*btype(INTEGER,"[uint8_t","]uint8_t")*btype(INTEGER,"[uint32_t","]uint32_t")));Type(bitwise_srl_uint32) == Cst(SetOf(btype(INTEGER,"[uint32_t","]uint32_t")*btype(INTEGER,"[uint8_t","]uint8_t")*btype(INTEGER,"[uint32_t","]uint32_t")));Type(bitwise_not_uint32) == Cst(SetOf(btype(INTEGER,"[uint32_t","]uint32_t")*btype(INTEGER,"[uint32_t","]uint32_t")));Type(bitwise_and_uint32) == Cst(SetOf(btype(INTEGER,"[uint32_t","]uint32_t")*btype(INTEGER,"[uint32_t","]uint32_t")*btype(INTEGER,"[uint32_t","]uint32_t")));Type(bitwise_xor_uint32) == Cst(SetOf(btype(INTEGER,"[uint32_t","]uint32_t")*btype(INTEGER,"[uint32_t","]uint32_t")*btype(INTEGER,"[uint32_t","]uint32_t")));Type(bitwise_or_uint32) == Cst(SetOf(btype(INTEGER,"[uint32_t","]uint32_t")*btype(INTEGER,"[uint32_t","]uint32_t")*btype(INTEGER,"[uint32_t","]uint32_t")));Type(bitwise_sll_uint16) == Cst(SetOf(btype(INTEGER,"[uint16_t","]uint16_t")*btype(INTEGER,"[uint8_t","]uint8_t")*btype(INTEGER,"[uint16_t","]uint16_t")));Type(bitwise_srl_uint16) == Cst(SetOf(btype(INTEGER,"[uint16_t","]uint16_t")*btype(INTEGER,"[uint8_t","]uint8_t")*btype(INTEGER,"[uint16_t","]uint16_t")));Type(bitwise_not_uint16) == Cst(SetOf(btype(INTEGER,"[uint16_t","]uint16_t")*btype(INTEGER,"[uint16_t","]uint16_t")));Type(bitwise_and_uint16) == Cst(SetOf(btype(INTEGER,"[uint16_t","]uint16_t")*btype(INTEGER,"[uint16_t","]uint16_t")*btype(INTEGER,"[uint16_t","]uint16_t")));Type(bitwise_xor_uint16) == Cst(SetOf(btype(INTEGER,"[uint16_t","]uint16_t")*btype(INTEGER,"[uint16_t","]uint16_t")*btype(INTEGER,"[uint16_t","]uint16_t")));Type(bitwise_or_uint16) == Cst(SetOf(btype(INTEGER,"[uint16_t","]uint16_t")*btype(INTEGER,"[uint16_t","]uint16_t")*btype(INTEGER,"[uint16_t","]uint16_t")));Type(bitwise_sll_uint8) == Cst(SetOf(btype(INTEGER,"[uint8_t","]uint8_t")*btype(INTEGER,"[uint8_t","]uint8_t")*btype(INTEGER,"[uint8_t","]uint8_t")));Type(bitwise_srl_uint8) == Cst(SetOf(btype(INTEGER,"[uint8_t","]uint8_t")*btype(INTEGER,"[uint8_t","]uint8_t")*btype(INTEGER,"[uint8_t","]uint8_t")));Type(bitwise_not_uint8) == Cst(SetOf(btype(INTEGER,"[uint8_t","]uint8_t")*btype(INTEGER,"[uint8_t","]uint8_t")));Type(bitwise_and_uint8) == Cst(SetOf(btype(INTEGER,"[uint8_t","]uint8_t")*btype(INTEGER,"[uint8_t","]uint8_t")*btype(INTEGER,"[uint8_t","]uint8_t")));Type(bitwise_xor_uint8) == Cst(SetOf(btype(INTEGER,"[uint8_t","]uint8_t")*btype(INTEGER,"[uint8_t","]uint8_t")*btype(INTEGER,"[uint8_t","]uint8_t")));Type(bitwise_or_uint8) == Cst(SetOf(btype(INTEGER,"[uint8_t","]uint8_t")*btype(INTEGER,"[uint8_t","]uint8_t")*btype(INTEGER,"[uint8_t","]uint8_t")));Type(add_uint32) == Cst(SetOf(btype(INTEGER,"[uint32_t","]uint32_t")*btype(INTEGER,"[uint32_t","]uint32_t")*btype(INTEGER,"[uint32_t","]uint32_t")));Type(sub_uint32) == Cst(SetOf(btype(INTEGER,"[uint32_t","]uint32_t")*btype(INTEGER,"[uint32_t","]uint32_t")*btype(INTEGER,"[uint32_t","]uint32_t")));Type(mul_uint32) == Cst(SetOf(btype(INTEGER,"[uint32_t","]uint32_t")*btype(INTEGER,"[uint32_t","]uint32_t")*btype(INTEGER,"[uint32_t","]uint32_t")));Type(add_uint16) == Cst(SetOf(btype(INTEGER,"[uint16_t","]uint16_t")*btype(INTEGER,"[uint16_t","]uint16_t")*btype(INTEGER,"[uint16_t","]uint16_t")));Type(sub_uint16) == Cst(SetOf(btype(INTEGER,"[uint16_t","]uint16_t")*btype(INTEGER,"[uint16_t","]uint16_t")*btype(INTEGER,"[uint16_t","]uint16_t")));Type(mul_uint16) == Cst(SetOf(btype(INTEGER,"[uint16_t","]uint16_t")*btype(INTEGER,"[uint16_t","]uint16_t")*btype(INTEGER,"[uint16_t","]uint16_t")));Type(add_uint8) == Cst(SetOf(btype(INTEGER,"[uint8_t","]uint8_t")*btype(INTEGER,"[uint8_t","]uint8_t")*btype(INTEGER,"[uint8_t","]uint8_t")));Type(sub_uint8) == Cst(SetOf(btype(INTEGER,"[uint8_t","]uint8_t")*btype(INTEGER,"[uint8_t","]uint8_t")*btype(INTEGER,"[uint8_t","]uint8_t")));Type(mul_uint8) == Cst(SetOf(btype(INTEGER,"[uint8_t","]uint8_t")*btype(INTEGER,"[uint8_t","]uint8_t")*btype(INTEGER,"[uint8_t","]uint8_t"))));
  List_Constants(Implementation(logic_i),Machine(g_types))==(uint32_t,uint16_t,uint8_t,STRUE,SFALSE,MAX_UINT32,MAX_UINT16,MAX_UINT8);
  List_Constants_Env(Implementation(logic_i),Machine(g_types))==(Type(uint32_t) == Cst(SetOf(btype(INTEGER,"[uint32_t","]uint32_t")));Type(uint16_t) == Cst(SetOf(btype(INTEGER,"[uint16_t","]uint16_t")));Type(uint8_t) == Cst(SetOf(btype(INTEGER,"[uint8_t","]uint8_t")));Type(STRUE) == Cst(btype(INTEGER,?,?));Type(SFALSE) == Cst(btype(INTEGER,?,?));Type(MAX_UINT32) == Cst(btype(INTEGER,?,?));Type(MAX_UINT16) == Cst(btype(INTEGER,?,?));Type(MAX_UINT8) == Cst(btype(INTEGER,?,?)))
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(logic_i)) == (? | ? | ? | ? | user_logic,execute_model_cycle,since,land,lor,lnot,read_model_inputs,write_model_outputs,SM_SimBCMonitor,validBitPattern,get_board_0_O1,get_board_0_O2,refinement_of_validBitPattern,refinement_of_SM_SimBCMonitor,refinement_of_write_model_outputs,refinement_of_read_model_inputs,refinement_of_lnot,refinement_of_lor,refinement_of_land,refinement_of_since,refinement_of_execute_model_cycle | ? | seen(Machine(g_types)),seen(Machine(g_operators)),seen(Machine(io_constants)),seen(Machine(lchip_interface)),seen(Machine(user_ctx)),seen(Machine(inputs)) | ? | logic_i);
  List_Of_HiddenCst_Ids(Implementation(logic_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(logic_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(logic_i)) == (o_Proceed,i_HighBattery,i_CommsLink,i_MissionStart,var_patternBit_2,var_patternBit_1,var_P_1,var_highBattery_3,var_currbit_2,var_read_1,cycle_state,cycle_timer,SM_SimBCMonitor_state,first_time,board_0_O2,board_0_O1 | ?);
  List_Of_Ids_SeenBNU(Implementation(logic_i)) == (?: ?);
  List_Of_Ids(Machine(inputs)) == (? | ? | board_0_I3,board_0_I2,board_0_I1 | ? | read_inputs,get_board_0_I1,get_board_0_I2,get_board_0_I3 | ? | seen(Machine(g_types)) | ? | inputs);
  List_Of_HiddenCst_Ids(Machine(inputs)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(inputs)) == (?);
  List_Of_VisibleVar_Ids(Machine(inputs)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(inputs)) == (?: ?);
  List_Of_Ids(Machine(g_types)) == (uint32_t,uint16_t,uint8_t,STRUE,SFALSE,MAX_UINT32,MAX_UINT16,MAX_UINT8 | ? | ? | ? | ? | ? | ? | ? | g_types);
  List_Of_HiddenCst_Ids(Machine(g_types)) == (SBOOL,Convert_Bool | ?);
  List_Of_VisibleCst_Ids(Machine(g_types)) == (uint32_t,uint16_t,uint8_t,STRUE,SFALSE,MAX_UINT32,MAX_UINT16,MAX_UINT8);
  List_Of_VisibleVar_Ids(Machine(g_types)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(g_types)) == (?: ?);
  List_Of_Ids(Machine(user_ctx)) == (SimBCMonitor_cycle_def,cycle_unit,st_READ_INPUTS,st_STATE_MACHINE,st_WRITE_OUTPUTS,st_TIME,INIT,EXEC_1,EXEC_2,EXEC_3,PATTERN,TIMEOUT | ? | ? | ? | ? | ? | seen(Machine(g_types)) | ? | user_ctx);
  List_Of_HiddenCst_Ids(Machine(user_ctx)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(user_ctx)) == (SimBCMonitor_cycle_def,cycle_unit,st_READ_INPUTS,st_STATE_MACHINE,st_WRITE_OUTPUTS,st_TIME,INIT,EXEC_1,EXEC_2,EXEC_3,PATTERN,TIMEOUT);
  List_Of_VisibleVar_Ids(Machine(user_ctx)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(user_ctx)) == (?: ?);
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
  List_Of_Ids(Machine(io_constants)) == (IO_ON,IO_OFF | ? | ? | ? | ? | ? | seen(Machine(g_types)) | ? | io_constants);
  List_Of_HiddenCst_Ids(Machine(io_constants)) == (IO_STATE,TIME | ?);
  List_Of_VisibleCst_Ids(Machine(io_constants)) == (IO_ON,IO_OFF);
  List_Of_VisibleVar_Ids(Machine(io_constants)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(io_constants)) == (?: ?);
  List_Of_Ids(Machine(g_operators)) == (bitwise_sll_uint32,bitwise_srl_uint32,bitwise_not_uint32,bitwise_and_uint32,bitwise_xor_uint32,bitwise_or_uint32,bitwise_sll_uint16,bitwise_srl_uint16,bitwise_not_uint16,bitwise_and_uint16,bitwise_xor_uint16,bitwise_or_uint16,bitwise_sll_uint8,bitwise_srl_uint8,bitwise_not_uint8,bitwise_and_uint8,bitwise_xor_uint8,bitwise_or_uint8,add_uint32,sub_uint32,mul_uint32,add_uint16,sub_uint16,mul_uint16,add_uint8,sub_uint8,mul_uint8 | ? | ? | ? | ? | ? | seen(Machine(g_types)) | ? | g_operators);
  List_Of_HiddenCst_Ids(Machine(g_operators)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(g_operators)) == (bitwise_sll_uint32,bitwise_srl_uint32,bitwise_not_uint32,bitwise_and_uint32,bitwise_xor_uint32,bitwise_or_uint32,bitwise_sll_uint16,bitwise_srl_uint16,bitwise_not_uint16,bitwise_and_uint16,bitwise_xor_uint16,bitwise_or_uint16,bitwise_sll_uint8,bitwise_srl_uint8,bitwise_not_uint8,bitwise_and_uint8,bitwise_xor_uint8,bitwise_or_uint8,add_uint32,sub_uint32,mul_uint32,add_uint16,sub_uint16,mul_uint16,add_uint8,sub_uint8,mul_uint8);
  List_Of_VisibleVar_Ids(Machine(g_operators)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(g_operators)) == (?: ?)
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(logic_i)) == (Type(o_Proceed) == Mvv(btype(INTEGER,?,?));Type(i_HighBattery) == Mvv(btype(INTEGER,?,?));Type(i_CommsLink) == Mvv(btype(INTEGER,?,?));Type(i_MissionStart) == Mvv(btype(INTEGER,?,?));Type(var_patternBit_2) == Mvv(btype(BOOL,?,?));Type(var_patternBit_1) == Mvv(btype(BOOL,?,?));Type(var_P_1) == Mvv(btype(INTEGER,?,?));Type(var_highBattery_3) == Mvv(btype(BOOL,?,?));Type(var_currbit_2) == Mvv(btype(BOOL,?,?));Type(var_read_1) == Mvv(btype(INTEGER,?,?));Type(cycle_state) == Mvv(btype(INTEGER,?,?));Type(cycle_timer) == Mvv(btype(INTEGER,?,?));Type(SM_SimBCMonitor_state) == Mvv(btype(INTEGER,?,?));Type(first_time) == Mvv(btype(BOOL,?,?));Type(board_0_O2) == Mvv(btype(INTEGER,?,?));Type(board_0_O1) == Mvv(btype(INTEGER,?,?)))
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(logic_i),user_logic, 1) == (Type(time_elapsed) == Lvl(btype(INTEGER,?,?));Type(cycle_duration) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(logic_i),since, 1) == (Type(local_time) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(logic_i),SM_SimBCMonitor, 1) == (Type(guard_1) == Lvl(btype(BOOL,?,?));Type(guard_2) == Lvl(btype(BOOL,?,?));Type(guard_3) == Lvl(btype(BOOL,?,?));Type(guard_4) == Lvl(btype(BOOL,?,?));Type(guard_5) == Lvl(btype(BOOL,?,?));Type(guard_6) == Lvl(btype(BOOL,?,?));Type(guard_7) == Lvl(btype(BOOL,?,?));Type(guard_8) == Lvl(btype(BOOL,?,?));Type(guard_9) == Lvl(btype(BOOL,?,?));Type(guard_10) == Lvl(btype(BOOL,?,?));Type(local_since) == Lvl(btype(INTEGER,?,?));Type(local_read) == Lvl(btype(INTEGER,?,?));Type(predicate_1) == Lvl(btype(BOOL,?,?));Type(predicate_2) == Lvl(btype(BOOL,?,?));Type(predicate_3) == Lvl(btype(BOOL,?,?));Type(predicate_4) == Lvl(btype(BOOL,?,?));Type(predicate_5) == Lvl(btype(BOOL,?,?));Type(predicate_6) == Lvl(btype(BOOL,?,?));Type(predicate_7) == Lvl(btype(BOOL,?,?));Type(predicate_8) == Lvl(btype(BOOL,?,?));Type(predicate_9) == Lvl(btype(BOOL,?,?));Type(predicate_10) == Lvl(btype(BOOL,?,?));Type(predicate_11) == Lvl(btype(BOOL,?,?));Type(predicate_12) == Lvl(btype(BOOL,?,?));Type(predicate_13) == Lvl(btype(BOOL,?,?));Type(predicate_14) == Lvl(btype(BOOL,?,?));Type(predicate_15) == Lvl(btype(BOOL,?,?));Type(predicate_16) == Lvl(btype(BOOL,?,?));Type(predicate_17) == Lvl(btype(BOOL,?,?));Type(predicate_18) == Lvl(btype(BOOL,?,?));Type(predicate_19) == Lvl(btype(BOOL,?,?)))
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
  List_Local_Operations(Implementation(logic_i))==(execute_model_cycle,since,land,lor,lnot,read_model_inputs,write_model_outputs,SM_SimBCMonitor,validBitPattern)
END
&
THEORY ListLocalInputX IS
  List_Local_Input(Implementation(logic_i),execute_model_cycle)==(?);
  List_Local_Input(Implementation(logic_i),since)==(timer);
  List_Local_Input(Implementation(logic_i),land)==(pp,qq);
  List_Local_Input(Implementation(logic_i),lor)==(pp,qq);
  List_Local_Input(Implementation(logic_i),lnot)==(pp);
  List_Local_Input(Implementation(logic_i),read_model_inputs)==(?);
  List_Local_Input(Implementation(logic_i),write_model_outputs)==(?);
  List_Local_Input(Implementation(logic_i),SM_SimBCMonitor)==(?);
  List_Local_Input(Implementation(logic_i),validBitPattern)==(pp,rr,cc)
END
&
THEORY ListLocalOutputX IS
  List_Local_Output(Implementation(logic_i),execute_model_cycle)==(?);
  List_Local_Output(Implementation(logic_i),since)==(elapsed);
  List_Local_Output(Implementation(logic_i),land)==(result);
  List_Local_Output(Implementation(logic_i),lor)==(result);
  List_Local_Output(Implementation(logic_i),lnot)==(result);
  List_Local_Output(Implementation(logic_i),read_model_inputs)==(?);
  List_Local_Output(Implementation(logic_i),write_model_outputs)==(?);
  List_Local_Output(Implementation(logic_i),SM_SimBCMonitor)==(?);
  List_Local_Output(Implementation(logic_i),validBitPattern)==(valid)
END
&
THEORY ListLocalHeaderX IS
  List_Local_Header(Implementation(logic_i),execute_model_cycle)==(execute_model_cycle);
  List_Local_Header(Implementation(logic_i),since)==(elapsed <-- since(timer));
  List_Local_Header(Implementation(logic_i),land)==(result <-- land(pp,qq));
  List_Local_Header(Implementation(logic_i),lor)==(result <-- lor(pp,qq));
  List_Local_Header(Implementation(logic_i),lnot)==(result <-- lnot(pp));
  List_Local_Header(Implementation(logic_i),read_model_inputs)==(read_model_inputs);
  List_Local_Header(Implementation(logic_i),write_model_outputs)==(write_model_outputs);
  List_Local_Header(Implementation(logic_i),SM_SimBCMonitor)==(SM_SimBCMonitor);
  List_Local_Header(Implementation(logic_i),validBitPattern)==(valid <-- validBitPattern(pp,rr,cc))
END
&
THEORY ListLocalPreconditionX IS
  List_Local_Precondition(Implementation(logic_i),execute_model_cycle)==(btrue);
  List_Local_Precondition(Implementation(logic_i),since)==(timer: uint32_t & elapsed: uint32_t);
  List_Local_Precondition(Implementation(logic_i),land)==(pp: BOOL & qq: BOOL & result: BOOL);
  List_Local_Precondition(Implementation(logic_i),lor)==(pp: BOOL & qq: BOOL & result: BOOL);
  List_Local_Precondition(Implementation(logic_i),lnot)==(pp: BOOL & result: BOOL);
  List_Local_Precondition(Implementation(logic_i),read_model_inputs)==(cycle_state = st_READ_INPUTS);
  List_Local_Precondition(Implementation(logic_i),write_model_outputs)==(cycle_state = st_WRITE_OUTPUTS);
  List_Local_Precondition(Implementation(logic_i),SM_SimBCMonitor)==(cycle_state = st_STATE_MACHINE);
  List_Local_Precondition(Implementation(logic_i),validBitPattern)==(valid: BOOL & pp: BOOL & rr: uint32_t & cc: BOOL)
END
&
THEORY ListLocalSubstitutionX IS
  Expanded_List_Local_Substitution(Implementation(logic_i),validBitPattern)==(valid: BOOL & pp: BOOL & rr: uint32_t & cc: BOOL | @(valid$0).(valid$0: BOOL ==> valid:=valid$0) || @(var_read_1$0).(var_read_1$0: uint32_t ==> var_read_1:=var_read_1$0) || @(var_patternBit_1$0).(var_patternBit_1$0: BOOL ==> var_patternBit_1:=var_patternBit_1$0) || @(var_patternBit_2$0).(var_patternBit_2$0: BOOL ==> var_patternBit_2:=var_patternBit_2$0));
  Expanded_List_Local_Substitution(Implementation(logic_i),SM_SimBCMonitor)==(cycle_state = st_STATE_MACHINE | @(cycle_state$0).(cycle_state$0: uint8_t ==> cycle_state:=cycle_state$0) || @(SM_SimBCMonitor_state$0).(SM_SimBCMonitor_state$0: uint32_t ==> SM_SimBCMonitor_state:=SM_SimBCMonitor_state$0) || @(var_patternBit_1$0).(var_patternBit_1$0: BOOL ==> var_patternBit_1:=var_patternBit_1$0) || @(var_patternBit_2$0).(var_patternBit_2$0: BOOL ==> var_patternBit_2:=var_patternBit_2$0) || @(var_P_1$0).(var_P_1$0: uint32_t ==> var_P_1:=var_P_1$0) || @(var_read_1$0).(var_read_1$0: uint32_t ==> var_read_1:=var_read_1$0) || @(var_currbit_2$0).(var_currbit_2$0: BOOL ==> var_currbit_2:=var_currbit_2$0) || @(var_highBattery_3$0).(var_highBattery_3$0: BOOL ==> var_highBattery_3:=var_highBattery_3$0) || @(o_Proceed$0).(o_Proceed$0: uint8_t ==> o_Proceed:=o_Proceed$0));
  Expanded_List_Local_Substitution(Implementation(logic_i),write_model_outputs)==(cycle_state = st_WRITE_OUTPUTS | @(cycle_state$0).(cycle_state$0: uint8_t ==> cycle_state:=cycle_state$0) || @(board_0_O1$0).(board_0_O1$0: uint8_t ==> board_0_O1:=board_0_O1$0) || @(board_0_O2$0).(board_0_O2$0: uint8_t ==> board_0_O2:=board_0_O2$0));
  Expanded_List_Local_Substitution(Implementation(logic_i),read_model_inputs)==(cycle_state = st_READ_INPUTS | @(var_currbit_2$0).(var_currbit_2$0: BOOL ==> var_currbit_2:=var_currbit_2$0) || @(var_highBattery_3$0).(var_highBattery_3$0: BOOL ==> var_highBattery_3:=var_highBattery_3$0) || @(cycle_state$0).(cycle_state$0: uint8_t ==> cycle_state:=cycle_state$0) || @(i_MissionStart$0).(i_MissionStart$0: uint8_t ==> i_MissionStart:=i_MissionStart$0) || @(i_CommsLink$0).(i_CommsLink$0: uint8_t ==> i_CommsLink:=i_CommsLink$0) || @(i_HighBattery$0).(i_HighBattery$0: uint8_t ==> i_HighBattery:=i_HighBattery$0));
  Expanded_List_Local_Substitution(Implementation(logic_i),lnot)==(pp: BOOL & result: BOOL | @(result$0).(result$0: BOOL ==> result:=result$0));
  Expanded_List_Local_Substitution(Implementation(logic_i),lor)==(pp: BOOL & qq: BOOL & result: BOOL | @(result$0).(result$0: BOOL ==> result:=result$0));
  Expanded_List_Local_Substitution(Implementation(logic_i),land)==(pp: BOOL & qq: BOOL & result: BOOL | @(result$0).(result$0: BOOL ==> result:=result$0));
  Expanded_List_Local_Substitution(Implementation(logic_i),since)==(timer: uint32_t & elapsed: uint32_t | @(elapsed$0).(elapsed$0: uint32_t ==> elapsed:=elapsed$0));
  Expanded_List_Local_Substitution(Implementation(logic_i),execute_model_cycle)==(btrue | @(first_time$0).(first_time$0: BOOL ==> first_time:=first_time$0) || @(SM_SimBCMonitor_state$0).(SM_SimBCMonitor_state$0: uint8_t ==> SM_SimBCMonitor_state:=SM_SimBCMonitor_state$0) || @(cycle_timer$0).(cycle_timer$0: uint32_t ==> cycle_timer:=cycle_timer$0) || @(var_patternBit_1$0).(var_patternBit_1$0: BOOL ==> var_patternBit_1:=var_patternBit_1$0) || @(var_patternBit_2$0).(var_patternBit_2$0: BOOL ==> var_patternBit_2:=var_patternBit_2$0) || @(cycle_state$0).(cycle_state$0: uint8_t ==> cycle_state:=cycle_state$0) || @(var_P_1$0).(var_P_1$0: uint32_t ==> var_P_1:=var_P_1$0) || @(var_currbit_2$0).(var_currbit_2$0: BOOL ==> var_currbit_2:=var_currbit_2$0) || @(var_highBattery_3$0).(var_highBattery_3$0: BOOL ==> var_highBattery_3:=var_highBattery_3$0) || @(o_Proceed$0).(o_Proceed$0: uint8_t ==> o_Proceed:=o_Proceed$0));
  List_Local_Substitution(Implementation(logic_i),execute_model_cycle)==(first_time:: BOOL || SM_SimBCMonitor_state:: uint8_t || cycle_timer:: uint32_t || var_patternBit_1:: BOOL || var_patternBit_2:: BOOL || cycle_state:: uint8_t || var_P_1:: uint32_t || var_currbit_2:: BOOL || var_highBattery_3:: BOOL || o_Proceed:: uint8_t);
  List_Local_Substitution(Implementation(logic_i),since)==(elapsed:: uint32_t);
  List_Local_Substitution(Implementation(logic_i),land)==(result:: BOOL);
  List_Local_Substitution(Implementation(logic_i),lor)==(result:: BOOL);
  List_Local_Substitution(Implementation(logic_i),lnot)==(result:: BOOL);
  List_Local_Substitution(Implementation(logic_i),read_model_inputs)==(var_currbit_2:: BOOL || var_highBattery_3:: BOOL || cycle_state:: uint8_t || i_MissionStart:: uint8_t || i_CommsLink:: uint8_t || i_HighBattery:: uint8_t);
  List_Local_Substitution(Implementation(logic_i),write_model_outputs)==(cycle_state:: uint8_t || board_0_O1:: uint8_t || board_0_O2:: uint8_t);
  List_Local_Substitution(Implementation(logic_i),SM_SimBCMonitor)==(cycle_state:: uint8_t || SM_SimBCMonitor_state:: uint32_t || var_patternBit_1:: BOOL || var_patternBit_2:: BOOL || var_P_1:: uint32_t || var_read_1:: uint32_t || var_currbit_2:: BOOL || var_highBattery_3:: BOOL || o_Proceed:: uint8_t);
  List_Local_Substitution(Implementation(logic_i),validBitPattern)==(valid:: BOOL || var_read_1:: uint32_t || var_patternBit_1:: BOOL || var_patternBit_2:: BOOL)
END
&
THEORY TypingPredicateX IS
  TypingPredicate(Implementation(logic_i))==(board_0_O1: INTEGER & board_0_O2: INTEGER & first_time: BOOL & SM_SimBCMonitor_state: INTEGER & cycle_timer: INTEGER & cycle_state: INTEGER & var_read_1: INTEGER & var_currbit_2: BOOL & var_highBattery_3: BOOL & var_P_1: INTEGER & var_patternBit_1: BOOL & var_patternBit_2: BOOL & i_MissionStart: INTEGER & i_CommsLink: INTEGER & i_HighBattery: INTEGER & o_Proceed: INTEGER)
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX IS
  LocalOp_Expanded_Invariant(Implementation(logic_i),validBitPattern)==(btrue);
  LocalOp_Expanded_Invariant(Implementation(logic_i),SM_SimBCMonitor)==(btrue);
  LocalOp_Expanded_Invariant(Implementation(logic_i),write_model_outputs)==(btrue);
  LocalOp_Expanded_Invariant(Implementation(logic_i),read_model_inputs)==(btrue);
  LocalOp_Expanded_Invariant(Implementation(logic_i),lnot)==(btrue);
  LocalOp_Expanded_Invariant(Implementation(logic_i),lor)==(btrue);
  LocalOp_Expanded_Invariant(Implementation(logic_i),land)==(btrue);
  LocalOp_Expanded_Invariant(Implementation(logic_i),since)==(btrue);
  LocalOp_Expanded_Invariant(Implementation(logic_i),execute_model_cycle)==(btrue)
END
)
