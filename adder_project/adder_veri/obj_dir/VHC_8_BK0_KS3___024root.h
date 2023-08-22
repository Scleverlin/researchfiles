// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See VHC_8_BK0_KS3.h for the primary calling header

#ifndef VERILATED_VHC_8_BK0_KS3___024ROOT_H_
#define VERILATED_VHC_8_BK0_KS3___024ROOT_H_  // guard

#include "verilated.h"


class VHC_8_BK0_KS3__Syms;

class alignas(VL_CACHE_LINE_BYTES) VHC_8_BK0_KS3___024root final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    VL_IN8(clk,0,0);
    VL_IN8(a,7,0);
    VL_IN8(b,7,0);
    VL_IN8(cin,0,0);
    VL_OUT8(sum,7,0);
    VL_OUT8(cout,0,0);
    VL_IN8(rst,0,0);
    CData/*0:0*/ HC_8_BK0_KS3_top__DOT__cin_r;
    CData/*0:0*/ HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_hedeb8924__0;
    CData/*0:0*/ HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_hf583e290__0;
    CData/*0:0*/ HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_heeb61628__0;
    CData/*0:0*/ HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_he4db5a5d__0;
    CData/*0:0*/ HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_he565380d__0;
    CData/*0:0*/ HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_h76aa7215__0;
    CData/*0:0*/ HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_h298e4177__0;
    CData/*0:0*/ HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_h74194960__0;
    CData/*0:0*/ HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_hac67cd56__0;
    CData/*0:0*/ HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_h6f1acb74__0;
    CData/*0:0*/ HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_h51a16d14__0;
    CData/*0:0*/ HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_h6600f75e__0;
    CData/*0:0*/ HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_h69184624__0;
    CData/*0:0*/ HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_h69dd0221__0;
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
    VHC_8_BK0_KS3__Syms* const vlSymsp;

    // CONSTRUCTORS
    VHC_8_BK0_KS3___024root(VHC_8_BK0_KS3__Syms* symsp, const char* v__name);
    ~VHC_8_BK0_KS3___024root();
    VL_UNCOPYABLE(VHC_8_BK0_KS3___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard
