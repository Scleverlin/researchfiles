// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See VHybrid_8_BK0_KL3_Fanout4.h for the primary calling header

#ifndef VERILATED_VHYBRID_8_BK0_KL3_FANOUT4___024ROOT_H_
#define VERILATED_VHYBRID_8_BK0_KL3_FANOUT4___024ROOT_H_  // guard

#include "verilated.h"


class VHybrid_8_BK0_KL3_Fanout4__Syms;

class alignas(VL_CACHE_LINE_BYTES) VHybrid_8_BK0_KL3_Fanout4___024root final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    VL_IN8(clk,0,0);
    VL_IN8(a,7,0);
    VL_IN8(b,7,0);
    VL_IN8(cin,0,0);
    VL_OUT8(sum,7,0);
    VL_OUT8(cout,0,0);
    VL_IN8(rst,0,0);
    CData/*0:0*/ Hybrid_8_BK0_KL3_Fanout4_top__DOT__cin_r;
    CData/*0:0*/ Hybrid_8_BK0_KL3_Fanout4_top__DOT__u0__DOT____VdfgTmp_hedeb8924__0;
    CData/*0:0*/ Hybrid_8_BK0_KL3_Fanout4_top__DOT__u0__DOT____VdfgTmp_hf583e290__0;
    CData/*0:0*/ Hybrid_8_BK0_KL3_Fanout4_top__DOT__u0__DOT____VdfgTmp_he4db5a5d__0;
    CData/*0:0*/ Hybrid_8_BK0_KL3_Fanout4_top__DOT__u0__DOT____VdfgTmp_h51a16d14__0;
    CData/*0:0*/ Hybrid_8_BK0_KL3_Fanout4_top__DOT__u0__DOT____VdfgTmp_h6600f75e__0;
    CData/*0:0*/ Hybrid_8_BK0_KL3_Fanout4_top__DOT__u0__DOT____VdfgTmp_h69184624__0;
    CData/*0:0*/ Hybrid_8_BK0_KL3_Fanout4_top__DOT__u0__DOT____VdfgTmp_h69dd0221__0;
    CData/*7:0*/ __VdfgTmp_hecee864b__0;
    CData/*7:0*/ __VdfgTmp_h37e6ab0d__0;
    CData/*0:0*/ __Vtrigprevexpr___TOP__clk__0;
    CData/*0:0*/ __VactContinue;
    IData/*31:0*/ __VstlIterCount;
    IData/*31:0*/ __VicoIterCount;
    IData/*31:0*/ __VactIterCount;
    VlTriggerVec<1> __VstlTriggered;
    VlTriggerVec<1> __VicoTriggered;
    VlTriggerVec<1> __VactTriggered;
    VlTriggerVec<1> __VnbaTriggered;

    // INTERNAL VARIABLES
    VHybrid_8_BK0_KL3_Fanout4__Syms* const vlSymsp;

    // CONSTRUCTORS
    VHybrid_8_BK0_KL3_Fanout4___024root(VHybrid_8_BK0_KL3_Fanout4__Syms* symsp, const char* v__name);
    ~VHybrid_8_BK0_KL3_Fanout4___024root();
    VL_UNCOPYABLE(VHybrid_8_BK0_KL3_Fanout4___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard
