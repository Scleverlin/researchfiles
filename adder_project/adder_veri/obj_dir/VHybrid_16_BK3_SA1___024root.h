// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See VHybrid_16_BK3_SA1.h for the primary calling header

#ifndef VERILATED_VHYBRID_16_BK3_SA1___024ROOT_H_
#define VERILATED_VHYBRID_16_BK3_SA1___024ROOT_H_  // guard

#include "verilated.h"


class VHybrid_16_BK3_SA1__Syms;

class alignas(VL_CACHE_LINE_BYTES) VHybrid_16_BK3_SA1___024root final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    VL_IN8(clk,0,0);
    VL_IN8(cin,0,0);
    VL_OUT8(cout,0,0);
    VL_IN8(rst,0,0);
    CData/*0:0*/ Hybrid_16_BK3_SA1_top__DOT__cin_r;
    CData/*0:0*/ Hybrid_16_BK3_SA1_top__DOT__u0__DOT____VdfgTmp_head9933d__0;
    CData/*0:0*/ Hybrid_16_BK3_SA1_top__DOT__u0__DOT____VdfgTmp_h5ddc8ddc__0;
    CData/*0:0*/ Hybrid_16_BK3_SA1_top__DOT__u0__DOT____VdfgTmp_h94b6b4e1__0;
    CData/*0:0*/ Hybrid_16_BK3_SA1_top__DOT__u0__DOT____VdfgTmp_ha6a8f8df__0;
    CData/*0:0*/ Hybrid_16_BK3_SA1_top__DOT__u0__DOT____VdfgTmp_hedeb8924__0;
    CData/*0:0*/ Hybrid_16_BK3_SA1_top__DOT__u0__DOT____VdfgTmp_h9b1217bb__0;
    CData/*0:0*/ Hybrid_16_BK3_SA1_top__DOT__u0__DOT____VdfgTmp_hf583e290__0;
    CData/*0:0*/ Hybrid_16_BK3_SA1_top__DOT__u0__DOT____VdfgTmp_he4db5a5d__0;
    CData/*0:0*/ Hybrid_16_BK3_SA1_top__DOT__u0__DOT____VdfgTmp_h51a16d14__0;
    CData/*0:0*/ Hybrid_16_BK3_SA1_top__DOT__u0__DOT____VdfgTmp_h6600f75e__0;
    CData/*0:0*/ Hybrid_16_BK3_SA1_top__DOT__u0__DOT____VdfgTmp_h69dd0221__0;
    CData/*0:0*/ Hybrid_16_BK3_SA1_top__DOT__u0__DOT____VdfgTmp_h61e10e23__0;
    CData/*0:0*/ Hybrid_16_BK3_SA1_top__DOT__u0__DOT____VdfgTmp_hba910b0f__0;
    CData/*0:0*/ Hybrid_16_BK3_SA1_top__DOT__u0__DOT____VdfgTmp_h177172a1__0;
    CData/*0:0*/ Hybrid_16_BK3_SA1_top__DOT__u0__DOT____VdfgTmp_h5e515a86__0;
    CData/*0:0*/ Hybrid_16_BK3_SA1_top__DOT__u0__DOT____VdfgTmp_h603f5c25__0;
    CData/*0:0*/ Hybrid_16_BK3_SA1_top__DOT__u0__DOT____VdfgTmp_h417d006b__0;
    CData/*0:0*/ Hybrid_16_BK3_SA1_top__DOT__u0__DOT____VdfgTmp_h27c785a9__0;
    CData/*0:0*/ Hybrid_16_BK3_SA1_top__DOT__u0__DOT____VdfgTmp_he06aba82__0;
    CData/*0:0*/ __Vtrigprevexpr___TOP__clk__0;
    CData/*0:0*/ __VactContinue;
    VL_IN16(a,15,0);
    VL_IN16(b,15,0);
    VL_OUT16(sum,15,0);
    SData/*15:0*/ __VdfgTmp_h361627f9__0;
    SData/*15:0*/ __VdfgTmp_hecee163f__0;
    IData/*31:0*/ __VstlIterCount;
    IData/*31:0*/ __VicoIterCount;
    IData/*31:0*/ __VactIterCount;
    VlTriggerVec<1> __VstlTriggered;
    VlTriggerVec<1> __VicoTriggered;
    VlTriggerVec<1> __VactTriggered;
    VlTriggerVec<1> __VnbaTriggered;

    // INTERNAL VARIABLES
    VHybrid_16_BK3_SA1__Syms* const vlSymsp;

    // CONSTRUCTORS
    VHybrid_16_BK3_SA1___024root(VHybrid_16_BK3_SA1__Syms* symsp, const char* v__name);
    ~VHybrid_16_BK3_SA1___024root();
    VL_UNCOPYABLE(VHybrid_16_BK3_SA1___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard
