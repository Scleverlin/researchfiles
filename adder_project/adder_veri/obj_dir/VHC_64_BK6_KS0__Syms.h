// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef VERILATED_VHC_64_BK6_KS0__SYMS_H_
#define VERILATED_VHC_64_BK6_KS0__SYMS_H_  // guard

#include "verilated.h"

// INCLUDE MODEL CLASS

#include "VHC_64_BK6_KS0.h"

// INCLUDE MODULE CLASSES
#include "VHC_64_BK6_KS0___024root.h"

// SYMS CLASS (contains all model state)
class VHC_64_BK6_KS0__Syms final : public VerilatedSyms {
  public:
    // INTERNAL STATE
    VHC_64_BK6_KS0* const __Vm_modelp;
    VlDeleter __Vm_deleter;
    bool __Vm_didInit = false;

    // MODULE INSTANCE STATE
    VHC_64_BK6_KS0___024root       TOP;

    // CONSTRUCTORS
    VHC_64_BK6_KS0__Syms(VerilatedContext* contextp, const char* namep, VHC_64_BK6_KS0* modelp);
    ~VHC_64_BK6_KS0__Syms();

    // METHODS
    const char* name() { return TOP.name(); }
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

#endif  // guard
