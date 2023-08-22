// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VHybrid_128_BK0_KL7_Fanout16.h for the primary calling header

#include "verilated.h"

#include "VHybrid_128_BK0_KL7_Fanout16__Syms.h"
#include "VHybrid_128_BK0_KL7_Fanout16__Syms.h"
#include "VHybrid_128_BK0_KL7_Fanout16___024root.h"

#ifdef VL_DEBUG
VL_ATTR_COLD void VHybrid_128_BK0_KL7_Fanout16___024root___dump_triggers__ico(VHybrid_128_BK0_KL7_Fanout16___024root* vlSelf);
#endif  // VL_DEBUG

void VHybrid_128_BK0_KL7_Fanout16___024root___eval_triggers__ico(VHybrid_128_BK0_KL7_Fanout16___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_128_BK0_KL7_Fanout16__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_128_BK0_KL7_Fanout16___024root___eval_triggers__ico\n"); );
    // Body
    vlSelf->__VicoTriggered.set(0U, (0U == vlSelf->__VicoIterCount));
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        VHybrid_128_BK0_KL7_Fanout16___024root___dump_triggers__ico(vlSelf);
    }
#endif
}

#ifdef VL_DEBUG
VL_ATTR_COLD void VHybrid_128_BK0_KL7_Fanout16___024root___dump_triggers__act(VHybrid_128_BK0_KL7_Fanout16___024root* vlSelf);
#endif  // VL_DEBUG

void VHybrid_128_BK0_KL7_Fanout16___024root___eval_triggers__act(VHybrid_128_BK0_KL7_Fanout16___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_128_BK0_KL7_Fanout16__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_128_BK0_KL7_Fanout16___024root___eval_triggers__act\n"); );
    // Body
    vlSelf->__VactTriggered.set(0U, ((IData)(vlSelf->clk) 
                                     & (~ (IData)(vlSelf->__Vtrigprevexpr___TOP__clk__0))));
    vlSelf->__Vtrigprevexpr___TOP__clk__0 = vlSelf->clk;
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        VHybrid_128_BK0_KL7_Fanout16___024root___dump_triggers__act(vlSelf);
    }
#endif
}
