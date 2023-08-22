// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VMul_32_Hybrid_64_BK2_KL4_Fanout4.h for the primary calling header

#include "verilated.h"

#include "VMul_32_Hybrid_64_BK2_KL4_Fanout4__Syms.h"
#include "VMul_32_Hybrid_64_BK2_KL4_Fanout4___024root.h"

VL_INLINE_OPT void VMul_32_Hybrid_64_BK2_KL4_Fanout4___024root___ico_sequent__TOP__0(VMul_32_Hybrid_64_BK2_KL4_Fanout4___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VMul_32_Hybrid_64_BK2_KL4_Fanout4__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VMul_32_Hybrid_64_BK2_KL4_Fanout4___024root___ico_sequent__TOP__0\n"); );
    // Body
    vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__DOT____Vcellinp__Hybrid_64_BK2_KL4_Fanout4_0____pinNumber1 
        = ((1U & vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Ea)
            ? (QData)((IData)(vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Eb))
            : 0ULL);
    vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__DOT____Vcellinp__Hybrid_64_BK2_KL4_Fanout4_0____pinNumber2 
        = ((2U & vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Ea)
            ? ((QData)((IData)(vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Eb)) 
               << 1U) : 0ULL);
    vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__DOT____Vcellinp__Hybrid_64_BK2_KL4_Fanout4_1____pinNumber1 
        = ((4U & vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Ea)
            ? ((QData)((IData)(vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Eb)) 
               << 2U) : 0ULL);
    vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__DOT____Vcellinp__Hybrid_64_BK2_KL4_Fanout4_1____pinNumber2 
        = ((8U & vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Ea)
            ? ((QData)((IData)(vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Eb)) 
               << 3U) : 0ULL);
    vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__DOT____Vcellinp__Hybrid_64_BK2_KL4_Fanout4_2____pinNumber1 
        = ((0x10U & vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Ea)
            ? ((QData)((IData)(vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Eb)) 
               << 4U) : 0ULL);
    vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__DOT____Vcellinp__Hybrid_64_BK2_KL4_Fanout4_2____pinNumber2 
        = ((0x20U & vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Ea)
            ? ((QData)((IData)(vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Eb)) 
               << 5U) : 0ULL);
    vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__DOT____Vcellinp__Hybrid_64_BK2_KL4_Fanout4_3____pinNumber1 
        = ((0x40U & vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Ea)
            ? ((QData)((IData)(vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Eb)) 
               << 6U) : 0ULL);
    vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__DOT____Vcellinp__Hybrid_64_BK2_KL4_Fanout4_3____pinNumber2 
        = ((0x80U & vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Ea)
            ? ((QData)((IData)(vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Eb)) 
               << 7U) : 0ULL);
    vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__DOT____Vcellinp__Hybrid_64_BK2_KL4_Fanout4_4____pinNumber1 
        = ((0x100U & vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Ea)
            ? ((QData)((IData)(vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Eb)) 
               << 8U) : 0ULL);
    vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__DOT____Vcellinp__Hybrid_64_BK2_KL4_Fanout4_4____pinNumber2 
        = ((0x200U & vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Ea)
            ? ((QData)((IData)(vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Eb)) 
               << 9U) : 0ULL);
    vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__DOT____Vcellinp__Hybrid_64_BK2_KL4_Fanout4_5____pinNumber1 
        = ((0x400U & vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Ea)
            ? ((QData)((IData)(vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Eb)) 
               << 0xaU) : 0ULL);
    vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__DOT____Vcellinp__Hybrid_64_BK2_KL4_Fanout4_5____pinNumber2 
        = ((0x800U & vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Ea)
            ? ((QData)((IData)(vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Eb)) 
               << 0xbU) : 0ULL);
    vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__DOT____Vcellinp__Hybrid_64_BK2_KL4_Fanout4_6____pinNumber1 
        = ((0x1000U & vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Ea)
            ? ((QData)((IData)(vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Eb)) 
               << 0xcU) : 0ULL);
    vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__DOT____Vcellinp__Hybrid_64_BK2_KL4_Fanout4_6____pinNumber2 
        = ((0x2000U & vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Ea)
            ? ((QData)((IData)(vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Eb)) 
               << 0xdU) : 0ULL);
    vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__DOT____Vcellinp__Hybrid_64_BK2_KL4_Fanout4_7____pinNumber1 
        = ((0x4000U & vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Ea)
            ? ((QData)((IData)(vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Eb)) 
               << 0xeU) : 0ULL);
    vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__DOT____Vcellinp__Hybrid_64_BK2_KL4_Fanout4_7____pinNumber2 
        = ((0x8000U & vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Ea)
            ? ((QData)((IData)(vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Eb)) 
               << 0xfU) : 0ULL);
    vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__DOT____Vcellinp__Hybrid_64_BK2_KL4_Fanout4_8____pinNumber1 
        = ((0x10000U & vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Ea)
            ? ((QData)((IData)(vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Eb)) 
               << 0x10U) : 0ULL);
    vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__DOT____Vcellinp__Hybrid_64_BK2_KL4_Fanout4_8____pinNumber2 
        = ((0x20000U & vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Ea)
            ? ((QData)((IData)(vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Eb)) 
               << 0x11U) : 0ULL);
    vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__DOT____Vcellinp__Hybrid_64_BK2_KL4_Fanout4_9____pinNumber1 
        = ((0x40000U & vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Ea)
            ? ((QData)((IData)(vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Eb)) 
               << 0x12U) : 0ULL);
    vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__DOT____Vcellinp__Hybrid_64_BK2_KL4_Fanout4_9____pinNumber2 
        = ((0x80000U & vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Ea)
            ? ((QData)((IData)(vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Eb)) 
               << 0x13U) : 0ULL);
    vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__DOT____Vcellinp__Hybrid_64_BK2_KL4_Fanout4_10____pinNumber1 
        = ((0x100000U & vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Ea)
            ? ((QData)((IData)(vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Eb)) 
               << 0x14U) : 0ULL);
    vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__DOT____Vcellinp__Hybrid_64_BK2_KL4_Fanout4_10____pinNumber2 
        = ((0x200000U & vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Ea)
            ? ((QData)((IData)(vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Eb)) 
               << 0x15U) : 0ULL);
    vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__DOT____Vcellinp__Hybrid_64_BK2_KL4_Fanout4_11____pinNumber1 
        = ((0x400000U & vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Ea)
            ? ((QData)((IData)(vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Eb)) 
               << 0x16U) : 0ULL);
    vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__DOT____Vcellinp__Hybrid_64_BK2_KL4_Fanout4_11____pinNumber2 
        = ((0x800000U & vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Ea)
            ? ((QData)((IData)(vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Eb)) 
               << 0x17U) : 0ULL);
    vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__DOT____Vcellinp__Hybrid_64_BK2_KL4_Fanout4_12____pinNumber1 
        = ((0x1000000U & vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Ea)
            ? ((QData)((IData)(vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Eb)) 
               << 0x18U) : 0ULL);
    vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__DOT____Vcellinp__Hybrid_64_BK2_KL4_Fanout4_12____pinNumber2 
        = ((0x2000000U & vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Ea)
            ? ((QData)((IData)(vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Eb)) 
               << 0x19U) : 0ULL);
    vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__DOT____Vcellinp__Hybrid_64_BK2_KL4_Fanout4_13____pinNumber1 
        = ((0x4000000U & vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Ea)
            ? ((QData)((IData)(vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Eb)) 
               << 0x1aU) : 0ULL);
    vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__DOT____Vcellinp__Hybrid_64_BK2_KL4_Fanout4_13____pinNumber2 
        = ((0x8000000U & vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Ea)
            ? ((QData)((IData)(vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Eb)) 
               << 0x1bU) : 0ULL);
    vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__DOT____Vcellinp__Hybrid_64_BK2_KL4_Fanout4_14____pinNumber1 
        = ((0x10000000U & vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Ea)
            ? ((QData)((IData)(vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Eb)) 
               << 0x1cU) : 0ULL);
    vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__DOT____Vcellinp__Hybrid_64_BK2_KL4_Fanout4_14____pinNumber2 
        = ((0x20000000U & vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Ea)
            ? ((QData)((IData)(vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Eb)) 
               << 0x1dU) : 0ULL);
    vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__DOT____Vcellinp__Hybrid_64_BK2_KL4_Fanout4_15____pinNumber1 
        = ((0x40000000U & vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Ea)
            ? ((QData)((IData)(vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Eb)) 
               << 0x1eU) : 0ULL);
    vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__DOT____Vcellinp__Hybrid_64_BK2_KL4_Fanout4_15____pinNumber2 
        = ((vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Ea 
            >> 0x1fU) ? ((QData)((IData)(vlSelf->Mul_32_Hybrid_64_BK2_KL4_Fanout4__02Eb)) 
                         << 0x1fU) : 0ULL);
}

void VMul_32_Hybrid_64_BK2_KL4_Fanout4___024root___eval_act(VMul_32_Hybrid_64_BK2_KL4_Fanout4___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VMul_32_Hybrid_64_BK2_KL4_Fanout4__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VMul_32_Hybrid_64_BK2_KL4_Fanout4___024root___eval_act\n"); );
}

void VMul_32_Hybrid_64_BK2_KL4_Fanout4___024root___eval_triggers__ico(VMul_32_Hybrid_64_BK2_KL4_Fanout4___024root* vlSelf);
#ifdef VL_DEBUG
VL_ATTR_COLD void VMul_32_Hybrid_64_BK2_KL4_Fanout4___024root___dump_triggers__ico(VMul_32_Hybrid_64_BK2_KL4_Fanout4___024root* vlSelf);
#endif  // VL_DEBUG
void VMul_32_Hybrid_64_BK2_KL4_Fanout4___024root___eval_ico(VMul_32_Hybrid_64_BK2_KL4_Fanout4___024root* vlSelf);
void VMul_32_Hybrid_64_BK2_KL4_Fanout4___024root___eval_triggers__act(VMul_32_Hybrid_64_BK2_KL4_Fanout4___024root* vlSelf);
#ifdef VL_DEBUG
VL_ATTR_COLD void VMul_32_Hybrid_64_BK2_KL4_Fanout4___024root___dump_triggers__act(VMul_32_Hybrid_64_BK2_KL4_Fanout4___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void VMul_32_Hybrid_64_BK2_KL4_Fanout4___024root___dump_triggers__nba(VMul_32_Hybrid_64_BK2_KL4_Fanout4___024root* vlSelf);
#endif  // VL_DEBUG
void VMul_32_Hybrid_64_BK2_KL4_Fanout4___024root___eval_nba(VMul_32_Hybrid_64_BK2_KL4_Fanout4___024root* vlSelf);

void VMul_32_Hybrid_64_BK2_KL4_Fanout4___024root___eval(VMul_32_Hybrid_64_BK2_KL4_Fanout4___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VMul_32_Hybrid_64_BK2_KL4_Fanout4__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VMul_32_Hybrid_64_BK2_KL4_Fanout4___024root___eval\n"); );
    // Init
    CData/*0:0*/ __VicoContinue;
    VlTriggerVec<1> __VpreTriggered;
    IData/*31:0*/ __VnbaIterCount;
    CData/*0:0*/ __VnbaContinue;
    // Body
    vlSelf->__VicoIterCount = 0U;
    __VicoContinue = 1U;
    while (__VicoContinue) {
        __VicoContinue = 0U;
        VMul_32_Hybrid_64_BK2_KL4_Fanout4___024root___eval_triggers__ico(vlSelf);
        if (vlSelf->__VicoTriggered.any()) {
            __VicoContinue = 1U;
            if (VL_UNLIKELY((0x64U < vlSelf->__VicoIterCount))) {
#ifdef VL_DEBUG
                VMul_32_Hybrid_64_BK2_KL4_Fanout4___024root___dump_triggers__ico(vlSelf);
#endif
                VL_FATAL_MT("/home/shi/research/adder_project/adder_gen/Hybrid_64_BK2_KL4_Fanout4.v", 3, "", "Input combinational region did not converge.");
            }
            vlSelf->__VicoIterCount = ((IData)(1U) 
                                       + vlSelf->__VicoIterCount);
            VMul_32_Hybrid_64_BK2_KL4_Fanout4___024root___eval_ico(vlSelf);
        }
    }
    __VnbaIterCount = 0U;
    __VnbaContinue = 1U;
    while (__VnbaContinue) {
        __VnbaContinue = 0U;
        vlSelf->__VnbaTriggered.clear();
        vlSelf->__VactIterCount = 0U;
        vlSelf->__VactContinue = 1U;
        while (vlSelf->__VactContinue) {
            vlSelf->__VactContinue = 0U;
            VMul_32_Hybrid_64_BK2_KL4_Fanout4___024root___eval_triggers__act(vlSelf);
            if (vlSelf->__VactTriggered.any()) {
                vlSelf->__VactContinue = 1U;
                if (VL_UNLIKELY((0x64U < vlSelf->__VactIterCount))) {
#ifdef VL_DEBUG
                    VMul_32_Hybrid_64_BK2_KL4_Fanout4___024root___dump_triggers__act(vlSelf);
#endif
                    VL_FATAL_MT("/home/shi/research/adder_project/adder_gen/Hybrid_64_BK2_KL4_Fanout4.v", 3, "", "Active region did not converge.");
                }
                vlSelf->__VactIterCount = ((IData)(1U) 
                                           + vlSelf->__VactIterCount);
                __VpreTriggered.andNot(vlSelf->__VactTriggered, vlSelf->__VnbaTriggered);
                vlSelf->__VnbaTriggered.thisOr(vlSelf->__VactTriggered);
                VMul_32_Hybrid_64_BK2_KL4_Fanout4___024root___eval_act(vlSelf);
            }
        }
        if (vlSelf->__VnbaTriggered.any()) {
            __VnbaContinue = 1U;
            if (VL_UNLIKELY((0x64U < __VnbaIterCount))) {
#ifdef VL_DEBUG
                VMul_32_Hybrid_64_BK2_KL4_Fanout4___024root___dump_triggers__nba(vlSelf);
#endif
                VL_FATAL_MT("/home/shi/research/adder_project/adder_gen/Hybrid_64_BK2_KL4_Fanout4.v", 3, "", "NBA region did not converge.");
            }
            __VnbaIterCount = ((IData)(1U) + __VnbaIterCount);
            VMul_32_Hybrid_64_BK2_KL4_Fanout4___024root___eval_nba(vlSelf);
        }
    }
}

#ifdef VL_DEBUG
void VMul_32_Hybrid_64_BK2_KL4_Fanout4___024root___eval_debug_assertions(VMul_32_Hybrid_64_BK2_KL4_Fanout4___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VMul_32_Hybrid_64_BK2_KL4_Fanout4__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VMul_32_Hybrid_64_BK2_KL4_Fanout4___024root___eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((vlSelf->cin & 0xfeU))) {
        Verilated::overWidthError("cin");}
    if (VL_UNLIKELY((vlSelf->clk & 0xfeU))) {
        Verilated::overWidthError("clk");}
    if (VL_UNLIKELY((vlSelf->rst & 0xfeU))) {
        Verilated::overWidthError("rst");}
}
#endif  // VL_DEBUG
