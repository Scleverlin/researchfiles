// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table implementation internals

#include "VHybrid_64_BK1_KL5_Fanout8__Syms.h"
#include "VHybrid_64_BK1_KL5_Fanout8.h"
#include "VHybrid_64_BK1_KL5_Fanout8___024root.h"

// FUNCTIONS
VHybrid_64_BK1_KL5_Fanout8__Syms::~VHybrid_64_BK1_KL5_Fanout8__Syms()
{
}

VHybrid_64_BK1_KL5_Fanout8__Syms::VHybrid_64_BK1_KL5_Fanout8__Syms(VerilatedContext* contextp, const char* namep, VHybrid_64_BK1_KL5_Fanout8* modelp)
    : VerilatedSyms{contextp}
    // Setup internal state of the Syms class
    , __Vm_modelp{modelp}
    // Setup module instances
    , TOP{this, namep}
{
    // Configure time unit / time precision
    _vm_contextp__->timeunit(-12);
    _vm_contextp__->timeprecision(-12);
    // Setup each module's pointers to their submodules
    // Setup each module's pointer back to symbol table (for public functions)
    TOP.__Vconfigure(true);
}
