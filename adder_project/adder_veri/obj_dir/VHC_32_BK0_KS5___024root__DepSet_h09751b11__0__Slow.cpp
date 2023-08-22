// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VHC_32_BK0_KS5.h for the primary calling header

#include "verilated.h"

#include "VHC_32_BK0_KS5__Syms.h"
#include "VHC_32_BK0_KS5___024root.h"

VL_ATTR_COLD void VHC_32_BK0_KS5___024root___eval_static(VHC_32_BK0_KS5___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_32_BK0_KS5__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_32_BK0_KS5___024root___eval_static\n"); );
}

VL_ATTR_COLD void VHC_32_BK0_KS5___024root___eval_initial(VHC_32_BK0_KS5___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_32_BK0_KS5__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_32_BK0_KS5___024root___eval_initial\n"); );
    // Body
    vlSelf->__Vtrigprevexpr___TOP__clk__0 = vlSelf->clk;
}

VL_ATTR_COLD void VHC_32_BK0_KS5___024root___eval_final(VHC_32_BK0_KS5___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_32_BK0_KS5__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_32_BK0_KS5___024root___eval_final\n"); );
}

VL_ATTR_COLD void VHC_32_BK0_KS5___024root___eval_triggers__stl(VHC_32_BK0_KS5___024root* vlSelf);
#ifdef VL_DEBUG
VL_ATTR_COLD void VHC_32_BK0_KS5___024root___dump_triggers__stl(VHC_32_BK0_KS5___024root* vlSelf);
#endif  // VL_DEBUG
VL_ATTR_COLD void VHC_32_BK0_KS5___024root___eval_stl(VHC_32_BK0_KS5___024root* vlSelf);

VL_ATTR_COLD void VHC_32_BK0_KS5___024root___eval_settle(VHC_32_BK0_KS5___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_32_BK0_KS5__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_32_BK0_KS5___024root___eval_settle\n"); );
    // Init
    CData/*0:0*/ __VstlContinue;
    // Body
    vlSelf->__VstlIterCount = 0U;
    __VstlContinue = 1U;
    while (__VstlContinue) {
        __VstlContinue = 0U;
        VHC_32_BK0_KS5___024root___eval_triggers__stl(vlSelf);
        if (vlSelf->__VstlTriggered.any()) {
            __VstlContinue = 1U;
            if (VL_UNLIKELY((0x64U < vlSelf->__VstlIterCount))) {
#ifdef VL_DEBUG
                VHC_32_BK0_KS5___024root___dump_triggers__stl(vlSelf);
#endif
                VL_FATAL_MT("/home/shi/research/adder_project/adder_gen/HC_32_BK0_KS5.v", 3, "", "Settle region did not converge.");
            }
            vlSelf->__VstlIterCount = ((IData)(1U) 
                                       + vlSelf->__VstlIterCount);
            VHC_32_BK0_KS5___024root___eval_stl(vlSelf);
        }
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void VHC_32_BK0_KS5___024root___dump_triggers__stl(VHC_32_BK0_KS5___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_32_BK0_KS5__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_32_BK0_KS5___024root___dump_triggers__stl\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VstlTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        VL_DBG_MSGF("         'stl' region trigger index 0 is active: Internal 'stl' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

void VHC_32_BK0_KS5___024root___ico_sequent__TOP__0(VHC_32_BK0_KS5___024root* vlSelf);

VL_ATTR_COLD void VHC_32_BK0_KS5___024root___eval_stl(VHC_32_BK0_KS5___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_32_BK0_KS5__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_32_BK0_KS5___024root___eval_stl\n"); );
    // Body
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        VHC_32_BK0_KS5___024root___ico_sequent__TOP__0(vlSelf);
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void VHC_32_BK0_KS5___024root___dump_triggers__ico(VHC_32_BK0_KS5___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_32_BK0_KS5__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_32_BK0_KS5___024root___dump_triggers__ico\n"); );
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
VL_ATTR_COLD void VHC_32_BK0_KS5___024root___dump_triggers__act(VHC_32_BK0_KS5___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_32_BK0_KS5__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_32_BK0_KS5___024root___dump_triggers__act\n"); );
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
VL_ATTR_COLD void VHC_32_BK0_KS5___024root___dump_triggers__nba(VHC_32_BK0_KS5___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_32_BK0_KS5__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_32_BK0_KS5___024root___dump_triggers__nba\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VnbaTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 0 is active: @(posedge clk)\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void VHC_32_BK0_KS5___024root___ctor_var_reset(VHC_32_BK0_KS5___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_32_BK0_KS5__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_32_BK0_KS5___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->a = VL_RAND_RESET_I(32);
    vlSelf->b = VL_RAND_RESET_I(32);
    vlSelf->cin = VL_RAND_RESET_I(1);
    vlSelf->sum = VL_RAND_RESET_I(32);
    vlSelf->cout = VL_RAND_RESET_I(1);
    vlSelf->clk = VL_RAND_RESET_I(1);
    vlSelf->rst = VL_RAND_RESET_I(1);
    vlSelf->HC_32_BK0_KS5_top__DOT__sum_w = VL_RAND_RESET_I(32);
    vlSelf->HC_32_BK0_KS5_top__DOT__cin_r = VL_RAND_RESET_I(1);
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_h59938038__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_he565380d__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_h76aa7215__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_h298e4177__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_h74194960__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_h295e9c41__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_h28cbb8e2__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_h2fae920a__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_hb931ec6d__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_hd0fdd63f__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_hb66ac527__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_hbf135891__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_h444ca1fa__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_h0514d313__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_h23945228__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_hd714f642__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_h2c7fe75a__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_h10c005b2__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_hef88cfd5__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_hcdc2ed9d__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_h023e990b__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_h7f395545__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_hfbfc124c__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_h17d1a2c9__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_h47971b0c__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_h49f65d73__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_hfef4073c__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_hbae593ff__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_hb0011bb8__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_h164156d9__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_hc5b91278__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_h415b4c29__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_h21660944__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_ha6b729d0__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_ha73c8452__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_h400982ae__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_h93d49bae__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_h61bf1271__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_h8606498e__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_h4ce4f244__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_h12fa8efa__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_hd498eb83__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_hc867597f__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_hb4ef687e__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_h1415cb2a__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_h349dda49__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_h210ca8e8__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_h20737028__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_h091f2a6d__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_hcc7e42e0__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_he5610b6b__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_h1fcc151d__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_h7f366d3a__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_h74661dc7__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_hab502e59__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_h4584f557__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_ha919e1b0__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_h53009bbb__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_h052bedb3__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_ha1ac0475__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_h6f1a410f__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_he3d29090__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_h4aa6a2d6__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_h1289e6b0__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_h77c8b509__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_heb153ea0__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_h83d3fe09__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_hb2a58510__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_h2b8c3e07__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_h943c1b42__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_h5bedc1ff__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_h6e6f9506__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_hfcb8c486__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_hb734f788__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_h29a6a5af__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_hd85db1be__0 = 0;
    vlSelf->HC_32_BK0_KS5_top__DOT__u0__DOT____VdfgTmp_h894b9aaa__0 = 0;
    vlSelf->__VdfgTmp_hece52006__0 = 0;
    vlSelf->__VdfgTmp_h37e52d1e__0 = 0;
    vlSelf->__Vtrigprevexpr___TOP__clk__0 = VL_RAND_RESET_I(1);
}