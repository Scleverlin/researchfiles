// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VHybrid_8_BK3_SA0.h for the primary calling header

#include "verilated.h"

#include "VHybrid_8_BK3_SA0__Syms.h"
#include "VHybrid_8_BK3_SA0___024root.h"

VL_ATTR_COLD void VHybrid_8_BK3_SA0___024root___eval_static(VHybrid_8_BK3_SA0___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_8_BK3_SA0__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_8_BK3_SA0___024root___eval_static\n"); );
}

VL_ATTR_COLD void VHybrid_8_BK3_SA0___024root___eval_initial(VHybrid_8_BK3_SA0___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_8_BK3_SA0__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_8_BK3_SA0___024root___eval_initial\n"); );
    // Body
    vlSelf->__Vtrigprevexpr___TOP__clk__0 = vlSelf->clk;
}

VL_ATTR_COLD void VHybrid_8_BK3_SA0___024root___eval_final(VHybrid_8_BK3_SA0___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_8_BK3_SA0__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_8_BK3_SA0___024root___eval_final\n"); );
}

VL_ATTR_COLD void VHybrid_8_BK3_SA0___024root___eval_triggers__stl(VHybrid_8_BK3_SA0___024root* vlSelf);
#ifdef VL_DEBUG
VL_ATTR_COLD void VHybrid_8_BK3_SA0___024root___dump_triggers__stl(VHybrid_8_BK3_SA0___024root* vlSelf);
#endif  // VL_DEBUG
VL_ATTR_COLD void VHybrid_8_BK3_SA0___024root___eval_stl(VHybrid_8_BK3_SA0___024root* vlSelf);

VL_ATTR_COLD void VHybrid_8_BK3_SA0___024root___eval_settle(VHybrid_8_BK3_SA0___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_8_BK3_SA0__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_8_BK3_SA0___024root___eval_settle\n"); );
    // Init
    CData/*0:0*/ __VstlContinue;
    // Body
    vlSelf->__VstlIterCount = 0U;
    __VstlContinue = 1U;
    while (__VstlContinue) {
        __VstlContinue = 0U;
        VHybrid_8_BK3_SA0___024root___eval_triggers__stl(vlSelf);
        if (vlSelf->__VstlTriggered.any()) {
            __VstlContinue = 1U;
            if (VL_UNLIKELY((0x64U < vlSelf->__VstlIterCount))) {
#ifdef VL_DEBUG
                VHybrid_8_BK3_SA0___024root___dump_triggers__stl(vlSelf);
#endif
                VL_FATAL_MT("/home/shi/research/adder_project/adder_gen/Hybrid_8_BK3_SA0.v", 3, "", "Settle region did not converge.");
            }
            vlSelf->__VstlIterCount = ((IData)(1U) 
                                       + vlSelf->__VstlIterCount);
            VHybrid_8_BK3_SA0___024root___eval_stl(vlSelf);
        }
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void VHybrid_8_BK3_SA0___024root___dump_triggers__stl(VHybrid_8_BK3_SA0___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_8_BK3_SA0__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_8_BK3_SA0___024root___dump_triggers__stl\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VstlTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        VL_DBG_MSGF("         'stl' region trigger index 0 is active: Internal 'stl' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

void VHybrid_8_BK3_SA0___024root___ico_sequent__TOP__0(VHybrid_8_BK3_SA0___024root* vlSelf);

VL_ATTR_COLD void VHybrid_8_BK3_SA0___024root___eval_stl(VHybrid_8_BK3_SA0___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_8_BK3_SA0__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_8_BK3_SA0___024root___eval_stl\n"); );
    // Body
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        VHybrid_8_BK3_SA0___024root___ico_sequent__TOP__0(vlSelf);
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void VHybrid_8_BK3_SA0___024root___dump_triggers__ico(VHybrid_8_BK3_SA0___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_8_BK3_SA0__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_8_BK3_SA0___024root___dump_triggers__ico\n"); );
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
VL_ATTR_COLD void VHybrid_8_BK3_SA0___024root___dump_triggers__act(VHybrid_8_BK3_SA0___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_8_BK3_SA0__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_8_BK3_SA0___024root___dump_triggers__act\n"); );
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
VL_ATTR_COLD void VHybrid_8_BK3_SA0___024root___dump_triggers__nba(VHybrid_8_BK3_SA0___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_8_BK3_SA0__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_8_BK3_SA0___024root___dump_triggers__nba\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VnbaTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 0 is active: @(posedge clk)\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void VHybrid_8_BK3_SA0___024root___ctor_var_reset(VHybrid_8_BK3_SA0___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_8_BK3_SA0__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_8_BK3_SA0___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->a = VL_RAND_RESET_I(8);
    vlSelf->b = VL_RAND_RESET_I(8);
    vlSelf->cin = VL_RAND_RESET_I(1);
    vlSelf->sum = VL_RAND_RESET_I(8);
    vlSelf->cout = VL_RAND_RESET_I(1);
    vlSelf->clk = VL_RAND_RESET_I(1);
    vlSelf->rst = VL_RAND_RESET_I(1);
    vlSelf->Hybrid_8_BK3_SA0_top__DOT__cin_r = VL_RAND_RESET_I(1);
    vlSelf->Hybrid_8_BK3_SA0_top__DOT__u0__DOT____VdfgTmp_hedeb8924__0 = 0;
    vlSelf->Hybrid_8_BK3_SA0_top__DOT__u0__DOT____VdfgTmp_h9b1217bb__0 = 0;
    vlSelf->Hybrid_8_BK3_SA0_top__DOT__u0__DOT____VdfgTmp_hf583e290__0 = 0;
    vlSelf->Hybrid_8_BK3_SA0_top__DOT__u0__DOT____VdfgTmp_he4db5a5d__0 = 0;
    vlSelf->Hybrid_8_BK3_SA0_top__DOT__u0__DOT____VdfgTmp_h51a16d14__0 = 0;
    vlSelf->Hybrid_8_BK3_SA0_top__DOT__u0__DOT____VdfgTmp_h6600f75e__0 = 0;
    vlSelf->Hybrid_8_BK3_SA0_top__DOT__u0__DOT____VdfgTmp_h69dd0221__0 = 0;
    vlSelf->__VdfgTmp_h37e6ab0d__0 = 0;
    vlSelf->__VdfgTmp_hecee864b__0 = 0;
    vlSelf->__Vtrigprevexpr___TOP__clk__0 = VL_RAND_RESET_I(1);
}
