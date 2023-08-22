// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VHybrid_128_BK1_KL6_Fanout32.h for the primary calling header

#include "verilated.h"

#include "VHybrid_128_BK1_KL6_Fanout32__Syms.h"
#include "VHybrid_128_BK1_KL6_Fanout32___024root.h"

VL_ATTR_COLD void VHybrid_128_BK1_KL6_Fanout32___024root___eval_static(VHybrid_128_BK1_KL6_Fanout32___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_128_BK1_KL6_Fanout32__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_128_BK1_KL6_Fanout32___024root___eval_static\n"); );
}

VL_ATTR_COLD void VHybrid_128_BK1_KL6_Fanout32___024root___eval_initial(VHybrid_128_BK1_KL6_Fanout32___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_128_BK1_KL6_Fanout32__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_128_BK1_KL6_Fanout32___024root___eval_initial\n"); );
    // Body
    vlSelf->__Vtrigprevexpr___TOP__clk__0 = vlSelf->clk;
}

VL_ATTR_COLD void VHybrid_128_BK1_KL6_Fanout32___024root___eval_final(VHybrid_128_BK1_KL6_Fanout32___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_128_BK1_KL6_Fanout32__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_128_BK1_KL6_Fanout32___024root___eval_final\n"); );
}

VL_ATTR_COLD void VHybrid_128_BK1_KL6_Fanout32___024root___eval_triggers__stl(VHybrid_128_BK1_KL6_Fanout32___024root* vlSelf);
#ifdef VL_DEBUG
VL_ATTR_COLD void VHybrid_128_BK1_KL6_Fanout32___024root___dump_triggers__stl(VHybrid_128_BK1_KL6_Fanout32___024root* vlSelf);
#endif  // VL_DEBUG
VL_ATTR_COLD void VHybrid_128_BK1_KL6_Fanout32___024root___eval_stl(VHybrid_128_BK1_KL6_Fanout32___024root* vlSelf);

VL_ATTR_COLD void VHybrid_128_BK1_KL6_Fanout32___024root___eval_settle(VHybrid_128_BK1_KL6_Fanout32___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_128_BK1_KL6_Fanout32__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_128_BK1_KL6_Fanout32___024root___eval_settle\n"); );
    // Init
    CData/*0:0*/ __VstlContinue;
    // Body
    vlSelf->__VstlIterCount = 0U;
    __VstlContinue = 1U;
    while (__VstlContinue) {
        __VstlContinue = 0U;
        VHybrid_128_BK1_KL6_Fanout32___024root___eval_triggers__stl(vlSelf);
        if (vlSelf->__VstlTriggered.any()) {
            __VstlContinue = 1U;
            if (VL_UNLIKELY((0x64U < vlSelf->__VstlIterCount))) {
#ifdef VL_DEBUG
                VHybrid_128_BK1_KL6_Fanout32___024root___dump_triggers__stl(vlSelf);
#endif
                VL_FATAL_MT("/home/shi/research/adder_project/adder_gen/Hybrid_128_BK1_KL6_Fanout32.v", 3, "", "Settle region did not converge.");
            }
            vlSelf->__VstlIterCount = ((IData)(1U) 
                                       + vlSelf->__VstlIterCount);
            VHybrid_128_BK1_KL6_Fanout32___024root___eval_stl(vlSelf);
        }
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void VHybrid_128_BK1_KL6_Fanout32___024root___dump_triggers__stl(VHybrid_128_BK1_KL6_Fanout32___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_128_BK1_KL6_Fanout32__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_128_BK1_KL6_Fanout32___024root___dump_triggers__stl\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VstlTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        VL_DBG_MSGF("         'stl' region trigger index 0 is active: Internal 'stl' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

void VHybrid_128_BK1_KL6_Fanout32___024root___ico_sequent__TOP__0(VHybrid_128_BK1_KL6_Fanout32___024root* vlSelf);

VL_ATTR_COLD void VHybrid_128_BK1_KL6_Fanout32___024root___eval_stl(VHybrid_128_BK1_KL6_Fanout32___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_128_BK1_KL6_Fanout32__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_128_BK1_KL6_Fanout32___024root___eval_stl\n"); );
    // Body
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        VHybrid_128_BK1_KL6_Fanout32___024root___ico_sequent__TOP__0(vlSelf);
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void VHybrid_128_BK1_KL6_Fanout32___024root___dump_triggers__ico(VHybrid_128_BK1_KL6_Fanout32___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_128_BK1_KL6_Fanout32__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_128_BK1_KL6_Fanout32___024root___dump_triggers__ico\n"); );
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
VL_ATTR_COLD void VHybrid_128_BK1_KL6_Fanout32___024root___dump_triggers__act(VHybrid_128_BK1_KL6_Fanout32___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_128_BK1_KL6_Fanout32__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_128_BK1_KL6_Fanout32___024root___dump_triggers__act\n"); );
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
VL_ATTR_COLD void VHybrid_128_BK1_KL6_Fanout32___024root___dump_triggers__nba(VHybrid_128_BK1_KL6_Fanout32___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_128_BK1_KL6_Fanout32__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_128_BK1_KL6_Fanout32___024root___dump_triggers__nba\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VnbaTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 0 is active: @(posedge clk)\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void VHybrid_128_BK1_KL6_Fanout32___024root___ctor_var_reset(VHybrid_128_BK1_KL6_Fanout32___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_128_BK1_KL6_Fanout32__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_128_BK1_KL6_Fanout32___024root___ctor_var_reset\n"); );
    // Body
    VL_RAND_RESET_W(128, vlSelf->a);
    VL_RAND_RESET_W(128, vlSelf->b);
    vlSelf->cin = VL_RAND_RESET_I(1);
    VL_RAND_RESET_W(128, vlSelf->sum);
    vlSelf->cout = VL_RAND_RESET_I(1);
    vlSelf->clk = VL_RAND_RESET_I(1);
    vlSelf->rst = VL_RAND_RESET_I(1);
    VL_RAND_RESET_W(128, vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__sum_w);
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__cin_r = VL_RAND_RESET_I(1);
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h46389293__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h298e4177__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h74194960__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h232807b7__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_hd24c3501__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h761a3d38__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h6c321e91__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h9b125344__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h33fc03d4__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h57cb2097__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_had34246a__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h29431499__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h2abcec20__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_hd714f642__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h2c7fe75a__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_hcdc2ed9d__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h023e990b__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h20b5e56c__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h9964639d__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_he5f41691__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h5fd6ee97__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h7a87c33e__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_hd5223a50__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_hea841958__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h658b89e5__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h7f6401bf__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h1cfab118__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h978f2c6a__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h738e7898__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h074a51d4__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_hd21fa578__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_hc3064409__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h171bac09__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_hf4cb7e42__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h55ff7e37__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h4ce4f244__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h12fa8efa__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_hb4ef687e__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h1415cb2a__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h20737028__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h091f2a6d__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h1fcc151d__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h7f366d3a__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h1de1fdad__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_hb6ef9f0d__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h9068ff90__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h28961f87__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h4eab30df__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h08ed10c6__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h36a4ac1f__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h88f09a82__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h972b127e__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h9225518d__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_hbea07a75__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h306f6bb1__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_ha18bc244__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h2ee0c1ba__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h86b12e0b__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_ha9677518__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h0e63f1eb__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_hb24f0593__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h9c9d2857__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_hf8e7f3cf__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_ha7215aab__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h3935400a__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h354d5d5f__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h5fb30ae3__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h68be619a__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_hbfb427d0__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_hf132a98e__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h9353dbe0__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h03ae20b6__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h79b27f7a__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h0beee128__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h5c3dd066__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h65a82bdb__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h683e64b2__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_hccb7eb7b__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h5cd8e012__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h6f3165f5__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h4000edf2__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_head7116f__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h80842e09__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h6148911b__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_he387e2c0__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h7c5fe774__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h93a14d4f__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h8b630af4__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h75e626e3__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_hecb49a16__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h2f503fc5__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h7e5603e2__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h16ea3da0__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h6da8e773__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h2079d32a__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h3647d151__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_hce34db0d__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h52aeba38__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_hf38bb500__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h00eda6f4__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h2b674654__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h98f43db0__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h8ea7dc66__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h51dd4909__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h697ef392__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_he5d5adf7__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_ha4c128de__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h15068167__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_hab4a3fa4__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h1b971e58__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_hca14ef16__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h0ed41778__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h350fb0c9__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h00c7774b__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h5ffc93a5__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h0a0ffdab__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_hf79b9de3__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_hf7ee08e9__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h6e577051__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h99cb21b4__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h9826c663__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h54957c37__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h4d92735b__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h2f463097__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_he058b48f__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_hf80fc7ca__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h4f2bb5af__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h9db274a4__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_hb80a3f34__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h53c0107a__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h398b7e00__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_ha05dcbc6__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_hb0235356__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h184f73c7__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_ha795c6fa__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h5f7e721e__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h4f184db0__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h2e7124a4__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_hdbde44d7__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h78c4841c__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h47f9816d__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h8d82db34__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h5d76729c__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_hbda00ca5__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h8eebeeac__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_hcb7d9e1c__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h8d07d90b__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h8c93cce8__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_hb82d0b0b__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_he81a8c3f__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_he2414fb9__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h236a6432__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_ha238dee0__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h2a3412e8__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_hd065cd50__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_hbb75c928__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_hbf28478f__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h019fb9da__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_hc054274d__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h2f3ae057__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_hf969854a__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h0c0c2725__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_hd0976ebd__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h8367c141__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_hebdf3805__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_hdfdb6872__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h86d8e69c__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_hcc87ef8c__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h857087ec__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_ha6bddd91__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h0c138c7e__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h4a457a9e__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_hbe6fc35d__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h2c14da4b__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_hd2a55bf8__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h4e5edef9__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h226e8282__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_hb2c395f3__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h5ee82a39__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_he3a39243__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h35c0f2ae__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h41868a52__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h619c6762__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h6c1957ff__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_hb70e8da1__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h9a1928b9__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h12a65108__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h0d15ce2a__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h6901a24a__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_he7e8db52__0 = 0;
    vlSelf->Hybrid_128_BK1_KL6_Fanout32_top__DOT__u0__DOT____VdfgTmp_h06ec10af__0 = 0;
    VL_ZERO_RESET_W(128, vlSelf->__VdfgTmp_h37ff1940__0);
    VL_ZERO_RESET_W(128, vlSelf->__VdfgTmp_hecf62260__0);
    vlSelf->__Vtrigprevexpr___TOP__clk__0 = VL_RAND_RESET_I(1);
}
