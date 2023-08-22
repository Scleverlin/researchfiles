// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VHybrid_128_BK1_KL6_Fanout8.h for the primary calling header

#include "verilated.h"

#include "VHybrid_128_BK1_KL6_Fanout8__Syms.h"
#include "VHybrid_128_BK1_KL6_Fanout8___024root.h"

VL_ATTR_COLD void VHybrid_128_BK1_KL6_Fanout8___024root___eval_static(VHybrid_128_BK1_KL6_Fanout8___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_128_BK1_KL6_Fanout8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_128_BK1_KL6_Fanout8___024root___eval_static\n"); );
}

VL_ATTR_COLD void VHybrid_128_BK1_KL6_Fanout8___024root___eval_initial(VHybrid_128_BK1_KL6_Fanout8___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_128_BK1_KL6_Fanout8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_128_BK1_KL6_Fanout8___024root___eval_initial\n"); );
    // Body
    vlSelf->__Vtrigprevexpr___TOP__clk__0 = vlSelf->clk;
}

VL_ATTR_COLD void VHybrid_128_BK1_KL6_Fanout8___024root___eval_final(VHybrid_128_BK1_KL6_Fanout8___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_128_BK1_KL6_Fanout8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_128_BK1_KL6_Fanout8___024root___eval_final\n"); );
}

VL_ATTR_COLD void VHybrid_128_BK1_KL6_Fanout8___024root___eval_triggers__stl(VHybrid_128_BK1_KL6_Fanout8___024root* vlSelf);
#ifdef VL_DEBUG
VL_ATTR_COLD void VHybrid_128_BK1_KL6_Fanout8___024root___dump_triggers__stl(VHybrid_128_BK1_KL6_Fanout8___024root* vlSelf);
#endif  // VL_DEBUG
VL_ATTR_COLD void VHybrid_128_BK1_KL6_Fanout8___024root___eval_stl(VHybrid_128_BK1_KL6_Fanout8___024root* vlSelf);

VL_ATTR_COLD void VHybrid_128_BK1_KL6_Fanout8___024root___eval_settle(VHybrid_128_BK1_KL6_Fanout8___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_128_BK1_KL6_Fanout8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_128_BK1_KL6_Fanout8___024root___eval_settle\n"); );
    // Init
    CData/*0:0*/ __VstlContinue;
    // Body
    vlSelf->__VstlIterCount = 0U;
    __VstlContinue = 1U;
    while (__VstlContinue) {
        __VstlContinue = 0U;
        VHybrid_128_BK1_KL6_Fanout8___024root___eval_triggers__stl(vlSelf);
        if (vlSelf->__VstlTriggered.any()) {
            __VstlContinue = 1U;
            if (VL_UNLIKELY((0x64U < vlSelf->__VstlIterCount))) {
#ifdef VL_DEBUG
                VHybrid_128_BK1_KL6_Fanout8___024root___dump_triggers__stl(vlSelf);
#endif
                VL_FATAL_MT("/home/shi/research/adder_project/adder_gen/Hybrid_128_BK1_KL6_Fanout8.v", 3, "", "Settle region did not converge.");
            }
            vlSelf->__VstlIterCount = ((IData)(1U) 
                                       + vlSelf->__VstlIterCount);
            VHybrid_128_BK1_KL6_Fanout8___024root___eval_stl(vlSelf);
        }
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void VHybrid_128_BK1_KL6_Fanout8___024root___dump_triggers__stl(VHybrid_128_BK1_KL6_Fanout8___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_128_BK1_KL6_Fanout8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_128_BK1_KL6_Fanout8___024root___dump_triggers__stl\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VstlTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        VL_DBG_MSGF("         'stl' region trigger index 0 is active: Internal 'stl' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

void VHybrid_128_BK1_KL6_Fanout8___024root___ico_sequent__TOP__0(VHybrid_128_BK1_KL6_Fanout8___024root* vlSelf);

VL_ATTR_COLD void VHybrid_128_BK1_KL6_Fanout8___024root___eval_stl(VHybrid_128_BK1_KL6_Fanout8___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_128_BK1_KL6_Fanout8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_128_BK1_KL6_Fanout8___024root___eval_stl\n"); );
    // Body
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        VHybrid_128_BK1_KL6_Fanout8___024root___ico_sequent__TOP__0(vlSelf);
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void VHybrid_128_BK1_KL6_Fanout8___024root___dump_triggers__ico(VHybrid_128_BK1_KL6_Fanout8___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_128_BK1_KL6_Fanout8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_128_BK1_KL6_Fanout8___024root___dump_triggers__ico\n"); );
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
VL_ATTR_COLD void VHybrid_128_BK1_KL6_Fanout8___024root___dump_triggers__act(VHybrid_128_BK1_KL6_Fanout8___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_128_BK1_KL6_Fanout8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_128_BK1_KL6_Fanout8___024root___dump_triggers__act\n"); );
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
VL_ATTR_COLD void VHybrid_128_BK1_KL6_Fanout8___024root___dump_triggers__nba(VHybrid_128_BK1_KL6_Fanout8___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_128_BK1_KL6_Fanout8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_128_BK1_KL6_Fanout8___024root___dump_triggers__nba\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VnbaTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 0 is active: @(posedge clk)\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void VHybrid_128_BK1_KL6_Fanout8___024root___ctor_var_reset(VHybrid_128_BK1_KL6_Fanout8___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_128_BK1_KL6_Fanout8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_128_BK1_KL6_Fanout8___024root___ctor_var_reset\n"); );
    // Body
    VL_RAND_RESET_W(128, vlSelf->a);
    VL_RAND_RESET_W(128, vlSelf->b);
    vlSelf->cin = VL_RAND_RESET_I(1);
    VL_RAND_RESET_W(128, vlSelf->sum);
    vlSelf->cout = VL_RAND_RESET_I(1);
    vlSelf->clk = VL_RAND_RESET_I(1);
    vlSelf->rst = VL_RAND_RESET_I(1);
    VL_RAND_RESET_W(128, vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__sum_w);
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__cin_r = VL_RAND_RESET_I(1);
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h46389293__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h298e4177__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h74194960__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h68264b72__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h177172a1__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h5e515a86__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h603f5c25__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_he1859c1a__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h72837780__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h28cbb8e2__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hd0fdd63f__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hb66ac527__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hc594bf63__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h04c9a410__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h9c4ed94d__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hc4b635b0__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h0c7b4651__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h7b2fb4ff__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h7a0496df__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h232807b7__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hd24c3501__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h761a3d38__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h9b125344__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h33fc03d4__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h840a1d2d__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h40b0625a__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hdaade306__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h9448789f__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h24acba63__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h57dd29c9__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hd7772bbf__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h08f0d24a__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h1f045b01__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hd1f8989f__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hb2768bf5__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hb7cdb90b__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hfda97252__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hbb97fe5d__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hc2342f1e__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h57cb2097__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_had34246a__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h29431499__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h2abcec20__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hd714f642__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h2c7fe75a__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hcdc2ed9d__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h023e990b__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_he1d8a650__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h75092490__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h417d006b__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h27c785a9__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h1a277a74__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_he06aba82__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h6847d903__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h00035067__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hfbfc124c__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h47971b0c__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hbae593ff__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hb0011bb8__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h415b4c29__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h21660944__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_ha73c8452__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_ha7293e10__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h068ee91b__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h92bd8a0a__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h55594d28__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hc4fe8699__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h6573d670__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h7a668320__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h1a682327__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h0a327974__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h10b84258__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h69d37cbc__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h20b5e56c__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h9964639d__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_he5f41691__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h5fd6ee97__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h7a87c33e__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hd5223a50__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hea841958__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h7f6401bf__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h1cfab118__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h1fb111a0__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hc453610c__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h1f862474__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hdd7749ee__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h2b53cae1__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h6d0a6459__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h35460124__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h5a6bf9b1__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h181306ef__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h97a79ba3__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h85e2fbcc__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h09a443a6__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hee4f6ac4__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h5f971ac4__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h66ee58b7__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h8e3e3d05__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hfc7efee2__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_ha9d3150a__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hfd5f7c10__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h44612e65__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hb3ac56c3__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h020c4ecf__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h360160ff__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hc21c7f80__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_he77caa23__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hf33d8854__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h7863821e__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h978f2c6a__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h738e7898__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h074a51d4__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hd21fa578__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hc3064409__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h171bac09__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hf4cb7e42__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h55ff7e37__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h8dc4d297__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h0fbde246__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hb2a58510__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h2b8c3e07__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h5bedc1ff__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hfcb8c486__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h29a6a5af__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h13209511__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hbc61a9c4__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hf60f5d6d__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h38152a26__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h96be8814__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h02506a96__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h0cc9f90d__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h86ebae46__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h9df05901__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hbea07a75__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h306f6bb1__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_ha18bc244__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h2ee0c1ba__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h86b12e0b__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h0e63f1eb__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hb24f0593__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h9c9d2857__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hf8e7f3cf__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h22f3c9d2__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h4a931dff__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_ha44a24eb__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h385ca8fd__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hf2d87a15__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h0fe8dd30__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h3a75a6dd__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h6ce7d63b__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h27be5286__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hbea58a7c__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h9a7a46b3__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_ha97676ed__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h69c4a336__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h0ac641d0__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_ha64fc212__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h18427058__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h1f902949__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h49398a02__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h809b65a1__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h0beee128__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h5c3dd066__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h65a82bdb__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h683e64b2__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hccb7eb7b__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h5cd8e012__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h6da8e773__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h2079d32a__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_haabca9b5__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hf7624b5d__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h70dac872__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h1b971e58__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hca14ef16__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h85167782__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_he8bcbba5__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_he23b1075__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h94ccc6ef__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h9826c663__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h4d92735b__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_he058b48f__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hf80fc7ca__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h08b277e3__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h3187eb65__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_he04656fe__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_ha795c6fa__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h86f56904__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h8dab27f8__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hfb1ab6f0__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_he81a8c3f__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_he2414fb9__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hbcf5d1fe__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h805bfd4d__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h1868a7f1__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hc054274d__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h957a8dc3__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h821af6ca__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h8ef5cbd0__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hd88d4717__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_haafdb3e4__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h56e18231__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h1d226717__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h2f769bb0__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_he434127b__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hd86b1b89__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h351b7ac0__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h3358ea9c__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h71b47418__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h586135d9__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h627b1b36__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hd6bca057__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hed3e360d__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h1651aa79__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h2334f29b__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h1f0d6363__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h2c14da4b__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hd2a55bf8__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h1a5116f2__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h8adac842__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hf77d4e29__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hf2223795__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hfabb57ca__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hdce209b3__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h49d13f6d__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h619c6762__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h865a0755__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h2ab84115__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h210b3c36__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h61567787__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h1be36d3d__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h34d9932f__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_hcb92a9e2__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout8_top__DOT__u0__DOT____VdfgTmp_h06ec10af__0 = 0;
    VL_ZERO_RESET_W(128, vlSelf->__VdfgTmp_h37ff1940__0);
    VL_ZERO_RESET_W(128, vlSelf->__VdfgTmp_hecf62260__0);
    vlSelf->__Vtrigprevexpr___TOP__clk__0 = VL_RAND_RESET_I(1);
}
