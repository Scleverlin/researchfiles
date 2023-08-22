// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VMul_32_HC_64_BK0_KS6.h for the primary calling header

#include "verilated.h"

#include "VMul_32_HC_64_BK0_KS6__Syms.h"
#include "VMul_32_HC_64_BK0_KS6__Syms.h"
#include "VMul_32_HC_64_BK0_KS6___024root.h"

#ifdef VL_DEBUG
VL_ATTR_COLD void VMul_32_HC_64_BK0_KS6___024root___dump_triggers__ico(VMul_32_HC_64_BK0_KS6___024root* vlSelf);
#endif  // VL_DEBUG

void VMul_32_HC_64_BK0_KS6___024root___eval_triggers__ico(VMul_32_HC_64_BK0_KS6___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VMul_32_HC_64_BK0_KS6__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VMul_32_HC_64_BK0_KS6___024root___eval_triggers__ico\n"); );
    // Body
    vlSelf->__VicoTriggered.set(0U, (0U == vlSelf->__VicoIterCount));
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        VMul_32_HC_64_BK0_KS6___024root___dump_triggers__ico(vlSelf);
    }
#endif
}

VL_INLINE_OPT void VMul_32_HC_64_BK0_KS6___024root___ico_sequent__TOP__1(VMul_32_HC_64_BK0_KS6___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VMul_32_HC_64_BK0_KS6__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VMul_32_HC_64_BK0_KS6___024root___ico_sequent__TOP__1\n"); );
    // Body
    vlSelf->out = vlSymsp->TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_30.sum;
}

void VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__HC_64_BK0_KS6_top__DOT__u0__0(VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* vlSelf);
void VMul_32_HC_64_BK0_KS6___024root___ico_sequent__TOP__0(VMul_32_HC_64_BK0_KS6___024root* vlSelf);
void VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_0__0(VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* vlSelf);
void VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_1__0(VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* vlSelf);
void VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_2__0(VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* vlSelf);
void VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_3__0(VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* vlSelf);
void VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_4__0(VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* vlSelf);
void VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_5__0(VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* vlSelf);
void VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_6__0(VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* vlSelf);
void VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_7__0(VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* vlSelf);
void VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_8__0(VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* vlSelf);
void VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_9__0(VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* vlSelf);
void VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_10__0(VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* vlSelf);
void VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_11__0(VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* vlSelf);
void VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_12__0(VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* vlSelf);
void VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_13__0(VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* vlSelf);
void VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_14__0(VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* vlSelf);
void VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_15__0(VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* vlSelf);
void VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_16__0(VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* vlSelf);
void VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_17__0(VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* vlSelf);
void VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_18__0(VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* vlSelf);
void VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_19__0(VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* vlSelf);
void VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_20__0(VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* vlSelf);
void VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_21__0(VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* vlSelf);
void VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_22__0(VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* vlSelf);
void VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_23__0(VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* vlSelf);
void VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_24__0(VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* vlSelf);
void VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_25__0(VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* vlSelf);
void VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_26__0(VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* vlSelf);
void VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_27__0(VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* vlSelf);
void VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_28__0(VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* vlSelf);
void VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_29__0(VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* vlSelf);
void VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_30__0(VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* vlSelf);

void VMul_32_HC_64_BK0_KS6___024root___eval_ico(VMul_32_HC_64_BK0_KS6___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VMul_32_HC_64_BK0_KS6__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VMul_32_HC_64_BK0_KS6___024root___eval_ico\n"); );
    // Body
    if ((1ULL & vlSelf->__VicoTriggered.word(0U))) {
        VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__HC_64_BK0_KS6_top__DOT__u0__0((&vlSymsp->TOP__HC_64_BK0_KS6_top__DOT__u0));
        VMul_32_HC_64_BK0_KS6___024root___ico_sequent__TOP__0(vlSelf);
        VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_0__0((&vlSymsp->TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_0));
        VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_1__0((&vlSymsp->TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_1));
        VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_2__0((&vlSymsp->TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_2));
        VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_3__0((&vlSymsp->TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_3));
        VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_4__0((&vlSymsp->TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_4));
        VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_5__0((&vlSymsp->TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_5));
        VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_6__0((&vlSymsp->TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_6));
        VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_7__0((&vlSymsp->TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_7));
        VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_8__0((&vlSymsp->TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_8));
        VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_9__0((&vlSymsp->TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_9));
        VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_10__0((&vlSymsp->TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_10));
        VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_11__0((&vlSymsp->TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_11));
        VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_12__0((&vlSymsp->TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_12));
        VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_13__0((&vlSymsp->TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_13));
        VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_14__0((&vlSymsp->TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_14));
        VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_15__0((&vlSymsp->TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_15));
        VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_16__0((&vlSymsp->TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_16));
        VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_17__0((&vlSymsp->TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_17));
        VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_18__0((&vlSymsp->TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_18));
        VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_19__0((&vlSymsp->TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_19));
        VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_20__0((&vlSymsp->TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_20));
        VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_21__0((&vlSymsp->TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_21));
        VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_22__0((&vlSymsp->TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_22));
        VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_23__0((&vlSymsp->TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_23));
        VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_24__0((&vlSymsp->TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_24));
        VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_25__0((&vlSymsp->TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_25));
        VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_26__0((&vlSymsp->TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_26));
        VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_27__0((&vlSymsp->TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_27));
        VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_28__0((&vlSymsp->TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_28));
        VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_29__0((&vlSymsp->TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_29));
        VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___ico_sequent__TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_30__0((&vlSymsp->TOP__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_30));
        VMul_32_HC_64_BK0_KS6___024root___ico_sequent__TOP__1(vlSelf);
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void VMul_32_HC_64_BK0_KS6___024root___dump_triggers__act(VMul_32_HC_64_BK0_KS6___024root* vlSelf);
#endif  // VL_DEBUG

void VMul_32_HC_64_BK0_KS6___024root___eval_triggers__act(VMul_32_HC_64_BK0_KS6___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VMul_32_HC_64_BK0_KS6__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VMul_32_HC_64_BK0_KS6___024root___eval_triggers__act\n"); );
    // Body
    vlSelf->__VactTriggered.set(0U, ((IData)(vlSelf->clk) 
                                     & (~ (IData)(vlSelf->__Vtrigprevexpr___TOP__clk__0))));
    vlSelf->__Vtrigprevexpr___TOP__clk__0 = vlSelf->clk;
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        VMul_32_HC_64_BK0_KS6___024root___dump_triggers__act(vlSelf);
    }
#endif
}

VL_INLINE_OPT void VMul_32_HC_64_BK0_KS6___024root___nba_sequent__TOP__0(VMul_32_HC_64_BK0_KS6___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VMul_32_HC_64_BK0_KS6__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VMul_32_HC_64_BK0_KS6___024root___nba_sequent__TOP__0\n"); );
    // Body
    vlSelf->sum = ((IData)(vlSelf->rst) ? 0ULL : vlSymsp->TOP__HC_64_BK0_KS6_top__DOT__u0.sum);
    if ((1U & (~ (IData)(vlSelf->rst)))) {
        vlSelf->HC_64_BK0_KS6_top__DOT__cin_r = vlSelf->cin;
    }
    vlSelf->cout = (1U & ((~ (IData)(vlSelf->rst)) 
                          & ((IData)((vlSymsp->TOP__HC_64_BK0_KS6_top__DOT__u0.__VdfgTmp_hece3181c__0 
                                      >> 0x3fU)) | 
                             ((IData)((vlSymsp->TOP__HC_64_BK0_KS6_top__DOT__u0.__VdfgTmp_h37e33924__0 
                                       >> 0x3fU)) & (IData)(vlSymsp->TOP__HC_64_BK0_KS6_top__DOT__u0.__VdfgTmp_hcb94e63d__0)))));
}

void VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___nba_sequent__TOP__HC_64_BK0_KS6_top__DOT__u0__0(VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* vlSelf);

void VMul_32_HC_64_BK0_KS6___024root___eval_nba(VMul_32_HC_64_BK0_KS6___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VMul_32_HC_64_BK0_KS6__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VMul_32_HC_64_BK0_KS6___024root___eval_nba\n"); );
    // Body
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VMul_32_HC_64_BK0_KS6___024root___nba_sequent__TOP__0(vlSelf);
        VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6___nba_sequent__TOP__HC_64_BK0_KS6_top__DOT__u0__0((&vlSymsp->TOP__HC_64_BK0_KS6_top__DOT__u0));
    }
}
