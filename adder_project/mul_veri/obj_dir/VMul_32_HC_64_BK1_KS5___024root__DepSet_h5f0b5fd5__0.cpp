// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VMul_32_HC_64_BK1_KS5.h for the primary calling header

#include "verilated.h"

#include "VMul_32_HC_64_BK1_KS5__Syms.h"
#include "VMul_32_HC_64_BK1_KS5__Syms.h"
#include "VMul_32_HC_64_BK1_KS5___024root.h"

#ifdef VL_DEBUG
VL_ATTR_COLD void VMul_32_HC_64_BK1_KS5___024root___dump_triggers__ico(VMul_32_HC_64_BK1_KS5___024root* vlSelf);
#endif  // VL_DEBUG

void VMul_32_HC_64_BK1_KS5___024root___eval_triggers__ico(VMul_32_HC_64_BK1_KS5___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VMul_32_HC_64_BK1_KS5__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VMul_32_HC_64_BK1_KS5___024root___eval_triggers__ico\n"); );
    // Body
    vlSelf->__VicoTriggered.set(0U, (0U == vlSelf->__VicoIterCount));
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        VMul_32_HC_64_BK1_KS5___024root___dump_triggers__ico(vlSelf);
    }
#endif
}

VL_INLINE_OPT void VMul_32_HC_64_BK1_KS5___024root___ico_sequent__TOP__1(VMul_32_HC_64_BK1_KS5___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VMul_32_HC_64_BK1_KS5__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VMul_32_HC_64_BK1_KS5___024root___ico_sequent__TOP__1\n"); );
    // Body
    vlSelf->out = vlSymsp->TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_30.sum;
}

void VMul_32_HC_64_BK1_KS5___024root___ico_sequent__TOP__0(VMul_32_HC_64_BK1_KS5___024root* vlSelf);
void VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_0__0(VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* vlSelf);
void VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_1__0(VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* vlSelf);
void VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_2__0(VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* vlSelf);
void VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_3__0(VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* vlSelf);
void VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_4__0(VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* vlSelf);
void VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_5__0(VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* vlSelf);
void VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_6__0(VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* vlSelf);
void VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_7__0(VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* vlSelf);
void VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_8__0(VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* vlSelf);
void VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_9__0(VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* vlSelf);
void VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_10__0(VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* vlSelf);
void VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_11__0(VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* vlSelf);
void VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_12__0(VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* vlSelf);
void VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_13__0(VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* vlSelf);
void VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_14__0(VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* vlSelf);
void VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_15__0(VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* vlSelf);
void VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_16__0(VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* vlSelf);
void VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_17__0(VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* vlSelf);
void VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_18__0(VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* vlSelf);
void VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_19__0(VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* vlSelf);
void VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_20__0(VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* vlSelf);
void VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_21__0(VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* vlSelf);
void VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_22__0(VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* vlSelf);
void VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_23__0(VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* vlSelf);
void VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_24__0(VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* vlSelf);
void VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_25__0(VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* vlSelf);
void VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_26__0(VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* vlSelf);
void VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_27__0(VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* vlSelf);
void VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_28__0(VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* vlSelf);
void VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_29__0(VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* vlSelf);
void VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_30__0(VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* vlSelf);

void VMul_32_HC_64_BK1_KS5___024root___eval_ico(VMul_32_HC_64_BK1_KS5___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VMul_32_HC_64_BK1_KS5__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VMul_32_HC_64_BK1_KS5___024root___eval_ico\n"); );
    // Body
    if ((1ULL & vlSelf->__VicoTriggered.word(0U))) {
        VMul_32_HC_64_BK1_KS5___024root___ico_sequent__TOP__0(vlSelf);
        VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_0__0((&vlSymsp->TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_0));
        VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_1__0((&vlSymsp->TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_1));
        VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_2__0((&vlSymsp->TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_2));
        VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_3__0((&vlSymsp->TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_3));
        VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_4__0((&vlSymsp->TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_4));
        VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_5__0((&vlSymsp->TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_5));
        VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_6__0((&vlSymsp->TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_6));
        VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_7__0((&vlSymsp->TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_7));
        VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_8__0((&vlSymsp->TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_8));
        VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_9__0((&vlSymsp->TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_9));
        VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_10__0((&vlSymsp->TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_10));
        VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_11__0((&vlSymsp->TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_11));
        VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_12__0((&vlSymsp->TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_12));
        VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_13__0((&vlSymsp->TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_13));
        VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_14__0((&vlSymsp->TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_14));
        VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_15__0((&vlSymsp->TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_15));
        VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_16__0((&vlSymsp->TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_16));
        VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_17__0((&vlSymsp->TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_17));
        VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_18__0((&vlSymsp->TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_18));
        VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_19__0((&vlSymsp->TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_19));
        VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_20__0((&vlSymsp->TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_20));
        VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_21__0((&vlSymsp->TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_21));
        VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_22__0((&vlSymsp->TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_22));
        VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_23__0((&vlSymsp->TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_23));
        VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_24__0((&vlSymsp->TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_24));
        VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_25__0((&vlSymsp->TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_25));
        VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_26__0((&vlSymsp->TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_26));
        VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_27__0((&vlSymsp->TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_27));
        VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_28__0((&vlSymsp->TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_28));
        VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_29__0((&vlSymsp->TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_29));
        VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ico_sequent__TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_30__0((&vlSymsp->TOP__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_30));
        VMul_32_HC_64_BK1_KS5___024root___ico_sequent__TOP__1(vlSelf);
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void VMul_32_HC_64_BK1_KS5___024root___dump_triggers__act(VMul_32_HC_64_BK1_KS5___024root* vlSelf);
#endif  // VL_DEBUG

void VMul_32_HC_64_BK1_KS5___024root___eval_triggers__act(VMul_32_HC_64_BK1_KS5___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VMul_32_HC_64_BK1_KS5__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VMul_32_HC_64_BK1_KS5___024root___eval_triggers__act\n"); );
    // Body
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        VMul_32_HC_64_BK1_KS5___024root___dump_triggers__act(vlSelf);
    }
#endif
}
