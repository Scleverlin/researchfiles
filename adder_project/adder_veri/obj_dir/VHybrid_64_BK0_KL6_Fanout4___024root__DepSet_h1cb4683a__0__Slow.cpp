// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VHybrid_64_BK0_KL6_Fanout4.h for the primary calling header

#include "verilated.h"

#include "VHybrid_64_BK0_KL6_Fanout4___024root.h"

VL_ATTR_COLD void VHybrid_64_BK0_KL6_Fanout4___024root___eval_static(VHybrid_64_BK0_KL6_Fanout4___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_64_BK0_KL6_Fanout4__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_64_BK0_KL6_Fanout4___024root___eval_static\n"); );
}

VL_ATTR_COLD void VHybrid_64_BK0_KL6_Fanout4___024root___eval_initial(VHybrid_64_BK0_KL6_Fanout4___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_64_BK0_KL6_Fanout4__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_64_BK0_KL6_Fanout4___024root___eval_initial\n"); );
    // Body
    vlSelf->__Vtrigrprev__TOP__clk = vlSelf->clk;
}

VL_ATTR_COLD void VHybrid_64_BK0_KL6_Fanout4___024root___eval_final(VHybrid_64_BK0_KL6_Fanout4___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_64_BK0_KL6_Fanout4__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_64_BK0_KL6_Fanout4___024root___eval_final\n"); );
}

VL_ATTR_COLD void VHybrid_64_BK0_KL6_Fanout4___024root___eval_triggers__stl(VHybrid_64_BK0_KL6_Fanout4___024root* vlSelf);
#ifdef VL_DEBUG
VL_ATTR_COLD void VHybrid_64_BK0_KL6_Fanout4___024root___dump_triggers__stl(VHybrid_64_BK0_KL6_Fanout4___024root* vlSelf);
#endif  // VL_DEBUG
VL_ATTR_COLD void VHybrid_64_BK0_KL6_Fanout4___024root___eval_stl(VHybrid_64_BK0_KL6_Fanout4___024root* vlSelf);

VL_ATTR_COLD void VHybrid_64_BK0_KL6_Fanout4___024root___eval_settle(VHybrid_64_BK0_KL6_Fanout4___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_64_BK0_KL6_Fanout4__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_64_BK0_KL6_Fanout4___024root___eval_settle\n"); );
    // Init
    CData/*0:0*/ __VstlContinue;
    // Body
    vlSelf->__VstlIterCount = 0U;
    __VstlContinue = 1U;
    while (__VstlContinue) {
        __VstlContinue = 0U;
        VHybrid_64_BK0_KL6_Fanout4___024root___eval_triggers__stl(vlSelf);
        if (vlSelf->__VstlTriggered.any()) {
            __VstlContinue = 1U;
            if (VL_UNLIKELY((0x64U < vlSelf->__VstlIterCount))) {
#ifdef VL_DEBUG
                VHybrid_64_BK0_KL6_Fanout4___024root___dump_triggers__stl(vlSelf);
#endif
                VL_FATAL_MT("/home/shi/research/adder_project/adder_gen/Hybrid_64_BK0_KL6_Fanout4.v", 3, "", "Settle region did not converge.");
            }
            vlSelf->__VstlIterCount = ((IData)(1U) 
                                       + vlSelf->__VstlIterCount);
            VHybrid_64_BK0_KL6_Fanout4___024root___eval_stl(vlSelf);
        }
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void VHybrid_64_BK0_KL6_Fanout4___024root___dump_triggers__stl(VHybrid_64_BK0_KL6_Fanout4___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_64_BK0_KL6_Fanout4__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_64_BK0_KL6_Fanout4___024root___dump_triggers__stl\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VstlTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if (vlSelf->__VstlTriggered.at(0U)) {
        VL_DBG_MSGF("         'stl' region trigger index 0 is active: Internal 'stl' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

void VHybrid_64_BK0_KL6_Fanout4___024root___ico_sequent__TOP__0(VHybrid_64_BK0_KL6_Fanout4___024root* vlSelf);

VL_ATTR_COLD void VHybrid_64_BK0_KL6_Fanout4___024root___eval_stl(VHybrid_64_BK0_KL6_Fanout4___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_64_BK0_KL6_Fanout4__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_64_BK0_KL6_Fanout4___024root___eval_stl\n"); );
    // Body
    if (vlSelf->__VstlTriggered.at(0U)) {
        VHybrid_64_BK0_KL6_Fanout4___024root___ico_sequent__TOP__0(vlSelf);
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void VHybrid_64_BK0_KL6_Fanout4___024root___dump_triggers__ico(VHybrid_64_BK0_KL6_Fanout4___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_64_BK0_KL6_Fanout4__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_64_BK0_KL6_Fanout4___024root___dump_triggers__ico\n"); );
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
VL_ATTR_COLD void VHybrid_64_BK0_KL6_Fanout4___024root___dump_triggers__act(VHybrid_64_BK0_KL6_Fanout4___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_64_BK0_KL6_Fanout4__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_64_BK0_KL6_Fanout4___024root___dump_triggers__act\n"); );
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
VL_ATTR_COLD void VHybrid_64_BK0_KL6_Fanout4___024root___dump_triggers__nba(VHybrid_64_BK0_KL6_Fanout4___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_64_BK0_KL6_Fanout4__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_64_BK0_KL6_Fanout4___024root___dump_triggers__nba\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VnbaTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if (vlSelf->__VnbaTriggered.at(0U)) {
        VL_DBG_MSGF("         'nba' region trigger index 0 is active: @(posedge clk)\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void VHybrid_64_BK0_KL6_Fanout4___024root___ctor_var_reset(VHybrid_64_BK0_KL6_Fanout4___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_64_BK0_KL6_Fanout4__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_64_BK0_KL6_Fanout4___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->a = VL_RAND_RESET_Q(64);
    vlSelf->b = VL_RAND_RESET_Q(64);
    vlSelf->cin = VL_RAND_RESET_I(1);
    vlSelf->sum = VL_RAND_RESET_Q(64);
    vlSelf->cout = VL_RAND_RESET_I(1);
    vlSelf->clk = VL_RAND_RESET_I(1);
    vlSelf->rst = VL_RAND_RESET_I(1);
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__sum_w = VL_RAND_RESET_Q(64);
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__cin_r = VL_RAND_RESET_I(1);
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_hcb94e63d__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h51a16d14__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h6600f75e__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h69184624__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h61e10e23__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_hba910b0f__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h6d78f4ff__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h177172a1__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h5e515a86__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h616abf82__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_he1859c1a__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h72837780__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h4512a3de__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_hd3fa7237__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_hb740abc5__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_hba1efd7f__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h6293a59b__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_hba52ce08__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h436a29ae__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_hd0fdd63f__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_hb66ac527__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_hbf135891__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_hc594bf63__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h04c9a410__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h0b6ef0fc__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h9418fdc7__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h15e8b2af__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h0cdee94f__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h7e259763__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h79fa199e__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h03a9bc54__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_hc4b635b0__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h0c7b4651__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h075891e3__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h7b2fb4ff__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h7a0496df__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h06fb0b71__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h60ef5f1a__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h7e0931b2__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h7b083818__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h2aa7f70a__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h72ebac23__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h7fe5a3a7__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_hd24c3501__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h761a3d38__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h735a35a0__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h6c321e91__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_hcdc2ed9d__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h023e990b__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h012de86e__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h417d006b__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h27c785a9__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h0dcf6b01__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_hae693314__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h2c04a535__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h6847d903__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h746b982f__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h47971b0c__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h47df4e07__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h415b4c29__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_hc2e0dfcb__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_hbb34d849__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h6623210c__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_ha7293e10__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h041a99c1__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h55594d28__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_hfaa51135__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h7a668320__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h0c251477__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h3129d8b2__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_hd7c081e9__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h10b84258__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h79d18b51__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h9964639d__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_hc5a560a2__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h7a87c33e__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_hd5223a50__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_hbb7d9428__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h658b89e5__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_hb4ef687e__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h1415cb2a__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h1fcc151d__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h7f366d3a__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_hc7e9337d__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_haa6c4d96__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_hd4c2d44a__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_ha1ac0475__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h6f1a410f__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h7be06f00__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_haeaa5c2b__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h061aee6e__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_hb2a58510__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h2b8c3e07__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_hbd26f5f2__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h308e2913__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h65ad4850__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_haf26d3e4__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h53636081__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_hd0126f01__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_hef29b6c0__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h4cafe2f8__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_hedb9c373__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h19de3b0e__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_hf4248849__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_he4d678c5__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h209104dc__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h8c5f7712__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h484afdcc__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_hf60f5d6d__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h826299ef__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_hbecc2b75__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h34a38685__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_hb6ef9f0d__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h2f697d23__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h1fcc2f84__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h3a95a9c0__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h28961f87__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_hf6a6f4c4__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h8507f4fc__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_hbda5500c__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h36a4ac1f__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h88f09a82__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h75793fa1__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h0febc9a3__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h14ae49a9__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_hbea07a75__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h306f6bb1__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_hbf17eea6__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h5e6bf52c__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_hafc994cd__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h2ee0c1ba__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_hd8cafbc8__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h8931a75a__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h4575438e__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_ha9677518__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_head7116f__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h80842e09__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h7c5fe774__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h93a14d4f__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_hecb49a16__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h2f503fc5__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h6da8e773__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h2079d32a__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_hf0f2a6e4__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h8cf3ad74__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h4a871ca9__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h52aeba38__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_hf38bb500__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h9a78e671__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_hd5aec749__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h47a3221d__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h98f43db0__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h8ea7dc66__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h485336c5__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h3a55537e__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h7f446672__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_he5d5adf7__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_ha4c128de__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h42332360__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h5b4cc17b__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_hfe2eee9a__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h1b971e58__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_hca14ef16__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_hf2269c7b__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h38179a5d__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h11ac1c21__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h350fb0c9__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_hca7626d9__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h87f7d8aa__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h7ac5fb2f__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h5ffc93a5__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h6915aabe__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h303e560d__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_hd93eb6c4__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_hf79b9de3__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h4226eb95__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_hf7fd58e8__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_hc1b27261__0 = 0;
    vlSelf->Hybrid_64_BK0_KL6_Fanout4_top__DOT__u0__DOT____VdfgTmp_h6e577051__0 = 0;
    vlSelf->__VdfgTmp_hece3181c__0 = 0;
    vlSelf->__VdfgTmp_h37e33924__0 = 0;
    vlSelf->__Vtrigrprev__TOP__clk = VL_RAND_RESET_I(1);
}
