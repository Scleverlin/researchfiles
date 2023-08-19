// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VHybrid_64_BK3_SA3.h for the primary calling header

#include "verilated.h"

#include "VHybrid_64_BK3_SA3___024root.h"

VL_ATTR_COLD void VHybrid_64_BK3_SA3___024root___eval_static(VHybrid_64_BK3_SA3___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_64_BK3_SA3__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_64_BK3_SA3___024root___eval_static\n"); );
}

VL_ATTR_COLD void VHybrid_64_BK3_SA3___024root___eval_initial(VHybrid_64_BK3_SA3___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_64_BK3_SA3__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_64_BK3_SA3___024root___eval_initial\n"); );
    // Body
    vlSelf->__Vtrigrprev__TOP__clk = vlSelf->clk;
}

VL_ATTR_COLD void VHybrid_64_BK3_SA3___024root___eval_final(VHybrid_64_BK3_SA3___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_64_BK3_SA3__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_64_BK3_SA3___024root___eval_final\n"); );
}

VL_ATTR_COLD void VHybrid_64_BK3_SA3___024root___eval_triggers__stl(VHybrid_64_BK3_SA3___024root* vlSelf);
#ifdef VL_DEBUG
VL_ATTR_COLD void VHybrid_64_BK3_SA3___024root___dump_triggers__stl(VHybrid_64_BK3_SA3___024root* vlSelf);
#endif  // VL_DEBUG
VL_ATTR_COLD void VHybrid_64_BK3_SA3___024root___eval_stl(VHybrid_64_BK3_SA3___024root* vlSelf);

VL_ATTR_COLD void VHybrid_64_BK3_SA3___024root___eval_settle(VHybrid_64_BK3_SA3___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_64_BK3_SA3__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_64_BK3_SA3___024root___eval_settle\n"); );
    // Init
    CData/*0:0*/ __VstlContinue;
    // Body
    vlSelf->__VstlIterCount = 0U;
    __VstlContinue = 1U;
    while (__VstlContinue) {
        __VstlContinue = 0U;
        VHybrid_64_BK3_SA3___024root___eval_triggers__stl(vlSelf);
        if (vlSelf->__VstlTriggered.any()) {
            __VstlContinue = 1U;
            if (VL_UNLIKELY((0x64U < vlSelf->__VstlIterCount))) {
#ifdef VL_DEBUG
                VHybrid_64_BK3_SA3___024root___dump_triggers__stl(vlSelf);
#endif
                VL_FATAL_MT("/home/shi/research/adder_project/adder_gen/Hybrid_64_BK3_SA3.v", 3, "", "Settle region did not converge.");
            }
            vlSelf->__VstlIterCount = ((IData)(1U) 
                                       + vlSelf->__VstlIterCount);
            VHybrid_64_BK3_SA3___024root___eval_stl(vlSelf);
        }
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void VHybrid_64_BK3_SA3___024root___dump_triggers__stl(VHybrid_64_BK3_SA3___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_64_BK3_SA3__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_64_BK3_SA3___024root___dump_triggers__stl\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VstlTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if (vlSelf->__VstlTriggered.at(0U)) {
        VL_DBG_MSGF("         'stl' region trigger index 0 is active: Internal 'stl' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

void VHybrid_64_BK3_SA3___024root___ico_sequent__TOP__0(VHybrid_64_BK3_SA3___024root* vlSelf);

VL_ATTR_COLD void VHybrid_64_BK3_SA3___024root___eval_stl(VHybrid_64_BK3_SA3___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_64_BK3_SA3__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_64_BK3_SA3___024root___eval_stl\n"); );
    // Body
    if (vlSelf->__VstlTriggered.at(0U)) {
        VHybrid_64_BK3_SA3___024root___ico_sequent__TOP__0(vlSelf);
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void VHybrid_64_BK3_SA3___024root___dump_triggers__ico(VHybrid_64_BK3_SA3___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_64_BK3_SA3__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_64_BK3_SA3___024root___dump_triggers__ico\n"); );
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
VL_ATTR_COLD void VHybrid_64_BK3_SA3___024root___dump_triggers__act(VHybrid_64_BK3_SA3___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_64_BK3_SA3__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_64_BK3_SA3___024root___dump_triggers__act\n"); );
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
VL_ATTR_COLD void VHybrid_64_BK3_SA3___024root___dump_triggers__nba(VHybrid_64_BK3_SA3___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_64_BK3_SA3__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_64_BK3_SA3___024root___dump_triggers__nba\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VnbaTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if (vlSelf->__VnbaTriggered.at(0U)) {
        VL_DBG_MSGF("         'nba' region trigger index 0 is active: @(posedge clk)\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void VHybrid_64_BK3_SA3___024root___ctor_var_reset(VHybrid_64_BK3_SA3___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_64_BK3_SA3__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_64_BK3_SA3___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->a = VL_RAND_RESET_Q(64);
    vlSelf->b = VL_RAND_RESET_Q(64);
    vlSelf->cin = VL_RAND_RESET_I(1);
    vlSelf->sum = VL_RAND_RESET_Q(64);
    vlSelf->cout = VL_RAND_RESET_I(1);
    vlSelf->clk = VL_RAND_RESET_I(1);
    vlSelf->rst = VL_RAND_RESET_I(1);
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__sum_w = VL_RAND_RESET_Q(64);
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__cin_r = VL_RAND_RESET_I(1);
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_hcb94e63d__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_h51a16d14__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_h6600f75e__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_h69dd0221__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_h61e10e23__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_hba910b0f__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_h177172a1__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_h5e515a86__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_h603f5c25__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_he1859c1a__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_h72837780__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_hd3fa7237__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_hb740abc5__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_h6293a59b__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_hba52ce08__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_hd0fdd63f__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_hb66ac527__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_h444ca1fa__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_hc594bf63__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_h04c9a410__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_h9418fdc7__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_h15e8b2af__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_h7e259763__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_h79fa199e__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_hc4b635b0__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_h0c7b4651__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_h7b2fb4ff__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_h7a0496df__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_h60ef5f1a__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_h7e0931b2__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_h2aa7f70a__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_h72ebac23__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_hd24c3501__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_h761a3d38__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_h6c321e91__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_h417d006b__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_h27c785a9__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_he06aba82__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_h6847d903__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_h00035067__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_h415b4c29__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_h21660944__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_h93d49bae__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_ha7293e10__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_h068ee91b__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_h7a668320__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_h1a682327__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_h10b84258__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_h69d37cbc__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_h7a87c33e__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_hd5223a50__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_h658b89e5__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_hb2a58510__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_h2b8c3e07__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_h894b9aaa__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_hf60f5d6d__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_h38152a26__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_hbea07a75__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_h306f6bb1__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_ha9677518__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_h1b971e58__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_hca14ef16__0 = 0;
    vlSelf->Hybrid_64_BK3_SA3_top__DOT__u0__DOT____VdfgTmp_h6e577051__0 = 0;
    vlSelf->__VdfgTmp_h37e33924__0 = 0;
    vlSelf->__VdfgTmp_hece3181c__0 = 0;
    vlSelf->__Vtrigrprev__TOP__clk = VL_RAND_RESET_I(1);
}
