// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VHC_32_BK3_KS2.h for the primary calling header

#include "verilated.h"

#include "VHC_32_BK3_KS2__Syms.h"
#include "VHC_32_BK3_KS2___024root.h"

VL_ATTR_COLD void VHC_32_BK3_KS2___024root___eval_static(VHC_32_BK3_KS2___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_32_BK3_KS2__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_32_BK3_KS2___024root___eval_static\n"); );
}

VL_ATTR_COLD void VHC_32_BK3_KS2___024root___eval_initial(VHC_32_BK3_KS2___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_32_BK3_KS2__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_32_BK3_KS2___024root___eval_initial\n"); );
    // Body
    vlSelf->__Vtrigprevexpr___TOP__clk__0 = vlSelf->clk;
}

VL_ATTR_COLD void VHC_32_BK3_KS2___024root___eval_final(VHC_32_BK3_KS2___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_32_BK3_KS2__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_32_BK3_KS2___024root___eval_final\n"); );
}

VL_ATTR_COLD void VHC_32_BK3_KS2___024root___eval_triggers__stl(VHC_32_BK3_KS2___024root* vlSelf);
#ifdef VL_DEBUG
VL_ATTR_COLD void VHC_32_BK3_KS2___024root___dump_triggers__stl(VHC_32_BK3_KS2___024root* vlSelf);
#endif  // VL_DEBUG
VL_ATTR_COLD void VHC_32_BK3_KS2___024root___eval_stl(VHC_32_BK3_KS2___024root* vlSelf);

VL_ATTR_COLD void VHC_32_BK3_KS2___024root___eval_settle(VHC_32_BK3_KS2___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_32_BK3_KS2__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_32_BK3_KS2___024root___eval_settle\n"); );
    // Init
    CData/*0:0*/ __VstlContinue;
    // Body
    vlSelf->__VstlIterCount = 0U;
    __VstlContinue = 1U;
    while (__VstlContinue) {
        __VstlContinue = 0U;
        VHC_32_BK3_KS2___024root___eval_triggers__stl(vlSelf);
        if (vlSelf->__VstlTriggered.any()) {
            __VstlContinue = 1U;
            if (VL_UNLIKELY((0x64U < vlSelf->__VstlIterCount))) {
#ifdef VL_DEBUG
                VHC_32_BK3_KS2___024root___dump_triggers__stl(vlSelf);
#endif
                VL_FATAL_MT("/home/shi/research/adder_project/adder_gen/HC_32_BK3_KS2.v", 3, "", "Settle region did not converge.");
            }
            vlSelf->__VstlIterCount = ((IData)(1U) 
                                       + vlSelf->__VstlIterCount);
            VHC_32_BK3_KS2___024root___eval_stl(vlSelf);
        }
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void VHC_32_BK3_KS2___024root___dump_triggers__stl(VHC_32_BK3_KS2___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_32_BK3_KS2__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_32_BK3_KS2___024root___dump_triggers__stl\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VstlTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        VL_DBG_MSGF("         'stl' region trigger index 0 is active: Internal 'stl' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

void VHC_32_BK3_KS2___024root___ico_sequent__TOP__0(VHC_32_BK3_KS2___024root* vlSelf);

VL_ATTR_COLD void VHC_32_BK3_KS2___024root___eval_stl(VHC_32_BK3_KS2___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_32_BK3_KS2__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_32_BK3_KS2___024root___eval_stl\n"); );
    // Body
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        VHC_32_BK3_KS2___024root___ico_sequent__TOP__0(vlSelf);
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void VHC_32_BK3_KS2___024root___dump_triggers__ico(VHC_32_BK3_KS2___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_32_BK3_KS2__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_32_BK3_KS2___024root___dump_triggers__ico\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VicoTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VicoTriggered.word(0U))) {
        VL_DBG_MSGF("         'ico' region trigger index 0 is active: Internal 'ico' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

#ifdef VL_DEBUG
VL_ATTR_COLD void VHC_32_BK3_KS2___024root___dump_triggers__act(VHC_32_BK3_KS2___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_32_BK3_KS2__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_32_BK3_KS2___024root___dump_triggers__act\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VactTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 0 is active: @(posedge clk)\n");
    }
}
#endif  // VL_DEBUG

#ifdef VL_DEBUG
VL_ATTR_COLD void VHC_32_BK3_KS2___024root___dump_triggers__nba(VHC_32_BK3_KS2___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_32_BK3_KS2__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_32_BK3_KS2___024root___dump_triggers__nba\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VnbaTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 0 is active: @(posedge clk)\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void VHC_32_BK3_KS2___024root___ctor_var_reset(VHC_32_BK3_KS2___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_32_BK3_KS2__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_32_BK3_KS2___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->a = VL_RAND_RESET_I(32);
    vlSelf->b = VL_RAND_RESET_I(32);
    vlSelf->cin = VL_RAND_RESET_I(1);
    vlSelf->sum = VL_RAND_RESET_I(32);
    vlSelf->cout = VL_RAND_RESET_I(1);
    vlSelf->clk = VL_RAND_RESET_I(1);
    vlSelf->rst = VL_RAND_RESET_I(1);
    vlSelf->HC_32_BK3_KS2_top__DOT__sum_w = VL_RAND_RESET_I(32);
    vlSelf->HC_32_BK3_KS2_top__DOT__cin_r = VL_RAND_RESET_I(1);
    vlSelf->HC_32_BK3_KS2_top__DOT__u0__DOT____VdfgTmp_h59938038__0 = 0;
    vlSelf->HC_32_BK3_KS2_top__DOT__u0__DOT____VdfgTmp_h51a16d14__0 = 0;
    vlSelf->HC_32_BK3_KS2_top__DOT__u0__DOT____VdfgTmp_h6600f75e__0 = 0;
    vlSelf->HC_32_BK3_KS2_top__DOT__u0__DOT____VdfgTmp_h69dd0221__0 = 0;
    vlSelf->HC_32_BK3_KS2_top__DOT__u0__DOT____VdfgTmp_h61e10e23__0 = 0;
    vlSelf->HC_32_BK3_KS2_top__DOT__u0__DOT____VdfgTmp_hba910b0f__0 = 0;
    vlSelf->HC_32_BK3_KS2_top__DOT__u0__DOT____VdfgTmp_h177172a1__0 = 0;
    vlSelf->HC_32_BK3_KS2_top__DOT__u0__DOT____VdfgTmp_h5e515a86__0 = 0;
    vlSelf->HC_32_BK3_KS2_top__DOT__u0__DOT____VdfgTmp_he1859c1a__0 = 0;
    vlSelf->HC_32_BK3_KS2_top__DOT__u0__DOT____VdfgTmp_h72837780__0 = 0;
    vlSelf->HC_32_BK3_KS2_top__DOT__u0__DOT____VdfgTmp_hd3fa7237__0 = 0;
    vlSelf->HC_32_BK3_KS2_top__DOT__u0__DOT____VdfgTmp_hb740abc5__0 = 0;
    vlSelf->HC_32_BK3_KS2_top__DOT__u0__DOT____VdfgTmp_h6293a59b__0 = 0;
    vlSelf->HC_32_BK3_KS2_top__DOT__u0__DOT____VdfgTmp_hba52ce08__0 = 0;
    vlSelf->HC_32_BK3_KS2_top__DOT__u0__DOT____VdfgTmp_hd0fdd63f__0 = 0;
    vlSelf->HC_32_BK3_KS2_top__DOT__u0__DOT____VdfgTmp_hb66ac527__0 = 0;
    vlSelf->HC_32_BK3_KS2_top__DOT__u0__DOT____VdfgTmp_h444ca1fa__0 = 0;
    vlSelf->HC_32_BK3_KS2_top__DOT__u0__DOT____VdfgTmp_h417d006b__0 = 0;
    vlSelf->HC_32_BK3_KS2_top__DOT__u0__DOT____VdfgTmp_h27c785a9__0 = 0;
    vlSelf->HC_32_BK3_KS2_top__DOT__u0__DOT____VdfgTmp_h6847d903__0 = 0;
    vlSelf->HC_32_BK3_KS2_top__DOT__u0__DOT____VdfgTmp_h00035067__0 = 0;
    vlSelf->HC_32_BK3_KS2_top__DOT__u0__DOT____VdfgTmp_h415b4c29__0 = 0;
    vlSelf->HC_32_BK3_KS2_top__DOT__u0__DOT____VdfgTmp_h21660944__0 = 0;
    vlSelf->HC_32_BK3_KS2_top__DOT__u0__DOT____VdfgTmp_h93d49bae__0 = 0;
    vlSelf->HC_32_BK3_KS2_top__DOT__u0__DOT____VdfgTmp_h1fcc151d__0 = 0;
    vlSelf->HC_32_BK3_KS2_top__DOT__u0__DOT____VdfgTmp_h7f366d3a__0 = 0;
    vlSelf->HC_32_BK3_KS2_top__DOT__u0__DOT____VdfgTmp_hb2a58510__0 = 0;
    vlSelf->HC_32_BK3_KS2_top__DOT__u0__DOT____VdfgTmp_h2b8c3e07__0 = 0;
    vlSelf->HC_32_BK3_KS2_top__DOT__u0__DOT____VdfgTmp_h894b9aaa__0 = 0;
    vlSelf->__VdfgTmp_h37e52d1e__0 = 0;
    vlSelf->__VdfgTmp_hece52006__0 = 0;
    vlSelf->__Vtrigprevexpr___TOP__clk__0 = VL_RAND_RESET_I(1);
}
