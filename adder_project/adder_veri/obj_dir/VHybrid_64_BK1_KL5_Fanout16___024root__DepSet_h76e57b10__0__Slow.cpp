// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VHybrid_64_BK1_KL5_Fanout16.h for the primary calling header

#include "verilated.h"

#include "VHybrid_64_BK1_KL5_Fanout16___024root.h"

VL_ATTR_COLD void VHybrid_64_BK1_KL5_Fanout16___024root___eval_static(VHybrid_64_BK1_KL5_Fanout16___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_64_BK1_KL5_Fanout16__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_64_BK1_KL5_Fanout16___024root___eval_static\n"); );
}

VL_ATTR_COLD void VHybrid_64_BK1_KL5_Fanout16___024root___eval_initial(VHybrid_64_BK1_KL5_Fanout16___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_64_BK1_KL5_Fanout16__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_64_BK1_KL5_Fanout16___024root___eval_initial\n"); );
    // Body
    vlSelf->__Vtrigrprev__TOP__clk = vlSelf->clk;
}

VL_ATTR_COLD void VHybrid_64_BK1_KL5_Fanout16___024root___eval_final(VHybrid_64_BK1_KL5_Fanout16___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_64_BK1_KL5_Fanout16__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_64_BK1_KL5_Fanout16___024root___eval_final\n"); );
}

VL_ATTR_COLD void VHybrid_64_BK1_KL5_Fanout16___024root___eval_triggers__stl(VHybrid_64_BK1_KL5_Fanout16___024root* vlSelf);
#ifdef VL_DEBUG
VL_ATTR_COLD void VHybrid_64_BK1_KL5_Fanout16___024root___dump_triggers__stl(VHybrid_64_BK1_KL5_Fanout16___024root* vlSelf);
#endif  // VL_DEBUG
VL_ATTR_COLD void VHybrid_64_BK1_KL5_Fanout16___024root___eval_stl(VHybrid_64_BK1_KL5_Fanout16___024root* vlSelf);

VL_ATTR_COLD void VHybrid_64_BK1_KL5_Fanout16___024root___eval_settle(VHybrid_64_BK1_KL5_Fanout16___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_64_BK1_KL5_Fanout16__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_64_BK1_KL5_Fanout16___024root___eval_settle\n"); );
    // Init
    CData/*0:0*/ __VstlContinue;
    // Body
    vlSelf->__VstlIterCount = 0U;
    __VstlContinue = 1U;
    while (__VstlContinue) {
        __VstlContinue = 0U;
        VHybrid_64_BK1_KL5_Fanout16___024root___eval_triggers__stl(vlSelf);
        if (vlSelf->__VstlTriggered.any()) {
            __VstlContinue = 1U;
            if (VL_UNLIKELY((0x64U < vlSelf->__VstlIterCount))) {
#ifdef VL_DEBUG
                VHybrid_64_BK1_KL5_Fanout16___024root___dump_triggers__stl(vlSelf);
#endif
                VL_FATAL_MT("/home/shi/research/adder_project/adder_gen/Hybrid_64_BK1_KL5_Fanout16.v", 3, "", "Settle region did not converge.");
            }
            vlSelf->__VstlIterCount = ((IData)(1U) 
                                       + vlSelf->__VstlIterCount);
            VHybrid_64_BK1_KL5_Fanout16___024root___eval_stl(vlSelf);
        }
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void VHybrid_64_BK1_KL5_Fanout16___024root___dump_triggers__stl(VHybrid_64_BK1_KL5_Fanout16___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_64_BK1_KL5_Fanout16__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_64_BK1_KL5_Fanout16___024root___dump_triggers__stl\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VstlTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if (vlSelf->__VstlTriggered.at(0U)) {
        VL_DBG_MSGF("         'stl' region trigger index 0 is active: Internal 'stl' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

void VHybrid_64_BK1_KL5_Fanout16___024root___ico_sequent__TOP__0(VHybrid_64_BK1_KL5_Fanout16___024root* vlSelf);

VL_ATTR_COLD void VHybrid_64_BK1_KL5_Fanout16___024root___eval_stl(VHybrid_64_BK1_KL5_Fanout16___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_64_BK1_KL5_Fanout16__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_64_BK1_KL5_Fanout16___024root___eval_stl\n"); );
    // Body
    if (vlSelf->__VstlTriggered.at(0U)) {
        VHybrid_64_BK1_KL5_Fanout16___024root___ico_sequent__TOP__0(vlSelf);
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void VHybrid_64_BK1_KL5_Fanout16___024root___dump_triggers__ico(VHybrid_64_BK1_KL5_Fanout16___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_64_BK1_KL5_Fanout16__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_64_BK1_KL5_Fanout16___024root___dump_triggers__ico\n"); );
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
VL_ATTR_COLD void VHybrid_64_BK1_KL5_Fanout16___024root___dump_triggers__act(VHybrid_64_BK1_KL5_Fanout16___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_64_BK1_KL5_Fanout16__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_64_BK1_KL5_Fanout16___024root___dump_triggers__act\n"); );
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
VL_ATTR_COLD void VHybrid_64_BK1_KL5_Fanout16___024root___dump_triggers__nba(VHybrid_64_BK1_KL5_Fanout16___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_64_BK1_KL5_Fanout16__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_64_BK1_KL5_Fanout16___024root___dump_triggers__nba\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VnbaTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if (vlSelf->__VnbaTriggered.at(0U)) {
        VL_DBG_MSGF("         'nba' region trigger index 0 is active: @(posedge clk)\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void VHybrid_64_BK1_KL5_Fanout16___024root___ctor_var_reset(VHybrid_64_BK1_KL5_Fanout16___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_64_BK1_KL5_Fanout16__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_64_BK1_KL5_Fanout16___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->a = VL_RAND_RESET_Q(64);
    vlSelf->b = VL_RAND_RESET_Q(64);
    vlSelf->cin = VL_RAND_RESET_I(1);
    vlSelf->sum = VL_RAND_RESET_Q(64);
    vlSelf->cout = VL_RAND_RESET_I(1);
    vlSelf->clk = VL_RAND_RESET_I(1);
    vlSelf->rst = VL_RAND_RESET_I(1);
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__sum_w = VL_RAND_RESET_Q(64);
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__cin_r = VL_RAND_RESET_I(1);
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_hcb94e63d__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h298e4177__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h74194960__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h28cbb8e2__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_hd0fdd63f__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_hb66ac527__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h444ca1fa__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_hc594bf63__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h04c9a410__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h232807b7__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_hd24c3501__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h761a3d38__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h6c321e91__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_hd714f642__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h2c7fe75a__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_hcdc2ed9d__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h023e990b__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_hfbfc124c__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h47971b0c__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_hbae593ff__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_hb0011bb8__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h415b4c29__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h21660944__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_ha73c8452__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h93d49bae__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_ha7293e10__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h068ee91b__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h20b5e56c__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h9964639d__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_he5f41691__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h5fd6ee97__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h7a87c33e__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_hd5223a50__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_hea841958__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h658b89e5__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h4ce4f244__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h12fa8efa__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_hb4ef687e__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h1415cb2a__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h20737028__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h091f2a6d__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h1fcc151d__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h7f366d3a__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h4584f557__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_ha919e1b0__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_ha1ac0475__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h6f1a410f__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h1289e6b0__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h77c8b509__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_hb2a58510__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h2b8c3e07__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h5bedc1ff__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_hfcb8c486__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h29a6a5af__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h894b9aaa__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h13209511__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_hbc61a9c4__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_hf60f5d6d__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h38152a26__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h1de1fdad__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_hb6ef9f0d__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h9068ff90__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h28961f87__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h4eab30df__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h08ed10c6__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h36a4ac1f__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h88f09a82__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h972b127e__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h9225518d__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_hbea07a75__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h306f6bb1__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_ha18bc244__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h2ee0c1ba__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h86b12e0b__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_ha9677518__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_he60305f2__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_haabca9b5__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_hdf6ae2bc__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_hf7624b5d__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h2fdc7bfb__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h70dac872__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h1b971e58__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_hca14ef16__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h0ed41778__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h350fb0c9__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h00c7774b__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h5ffc93a5__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h0a0ffdab__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_hf79b9de3__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_hf7ee08e9__0 = 0;
    vlSelf->Hybrid_64_BK1_KL5_Fanout16_top__DOT__u0__DOT____VdfgTmp_h6e577051__0 = 0;
    vlSelf->__VdfgTmp_h37e33924__0 = 0;
    vlSelf->__VdfgTmp_hece3181c__0 = 0;
    vlSelf->__Vtrigrprev__TOP__clk = VL_RAND_RESET_I(1);
}
