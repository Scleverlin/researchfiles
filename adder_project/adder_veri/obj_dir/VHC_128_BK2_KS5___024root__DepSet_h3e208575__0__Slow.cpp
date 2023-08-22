// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VHC_128_BK2_KS5.h for the primary calling header

#include "verilated.h"

#include "VHC_128_BK2_KS5__Syms.h"
#include "VHC_128_BK2_KS5___024root.h"

VL_ATTR_COLD void VHC_128_BK2_KS5___024root___eval_static(VHC_128_BK2_KS5___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_128_BK2_KS5__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_128_BK2_KS5___024root___eval_static\n"); );
}

VL_ATTR_COLD void VHC_128_BK2_KS5___024root___eval_initial(VHC_128_BK2_KS5___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_128_BK2_KS5__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_128_BK2_KS5___024root___eval_initial\n"); );
    // Body
    vlSelf->__Vtrigprevexpr___TOP__clk__0 = vlSelf->clk;
}

VL_ATTR_COLD void VHC_128_BK2_KS5___024root___eval_final(VHC_128_BK2_KS5___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_128_BK2_KS5__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_128_BK2_KS5___024root___eval_final\n"); );
}

VL_ATTR_COLD void VHC_128_BK2_KS5___024root___eval_triggers__stl(VHC_128_BK2_KS5___024root* vlSelf);
#ifdef VL_DEBUG
VL_ATTR_COLD void VHC_128_BK2_KS5___024root___dump_triggers__stl(VHC_128_BK2_KS5___024root* vlSelf);
#endif  // VL_DEBUG
VL_ATTR_COLD void VHC_128_BK2_KS5___024root___eval_stl(VHC_128_BK2_KS5___024root* vlSelf);

VL_ATTR_COLD void VHC_128_BK2_KS5___024root___eval_settle(VHC_128_BK2_KS5___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_128_BK2_KS5__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_128_BK2_KS5___024root___eval_settle\n"); );
    // Init
    CData/*0:0*/ __VstlContinue;
    // Body
    vlSelf->__VstlIterCount = 0U;
    __VstlContinue = 1U;
    while (__VstlContinue) {
        __VstlContinue = 0U;
        VHC_128_BK2_KS5___024root___eval_triggers__stl(vlSelf);
        if (vlSelf->__VstlTriggered.any()) {
            __VstlContinue = 1U;
            if (VL_UNLIKELY((0x64U < vlSelf->__VstlIterCount))) {
#ifdef VL_DEBUG
                VHC_128_BK2_KS5___024root___dump_triggers__stl(vlSelf);
#endif
                VL_FATAL_MT("/home/shi/research/adder_project/adder_gen/HC_128_BK2_KS5.v", 3, "", "Settle region did not converge.");
            }
            vlSelf->__VstlIterCount = ((IData)(1U) 
                                       + vlSelf->__VstlIterCount);
            VHC_128_BK2_KS5___024root___eval_stl(vlSelf);
        }
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void VHC_128_BK2_KS5___024root___dump_triggers__stl(VHC_128_BK2_KS5___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_128_BK2_KS5__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_128_BK2_KS5___024root___dump_triggers__stl\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VstlTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        VL_DBG_MSGF("         'stl' region trigger index 0 is active: Internal 'stl' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

void VHC_128_BK2_KS5___024root___ico_sequent__TOP__0(VHC_128_BK2_KS5___024root* vlSelf);

VL_ATTR_COLD void VHC_128_BK2_KS5___024root___eval_stl(VHC_128_BK2_KS5___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_128_BK2_KS5__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_128_BK2_KS5___024root___eval_stl\n"); );
    // Body
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        VHC_128_BK2_KS5___024root___ico_sequent__TOP__0(vlSelf);
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void VHC_128_BK2_KS5___024root___dump_triggers__ico(VHC_128_BK2_KS5___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_128_BK2_KS5__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_128_BK2_KS5___024root___dump_triggers__ico\n"); );
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
VL_ATTR_COLD void VHC_128_BK2_KS5___024root___dump_triggers__act(VHC_128_BK2_KS5___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_128_BK2_KS5__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_128_BK2_KS5___024root___dump_triggers__act\n"); );
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
VL_ATTR_COLD void VHC_128_BK2_KS5___024root___dump_triggers__nba(VHC_128_BK2_KS5___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_128_BK2_KS5__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_128_BK2_KS5___024root___dump_triggers__nba\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VnbaTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 0 is active: @(posedge clk)\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void VHC_128_BK2_KS5___024root___ctor_var_reset(VHC_128_BK2_KS5___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_128_BK2_KS5__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_128_BK2_KS5___024root___ctor_var_reset\n"); );
    // Body
    VL_RAND_RESET_W(128, vlSelf->a);
    VL_RAND_RESET_W(128, vlSelf->b);
    vlSelf->cin = VL_RAND_RESET_I(1);
    VL_RAND_RESET_W(128, vlSelf->sum);
    vlSelf->cout = VL_RAND_RESET_I(1);
    vlSelf->clk = VL_RAND_RESET_I(1);
    vlSelf->rst = VL_RAND_RESET_I(1);
    VL_RAND_RESET_W(128, vlSelf->HC_128_BK2_KS5_top__DOT__sum_w);
    vlSelf->HC_128_BK2_KS5_top__DOT__cin_r = VL_RAND_RESET_I(1);
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h46389293__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h51a16d14__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h6600f75e__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h61e10e23__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_hba910b0f__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h177172a1__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h5e515a86__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_he1859c1a__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h72837780__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_hd3fa7237__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_hb740abc5__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h6293a59b__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_hba52ce08__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_hd0fdd63f__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_hb66ac527__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_hc594bf63__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h04c9a410__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h9418fdc7__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h15e8b2af__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h7e259763__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h79fa199e__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_hc4b635b0__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h0c7b4651__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h7b2fb4ff__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h7a0496df__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h60ef5f1a__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h7e0931b2__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h2aa7f70a__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h72ebac23__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_hd24c3501__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h761a3d38__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h9b125344__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h33fc03d4__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h5010d8e5__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h229f0a81__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h8b3e2897__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h2e863c8b__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h40b0625a__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_hdaade306__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h9448789f__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h24acba63__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_hd16e0d32__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h1e6948ce__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h57ae6213__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h1cc96ee9__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_hd7772bbf__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h08f0d24a__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h1f045b01__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_hd1f8989f__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h442fa908__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_hc51c72d2__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h483df200__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_hcaa3c21d__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_hb7cdb90b__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_hfda97252__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_hbb97fe5d__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_hc2342f1e__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_he621af65__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h3e949b25__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h55d96db9__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h3d6214f6__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_had34246a__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h29431499__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h2abcec20__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_hcdc2ed9d__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h023e990b__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h738e7898__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_hc3064409__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h171bac09__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h55ff7e37__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_hb4ef687e__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h1415cb2a__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h1fcc151d__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h7f366d3a__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h3935400a__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h5fb30ae3__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_hf132a98e__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h9353dbe0__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h0beee128__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h5c3dd066__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h683e64b2__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h5cd8e012__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_head7116f__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h80842e09__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h7c5fe774__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h93a14d4f__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_hecb49a16__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h2f503fc5__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h6da8e773__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h2079d32a__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_hb80a3f34__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h398b7e00__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_hb0235356__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_ha795c6fa__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h2e7124a4__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_hdbde44d7__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h8d82db34__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h5d76729c__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_hcb7d9e1c__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h8d07d90b__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_he81a8c3f__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_he2414fb9__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_ha238dee0__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_hd065cd50__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_hbf28478f__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_hc054274d__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h7ecbc027__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_hac12a4cf__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h848428ba__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h64d6c53d__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_hc4ff9075__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h4f996fd1__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h957a8dc3__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h821af6ca__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h54295427__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_he9683a47__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h95d83061__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h4191fe02__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_hf402bc8f__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h9b3aae08__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h8ef5cbd0__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_hd88d4717__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_hbeccbea4__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h06a6b0ab__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_hb5d05f86__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_hb66b849e__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_habe7cb57__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_hf498086b__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h3358ea9c__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h71b47418__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h31ac8773__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h5a2830bf__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_hd21263bd__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h94794444__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_hb8f21767__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_hf2ec938d__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h2c14da4b__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_hd2a55bf8__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h226e8282__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h5ee82a39__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h35c0f2ae__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h619c6762__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_hb70e8da1__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h12a65108__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h6901a24a__0 = 0;
    vlSelf->HC_128_BK2_KS5_top__DOT__u0__DOT____VdfgTmp_h06ec10af__0 = 0;
    VL_ZERO_RESET_W(128, vlSelf->__VdfgTmp_h37ff1940__0);
    VL_ZERO_RESET_W(128, vlSelf->__VdfgTmp_hecf62260__0);
    vlSelf->__Vtrigprevexpr___TOP__clk__0 = VL_RAND_RESET_I(1);
}
