// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VHybrid_128_BK2_KL5_Fanout4.h for the primary calling header

#include "verilated.h"

#include "VHybrid_128_BK2_KL5_Fanout4__Syms.h"
#include "VHybrid_128_BK2_KL5_Fanout4___024root.h"

VL_ATTR_COLD void VHybrid_128_BK2_KL5_Fanout4___024root___eval_static(VHybrid_128_BK2_KL5_Fanout4___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_128_BK2_KL5_Fanout4__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_128_BK2_KL5_Fanout4___024root___eval_static\n"); );
}

VL_ATTR_COLD void VHybrid_128_BK2_KL5_Fanout4___024root___eval_initial(VHybrid_128_BK2_KL5_Fanout4___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_128_BK2_KL5_Fanout4__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_128_BK2_KL5_Fanout4___024root___eval_initial\n"); );
    // Body
    vlSelf->__Vtrigprevexpr___TOP__clk__0 = vlSelf->clk;
}

VL_ATTR_COLD void VHybrid_128_BK2_KL5_Fanout4___024root___eval_final(VHybrid_128_BK2_KL5_Fanout4___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_128_BK2_KL5_Fanout4__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_128_BK2_KL5_Fanout4___024root___eval_final\n"); );
}

VL_ATTR_COLD void VHybrid_128_BK2_KL5_Fanout4___024root___eval_triggers__stl(VHybrid_128_BK2_KL5_Fanout4___024root* vlSelf);
#ifdef VL_DEBUG
VL_ATTR_COLD void VHybrid_128_BK2_KL5_Fanout4___024root___dump_triggers__stl(VHybrid_128_BK2_KL5_Fanout4___024root* vlSelf);
#endif  // VL_DEBUG
VL_ATTR_COLD void VHybrid_128_BK2_KL5_Fanout4___024root___eval_stl(VHybrid_128_BK2_KL5_Fanout4___024root* vlSelf);

VL_ATTR_COLD void VHybrid_128_BK2_KL5_Fanout4___024root___eval_settle(VHybrid_128_BK2_KL5_Fanout4___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_128_BK2_KL5_Fanout4__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_128_BK2_KL5_Fanout4___024root___eval_settle\n"); );
    // Init
    CData/*0:0*/ __VstlContinue;
    // Body
    vlSelf->__VstlIterCount = 0U;
    __VstlContinue = 1U;
    while (__VstlContinue) {
        __VstlContinue = 0U;
        VHybrid_128_BK2_KL5_Fanout4___024root___eval_triggers__stl(vlSelf);
        if (vlSelf->__VstlTriggered.any()) {
            __VstlContinue = 1U;
            if (VL_UNLIKELY((0x64U < vlSelf->__VstlIterCount))) {
#ifdef VL_DEBUG
                VHybrid_128_BK2_KL5_Fanout4___024root___dump_triggers__stl(vlSelf);
#endif
                VL_FATAL_MT("/home/shi/research/adder_project/adder_gen/Hybrid_128_BK2_KL5_Fanout4.v", 3, "", "Settle region did not converge.");
            }
            vlSelf->__VstlIterCount = ((IData)(1U) 
                                       + vlSelf->__VstlIterCount);
            VHybrid_128_BK2_KL5_Fanout4___024root___eval_stl(vlSelf);
        }
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void VHybrid_128_BK2_KL5_Fanout4___024root___dump_triggers__stl(VHybrid_128_BK2_KL5_Fanout4___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_128_BK2_KL5_Fanout4__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_128_BK2_KL5_Fanout4___024root___dump_triggers__stl\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VstlTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        VL_DBG_MSGF("         'stl' region trigger index 0 is active: Internal 'stl' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

void VHybrid_128_BK2_KL5_Fanout4___024root___ico_sequent__TOP__0(VHybrid_128_BK2_KL5_Fanout4___024root* vlSelf);

VL_ATTR_COLD void VHybrid_128_BK2_KL5_Fanout4___024root___eval_stl(VHybrid_128_BK2_KL5_Fanout4___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_128_BK2_KL5_Fanout4__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_128_BK2_KL5_Fanout4___024root___eval_stl\n"); );
    // Body
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        VHybrid_128_BK2_KL5_Fanout4___024root___ico_sequent__TOP__0(vlSelf);
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void VHybrid_128_BK2_KL5_Fanout4___024root___dump_triggers__ico(VHybrid_128_BK2_KL5_Fanout4___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_128_BK2_KL5_Fanout4__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_128_BK2_KL5_Fanout4___024root___dump_triggers__ico\n"); );
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
VL_ATTR_COLD void VHybrid_128_BK2_KL5_Fanout4___024root___dump_triggers__act(VHybrid_128_BK2_KL5_Fanout4___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_128_BK2_KL5_Fanout4__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_128_BK2_KL5_Fanout4___024root___dump_triggers__act\n"); );
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
VL_ATTR_COLD void VHybrid_128_BK2_KL5_Fanout4___024root___dump_triggers__nba(VHybrid_128_BK2_KL5_Fanout4___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_128_BK2_KL5_Fanout4__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_128_BK2_KL5_Fanout4___024root___dump_triggers__nba\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VnbaTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 0 is active: @(posedge clk)\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void VHybrid_128_BK2_KL5_Fanout4___024root___ctor_var_reset(VHybrid_128_BK2_KL5_Fanout4___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_128_BK2_KL5_Fanout4__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_128_BK2_KL5_Fanout4___024root___ctor_var_reset\n"); );
    // Body
    VL_RAND_RESET_W(128, vlSelf->a);
    VL_RAND_RESET_W(128, vlSelf->b);
    vlSelf->cin = VL_RAND_RESET_I(1);
    VL_RAND_RESET_W(128, vlSelf->sum);
    vlSelf->cout = VL_RAND_RESET_I(1);
    vlSelf->clk = VL_RAND_RESET_I(1);
    vlSelf->rst = VL_RAND_RESET_I(1);
    VL_RAND_RESET_W(128, vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__sum_w);
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__cin_r = VL_RAND_RESET_I(1);
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h46389293__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h51a16d14__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h6600f75e__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h61e10e23__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_hba910b0f__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h177172a1__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h5e515a86__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h603f5c25__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_he1859c1a__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h72837780__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_hd3fa7237__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_hb740abc5__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h6293a59b__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_hba52ce08__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_hd0fdd63f__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_hb66ac527__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_hc594bf63__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h04c9a410__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h9418fdc7__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h15e8b2af__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h7e259763__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h79fa199e__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_hc4b635b0__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h0c7b4651__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h7b2fb4ff__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h7a0496df__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h60ef5f1a__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h7e0931b2__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h2aa7f70a__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h72ebac23__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_hd24c3501__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h761a3d38__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h9b125344__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h33fc03d4__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h5010d8e5__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h229f0a81__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h8b3e2897__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h2e863c8b__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h40b0625a__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_hdaade306__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h9448789f__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h24acba63__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_hd16e0d32__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h1e6948ce__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h57ae6213__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h1cc96ee9__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_hd7772bbf__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h08f0d24a__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h1f045b01__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_hd1f8989f__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h442fa908__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_hc51c72d2__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h483df200__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_hcaa3c21d__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_hb7cdb90b__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_hfda97252__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_hbb97fe5d__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_hc2342f1e__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_he621af65__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h3e949b25__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h55d96db9__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h3d6214f6__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_had34246a__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h29431499__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h2abcec20__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_hcdc2ed9d__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h023e990b__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h417d006b__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h27c785a9__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_he06aba82__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h6847d903__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h00035067__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h47971b0c__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h415b4c29__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h21660944__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_ha7293e10__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h068ee91b__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h55594d28__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h7a668320__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h1a682327__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h10b84258__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h69d37cbc__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h9964639d__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h7a87c33e__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_hd5223a50__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h7f6401bf__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h1cfab118__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_hc453610c__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h2b53cae1__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h6d0a6459__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h5a6bf9b1__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h181306ef__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h85e2fbcc__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h5f971ac4__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h66ee58b7__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_hfc7efee2__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_ha9d3150a__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h44612e65__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h360160ff__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_hc21c7f80__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_hf33d8854__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h7863821e__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h738e7898__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_hc3064409__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h171bac09__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h55ff7e37__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_hb2a58510__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h2b8c3e07__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_hfcb8c486__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_hf60f5d6d__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h38152a26__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h02506a96__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_hbea07a75__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h306f6bb1__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h2ee0c1ba__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h9c9d2857__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_hf8e7f3cf__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h4a931dff__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h0fe8dd30__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h3a75a6dd__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h27be5286__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h69c4a336__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h0ac641d0__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h18427058__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h0beee128__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h5c3dd066__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h683e64b2__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h5cd8e012__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h6da8e773__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h2079d32a__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_hf7624b5d__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h1b971e58__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_hca14ef16__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_he8bcbba5__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h94ccc6ef__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h4d92735b__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_hf80fc7ca__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h3187eb65__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_ha795c6fa__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h8dab27f8__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_he81a8c3f__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_he2414fb9__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h805bfd4d__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_hc054274d__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h957a8dc3__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h821af6ca__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h8ef5cbd0__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_hd88d4717__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h56e18231__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h2f769bb0__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_hd86b1b89__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h3358ea9c__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h71b47418__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h627b1b36__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_hed3e360d__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h2334f29b__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h2c14da4b__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_hd2a55bf8__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h8adac842__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_hf2223795__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_hdce209b3__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h619c6762__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h2ab84115__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h61567787__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h34d9932f__0 = 0;
    vlSelf->Hybrid_128_BK2_KL5_Fanout4_top__DOT__u0__DOT____VdfgTmp_h06ec10af__0 = 0;
    VL_ZERO_RESET_W(128, vlSelf->__VdfgTmp_h37ff1940__0);
    VL_ZERO_RESET_W(128, vlSelf->__VdfgTmp_hecf62260__0);
    vlSelf->__Vtrigprevexpr___TOP__clk__0 = VL_RAND_RESET_I(1);
}
