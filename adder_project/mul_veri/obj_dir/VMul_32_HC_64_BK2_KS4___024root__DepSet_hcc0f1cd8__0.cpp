// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VMul_32_HC_64_BK2_KS4.h for the primary calling header

#include "verilated.h"

#include "VMul_32_HC_64_BK2_KS4__Syms.h"
#include "VMul_32_HC_64_BK2_KS4__Syms.h"
#include "VMul_32_HC_64_BK2_KS4___024root.h"

#ifdef VL_DEBUG
VL_ATTR_COLD void VMul_32_HC_64_BK2_KS4___024root___dump_triggers__ico(VMul_32_HC_64_BK2_KS4___024root* vlSelf);
#endif  // VL_DEBUG

void VMul_32_HC_64_BK2_KS4___024root___eval_triggers__ico(VMul_32_HC_64_BK2_KS4___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VMul_32_HC_64_BK2_KS4__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VMul_32_HC_64_BK2_KS4___024root___eval_triggers__ico\n"); );
    // Body
    vlSelf->__VicoTriggered.set(0U, (0U == vlSelf->__VicoIterCount));
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        VMul_32_HC_64_BK2_KS4___024root___dump_triggers__ico(vlSelf);
    }
#endif
}

VL_INLINE_OPT void VMul_32_HC_64_BK2_KS4___024root___ico_sequent__TOP__1(VMul_32_HC_64_BK2_KS4___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VMul_32_HC_64_BK2_KS4__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VMul_32_HC_64_BK2_KS4___024root___ico_sequent__TOP__1\n"); );
    // Body
    vlSelf->out = vlSymsp->TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_30.sum;
}

void VMul_32_HC_64_BK2_KS4___024root___ico_sequent__TOP__0(VMul_32_HC_64_BK2_KS4___024root* vlSelf);
void VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_0__0(VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* vlSelf);
void VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_1__0(VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* vlSelf);
void VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_2__0(VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* vlSelf);
void VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_3__0(VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* vlSelf);
void VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_4__0(VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* vlSelf);
void VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_5__0(VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* vlSelf);
void VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_6__0(VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* vlSelf);
void VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_7__0(VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* vlSelf);
void VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_8__0(VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* vlSelf);
void VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_9__0(VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* vlSelf);
void VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_10__0(VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* vlSelf);
void VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_11__0(VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* vlSelf);
void VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_12__0(VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* vlSelf);
void VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_13__0(VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* vlSelf);
void VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_14__0(VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* vlSelf);
void VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_15__0(VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* vlSelf);
void VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_16__0(VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* vlSelf);
void VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_17__0(VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* vlSelf);
void VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_18__0(VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* vlSelf);
void VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_19__0(VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* vlSelf);
void VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_20__0(VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* vlSelf);
void VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_21__0(VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* vlSelf);
void VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_22__0(VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* vlSelf);
void VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_23__0(VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* vlSelf);
void VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_24__0(VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* vlSelf);
void VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_25__0(VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* vlSelf);
void VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_26__0(VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* vlSelf);
void VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_27__0(VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* vlSelf);
void VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_28__0(VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* vlSelf);
void VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_29__0(VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* vlSelf);
void VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_30__0(VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* vlSelf);

void VMul_32_HC_64_BK2_KS4___024root___eval_ico(VMul_32_HC_64_BK2_KS4___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VMul_32_HC_64_BK2_KS4__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VMul_32_HC_64_BK2_KS4___024root___eval_ico\n"); );
    // Body
    if ((1ULL & vlSelf->__VicoTriggered.word(0U))) {
        VMul_32_HC_64_BK2_KS4___024root___ico_sequent__TOP__0(vlSelf);
        VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_0__0((&vlSymsp->TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_0));
        VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_1__0((&vlSymsp->TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_1));
        VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_2__0((&vlSymsp->TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_2));
        VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_3__0((&vlSymsp->TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_3));
        VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_4__0((&vlSymsp->TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_4));
        VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_5__0((&vlSymsp->TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_5));
        VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_6__0((&vlSymsp->TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_6));
        VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_7__0((&vlSymsp->TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_7));
        VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_8__0((&vlSymsp->TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_8));
        VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_9__0((&vlSymsp->TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_9));
        VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_10__0((&vlSymsp->TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_10));
        VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_11__0((&vlSymsp->TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_11));
        VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_12__0((&vlSymsp->TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_12));
        VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_13__0((&vlSymsp->TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_13));
        VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_14__0((&vlSymsp->TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_14));
        VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_15__0((&vlSymsp->TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_15));
        VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_16__0((&vlSymsp->TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_16));
        VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_17__0((&vlSymsp->TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_17));
        VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_18__0((&vlSymsp->TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_18));
        VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_19__0((&vlSymsp->TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_19));
        VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_20__0((&vlSymsp->TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_20));
        VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_21__0((&vlSymsp->TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_21));
        VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_22__0((&vlSymsp->TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_22));
        VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_23__0((&vlSymsp->TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_23));
        VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_24__0((&vlSymsp->TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_24));
        VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_25__0((&vlSymsp->TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_25));
        VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_26__0((&vlSymsp->TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_26));
        VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_27__0((&vlSymsp->TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_27));
        VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_28__0((&vlSymsp->TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_28));
        VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_29__0((&vlSymsp->TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_29));
        VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4___ico_sequent__TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_30__0((&vlSymsp->TOP__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_30));
        VMul_32_HC_64_BK2_KS4___024root___ico_sequent__TOP__1(vlSelf);
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void VMul_32_HC_64_BK2_KS4___024root___dump_triggers__act(VMul_32_HC_64_BK2_KS4___024root* vlSelf);
#endif  // VL_DEBUG

void VMul_32_HC_64_BK2_KS4___024root___eval_triggers__act(VMul_32_HC_64_BK2_KS4___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VMul_32_HC_64_BK2_KS4__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VMul_32_HC_64_BK2_KS4___024root___eval_triggers__act\n"); );
    // Body
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        VMul_32_HC_64_BK2_KS4___024root___dump_triggers__act(vlSelf);
    }
#endif
}
