// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VHC_64_BK0_KS6.h for the primary calling header

#include "verilated.h"

#include "VHC_64_BK0_KS6___024root.h"

VL_ATTR_COLD void VHC_64_BK0_KS6___024root___eval_static(VHC_64_BK0_KS6___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_64_BK0_KS6__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_64_BK0_KS6___024root___eval_static\n"); );
}

VL_ATTR_COLD void VHC_64_BK0_KS6___024root___eval_initial(VHC_64_BK0_KS6___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_64_BK0_KS6__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_64_BK0_KS6___024root___eval_initial\n"); );
    // Body
    vlSelf->__Vtrigrprev__TOP__clk = vlSelf->clk;
}

VL_ATTR_COLD void VHC_64_BK0_KS6___024root___eval_final(VHC_64_BK0_KS6___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_64_BK0_KS6__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_64_BK0_KS6___024root___eval_final\n"); );
}

VL_ATTR_COLD void VHC_64_BK0_KS6___024root___eval_triggers__stl(VHC_64_BK0_KS6___024root* vlSelf);
#ifdef VL_DEBUG
VL_ATTR_COLD void VHC_64_BK0_KS6___024root___dump_triggers__stl(VHC_64_BK0_KS6___024root* vlSelf);
#endif  // VL_DEBUG
VL_ATTR_COLD void VHC_64_BK0_KS6___024root___eval_stl(VHC_64_BK0_KS6___024root* vlSelf);

VL_ATTR_COLD void VHC_64_BK0_KS6___024root___eval_settle(VHC_64_BK0_KS6___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_64_BK0_KS6__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_64_BK0_KS6___024root___eval_settle\n"); );
    // Init
    CData/*0:0*/ __VstlContinue;
    // Body
    vlSelf->__VstlIterCount = 0U;
    __VstlContinue = 1U;
    while (__VstlContinue) {
        __VstlContinue = 0U;
        VHC_64_BK0_KS6___024root___eval_triggers__stl(vlSelf);
        if (vlSelf->__VstlTriggered.any()) {
            __VstlContinue = 1U;
            if (VL_UNLIKELY((0x64U < vlSelf->__VstlIterCount))) {
#ifdef VL_DEBUG
                VHC_64_BK0_KS6___024root___dump_triggers__stl(vlSelf);
#endif
                VL_FATAL_MT("/home/shi/research/adder_project/adder_gen/HC_64_BK0_KS6.v", 3, "", "Settle region did not converge.");
            }
            vlSelf->__VstlIterCount = ((IData)(1U) 
                                       + vlSelf->__VstlIterCount);
            VHC_64_BK0_KS6___024root___eval_stl(vlSelf);
        }
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void VHC_64_BK0_KS6___024root___dump_triggers__stl(VHC_64_BK0_KS6___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_64_BK0_KS6__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_64_BK0_KS6___024root___dump_triggers__stl\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VstlTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if (vlSelf->__VstlTriggered.at(0U)) {
        VL_DBG_MSGF("         'stl' region trigger index 0 is active: Internal 'stl' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

void VHC_64_BK0_KS6___024root___ico_sequent__TOP__0(VHC_64_BK0_KS6___024root* vlSelf);

VL_ATTR_COLD void VHC_64_BK0_KS6___024root___eval_stl(VHC_64_BK0_KS6___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_64_BK0_KS6__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_64_BK0_KS6___024root___eval_stl\n"); );
    // Body
    if (vlSelf->__VstlTriggered.at(0U)) {
        VHC_64_BK0_KS6___024root___ico_sequent__TOP__0(vlSelf);
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void VHC_64_BK0_KS6___024root___dump_triggers__ico(VHC_64_BK0_KS6___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_64_BK0_KS6__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_64_BK0_KS6___024root___dump_triggers__ico\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VicoTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if (vlSelf->__VicoTriggered.at(0U)) {
        VL_DBG_MSGF("         'ico' region trigger index 0 is active: Internal 'ico' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

#ifdef VL_DEBUG
VL_ATTR_COLD void VHC_64_BK0_KS6___024root___dump_triggers__act(VHC_64_BK0_KS6___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_64_BK0_KS6__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_64_BK0_KS6___024root___dump_triggers__act\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VactTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if (vlSelf->__VactTriggered.at(0U)) {
        VL_DBG_MSGF("         'act' region trigger index 0 is active: @(posedge clk)\n");
    }
}
#endif  // VL_DEBUG

#ifdef VL_DEBUG
VL_ATTR_COLD void VHC_64_BK0_KS6___024root___dump_triggers__nba(VHC_64_BK0_KS6___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_64_BK0_KS6__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_64_BK0_KS6___024root___dump_triggers__nba\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VnbaTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if (vlSelf->__VnbaTriggered.at(0U)) {
        VL_DBG_MSGF("         'nba' region trigger index 0 is active: @(posedge clk)\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void VHC_64_BK0_KS6___024root___ctor_var_reset(VHC_64_BK0_KS6___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_64_BK0_KS6__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_64_BK0_KS6___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->a = VL_RAND_RESET_Q(64);
    vlSelf->b = VL_RAND_RESET_Q(64);
    vlSelf->cin = VL_RAND_RESET_I(1);
    vlSelf->sum = VL_RAND_RESET_Q(64);
    vlSelf->cout = VL_RAND_RESET_I(1);
    vlSelf->clk = VL_RAND_RESET_I(1);
    vlSelf->rst = VL_RAND_RESET_I(1);
    vlSelf->HC_64_BK0_KS6_top__DOT__sum_w = VL_RAND_RESET_Q(64);
    vlSelf->HC_64_BK0_KS6_top__DOT__cin_r = VL_RAND_RESET_I(1);
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_hcb94e63d__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_he565380d__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h76aa7215__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h298e4177__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h74194960__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h264b8873__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h232807b7__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h2e1d1409__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h7dd025d6__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_hd24c3501__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h761a3d38__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h735a35a0__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h6c321e91__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h0514d313__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h23945228__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_hd714f642__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h2c7fe75a__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h10c005b2__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_hef88cfd5__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_hcdc2ed9d__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h023e990b__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h24155da1__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h20b5e56c__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h4f6be684__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h9964639d__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h68bb4c12__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_ha13fced5__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_he5f41691__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h5fd6ee97__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_hcc1c12da__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h847c9f47__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h7a87c33e__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_hd5223a50__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h079ac2b9__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_hea841958__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h4530e252__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h658b89e5__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h61bf1271__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h8606498e__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h4ce4f244__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h12fa8efa__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_hd498eb83__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_hc867597f__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_hb4ef687e__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h1415cb2a__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h349dda49__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h210ca8e8__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h20737028__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h091f2a6d__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_hcc7e42e0__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_he5610b6b__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h1fcc151d__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h7f366d3a__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h04ba0478__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h1de1fdad__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h902038b8__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_hb6ef9f0d__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_hb04e2642__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h9068ff90__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h2a6f312a__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h28961f87__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_he386eb65__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h315a4464__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h4eab30df__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h08ed10c6__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h8cc4e27e__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h2f59c22d__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h36a4ac1f__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h88f09a82__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h3b2d007b__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h1fe0085b__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h972b127e__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h9225518d__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h73072501__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_hdbd691fd__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_hbea07a75__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h306f6bb1__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h85d972d9__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_ha18bc244__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h57b332ef__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h2ee0c1ba__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h8a938b3c__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h86b12e0b__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h5cdb9bbc__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_ha9677518__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h417a62f9__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h3dd84e3d__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h6f3165f5__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h4000edf2__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_hc036698b__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_hc936262d__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_head7116f__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h80842e09__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h3de8bb6f__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h40f7e138__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h6148911b__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_he387e2c0__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_he1a0943f__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h1996bc02__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h7c5fe774__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h93a14d4f__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h15d1b815__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_hf4f86c5a__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h8b630af4__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h75e626e3__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h5f162646__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h81c9d7c9__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_hecb49a16__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h2f503fc5__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h096c1a9b__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_hf4d43fc8__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h7e5603e2__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h16ea3da0__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h6725d6f1__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_hc0d4677d__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h6da8e773__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h2079d32a__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_ha6b8123f__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_hbe4fc5cf__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h3647d151__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_hce34db0d__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h79599008__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h84d0b9cf__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h52aeba38__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_hf38bb500__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h9a76ec41__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_hb055d369__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h00eda6f4__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h2b674654__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h8706ed5b__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h74f5b7df__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h98f43db0__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h8ea7dc66__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h877ab321__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h5b65352f__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h51dd4909__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h697ef392__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h701d33dc__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h71005ff1__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_he5d5adf7__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_ha4c128de__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h0860ec18__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h0b94d137__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h15068167__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_hab4a3fa4__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_hfa76acc4__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_hee4032ab__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h1b971e58__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_hca14ef16__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h91d14a9b__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h0ed41778__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h9c82ff43__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h350fb0c9__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h6ba19017__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h00c7774b__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_he9c0eef8__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h5ffc93a5__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h490f6977__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h0a0ffdab__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h9ab0eeb4__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_hf79b9de3__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_hf8ef48e8__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_hf7ee08e9__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h40434066__0 = 0;
    vlSelf->HC_64_BK0_KS6_top__DOT__u0__DOT____VdfgTmp_h6e577051__0 = 0;
    vlSelf->__VdfgTmp_hece3181c__0 = 0;
    vlSelf->__VdfgTmp_h37e33924__0 = 0;
    vlSelf->__Vtrigrprev__TOP__clk = VL_RAND_RESET_I(1);
}
