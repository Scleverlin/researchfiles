// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VHybrid_128_BK0_KL7_Fanout32.h for the primary calling header

#include "verilated.h"

#include "VHybrid_128_BK0_KL7_Fanout32__Syms.h"
#include "VHybrid_128_BK0_KL7_Fanout32__Syms.h"
#include "VHybrid_128_BK0_KL7_Fanout32___024root.h"

#ifdef VL_DEBUG
VL_ATTR_COLD void VHybrid_128_BK0_KL7_Fanout32___024root___dump_triggers__stl(VHybrid_128_BK0_KL7_Fanout32___024root* vlSelf);
#endif  // VL_DEBUG

VL_ATTR_COLD void VHybrid_128_BK0_KL7_Fanout32___024root___eval_triggers__stl(VHybrid_128_BK0_KL7_Fanout32___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_128_BK0_KL7_Fanout32__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_128_BK0_KL7_Fanout32___024root___eval_triggers__stl\n"); );
    // Body
    vlSelf->__VstlTriggered.set(0U, (0U == vlSelf->__VstlIterCount));
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        VHybrid_128_BK0_KL7_Fanout32___024root___dump_triggers__stl(vlSelf);
    }
#endif
}
