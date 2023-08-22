// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See VHC_16_BK0_KS4.h for the primary calling header

#ifndef VERILATED_VHC_16_BK0_KS4___024ROOT_H_
#define VERILATED_VHC_16_BK0_KS4___024ROOT_H_  // guard

#include "verilated.h"


class VHC_16_BK0_KS4__Syms;

class alignas(VL_CACHE_LINE_BYTES) VHC_16_BK0_KS4___024root final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    VL_IN8(clk,0,0);
    VL_IN8(cin,0,0);
    VL_OUT8(cout,0,0);
    VL_IN8(rst,0,0);
    CData/*0:0*/ HC_16_BK0_KS4_top__DOT__cin_r;
    CData/*0:0*/ HC_16_BK0_KS4_top__DOT__u0__DOT____VdfgTmp_head9933d__0;
    CData/*0:0*/ HC_16_BK0_KS4_top__DOT__u0__DOT____VdfgTmp_he565380d__0;
    CData/*0:0*/ HC_16_BK0_KS4_top__DOT__u0__DOT____VdfgTmp_h76aa7215__0;
    CData/*0:0*/ HC_16_BK0_KS4_top__DOT__u0__DOT____VdfgTmp_h298e4177__0;
    CData/*0:0*/ HC_16_BK0_KS4_top__DOT__u0__DOT____VdfgTmp_h74194960__0;
    CData/*0:0*/ HC_16_BK0_KS4_top__DOT__u0__DOT____VdfgTmp_h7c03b023__0;
    CData/*0:0*/ HC_16_BK0_KS4_top__DOT__u0__DOT____VdfgTmp_h68264b72__0;
    CData/*0:0*/ HC_16_BK0_KS4_top__DOT__u0__DOT____VdfgTmp_h6c9e5d1e__0;
    CData/*0:0*/ HC_16_BK0_KS4_top__DOT__u0__DOT____VdfgTmp_h68cd76d2__0;
    CData/*0:0*/ HC_16_BK0_KS4_top__DOT__u0__DOT____VdfgTmp_h177172a1__0;
    CData/*0:0*/ HC_16_BK0_KS4_top__DOT__u0__DOT____VdfgTmp_h5e515a86__0;
    CData/*0:0*/ HC_16_BK0_KS4_top__DOT__u0__DOT____VdfgTmp_h616abf82__0;
    CData/*0:0*/ HC_16_BK0_KS4_top__DOT__u0__DOT____VdfgTmp_h603f5c25__0;
    CData/*0:0*/ HC_16_BK0_KS4_top__DOT__u0__DOT____VdfgTmp_h0514d313__0;
    CData/*0:0*/ HC_16_BK0_KS4_top__DOT__u0__DOT____VdfgTmp_h23945228__0;
    CData/*0:0*/ HC_16_BK0_KS4_top__DOT__u0__DOT____VdfgTmp_hd714f642__0;
    CData/*0:0*/ HC_16_BK0_KS4_top__DOT__u0__DOT____VdfgTmp_h2c7fe75a__0;
    CData/*0:0*/ HC_16_BK0_KS4_top__DOT__u0__DOT____VdfgTmp_h10c005b2__0;
    CData/*0:0*/ HC_16_BK0_KS4_top__DOT__u0__DOT____VdfgTmp_hef88cfd5__0;
    CData/*0:0*/ HC_16_BK0_KS4_top__DOT__u0__DOT____VdfgTmp_hcdc2ed9d__0;
    CData/*0:0*/ HC_16_BK0_KS4_top__DOT__u0__DOT____VdfgTmp_h023e990b__0;
    CData/*0:0*/ HC_16_BK0_KS4_top__DOT__u0__DOT____VdfgTmp_h6c5ae103__0;
    CData/*0:0*/ HC_16_BK0_KS4_top__DOT__u0__DOT____VdfgTmp_h6f112d0d__0;
    CData/*0:0*/ HC_16_BK0_KS4_top__DOT__u0__DOT____VdfgTmp_he1d8a650__0;
    CData/*0:0*/ HC_16_BK0_KS4_top__DOT__u0__DOT____VdfgTmp_h75092490__0;
    CData/*0:0*/ HC_16_BK0_KS4_top__DOT__u0__DOT____VdfgTmp_ha6854b96__0;
    CData/*0:0*/ HC_16_BK0_KS4_top__DOT__u0__DOT____VdfgTmp_hc9b92a7d__0;
    CData/*0:0*/ HC_16_BK0_KS4_top__DOT__u0__DOT____VdfgTmp_h417d006b__0;
    CData/*0:0*/ HC_16_BK0_KS4_top__DOT__u0__DOT____VdfgTmp_h27c785a9__0;
    CData/*0:0*/ HC_16_BK0_KS4_top__DOT__u0__DOT____VdfgTmp_hf19fbd14__0;
    CData/*0:0*/ HC_16_BK0_KS4_top__DOT__u0__DOT____VdfgTmp_h1a277a74__0;
    CData/*0:0*/ HC_16_BK0_KS4_top__DOT__u0__DOT____VdfgTmp_hd0f9b94d__0;
    CData/*0:0*/ HC_16_BK0_KS4_top__DOT__u0__DOT____VdfgTmp_he06aba82__0;
    CData/*0:0*/ __Vtrigprevexpr___TOP__clk__0;
    CData/*0:0*/ __VactContinue;
    VL_IN16(a,15,0);
    VL_IN16(b,15,0);
    VL_OUT16(sum,15,0);
    SData/*15:0*/ HC_16_BK0_KS4_top__DOT__sum_w;
    SData/*15:0*/ __VdfgTmp_hecee163f__0;
    SData/*15:0*/ __VdfgTmp_h361627f9__0;
    IData/*31:0*/ __VstlIterCount;
    IData/*31:0*/ __VicoIterCount;
    IData/*31:0*/ __VactIterCount;
    VlTriggerVec<1> __VstlTriggered;
    VlTriggerVec<1> __VicoTriggered;
    VlTriggerVec<1> __VactTriggered;
    VlTriggerVec<1> __VnbaTriggered;

    // INTERNAL VARIABLES
    VHC_16_BK0_KS4__Syms* const vlSymsp;

    // CONSTRUCTORS
    VHC_16_BK0_KS4___024root(VHC_16_BK0_KS4__Syms* symsp, const char* v__name);
    ~VHC_16_BK0_KS4___024root();
    VL_UNCOPYABLE(VHC_16_BK0_KS4___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard
