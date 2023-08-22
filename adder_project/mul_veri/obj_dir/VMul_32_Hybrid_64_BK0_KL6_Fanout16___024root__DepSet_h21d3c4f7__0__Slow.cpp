// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VMul_32_Hybrid_64_BK0_KL6_Fanout16.h for the primary calling header

#include "verilated.h"

#include "VMul_32_Hybrid_64_BK0_KL6_Fanout16__Syms.h"
#include "VMul_32_Hybrid_64_BK0_KL6_Fanout16___024root.h"

VL_ATTR_COLD void VMul_32_Hybrid_64_BK0_KL6_Fanout16___024root___eval_static(VMul_32_Hybrid_64_BK0_KL6_Fanout16___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VMul_32_Hybrid_64_BK0_KL6_Fanout16__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VMul_32_Hybrid_64_BK0_KL6_Fanout16___024root___eval_static\n"); );
}

VL_ATTR_COLD void VMul_32_Hybrid_64_BK0_KL6_Fanout16___024root___eval_initial(VMul_32_Hybrid_64_BK0_KL6_Fanout16___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VMul_32_Hybrid_64_BK0_KL6_Fanout16__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VMul_32_Hybrid_64_BK0_KL6_Fanout16___024root___eval_initial\n"); );
}

VL_ATTR_COLD void VMul_32_Hybrid_64_BK0_KL6_Fanout16___024root___eval_final(VMul_32_Hybrid_64_BK0_KL6_Fanout16___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VMul_32_Hybrid_64_BK0_KL6_Fanout16__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VMul_32_Hybrid_64_BK0_KL6_Fanout16___024root___eval_final\n"); );
}

VL_ATTR_COLD void VMul_32_Hybrid_64_BK0_KL6_Fanout16___024root___eval_triggers__stl(VMul_32_Hybrid_64_BK0_KL6_Fanout16___024root* vlSelf);
#ifdef VL_DEBUG
VL_ATTR_COLD void VMul_32_Hybrid_64_BK0_KL6_Fanout16___024root___dump_triggers__stl(VMul_32_Hybrid_64_BK0_KL6_Fanout16___024root* vlSelf);
#endif  // VL_DEBUG
VL_ATTR_COLD void VMul_32_Hybrid_64_BK0_KL6_Fanout16___024root___eval_stl(VMul_32_Hybrid_64_BK0_KL6_Fanout16___024root* vlSelf);

VL_ATTR_COLD void VMul_32_Hybrid_64_BK0_KL6_Fanout16___024root___eval_settle(VMul_32_Hybrid_64_BK0_KL6_Fanout16___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VMul_32_Hybrid_64_BK0_KL6_Fanout16__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VMul_32_Hybrid_64_BK0_KL6_Fanout16___024root___eval_settle\n"); );
    // Init
    CData/*0:0*/ __VstlContinue;
    // Body
    vlSelf->__VstlIterCount = 0U;
    __VstlContinue = 1U;
    while (__VstlContinue) {
        __VstlContinue = 0U;
        VMul_32_Hybrid_64_BK0_KL6_Fanout16___024root___eval_triggers__stl(vlSelf);
        if (vlSelf->__VstlTriggered.any()) {
            __VstlContinue = 1U;
            if (VL_UNLIKELY((0x64U < vlSelf->__VstlIterCount))) {
#ifdef VL_DEBUG
                VMul_32_Hybrid_64_BK0_KL6_Fanout16___024root___dump_triggers__stl(vlSelf);
#endif
                VL_FATAL_MT("/home/shi/research/adder_project/mul_gen/Mul_32_Hybrid_64_BK0_KL6_Fanout16.v", 9, "", "Settle region did not converge.");
            }
            vlSelf->__VstlIterCount = ((IData)(1U) 
                                       + vlSelf->__VstlIterCount);
            VMul_32_Hybrid_64_BK0_KL6_Fanout16___024root___eval_stl(vlSelf);
        }
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void VMul_32_Hybrid_64_BK0_KL6_Fanout16___024root___dump_triggers__stl(VMul_32_Hybrid_64_BK0_KL6_Fanout16___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VMul_32_Hybrid_64_BK0_KL6_Fanout16__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VMul_32_Hybrid_64_BK0_KL6_Fanout16___024root___dump_triggers__stl\n"); );
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
VL_ATTR_COLD void VMul_32_Hybrid_64_BK0_KL6_Fanout16___024root___dump_triggers__ico(VMul_32_Hybrid_64_BK0_KL6_Fanout16___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VMul_32_Hybrid_64_BK0_KL6_Fanout16__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VMul_32_Hybrid_64_BK0_KL6_Fanout16___024root___dump_triggers__ico\n"); );
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
VL_ATTR_COLD void VMul_32_Hybrid_64_BK0_KL6_Fanout16___024root___dump_triggers__act(VMul_32_Hybrid_64_BK0_KL6_Fanout16___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VMul_32_Hybrid_64_BK0_KL6_Fanout16__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VMul_32_Hybrid_64_BK0_KL6_Fanout16___024root___dump_triggers__act\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VactTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
}
#endif  // VL_DEBUG

#ifdef VL_DEBUG
VL_ATTR_COLD void VMul_32_Hybrid_64_BK0_KL6_Fanout16___024root___dump_triggers__nba(VMul_32_Hybrid_64_BK0_KL6_Fanout16___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VMul_32_Hybrid_64_BK0_KL6_Fanout16__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VMul_32_Hybrid_64_BK0_KL6_Fanout16___024root___dump_triggers__nba\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VnbaTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void VMul_32_Hybrid_64_BK0_KL6_Fanout16___024root___ctor_var_reset(VMul_32_Hybrid_64_BK0_KL6_Fanout16___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VMul_32_Hybrid_64_BK0_KL6_Fanout16__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VMul_32_Hybrid_64_BK0_KL6_Fanout16___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->a = VL_RAND_RESET_I(32);
    vlSelf->b = VL_RAND_RESET_I(32);
    vlSelf->out = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK0_KL6_Fanout16__DOT____Vcellinp__Hybrid_64_BK0_KL6_Fanout16_0____pinNumber2 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK0_KL6_Fanout16__DOT____Vcellinp__Hybrid_64_BK0_KL6_Fanout16_0____pinNumber1 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK0_KL6_Fanout16__DOT____Vcellinp__Hybrid_64_BK0_KL6_Fanout16_1____pinNumber2 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK0_KL6_Fanout16__DOT____Vcellinp__Hybrid_64_BK0_KL6_Fanout16_1____pinNumber1 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK0_KL6_Fanout16__DOT____Vcellinp__Hybrid_64_BK0_KL6_Fanout16_2____pinNumber2 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK0_KL6_Fanout16__DOT____Vcellinp__Hybrid_64_BK0_KL6_Fanout16_2____pinNumber1 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK0_KL6_Fanout16__DOT____Vcellinp__Hybrid_64_BK0_KL6_Fanout16_3____pinNumber2 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK0_KL6_Fanout16__DOT____Vcellinp__Hybrid_64_BK0_KL6_Fanout16_3____pinNumber1 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK0_KL6_Fanout16__DOT____Vcellinp__Hybrid_64_BK0_KL6_Fanout16_4____pinNumber2 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK0_KL6_Fanout16__DOT____Vcellinp__Hybrid_64_BK0_KL6_Fanout16_4____pinNumber1 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK0_KL6_Fanout16__DOT____Vcellinp__Hybrid_64_BK0_KL6_Fanout16_5____pinNumber2 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK0_KL6_Fanout16__DOT____Vcellinp__Hybrid_64_BK0_KL6_Fanout16_5____pinNumber1 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK0_KL6_Fanout16__DOT____Vcellinp__Hybrid_64_BK0_KL6_Fanout16_6____pinNumber2 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK0_KL6_Fanout16__DOT____Vcellinp__Hybrid_64_BK0_KL6_Fanout16_6____pinNumber1 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK0_KL6_Fanout16__DOT____Vcellinp__Hybrid_64_BK0_KL6_Fanout16_7____pinNumber2 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK0_KL6_Fanout16__DOT____Vcellinp__Hybrid_64_BK0_KL6_Fanout16_7____pinNumber1 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK0_KL6_Fanout16__DOT____Vcellinp__Hybrid_64_BK0_KL6_Fanout16_8____pinNumber2 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK0_KL6_Fanout16__DOT____Vcellinp__Hybrid_64_BK0_KL6_Fanout16_8____pinNumber1 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK0_KL6_Fanout16__DOT____Vcellinp__Hybrid_64_BK0_KL6_Fanout16_9____pinNumber2 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK0_KL6_Fanout16__DOT____Vcellinp__Hybrid_64_BK0_KL6_Fanout16_9____pinNumber1 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK0_KL6_Fanout16__DOT____Vcellinp__Hybrid_64_BK0_KL6_Fanout16_10____pinNumber2 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK0_KL6_Fanout16__DOT____Vcellinp__Hybrid_64_BK0_KL6_Fanout16_10____pinNumber1 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK0_KL6_Fanout16__DOT____Vcellinp__Hybrid_64_BK0_KL6_Fanout16_11____pinNumber2 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK0_KL6_Fanout16__DOT____Vcellinp__Hybrid_64_BK0_KL6_Fanout16_11____pinNumber1 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK0_KL6_Fanout16__DOT____Vcellinp__Hybrid_64_BK0_KL6_Fanout16_12____pinNumber2 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK0_KL6_Fanout16__DOT____Vcellinp__Hybrid_64_BK0_KL6_Fanout16_12____pinNumber1 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK0_KL6_Fanout16__DOT____Vcellinp__Hybrid_64_BK0_KL6_Fanout16_13____pinNumber2 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK0_KL6_Fanout16__DOT____Vcellinp__Hybrid_64_BK0_KL6_Fanout16_13____pinNumber1 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK0_KL6_Fanout16__DOT____Vcellinp__Hybrid_64_BK0_KL6_Fanout16_14____pinNumber2 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK0_KL6_Fanout16__DOT____Vcellinp__Hybrid_64_BK0_KL6_Fanout16_14____pinNumber1 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK0_KL6_Fanout16__DOT____Vcellinp__Hybrid_64_BK0_KL6_Fanout16_15____pinNumber2 = VL_RAND_RESET_Q(64);
    vlSelf->Mul_32_Hybrid_64_BK0_KL6_Fanout16__DOT____Vcellinp__Hybrid_64_BK0_KL6_Fanout16_15____pinNumber1 = VL_RAND_RESET_Q(64);
}
