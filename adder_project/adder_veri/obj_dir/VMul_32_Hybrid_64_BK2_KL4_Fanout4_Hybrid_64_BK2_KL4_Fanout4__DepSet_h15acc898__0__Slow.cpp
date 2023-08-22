// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VMul_32_Hybrid_64_BK2_KL4_Fanout4.h for the primary calling header

#include "verilated.h"

#include "VMul_32_Hybrid_64_BK2_KL4_Fanout4__Syms.h"
#include "VMul_32_Hybrid_64_BK2_KL4_Fanout4_Hybrid_64_BK2_KL4_Fanout4.h"

VL_ATTR_COLD void VMul_32_Hybrid_64_BK2_KL4_Fanout4_Hybrid_64_BK2_KL4_Fanout4___ctor_var_reset(VMul_32_Hybrid_64_BK2_KL4_Fanout4_Hybrid_64_BK2_KL4_Fanout4* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VMul_32_Hybrid_64_BK2_KL4_Fanout4__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+        VMul_32_Hybrid_64_BK2_KL4_Fanout4_Hybrid_64_BK2_KL4_Fanout4___ctor_var_reset\n"); );
    // Body
    vlSelf->a = VL_RAND_RESET_Q(64);
    vlSelf->b = VL_RAND_RESET_Q(64);
    vlSelf->cin = VL_RAND_RESET_I(1);
    vlSelf->sum = VL_RAND_RESET_Q(64);
    vlSelf->cout = VL_RAND_RESET_I(1);
    vlSelf->__VdfgTmp_hcb94e63d__0 = 0;
    vlSelf->__VdfgTmp_h51a16d14__0 = 0;
    vlSelf->__VdfgTmp_h6600f75e__0 = 0;
    vlSelf->__VdfgTmp_h61e10e23__0 = 0;
    vlSelf->__VdfgTmp_hba910b0f__0 = 0;
    vlSelf->__VdfgTmp_h177172a1__0 = 0;
    vlSelf->__VdfgTmp_h5e515a86__0 = 0;
    vlSelf->__VdfgTmp_h603f5c25__0 = 0;
    vlSelf->__VdfgTmp_he1859c1a__0 = 0;
    vlSelf->__VdfgTmp_h72837780__0 = 0;
    vlSelf->__VdfgTmp_hd3fa7237__0 = 0;
    vlSelf->__VdfgTmp_hb740abc5__0 = 0;
    vlSelf->__VdfgTmp_h6293a59b__0 = 0;
    vlSelf->__VdfgTmp_hba52ce08__0 = 0;
    vlSelf->__VdfgTmp_hd0fdd63f__0 = 0;
    vlSelf->__VdfgTmp_hb66ac527__0 = 0;
    vlSelf->__VdfgTmp_hc594bf63__0 = 0;
    vlSelf->__VdfgTmp_h04c9a410__0 = 0;
    vlSelf->__VdfgTmp_h9418fdc7__0 = 0;
    vlSelf->__VdfgTmp_h15e8b2af__0 = 0;
    vlSelf->__VdfgTmp_h7e259763__0 = 0;
    vlSelf->__VdfgTmp_h79fa199e__0 = 0;
    vlSelf->__VdfgTmp_hc4b635b0__0 = 0;
    vlSelf->__VdfgTmp_h0c7b4651__0 = 0;
    vlSelf->__VdfgTmp_h7b2fb4ff__0 = 0;
    vlSelf->__VdfgTmp_h7a0496df__0 = 0;
    vlSelf->__VdfgTmp_h60ef5f1a__0 = 0;
    vlSelf->__VdfgTmp_h7e0931b2__0 = 0;
    vlSelf->__VdfgTmp_h2aa7f70a__0 = 0;
    vlSelf->__VdfgTmp_h72ebac23__0 = 0;
    vlSelf->__VdfgTmp_hd24c3501__0 = 0;
    vlSelf->__VdfgTmp_h761a3d38__0 = 0;
    vlSelf->__VdfgTmp_h6c321e91__0 = 0;
    vlSelf->__VdfgTmp_hcdc2ed9d__0 = 0;
    vlSelf->__VdfgTmp_h023e990b__0 = 0;
    vlSelf->__VdfgTmp_h417d006b__0 = 0;
    vlSelf->__VdfgTmp_h27c785a9__0 = 0;
    vlSelf->__VdfgTmp_he06aba82__0 = 0;
    vlSelf->__VdfgTmp_h6847d903__0 = 0;
    vlSelf->__VdfgTmp_h00035067__0 = 0;
    vlSelf->__VdfgTmp_h47971b0c__0 = 0;
    vlSelf->__VdfgTmp_h415b4c29__0 = 0;
    vlSelf->__VdfgTmp_h21660944__0 = 0;
    vlSelf->__VdfgTmp_ha7293e10__0 = 0;
    vlSelf->__VdfgTmp_h068ee91b__0 = 0;
    vlSelf->__VdfgTmp_h55594d28__0 = 0;
    vlSelf->__VdfgTmp_h7a668320__0 = 0;
    vlSelf->__VdfgTmp_h1a682327__0 = 0;
    vlSelf->__VdfgTmp_h10b84258__0 = 0;
    vlSelf->__VdfgTmp_h69d37cbc__0 = 0;
    vlSelf->__VdfgTmp_h9964639d__0 = 0;
    vlSelf->__VdfgTmp_h7a87c33e__0 = 0;
    vlSelf->__VdfgTmp_hd5223a50__0 = 0;
    vlSelf->__VdfgTmp_h658b89e5__0 = 0;
    vlSelf->__VdfgTmp_hb2a58510__0 = 0;
    vlSelf->__VdfgTmp_h2b8c3e07__0 = 0;
    vlSelf->__VdfgTmp_hfcb8c486__0 = 0;
    vlSelf->__VdfgTmp_hf60f5d6d__0 = 0;
    vlSelf->__VdfgTmp_h38152a26__0 = 0;
    vlSelf->__VdfgTmp_h02506a96__0 = 0;
    vlSelf->__VdfgTmp_hbea07a75__0 = 0;
    vlSelf->__VdfgTmp_h306f6bb1__0 = 0;
    vlSelf->__VdfgTmp_h2ee0c1ba__0 = 0;
    vlSelf->__VdfgTmp_ha9677518__0 = 0;
    vlSelf->__VdfgTmp_h6da8e773__0 = 0;
    vlSelf->__VdfgTmp_h2079d32a__0 = 0;
    vlSelf->__VdfgTmp_hf7624b5d__0 = 0;
    vlSelf->__VdfgTmp_h1b971e58__0 = 0;
    vlSelf->__VdfgTmp_hca14ef16__0 = 0;
    vlSelf->__VdfgTmp_he8bcbba5__0 = 0;
    vlSelf->__VdfgTmp_h6e577051__0 = 0;
    vlSelf->__VdfgTmp_h37e33924__0 = 0;
    vlSelf->__VdfgTmp_hece3181c__0 = 0;
}
