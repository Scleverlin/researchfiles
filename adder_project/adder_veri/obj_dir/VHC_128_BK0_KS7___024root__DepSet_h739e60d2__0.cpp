// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VHC_128_BK0_KS7.h for the primary calling header

#include "verilated.h"

#include "VHC_128_BK0_KS7__Syms.h"
#include "VHC_128_BK0_KS7__Syms.h"
#include "VHC_128_BK0_KS7___024root.h"

#ifdef VL_DEBUG
VL_ATTR_COLD void VHC_128_BK0_KS7___024root___dump_triggers__ico(VHC_128_BK0_KS7___024root* vlSelf);
#endif  // VL_DEBUG

void VHC_128_BK0_KS7___024root___eval_triggers__ico(VHC_128_BK0_KS7___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_128_BK0_KS7__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_128_BK0_KS7___024root___eval_triggers__ico\n"); );
    // Body
    vlSelf->__VicoTriggered.set(0U, (0U == vlSelf->__VicoIterCount));
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        VHC_128_BK0_KS7___024root___dump_triggers__ico(vlSelf);
    }
#endif
}

#ifdef VL_DEBUG
VL_ATTR_COLD void VHC_128_BK0_KS7___024root___dump_triggers__act(VHC_128_BK0_KS7___024root* vlSelf);
#endif  // VL_DEBUG

void VHC_128_BK0_KS7___024root___eval_triggers__act(VHC_128_BK0_KS7___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_128_BK0_KS7__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_128_BK0_KS7___024root___eval_triggers__act\n"); );
    // Body
    vlSelf->__VactTriggered.set(0U, ((IData)(vlSelf->clk) 
                                     & (~ (IData)(vlSelf->__Vtrigprevexpr___TOP__clk__0))));
    vlSelf->__Vtrigprevexpr___TOP__clk__0 = vlSelf->clk;
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        VHC_128_BK0_KS7___024root___dump_triggers__act(vlSelf);
    }
#endif
}
