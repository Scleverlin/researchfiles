// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See VHC_32_BK2_KS3.h for the primary calling header

#ifndef VERILATED_VHC_32_BK2_KS3___024ROOT_H_
#define VERILATED_VHC_32_BK2_KS3___024ROOT_H_  // guard

#include "verilated.h"


class VHC_32_BK2_KS3__Syms;

class alignas(VL_CACHE_LINE_BYTES) VHC_32_BK2_KS3___024root final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    VL_IN8(clk,0,0);
    VL_IN8(cin,0,0);
    VL_OUT8(cout,0,0);
    VL_IN8(rst,0,0);
    CData/*0:0*/ HC_32_BK2_KS3_top__DOT__cin_r;
    CData/*0:0*/ HC_32_BK2_KS3_top__DOT__u0__DOT____VdfgTmp_h59938038__0;
    CData/*0:0*/ HC_32_BK2_KS3_top__DOT__u0__DOT____VdfgTmp_h51a16d14__0;
    CData/*0:0*/ HC_32_BK2_KS3_top__DOT__u0__DOT____VdfgTmp_h6600f75e__0;
    CData/*0:0*/ HC_32_BK2_KS3_top__DOT__u0__DOT____VdfgTmp_h61e10e23__0;
    CData/*0:0*/ HC_32_BK2_KS3_top__DOT__u0__DOT____VdfgTmp_hba910b0f__0;
    CData/*0:0*/ HC_32_BK2_KS3_top__DOT__u0__DOT____VdfgTmp_h177172a1__0;
    CData/*0:0*/ HC_32_BK2_KS3_top__DOT__u0__DOT____VdfgTmp_h5e515a86__0;
    CData/*0:0*/ HC_32_BK2_KS3_top__DOT__u0__DOT____VdfgTmp_he1859c1a__0;
    CData/*0:0*/ HC_32_BK2_KS3_top__DOT__u0__DOT____VdfgTmp_h72837780__0;
    CData/*0:0*/ HC_32_BK2_KS3_top__DOT__u0__DOT____VdfgTmp_hd3fa7237__0;
    CData/*0:0*/ HC_32_BK2_KS3_top__DOT__u0__DOT____VdfgTmp_hb740abc5__0;
    CData/*0:0*/ HC_32_BK2_KS3_top__DOT__u0__DOT____VdfgTmp_h6293a59b__0;
    CData/*0:0*/ HC_32_BK2_KS3_top__DOT__u0__DOT____VdfgTmp_hba52ce08__0;
    CData/*0:0*/ HC_32_BK2_KS3_top__DOT__u0__DOT____VdfgTmp_hd0fdd63f__0;
    CData/*0:0*/ HC_32_BK2_KS3_top__DOT__u0__DOT____VdfgTmp_hb66ac527__0;
    CData/*0:0*/ HC_32_BK2_KS3_top__DOT__u0__DOT____VdfgTmp_h444ca1fa__0;
    CData/*0:0*/ HC_32_BK2_KS3_top__DOT__u0__DOT____VdfgTmp_hcdc2ed9d__0;
    CData/*0:0*/ HC_32_BK2_KS3_top__DOT__u0__DOT____VdfgTmp_h023e990b__0;
    CData/*0:0*/ HC_32_BK2_KS3_top__DOT__u0__DOT____VdfgTmp_h47971b0c__0;
    CData/*0:0*/ HC_32_BK2_KS3_top__DOT__u0__DOT____VdfgTmp_h415b4c29__0;
    CData/*0:0*/ HC_32_BK2_KS3_top__DOT__u0__DOT____VdfgTmp_h21660944__0;
    CData/*0:0*/ HC_32_BK2_KS3_top__DOT__u0__DOT____VdfgTmp_h93d49bae__0;
    CData/*0:0*/ HC_32_BK2_KS3_top__DOT__u0__DOT____VdfgTmp_hb4ef687e__0;
    CData/*0:0*/ HC_32_BK2_KS3_top__DOT__u0__DOT____VdfgTmp_h1415cb2a__0;
    CData/*0:0*/ HC_32_BK2_KS3_top__DOT__u0__DOT____VdfgTmp_h1fcc151d__0;
    CData/*0:0*/ HC_32_BK2_KS3_top__DOT__u0__DOT____VdfgTmp_h7f366d3a__0;
    CData/*0:0*/ HC_32_BK2_KS3_top__DOT__u0__DOT____VdfgTmp_ha1ac0475__0;
    CData/*0:0*/ HC_32_BK2_KS3_top__DOT__u0__DOT____VdfgTmp_h6f1a410f__0;
    CData/*0:0*/ HC_32_BK2_KS3_top__DOT__u0__DOT____VdfgTmp_hb2a58510__0;
    CData/*0:0*/ HC_32_BK2_KS3_top__DOT__u0__DOT____VdfgTmp_h2b8c3e07__0;
    CData/*0:0*/ HC_32_BK2_KS3_top__DOT__u0__DOT____VdfgTmp_hfcb8c486__0;
    CData/*0:0*/ HC_32_BK2_KS3_top__DOT__u0__DOT____VdfgTmp_h894b9aaa__0;
    CData/*0:0*/ __Vtrigprevexpr___TOP__clk__0;
    CData/*0:0*/ __VactContinue;
    VL_IN(a,31,0);
    VL_IN(b,31,0);
    VL_OUT(sum,31,0);
    IData/*31:0*/ HC_32_BK2_KS3_top__DOT__sum_w;
    IData/*31:0*/ __VdfgTmp_h37e52d1e__0;
    IData/*31:0*/ __VdfgTmp_hece52006__0;
    IData/*31:0*/ __VstlIterCount;
    IData/*31:0*/ __VicoIterCount;
    IData/*31:0*/ __VactIterCount;
    VlTriggerVec<1> __VstlTriggered;
    VlTriggerVec<1> __VicoTriggered;
    VlTriggerVec<1> __VactTriggered;
    VlTriggerVec<1> __VnbaTriggered;

    // INTERNAL VARIABLES
    VHC_32_BK2_KS3__Syms* const vlSymsp;

    // CONSTRUCTORS
    VHC_32_BK2_KS3___024root(VHC_32_BK2_KS3__Syms* symsp, const char* v__name);
    ~VHC_32_BK2_KS3___024root();
    VL_UNCOPYABLE(VHC_32_BK2_KS3___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard
