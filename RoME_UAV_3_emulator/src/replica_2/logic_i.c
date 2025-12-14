/* WARNING if type checker is not performed, translation could contain errors ! */

#include "logic.h"

/* Clause SEES */
#include "g_types.h"
#include "g_operators.h"
#include "io_constants.h"
#include "lchip_interface.h"
#include "user_ctx.h"
#include "inputs.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

/* Clause LOCAL_OPERATIONS */

static void SECTION_C4B_FUNCTION execute_model_cycle(void);
static void SECTION_C4B_FUNCTION since(uint32_t timer, uint32_t *elapsed);
static void SECTION_C4B_FUNCTION land(uint8_t pp, uint8_t qq, uint8_t *result);
static void SECTION_C4B_FUNCTION lor(uint8_t pp, uint8_t qq, uint8_t *result);
static void SECTION_C4B_FUNCTION lnot(uint8_t pp, uint8_t *result);
static void SECTION_C4B_FUNCTION read_model_inputs(void);
static void SECTION_C4B_FUNCTION write_model_outputs(void);
static void SECTION_C4B_FUNCTION SM_SimBCMonitor(void);
static void SECTION_C4B_FUNCTION validBitPattern(uint8_t pp, uint32_t rr, uint8_t cc, uint8_t *valid);
/* Clause INITIALISATION */
void SECTION_C4B_FUNCTION logic__initialisation(void)
{
    
    board_0_O1 = IO_OFF;
    board_0_O2 = IO_OFF;
    first_time = true;
    SM_SimBCMonitor_state = INIT;
    cycle_timer = ((uint32_t) 0UL);
    cycle_state = ((uint32_t) 1UL);
    var_read_1 = ((uint32_t) 0UL);
    var_currbit_2 = false;
    var_highBattery_3 = false;
    var_P_1 = ((uint32_t) 0UL);
    var_patternBit_1 = true;
    var_patternBit_2 = false;
    i_MissionStart = IO_OFF;
    i_CommsLink = IO_OFF;
    i_HighBattery = IO_OFF;
    o_Proceed = IO_OFF;
}

/* Clause OPERATIONS */

void SECTION_C4B_FUNCTION user_logic(void)
{
    if(first_time == true)
    {
        get_ms_tick(&cycle_timer);
        execute_model_cycle();
        cycle_state = st_READ_INPUTS;
        first_time = false;
    }
    else
    {
        {
            uint32_t time_elapsed;
            uint32_t cycle_duration;
            
            since(cycle_timer, &time_elapsed);
            cycle_duration = SimBCMonitor_cycle_def * cycle_unit;
            if(((cycle_duration) <= (time_elapsed)))
            {
                get_ms_tick(&cycle_timer);
                execute_model_cycle();
                cycle_state = st_READ_INPUTS;
            }
        }
    }
}

void SECTION_C4B_FUNCTION execute_model_cycle(void)
{
    read_model_inputs();
    SM_SimBCMonitor();
    write_model_outputs();
}

void SECTION_C4B_FUNCTION since(uint32_t timer, uint32_t *elapsed)
{
    {
        uint32_t local_time;
        
        get_ms_tick(&local_time);
        (*elapsed) = local_time - timer;
    }
}

void SECTION_C4B_FUNCTION land(uint8_t pp, uint8_t qq, uint8_t *result)
{
    (*result) = false;
    if((pp == true))
    {
        if((qq == true))
        {
            (*result) = true;
        }
    }
}

void SECTION_C4B_FUNCTION lor(uint8_t pp, uint8_t qq, uint8_t *result)
{
    (*result) = true;
    if((pp == false))
    {
        if((qq == false))
        {
            (*result) = false;
        }
    }
}

void SECTION_C4B_FUNCTION lnot(uint8_t pp, uint8_t *result)
{
    (*result) = false;
    if((pp == false))
    {
        (*result) = true;
    }
}

void SECTION_C4B_FUNCTION read_model_inputs(void)
{
    get_board_0_I1(&i_MissionStart);
    get_board_0_I2(&i_CommsLink);
    get_board_0_I3(&i_HighBattery);
    cycle_state = st_STATE_MACHINE_CYCLE;
}

void SECTION_C4B_FUNCTION write_model_outputs(void)
{
    board_0_O1 = o_Proceed;
    board_0_O2 = IO_OFF;
    cycle_state = st_TIME;
}

void SECTION_C4B_FUNCTION SM_SimBCMonitor(void)
{
    if((SM_SimBCMonitor_state == INIT))
    {
        SM_SimBCMonitor_state = EXEC_1;
    }
    else if((SM_SimBCMonitor_state == EXEC_1))
    {
        if((i_MissionStart == IO_OFF))
        {
            SM_SimBCMonitor_state = EXEC_1;
        }
        if((i_MissionStart == IO_ON))
        {
            get_ms_tick(&var_P_1);
            SM_SimBCMonitor_state = EXEC_2;
        }
    }
    else if((SM_SimBCMonitor_state == EXEC_2))
    {
        var_read_1 = ((uint32_t) 0UL);
        {
            uint8_t guard_1;
            uint8_t guard_2;
            uint8_t guard_3;
            uint8_t guard_4;
            uint8_t guard_5;
            uint8_t guard_6;
            uint8_t guard_7;
            uint8_t guard_8;
            uint8_t guard_9;
            uint8_t guard_10;
            uint32_t local_since;
            uint8_t predicate_1;
            uint8_t predicate_2;
            uint8_t predicate_3;
            uint8_t predicate_4;
            uint8_t predicate_5;
            uint8_t predicate_6;
            uint8_t predicate_7;
            uint8_t predicate_8;
            uint8_t predicate_9;
            uint8_t predicate_10;
            uint8_t predicate_11;
            uint8_t predicate_12;
            uint8_t predicate_13;
            uint8_t predicate_14;
            uint8_t predicate_15;
            uint8_t predicate_16;
            uint8_t predicate_17;
            uint8_t predicate_18;
            uint8_t predicate_19;
            
            predicate_1 = ((i_CommsLink == IO_ON) ? true : false);
            var_currbit_2 = predicate_1;
            predicate_2 = ((i_HighBattery == IO_ON) ? true : false);
            var_highBattery_3 = predicate_2;
            land(predicate_1, predicate_2, &guard_1);
            predicate_3 = ((i_CommsLink == IO_OFF) ? true : false);
            var_currbit_2 = predicate_3;
            predicate_4 = ((i_HighBattery == IO_OFF) ? true : false);
            var_highBattery_3 = predicate_4;
            lor(predicate_3, predicate_4, &guard_2);
            since(var_P_1, &local_since);
            guard_3 = (((local_since) <= (TIMEOUT)) ? true : false);
            guard_4 = (((TIMEOUT) < (local_since)) ? true : false);
            validBitPattern(PATTERN, var_read_1 + ((uint32_t) 1UL), var_currbit_2, &predicate_5);
            lnot(predicate_5, &predicate_6);
            predicate_7 = var_highBattery_3;
            land(predicate_6, predicate_7, &guard_5);
            validBitPattern(PATTERN, var_read_1 + ((uint32_t) 1UL), var_currbit_2, &predicate_8);
            predicate_9 = var_highBattery_3;
            land(predicate_8, predicate_9, &guard_6);
            predicate_10 = ((i_CommsLink == IO_OFF) ? true : false);
            var_currbit_2 = predicate_10;
            predicate_11 = ((i_HighBattery == IO_OFF) ? true : false);
            var_highBattery_3 = predicate_11;
            lor(predicate_10, predicate_11, &predicate_12);
            predicate_13 = (((TIMEOUT) < (local_since)) ? true : false);
            predicate_14 = var_highBattery_3;
            land(predicate_13, predicate_14, &predicate_15);
            land(predicate_12, predicate_15, &guard_7);
            predicate_16 = var_highBattery_3;
            lnot(predicate_13, &guard_8);
            predicate_14 = ((i_CommsLink == IO_ON) ? true : false);
            var_currbit_2 = predicate_14;
            predicate_15 = ((i_HighBattery == IO_ON) ? true : false);
            var_highBattery_3 = predicate_15;
            land(predicate_14, predicate_15, &guard_9);
            predicate_19 = var_highBattery_3;
            lnot(predicate_19, &guard_10);
            if((guard_1 == true))
            {
                if((guard_5 == true))
                {
                    if((guard_3 == true))
                    {
                        o_Proceed = IO_ON;
                        SM_SimBCMonitor_state = EXEC_2;
                    }
                    else if((guard_4 == true))
                    {
                        o_Proceed = IO_OFF;
                        SM_SimBCMonitor_state = EXEC_2;
                    }
                }
                else if((guard_6 == true))
                {
                    if((guard_7 == true))
                    {
                        o_Proceed = IO_OFF;
                        SM_SimBCMonitor_state = EXEC_2;
                    }
                    else if((guard_8 == true))
                    {
                        SM_SimBCMonitor_state = EXEC_3;
                    }
                    else if((guard_9 == true))
                    {
                        if((guard_5 == true))
                        {
                            if((guard_3 == true))
                            {
                                o_Proceed = IO_ON;
                                SM_SimBCMonitor_state = EXEC_2;
                            }
                            else if((guard_4 == true))
                            {
                                o_Proceed = IO_OFF;
                                SM_SimBCMonitor_state = EXEC_2;
                            }
                        }
                        else if((guard_10 == true))
                        {
                            SM_SimBCMonitor_state = EXEC_3;
                        }
                    }
                }
                else if((guard_10 == true))
                {
                    SM_SimBCMonitor_state = EXEC_3;
                }
            }
            else if((guard_2 == true))
            {
                if((guard_3 == true))
                {
                    o_Proceed = IO_ON;
                    SM_SimBCMonitor_state = EXEC_2;
                }
                else if((guard_4 == true))
                {
                    o_Proceed = IO_OFF;
                    SM_SimBCMonitor_state = EXEC_2;
                }
            }
        }
    }
    else if((SM_SimBCMonitor_state == EXEC_3))
    {
        o_Proceed = IO_OFF;
    }
    cycle_state = st_WRITE_OUTPUTS;
}

void SECTION_C4B_FUNCTION validBitPattern(uint8_t pp, uint32_t rr, uint8_t cc, uint8_t *valid)
{
    if((cc == true))
    {
        var_patternBit_1 = false;
        var_patternBit_2 = pp;
        (*valid) = true;
    }
    else
    {
        var_patternBit_1 = true;
        var_patternBit_2 = false;
        (*valid) = false;
    }
}

void SECTION_C4B_FUNCTION get_board_0_O1(uint8_t *po)
{
    (*po) = board_0_O1;
}

void SECTION_C4B_FUNCTION get_board_0_O2(uint8_t *po)
{
    (*po) = board_0_O2;
}

