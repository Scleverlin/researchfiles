// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef VERILATED_VHYBRID_16_BK0_KL4_FANOUT8__SYMS_H_
#define VERILATED_VHYBRID_16_BK0_KL4_FANOUT8__SYMS_H_  // guard

#include "verilated.h"

// INCLUDE MODEL CLASS

#include "VHybrid_16_BK0_KL4_Fanout8.h"

// INCLUDE MODULE CLASSES
#include "VHybrid_16_BK0_KL4_Fanout8___024root.h"

// SYMS CLASS (contains all model state)
class alignas(VL_CACHE_LINE_BYTES)VHybrid_16_BK0_KL4_Fanout8__Syms final : public VerilatedSyms {
  public:
    // INTERNAL STATE
    VHybrid_16_BK0_KL4_Fanout8* const __Vm_modelp;
    VlDeleter __Vm_deleter;
    bool __Vm_didInit = false;

    // MODULE INSTANCE STATE
    VHybrid_16_BK0_KL4_Fanout8___024root TOP;

    // CONSTRUCTORS
    VHybrid_16_BK0_KL4_Fanout8__Syms(VerilatedContext* contextp, const char* namep, VHybrid_16_BK0_KL4_Fanout8* modelp);
    ~VHybrid_16_BK0_KL4_Fanout8__Syms();

    // METHODS
    const char* name() { return TOP.name(); }
};

#endif  // guard
