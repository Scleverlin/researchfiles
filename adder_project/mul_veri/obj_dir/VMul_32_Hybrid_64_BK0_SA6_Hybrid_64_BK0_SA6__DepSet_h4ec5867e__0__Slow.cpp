// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VMul_32_Hybrid_64_BK0_SA6.h for the primary calling header

#include "verilated.h"

#include "VMul_32_Hybrid_64_BK0_SA6__Syms.h"
#include "VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6.h"

VL_ATTR_COLD void VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ctor_var_reset(VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VMul_32_Hybrid_64_BK0_SA6__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+        VMul_32_Hybrid_64_BK0_SA6_Hybrid_64_BK0_SA6___ctor_var_reset\n"); );
    // Body
    vlSelf->a = VL_RAND_RESET_Q(64);
    vlSelf->b = VL_RAND_RESET_Q(64);
    vlSelf->cin = VL_RAND_RESET_I(1);
    vlSelf->sum = VL_RAND_RESET_Q(64);
    vlSelf->cout = VL_RAND_RESET_I(1);
}
