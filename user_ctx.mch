MACHINE
    user_ctx
SEES
    g_types
    
CONCRETE_CONSTANTS
    
    SimBCMonitor_cycle_def,
    
    cycle_unit,
    
    //Translation constants for cycle status
    st_READ_INPUTS,
    st_STATE_MACHINE,
    st_WRITE_OUTPUTS,
    st_TIME,
    
    // Model constants
    INIT, 
    EXEC_1, 
    EXEC_2,
    EXEC_3,
    PATTERN,
    TIMEOUT  
    
PROPERTIES
    
    SimBCMonitor_cycle_def: uint32_t &
    
    cycle_unit: uint32_t &
    
    //Translation constants for cycle status
    st_READ_INPUTS: uint8_t &
    st_STATE_MACHINE: uint8_t &
    st_WRITE_OUTPUTS: uint8_t &
    st_TIME: uint8_t &
    
    // Model constants
    INIT: uint8_t & 
    EXEC_1: uint8_t & 
    EXEC_2: uint8_t &
    EXEC_3: uint8_t &
    PATTERN: BOOL &
    TIMEOUT: uint32_t

END
