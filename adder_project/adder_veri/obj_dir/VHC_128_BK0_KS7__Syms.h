// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef VERILATED_VHC_128_BK0_KS7__SYMS_H_
#define VERILATED_VHC_128_BK0_KS7__SYMS_H_  // guard

#include "verilated.h"

// INCLUDE MODEL CLASS

#include "VHC_128_BK0_KS7.h"

// INCLUDE MODULE CLASSES
#include "VHC_128_BK0_KS7___024root.h"

// SYMS CLASS (contains all model state)
class alignas(VL_CACHE_LINE_BYTES)VHC_128_BK0_KS7__Syms final : public VerilatedSyms {
  public:
    // INTERNAL STATE
    VHC_128_BK0_KS7* const __Vm_modelp;
    VlDeleter __Vm_deleter;
    bool __Vm_didInit = false;

    // MODULE INSTANCE STATE
    VHC_128_BK0_KS7___024root      TOP;

    // CONSTRUCTORS
    VHC_128_BK0_KS7__Syms(VerilatedContext* contextp, const char* namep, VHC_128_BK0_KS7* modelp);
    ~VHC_128_BK0_KS7__Syms();

    // METHODS
    const char* name() { return TOP.name(); }
};

#endif  // guard
