// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See VMul_32_HC_64_BK4_KS2.h for the primary calling header

#ifndef VERILATED_VMUL_32_HC_64_BK4_KS2_HC_64_BK4_KS2_H_
#define VERILATED_VMUL_32_HC_64_BK4_KS2_HC_64_BK4_KS2_H_  // guard

#include "verilated.h"


class VMul_32_HC_64_BK4_KS2__Syms;

class alignas(VL_CACHE_LINE_BYTES) VMul_32_HC_64_BK4_KS2_HC_64_BK4_KS2 final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    VL_IN8(cin,0,0);
    VL_OUT8(cout,0,0);
    VL_IN64(a,64,1);
    VL_IN64(b,64,1);
    VL_OUT64(sum,64,1);

    // INTERNAL VARIABLES
    VMul_32_HC_64_BK4_KS2__Syms* const vlSymsp;

    // CONSTRUCTORS
    VMul_32_HC_64_BK4_KS2_HC_64_BK4_KS2(VMul_32_HC_64_BK4_KS2__Syms* symsp, const char* v__name);
    ~VMul_32_HC_64_BK4_KS2_HC_64_BK4_KS2();
    VL_UNCOPYABLE(VMul_32_HC_64_BK4_KS2_HC_64_BK4_KS2);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard
