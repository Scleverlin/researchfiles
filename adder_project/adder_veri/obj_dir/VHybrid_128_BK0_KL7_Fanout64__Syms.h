// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef VERILATED_VHYBRID_128_BK0_KL7_FANOUT64__SYMS_H_
#define VERILATED_VHYBRID_128_BK0_KL7_FANOUT64__SYMS_H_  // guard

#include "verilated.h"

// INCLUDE MODEL CLASS

#include "VHybrid_128_BK0_KL7_Fanout64.h"

// INCLUDE MODULE CLASSES
#include "VHybrid_128_BK0_KL7_Fanout64___024root.h"

// SYMS CLASS (contains all model state)
class alignas(VL_CACHE_LINE_BYTES)VHybrid_128_BK0_KL7_Fanout64__Syms final : public VerilatedSyms {
  public:
    // INTERNAL STATE
    VHybrid_128_BK0_KL7_Fanout64* const __Vm_modelp;
    VlDeleter __Vm_deleter;
    bool __Vm_didInit = false;

    // MODULE INSTANCE STATE
    VHybrid_128_BK0_KL7_Fanout64___024root TOP;

    // CONSTRUCTORS
    VHybrid_128_BK0_KL7_Fanout64__Syms(VerilatedContext* contextp, const char* namep, VHybrid_128_BK0_KL7_Fanout64* modelp);
    ~VHybrid_128_BK0_KL7_Fanout64__Syms();

    // METHODS
    const char* name() { return TOP.name(); }
};

#endif  // guard
