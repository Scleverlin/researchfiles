// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table implementation internals

#include "VHybrid_128_BK2_KL5_Fanout16__Syms.h"
#include "VHybrid_128_BK2_KL5_Fanout16.h"
#include "VHybrid_128_BK2_KL5_Fanout16___024root.h"

// FUNCTIONS
VHybrid_128_BK2_KL5_Fanout16__Syms::~VHybrid_128_BK2_KL5_Fanout16__Syms()
{
}

VHybrid_128_BK2_KL5_Fanout16__Syms::VHybrid_128_BK2_KL5_Fanout16__Syms(VerilatedContext* contextp, const char* namep, VHybrid_128_BK2_KL5_Fanout16* modelp)
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
