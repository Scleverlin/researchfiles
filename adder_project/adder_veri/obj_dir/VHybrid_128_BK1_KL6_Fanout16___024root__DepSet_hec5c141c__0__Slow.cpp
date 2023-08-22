// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VHybrid_128_BK1_KL6_Fanout16.h for the primary calling header

#include "verilated.h"

#include "VHybrid_128_BK1_KL6_Fanout16__Syms.h"
#include "VHybrid_128_BK1_KL6_Fanout16___024root.h"

VL_ATTR_COLD void VHybrid_128_BK1_KL6_Fanout16___024root___eval_static(VHybrid_128_BK1_KL6_Fanout16___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_128_BK1_KL6_Fanout16__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_128_BK1_KL6_Fanout16___024root___eval_static\n"); );
}

VL_ATTR_COLD void VHybrid_128_BK1_KL6_Fanout16___024root___eval_initial(VHybrid_128_BK1_KL6_Fanout16___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_128_BK1_KL6_Fanout16__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_128_BK1_KL6_Fanout16___024root___eval_initial\n"); );
    // Body
    vlSelf->__Vtrigprevexpr___TOP__clk__0 = vlSelf->clk;
}

VL_ATTR_COLD void VHybrid_128_BK1_KL6_Fanout16___024root___eval_final(VHybrid_128_BK1_KL6_Fanout16___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_128_BK1_KL6_Fanout16__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_128_BK1_KL6_Fanout16___024root___eval_final\n"); );
}

VL_ATTR_COLD void VHybrid_128_BK1_KL6_Fanout16___024root___eval_triggers__stl(VHybrid_128_BK1_KL6_Fanout16___024root* vlSelf);
#ifdef VL_DEBUG
VL_ATTR_COLD void VHybrid_128_BK1_KL6_Fanout16___024root___dump_triggers__stl(VHybrid_128_BK1_KL6_Fanout16___024root* vlSelf);
#endif  // VL_DEBUG
VL_ATTR_COLD void VHybrid_128_BK1_KL6_Fanout16___024root___eval_stl(VHybrid_128_BK1_KL6_Fanout16___024root* vlSelf);

VL_ATTR_COLD void VHybrid_128_BK1_KL6_Fanout16___024root___eval_settle(VHybrid_128_BK1_KL6_Fanout16___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_128_BK1_KL6_Fanout16__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_128_BK1_KL6_Fanout16___024root___eval_settle\n"); );
    // Init
    CData/*0:0*/ __VstlContinue;
    // Body
    vlSelf->__VstlIterCount = 0U;
    __VstlContinue = 1U;
    while (__VstlContinue) {
        __VstlContinue = 0U;
        VHybrid_128_BK1_KL6_Fanout16___024root___eval_triggers__stl(vlSelf);
        if (vlSelf->__VstlTriggered.any()) {
            __VstlContinue = 1U;
            if (VL_UNLIKELY((0x64U < vlSelf->__VstlIterCount))) {
#ifdef VL_DEBUG
                VHybrid_128_BK1_KL6_Fanout16___024root___dump_triggers__stl(vlSelf);
#endif
                VL_FATAL_MT("/home/shi/research/adder_project/adder_gen/Hybrid_128_BK1_KL6_Fanout16.v", 3, "", "Settle region did not converge.");
            }
            vlSelf->__VstlIterCount = ((IData)(1U) 
                                       + vlSelf->__VstlIterCount);
            VHybrid_128_BK1_KL6_Fanout16___024root___eval_stl(vlSelf);
        }
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void VHybrid_128_BK1_KL6_Fanout16___024root___dump_triggers__stl(VHybrid_128_BK1_KL6_Fanout16___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_128_BK1_KL6_Fanout16__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_128_BK1_KL6_Fanout16___024root___dump_triggers__stl\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VstlTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        VL_DBG_MSGF("         'stl' region trigger index 0 is active: Internal 'stl' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

void VHybrid_128_BK1_KL6_Fanout16___024root___ico_sequent__TOP__0(VHybrid_128_BK1_KL6_Fanout16___024root* vlSelf);

VL_ATTR_COLD void VHybrid_128_BK1_KL6_Fanout16___024root___eval_stl(VHybrid_128_BK1_KL6_Fanout16___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_128_BK1_KL6_Fanout16__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_128_BK1_KL6_Fanout16___024root___eval_stl\n"); );
    // Body
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        VHybrid_128_BK1_KL6_Fanout16___024root___ico_sequent__TOP__0(vlSelf);
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void VHybrid_128_BK1_KL6_Fanout16___024root___dump_triggers__ico(VHybrid_128_BK1_KL6_Fanout16___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_128_BK1_KL6_Fanout16__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_128_BK1_KL6_Fanout16___024root___dump_triggers__ico\n"); );
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
VL_ATTR_COLD void VHybrid_128_BK1_KL6_Fanout16___024root___dump_triggers__act(VHybrid_128_BK1_KL6_Fanout16___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_128_BK1_KL6_Fanout16__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_128_BK1_KL6_Fanout16___024root___dump_triggers__act\n"); );
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
VL_ATTR_COLD void VHybrid_128_BK1_KL6_Fanout16___024root___dump_triggers__nba(VHybrid_128_BK1_KL6_Fanout16___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_128_BK1_KL6_Fanout16__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_128_BK1_KL6_Fanout16___024root___dump_triggers__nba\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VnbaTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 0 is active: @(posedge clk)\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void VHybrid_128_BK1_KL6_Fanout16___024root___ctor_var_reset(VHybrid_128_BK1_KL6_Fanout16___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_128_BK1_KL6_Fanout16__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_128_BK1_KL6_Fanout16___024root___ctor_var_reset\n"); );
    // Body
    VL_RAND_RESET_W(128, vlSelf->a);
    VL_RAND_RESET_W(128, vlSelf->b);
    vlSelf->cin = VL_RAND_RESET_I(1);
    VL_RAND_RESET_W(128, vlSelf->sum);
    vlSelf->cout = VL_RAND_RESET_I(1);
    vlSelf->clk = VL_RAND_RESET_I(1);
    vlSelf->rst = VL_RAND_RESET_I(1);
    VL_RAND_RESET_W(128, vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__sum_w);
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__cin_r = VL_RAND_RESET_I(1);
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h46389293__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h298e4177__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h74194960__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h28cbb8e2__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hd0fdd63f__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hb66ac527__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h444ca1fa__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hc594bf63__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h04c9a410__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h232807b7__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hd24c3501__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h761a3d38__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h9b125344__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h33fc03d4__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h57dd29c9__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hd7772bbf__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h08f0d24a__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h1f045b01__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hd1f8989f__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h57cb2097__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_had34246a__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h29431499__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h2abcec20__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hd714f642__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h2c7fe75a__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hcdc2ed9d__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h023e990b__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hfbfc124c__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h47971b0c__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hbae593ff__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hb0011bb8__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h415b4c29__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h21660944__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_ha73c8452__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h93d49bae__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_ha7293e10__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h068ee91b__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h20b5e56c__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h9964639d__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_he5f41691__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h5fd6ee97__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h7a87c33e__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hd5223a50__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hea841958__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h7f6401bf__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h1cfab118__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h97a79ba3__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h85e2fbcc__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h09a443a6__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hee4f6ac4__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h5f971ac4__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h66ee58b7__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h8e3e3d05__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hfc7efee2__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_ha9d3150a__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h978f2c6a__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h738e7898__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h074a51d4__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hd21fa578__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hc3064409__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h171bac09__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hf4cb7e42__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h55ff7e37__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h4ce4f244__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h12fa8efa__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hb4ef687e__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h1415cb2a__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h20737028__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h091f2a6d__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h1fcc151d__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h7f366d3a__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h4584f557__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_ha919e1b0__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_ha1ac0475__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h6f1a410f__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h1289e6b0__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h77c8b509__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hb2a58510__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h2b8c3e07__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h5bedc1ff__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hfcb8c486__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h29a6a5af__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h894b9aaa__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h13209511__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hbc61a9c4__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hf60f5d6d__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h38152a26__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h1de1fdad__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hb6ef9f0d__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h9068ff90__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h28961f87__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h4eab30df__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h08ed10c6__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h36a4ac1f__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h88f09a82__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h972b127e__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h9225518d__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hbea07a75__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h306f6bb1__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_ha18bc244__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h2ee0c1ba__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h86b12e0b__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h0e63f1eb__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hb24f0593__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h9c9d2857__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hf8e7f3cf__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hf4a17e67__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_ha16708c4__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hd82e92cd__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h91b65764__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h8773d5d5__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hec25b214__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h08822fe8__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h10057556__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hecc5f994__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hf2f1160d__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h0fe8dd30__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h3a75a6dd__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h6ce7d63b__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h27be5286__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hbea58a7c__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h9a7a46b3__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_ha97676ed__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h69c4a336__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h0ac641d0__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_ha7215aab__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h3935400a__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h354d5d5f__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h5fb30ae3__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h68be619a__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hbfb427d0__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hf132a98e__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h9353dbe0__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h03ae20b6__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h79b27f7a__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h0beee128__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h5c3dd066__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h65a82bdb__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h683e64b2__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hccb7eb7b__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h5cd8e012__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_he60305f2__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_haabca9b5__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hdf6ae2bc__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hf7624b5d__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h2fdc7bfb__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h70dac872__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h1b971e58__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hca14ef16__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h0ed41778__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h350fb0c9__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h00c7774b__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h5ffc93a5__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h0a0ffdab__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hf79b9de3__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hf7ee08e9__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h99cb21b4__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h9826c663__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h54957c37__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h4d92735b__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h2f463097__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_he058b48f__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hf80fc7ca__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h4f2bb5af__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h39d2c2f3__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h57be3231__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h622b7e8d__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hdcf15032__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h402b7f2c__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h09927c8a__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_he05eaae6__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_ha410dc5c__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h86f56904__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_he642857a__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h8dab27f8__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h50a05f61__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hfb1ab6f0__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_he81a8c3f__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_he2414fb9__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h236a6432__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_ha238dee0__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h2a3412e8__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hd065cd50__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hbb75c928__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hbf28478f__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h019fb9da__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hc054274d__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h8ef5cbd0__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hd88d4717__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hf969854a__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hd0976ebd__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hebdf3805__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h86d8e69c__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h857087ec__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h0c138c7e__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hbe6fc35d__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h2c14da4b__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_hd2a55bf8__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_he939aaec__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h65027d96__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h349e3239__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h4ff666dc__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h151a4882__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h6a64f167__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_ha106af49__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout16_top__DOT__u0__DOT____VdfgTmp_h06ec10af__0 = 0;
    VL_ZERO_RESET_W(128, vlSelf->__VdfgTmp_h37ff1940__0);
    VL_ZERO_RESET_W(128, vlSelf->__VdfgTmp_hecf62260__0);
    vlSelf->__Vtrigprevexpr___TOP__clk__0 = VL_RAND_RESET_I(1);
}
