// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VMul_32_Hybrid_64_BK3_KL3_Fanout2.h for the primary calling header

#include "verilated.h"

#include "VMul_32_Hybrid_64_BK3_KL3_Fanout2__Syms.h"
#include "VMul_32_Hybrid_64_BK3_KL3_Fanout2___024root.h"

VL_ATTR_COLD void VMul_32_Hybrid_64_BK3_KL3_Fanout2___024root___eval_static(VMul_32_Hybrid_64_BK3_KL3_Fanout2___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VMul_32_Hybrid_64_BK3_KL3_Fanout2__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VMul_32_Hybrid_64_BK3_KL3_Fanout2___024root___eval_static\n"); );
}

VL_ATTR_COLD void VMul_32_Hybrid_64_BK3_KL3_Fanout2___024root___eval_initial(VMul_32_Hybrid_64_BK3_KL3_Fanout2___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VMul_32_Hybrid_64_BK3_KL3_Fanout2__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VMul_32_Hybrid_64_BK3_KL3_Fanout2___024root___eval_initial\n"); );
    // Body
    vlSelf->__Vtrigprevexpr___TOP__clk__0 = vlSelf->clk;
}

VL_ATTR_COLD void VMul_32_Hybrid_64_BK3_KL3_Fanout2___024root___eval_final(VMul_32_Hybrid_64_BK3_KL3_Fanout2___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VMul_32_Hybrid_64_BK3_KL3_Fanout2__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VMul_32_Hybrid_64_BK3_KL3_Fanout2___024root___eval_final\n"); );
}

VL_ATTR_COLD void VMul_32_Hybrid_64_BK3_KL3_Fanout2___024root___eval_triggers__stl(VMul_32_Hybrid_64_BK3_KL3_Fanout2___024root* vlSelf);
#ifdef VL_DEBUG
VL_ATTR_COLD void VMul_32_Hybrid_64_BK3_KL3_Fanout2___024root___dump_triggers__stl(VMul_32_Hybrid_64_BK3_KL3_Fanout2___024root* vlSelf);
#endif  // VL_DEBUG
VL_ATTR_COLD void VMul_32_Hybrid_64_BK3_KL3_Fanout2___024root___eval_stl(VMul_32_Hybrid_64_BK3_KL3_Fanout2___024root* vlSelf);

VL_ATTR_COLD void VMul_32_Hybrid_64_BK3_KL3_Fanout2___024root___eval_settle(VMul_32_Hybrid_64_BK3_KL3_Fanout2___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VMul_32_Hybrid_64_BK3_KL3_Fanout2__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VMul_32_Hybrid_64_BK3_KL3_Fanout2___024root___eval_settle\n"); );
    // Init
    CData/*0:0*/ __VstlContinue;
    // Body
    vlSelf->__VstlIterCount = 0U;
    __VstlContinue = 1U;
    while (__VstlContinue) {
        __VstlContinue = 0U;
        VMul_32_Hybrid_64_BK3_KL3_Fanout2___024root___eval_triggers__stl(vlSelf);
        if (vlSelf->__VstlTriggered.any()) {
            __VstlContinue = 1U;
            if (VL_UNLIKELY((0x64U < vlSelf->__VstlIterCount))) {
#ifdef VL_DEBUG
                VMul_32_Hybrid_64_BK3_KL3_Fanout2___024root___dump_triggers__stl(vlSelf);
#endif
                VL_FATAL_MT("/home/shi/research/adder_project/adder_gen/Hybrid_64_BK3_KL3_Fanout2.v", 3, "", "Settle region did not converge.");
            }
            vlSelf->__VstlIterCount = ((IData)(1U) 
                                       + vlSelf->__VstlIterCount);
            VMul_32_Hybrid_64_BK3_KL3_Fanout2___024root___eval_stl(vlSelf);
        }
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void VMul_32_Hybrid_64_BK3_KL3_Fanout2___024root___dump_triggers__stl(VMul_32_Hybrid_64_BK3_KL3_Fanout2___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VMul_32_Hybrid_64_BK3_KL3_Fanout2__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VMul_32_Hybrid_64_BK3_KL3_Fanout2___024root___dump_triggers__stl\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VstlTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        VL_DBG_MSGF("         'stl' region trigger index 0 is active: Internal 'stl' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

#ifdef VL_DEBUG
VL_ATTR_COLD void VMul_32_Hybrid_64_BK3_KL3_Fanout2___024root___dump_triggers__ico(VMul_32_Hybrid_64_BK3_KL3_Fanout2___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VMul_32_Hybrid_64_BK3_KL3_Fanout2__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VMul_32_Hybrid_64_BK3_KL3_Fanout2___024root___dump_triggers__ico\n"); );
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
VL_ATTR_COLD void VMul_32_Hybrid_64_BK3_KL3_Fanout2___024root___dump_triggers__act(VMul_32_Hybrid_64_BK3_KL3_Fanout2___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VMul_32_Hybrid_64_BK3_KL3_Fanout2__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VMul_32_Hybrid_64_BK3_KL3_Fanout2___024root___dump_triggers__act\n"); );
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
VL_ATTR_COLD void VMul_32_Hybrid_64_BK3_KL3_Fanout2___024root___dump_triggers__nba(VMul_32_Hybrid_64_BK3_KL3_Fanout2___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VMul_32_Hybrid_64_BK3_KL3_Fanout2__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VMul_32_Hybrid_64_BK3_KL3_Fanout2___024root___dump_triggers__nba\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VnbaTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 0 is active: @(posedge clk)\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void VMul_32_Hybrid_64_BK3_KL3_Fanout2___024root___ctor_var_reset(VMul_32_Hybrid_64_BK3_KL3_Fanout2___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VMul_32_Hybrid_64_BK3_KL3_Fanout2__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VMul_32_Hybrid_64_BK3_KL3_Fanout2___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->Hybrid_64_BK3_KL3_Fanout2_top__02Ea = VL_RAND_RESET_Q(64);
    vlSelf->Hybrid_64_BK3_KL3_Fanout2_top__02Eb = VL_RAND_RESET_Q(64);
    vlSelf->cin = VL_RAND_RESET_I(1);
    vlSelf->sum = VL_RAND_RESET_Q(64);
    vlSelf->cout = VL_RAND_RESET_I(1);
    vlSelf->clk = VL_RAND_RESET_I(1);
    vlSelf->rst = VL_RAND_RESET_I(1);
    vlSelf->Mul_32_Hybrid_64_BK3_KL3_Fanout2__02Ea = VL_RAND_RESET_I(32);
    vlSelf->Mul_32_Hybrid_64_BK3_KL3_Fanout2__02Eb = VL_RAND_RESET_I(32);
    vlSelf->out = VL_RAND_RESET_Q(64);
    vlSelf->Hybrid_64_BK3_KL3_Fanout2_top__DOT__cin_r = VL_RAND_RESET_I(1);
    vlSelf->Mul_32_Hybrid_64_BK3_KL3_Fanout2__DOT____Vcellinp__Hybrid_64_BK3_KL3_Fanout2_0____pinNumber2 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK3_KL3_Fanout2__DOT____Vcellinp__Hybrid_64_BK3_KL3_Fanout2_0____pinNumber1 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK3_KL3_Fanout2__DOT____Vcellinp__Hybrid_64_BK3_KL3_Fanout2_1____pinNumber2 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK3_KL3_Fanout2__DOT____Vcellinp__Hybrid_64_BK3_KL3_Fanout2_1____pinNumber1 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK3_KL3_Fanout2__DOT____Vcellinp__Hybrid_64_BK3_KL3_Fanout2_2____pinNumber2 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK3_KL3_Fanout2__DOT____Vcellinp__Hybrid_64_BK3_KL3_Fanout2_2____pinNumber1 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK3_KL3_Fanout2__DOT____Vcellinp__Hybrid_64_BK3_KL3_Fanout2_3____pinNumber2 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK3_KL3_Fanout2__DOT____Vcellinp__Hybrid_64_BK3_KL3_Fanout2_3____pinNumber1 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK3_KL3_Fanout2__DOT____Vcellinp__Hybrid_64_BK3_KL3_Fanout2_4____pinNumber2 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK3_KL3_Fanout2__DOT____Vcellinp__Hybrid_64_BK3_KL3_Fanout2_4____pinNumber1 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK3_KL3_Fanout2__DOT____Vcellinp__Hybrid_64_BK3_KL3_Fanout2_5____pinNumber2 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK3_KL3_Fanout2__DOT____Vcellinp__Hybrid_64_BK3_KL3_Fanout2_5____pinNumber1 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK3_KL3_Fanout2__DOT____Vcellinp__Hybrid_64_BK3_KL3_Fanout2_6____pinNumber2 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK3_KL3_Fanout2__DOT____Vcellinp__Hybrid_64_BK3_KL3_Fanout2_6____pinNumber1 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK3_KL3_Fanout2__DOT____Vcellinp__Hybrid_64_BK3_KL3_Fanout2_7____pinNumber2 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK3_KL3_Fanout2__DOT____Vcellinp__Hybrid_64_BK3_KL3_Fanout2_7____pinNumber1 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK3_KL3_Fanout2__DOT____Vcellinp__Hybrid_64_BK3_KL3_Fanout2_8____pinNumber2 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK3_KL3_Fanout2__DOT____Vcellinp__Hybrid_64_BK3_KL3_Fanout2_8____pinNumber1 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK3_KL3_Fanout2__DOT____Vcellinp__Hybrid_64_BK3_KL3_Fanout2_9____pinNumber2 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK3_KL3_Fanout2__DOT____Vcellinp__Hybrid_64_BK3_KL3_Fanout2_9____pinNumber1 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK3_KL3_Fanout2__DOT____Vcellinp__Hybrid_64_BK3_KL3_Fanout2_10____pinNumber2 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK3_KL3_Fanout2__DOT____Vcellinp__Hybrid_64_BK3_KL3_Fanout2_10____pinNumber1 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK3_KL3_Fanout2__DOT____Vcellinp__Hybrid_64_BK3_KL3_Fanout2_11____pinNumber2 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK3_KL3_Fanout2__DOT____Vcellinp__Hybrid_64_BK3_KL3_Fanout2_11____pinNumber1 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK3_KL3_Fanout2__DOT____Vcellinp__Hybrid_64_BK3_KL3_Fanout2_12____pinNumber2 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK3_KL3_Fanout2__DOT____Vcellinp__Hybrid_64_BK3_KL3_Fanout2_12____pinNumber1 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK3_KL3_Fanout2__DOT____Vcellinp__Hybrid_64_BK3_KL3_Fanout2_13____pinNumber2 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK3_KL3_Fanout2__DOT____Vcellinp__Hybrid_64_BK3_KL3_Fanout2_13____pinNumber1 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK3_KL3_Fanout2__DOT____Vcellinp__Hybrid_64_BK3_KL3_Fanout2_14____pinNumber2 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK3_KL3_Fanout2__DOT____Vcellinp__Hybrid_64_BK3_KL3_Fanout2_14____pinNumber1 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK3_KL3_Fanout2__DOT____Vcellinp__Hybrid_64_BK3_KL3_Fanout2_15____pinNumber2 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK3_KL3_Fanout2__DOT____Vcellinp__Hybrid_64_BK3_KL3_Fanout2_15____pinNumber1 = VL_RAND_RESET_Q(64);
    vlSelf->__Vtrigprevexpr___TOP__clk__0 = VL_RAND_RESET_I(1);
}
