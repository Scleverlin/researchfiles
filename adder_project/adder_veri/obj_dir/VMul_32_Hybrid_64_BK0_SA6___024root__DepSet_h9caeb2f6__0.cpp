// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VMul_32_Hybrid_64_BK0_SA6.h for the primary calling header

#include "verilated.h"

#include "VMul_32_Hybrid_64_BK0_SA6__Syms.h"
#include "VMul_32_Hybrid_64_BK0_SA6__Syms.h"
#include "VMul_32_Hybrid_64_BK0_SA6___024root.h"

#ifdef VL_DEBUG
VL_ATTR_COLD void VMul_32_Hybrid_64_BK0_SA6___024root___dump_triggers__ico(VMul_32_Hybrid_64_BK0_SA6___024root* vlSelf);
#endif  // VL_DEBUG

void VMul_32_Hybrid_64_BK0_SA6___024root___eval_triggers__ico(VMul_32_Hybrid_64_BK0_SA6___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VMul_32_Hybrid_64_BK0_SA6__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VMul_32_Hybrid_64_BK0_SA6___024root___eval_triggers__ico\n"); );
    // Body
    vlSelf->__VicoTriggered.set(0U, (0U == vlSelf->__VicoIterCount));
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        VMul_32_Hybrid_64_BK0_SA6___024root___dump_triggers__ico(vlSelf);
    }
#endif
}

VL_INLINE_OPT void VMul_32_Hybrid_64_BK0_SA6___024root___ico_sequent__TOP__1(VMul_32_Hybrid_64_BK0_SA6___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VMul_32_Hybrid_64_BK0_SA6__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VMul_32_Hybrid_64_BK0_SA6___024root___ico_sequent__TOP__1\n"); );
    // Body
    vlSelf->out = vlSymsp->TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_30.sum;
}

void VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Hybrid_64_BK0_SA6_top__DOT__u0__0(VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6* vlSelf);
void VMul_32_Hybrid_64_BK0_SA6___024root___ico_sequent__TOP__0(VMul_32_Hybrid_64_BK0_SA6___024root* vlSelf);
void VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_0__0(VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6* vlSelf);
void VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_1__0(VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6* vlSelf);
void VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_2__0(VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6* vlSelf);
void VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_3__0(VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6* vlSelf);
void VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_4__0(VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6* vlSelf);
void VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_5__0(VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6* vlSelf);
void VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_6__0(VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6* vlSelf);
void VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_7__0(VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6* vlSelf);
void VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_8__0(VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6* vlSelf);
void VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_9__0(VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6* vlSelf);
void VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_10__0(VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6* vlSelf);
void VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_11__0(VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6* vlSelf);
void VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_12__0(VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6* vlSelf);
void VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_13__0(VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6* vlSelf);
void VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_14__0(VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6* vlSelf);
void VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_15__0(VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6* vlSelf);
void VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_16__0(VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6* vlSelf);
void VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_17__0(VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6* vlSelf);
void VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_18__0(VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6* vlSelf);
void VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_19__0(VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6* vlSelf);
void VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_20__0(VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6* vlSelf);
void VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_21__0(VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6* vlSelf);
void VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_22__0(VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6* vlSelf);
void VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_23__0(VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6* vlSelf);
void VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_24__0(VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6* vlSelf);
void VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_25__0(VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6* vlSelf);
void VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_26__0(VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6* vlSelf);
void VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_27__0(VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6* vlSelf);
void VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_28__0(VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6* vlSelf);
void VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_29__0(VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6* vlSelf);
void VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_30__0(VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6* vlSelf);

void VMul_32_Hybrid_64_BK0_SA6___024root___eval_ico(VMul_32_Hybrid_64_BK0_SA6___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VMul_32_Hybrid_64_BK0_SA6__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VMul_32_Hybrid_64_BK0_SA6___024root___eval_ico\n"); );
    // Body
    if ((1ULL & vlSelf->__VicoTriggered.word(0U))) {
        VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Hybrid_64_BK0_SA6_top__DOT__u0__0((&vlSymsp->TOP__Hybrid_64_BK0_SA6_top__DOT__u0));
        VMul_32_Hybrid_64_BK0_SA6___024root___ico_sequent__TOP__0(vlSelf);
        VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_0__0((&vlSymsp->TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_0));
        VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_1__0((&vlSymsp->TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_1));
        VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_2__0((&vlSymsp->TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_2));
        VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_3__0((&vlSymsp->TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_3));
        VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_4__0((&vlSymsp->TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_4));
        VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_5__0((&vlSymsp->TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_5));
        VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_6__0((&vlSymsp->TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_6));
        VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_7__0((&vlSymsp->TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_7));
        VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_8__0((&vlSymsp->TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_8));
        VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_9__0((&vlSymsp->TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_9));
        VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_10__0((&vlSymsp->TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_10));
        VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_11__0((&vlSymsp->TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_11));
        VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_12__0((&vlSymsp->TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_12));
        VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_13__0((&vlSymsp->TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_13));
        VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_14__0((&vlSymsp->TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_14));
        VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_15__0((&vlSymsp->TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_15));
        VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_16__0((&vlSymsp->TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_16));
        VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_17__0((&vlSymsp->TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_17));
        VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_18__0((&vlSymsp->TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_18));
        VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_19__0((&vlSymsp->TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_19));
        VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_20__0((&vlSymsp->TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_20));
        VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_21__0((&vlSymsp->TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_21));
        VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_22__0((&vlSymsp->TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_22));
        VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_23__0((&vlSymsp->TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_23));
        VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_24__0((&vlSymsp->TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_24));
        VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_25__0((&vlSymsp->TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_25));
        VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_26__0((&vlSymsp->TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_26));
        VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_27__0((&vlSymsp->TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_27));
        VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_28__0((&vlSymsp->TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_28));
        VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_29__0((&vlSymsp->TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_29));
        VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ico_sequent__TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_30__0((&vlSymsp->TOP__Mul_32_Hybrid_64_BK0_SA6__DOT__Hybrid_64_BK0_SA6_30));
        VMul_32_Hybrid_64_BK0_SA6___024root___ico_sequent__TOP__1(vlSelf);
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void VMul_32_Hybrid_64_BK0_SA6___024root___dump_triggers__act(VMul_32_Hybrid_64_BK0_SA6___024root* vlSelf);
#endif  // VL_DEBUG

void VMul_32_Hybrid_64_BK0_SA6___024root___eval_triggers__act(VMul_32_Hybrid_64_BK0_SA6___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VMul_32_Hybrid_64_BK0_SA6__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VMul_32_Hybrid_64_BK0_SA6___024root___eval_triggers__act\n"); );
    // Body
    vlSelf->__VactTriggered.set(0U, ((IData)(vlSelf->clk) 
                                     & (~ (IData)(vlSelf->__Vtrigprevexpr___TOP__clk__0))));
    vlSelf->__Vtrigprevexpr___TOP__clk__0 = vlSelf->clk;
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        VMul_32_Hybrid_64_BK0_SA6___024root___dump_triggers__act(vlSelf);
    }
#endif
}

VL_INLINE_OPT void VMul_32_Hybrid_64_BK0_SA6___024root___nba_sequent__TOP__0(VMul_32_Hybrid_64_BK0_SA6___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VMul_32_Hybrid_64_BK0_SA6__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VMul_32_Hybrid_64_BK0_SA6___024root___nba_sequent__TOP__0\n"); );
    // Body
    vlSelf->sum = ((IData)(vlSelf->rst) ? 0ULL : vlSymsp->TOP__Hybrid_64_BK0_SA6_top__DOT__u0.sum);
    if ((1U & (~ (IData)(vlSelf->rst)))) {
        vlSelf->Hybrid_64_BK0_SA6_top__DOT__cin_r = vlSelf->cin;
    }
    vlSelf->cout = (1U & ((~ (IData)(vlSelf->rst)) 
                          & ((IData)((vlSymsp->TOP__Hybrid_64_BK0_SA6_top__DOT__u0.__VdfgTmp_hece3181c__0 
                                      >> 0x3fU)) | 
                             ((IData)((vlSymsp->TOP__Hybrid_64_BK0_SA6_top__DOT__u0.__VdfgTmp_h37e33924__0 
                                       >> 0x3fU)) & (IData)(vlSymsp->TOP__Hybrid_64_BK0_SA6_top__DOT__u0.__VdfgTmp_hcb94e63d__0)))));
}

void VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___nba_sequent__TOP__Hybrid_64_BK0_SA6_top__DOT__u0__0(VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6* vlSelf);

void VMul_32_Hybrid_64_BK0_SA6___024root___eval_nba(VMul_32_Hybrid_64_BK0_SA6___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VMul_32_Hybrid_64_BK0_SA6__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VMul_32_Hybrid_64_BK0_SA6___024root___eval_nba\n"); );
    // Body
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VMul_32_Hybrid_64_BK0_SA6___024root___nba_sequent__TOP__0(vlSelf);
        VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___nba_sequent__TOP__Hybrid_64_BK0_SA6_top__DOT__u0__0((&vlSymsp->TOP__Hybrid_64_BK0_SA6_top__DOT__u0));
    }
}