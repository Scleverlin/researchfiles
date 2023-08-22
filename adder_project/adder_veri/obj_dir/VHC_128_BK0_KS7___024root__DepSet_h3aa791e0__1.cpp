// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VHC_128_BK0_KS7.h for the primary calling header

#include "verilated.h"

#include "VHC_128_BK0_KS7__Syms.h"
#include "VHC_128_BK0_KS7___024root.h"

void VHC_128_BK0_KS7___024root___nba_sequent__TOP__0(VHC_128_BK0_KS7___024root* vlSelf);
void VHC_128_BK0_KS7___024root___nba_sequent__TOP__1(VHC_128_BK0_KS7___024root* vlSelf);

void VHC_128_BK0_KS7___024root___eval_nba(VHC_128_BK0_KS7___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_128_BK0_KS7__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_128_BK0_KS7___024root___eval_nba\n"); );
    // Body
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VHC_128_BK0_KS7___024root___nba_sequent__TOP__0(vlSelf);
        VHC_128_BK0_KS7___024root___nba_sequent__TOP__1(vlSelf);
    }
}

void VHC_128_BK0_KS7___024root___eval_triggers__ico(VHC_128_BK0_KS7___024root* vlSelf);
#ifdef VL_DEBUG
VL_ATTR_COLD void VHC_128_BK0_KS7___024root___dump_triggers__ico(VHC_128_BK0_KS7___024root* vlSelf);
#endif  // VL_DEBUG
void VHC_128_BK0_KS7___024root___eval_ico(VHC_128_BK0_KS7___024root* vlSelf);
void VHC_128_BK0_KS7___024root___eval_triggers__act(VHC_128_BK0_KS7___024root* vlSelf);
#ifdef VL_DEBUG
VL_ATTR_COLD void VHC_128_BK0_KS7___024root___dump_triggers__act(VHC_128_BK0_KS7___024root* vlSelf);
#endif  // VL_DEBUG
void VHC_128_BK0_KS7___024root___eval_act(VHC_128_BK0_KS7___024root* vlSelf);
#ifdef VL_DEBUG
VL_ATTR_COLD void VHC_128_BK0_KS7___024root___dump_triggers__nba(VHC_128_BK0_KS7___024root* vlSelf);
#endif  // VL_DEBUG

void VHC_128_BK0_KS7___024root___eval(VHC_128_BK0_KS7___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_128_BK0_KS7__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_128_BK0_KS7___024root___eval\n"); );
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
        VHC_128_BK0_KS7___024root___eval_triggers__ico(vlSelf);
        if (vlSelf->__VicoTriggered.any()) {
            __VicoContinue = 1U;
            if (VL_UNLIKELY((0x64U < vlSelf->__VicoIterCount))) {
#ifdef VL_DEBUG
                VHC_128_BK0_KS7___024root___dump_triggers__ico(vlSelf);
#endif
                VL_FATAL_MT("/home/shi/research/adder_project/adder_gen/HC_128_BK0_KS7.v", 3, "", "Input combinational region did not converge.");
            }
            vlSelf->__VicoIterCount = ((IData)(1U) 
                                       + vlSelf->__VicoIterCount);
            VHC_128_BK0_KS7___024root___eval_ico(vlSelf);
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
            VHC_128_BK0_KS7___024root___eval_triggers__act(vlSelf);
            if (vlSelf->__VactTriggered.any()) {
                vlSelf->__VactContinue = 1U;
                if (VL_UNLIKELY((0x64U < vlSelf->__VactIterCount))) {
#ifdef VL_DEBUG
                    VHC_128_BK0_KS7___024root___dump_triggers__act(vlSelf);
#endif
                    VL_FATAL_MT("/home/shi/research/adder_project/adder_gen/HC_128_BK0_KS7.v", 3, "", "Active region did not converge.");
                }
                vlSelf->__VactIterCount = ((IData)(1U) 
                                           + vlSelf->__VactIterCount);
                __VpreTriggered.andNot(vlSelf->__VactTriggered, vlSelf->__VnbaTriggered);
                vlSelf->__VnbaTriggered.thisOr(vlSelf->__VactTriggered);
                VHC_128_BK0_KS7___024root___eval_act(vlSelf);
            }
        }
        if (vlSelf->__VnbaTriggered.any()) {
            __VnbaContinue = 1U;
            if (VL_UNLIKELY((0x64U < __VnbaIterCount))) {
#ifdef VL_DEBUG
                VHC_128_BK0_KS7___024root___dump_triggers__nba(vlSelf);
#endif
                VL_FATAL_MT("/home/shi/research/adder_project/adder_gen/HC_128_BK0_KS7.v", 3, "", "NBA region did not converge.");
            }
            __VnbaIterCount = ((IData)(1U) + __VnbaIterCount);
            VHC_128_BK0_KS7___024root___eval_nba(vlSelf);
        }
    }
}

#ifdef VL_DEBUG
void VHC_128_BK0_KS7___024root___eval_debug_assertions(VHC_128_BK0_KS7___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_128_BK0_KS7__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_128_BK0_KS7___024root___eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((vlSelf->cin & 0xfeU))) {
        Verilated::overWidthError("cin");}
    if (VL_UNLIKELY((vlSelf->clk & 0xfeU))) {
        Verilated::overWidthError("clk");}
    if (VL_UNLIKELY((vlSelf->rst & 0xfeU))) {
        Verilated::overWidthError("rst");}
}
#endif  // VL_DEBUG
