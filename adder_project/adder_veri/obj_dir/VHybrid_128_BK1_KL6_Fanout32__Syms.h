// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef VERILATED_VHYBRID_128_BK1_KL6_FANOUT32__SYMS_H_
#define VERILATED_VHYBRID_128_BK1_KL6_FANOUT32__SYMS_H_  // guard

#include "verilated.h"

// INCLUDE MODEL CLASS

#include "VHybrid_128_BK1_KL6_Fanout32.h"

// INCLUDE MODULE CLASSES
#include "VHybrid_128_BK1_KL6_Fanout32___024root.h"

// SYMS CLASS (contains all model state)
class alignas(VL_CACHE_LINE_BYTES)VHybrid_128_BK1_KL6_Fanout32__Syms final : public VerilatedSyms {
  public:
    // INTERNAL STATE
    VHybrid_128_BK1_KL6_Fanout32* const __Vm_modelp;
    VlDeleter __Vm_deleter;
    bool __Vm_didInit = false;

    // MODULE INSTANCE STATE
    VHybrid_128_BK1_KL6_Fanout32___024root TOP;

    // CONSTRUCTORS
    VHybrid_128_BK1_KL6_Fanout32__Syms(VerilatedContext* contextp, const char* namep, VHybrid_128_BK1_KL6_Fanout32* modelp);
    ~VHybrid_128_BK1_KL6_Fanout32__Syms();

    // METHODS
    const char* name() { return TOP.name(); }
};

#endif  // guard
