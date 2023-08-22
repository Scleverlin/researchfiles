// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VMul_32_HC_64_BK1_KS5.h for the primary calling header

#include "verilated.h"

#include "VMul_32_HC_64_BK1_KS5__Syms.h"
#include "VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5.h"

VL_ATTR_COLD void VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ctor_var_reset(VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VMul_32_HC_64_BK1_KS5__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+        VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5___ctor_var_reset\n"); );
    // Body
    vlSelf->a = VL_RAND_RESET_Q(64);
    vlSelf->b = VL_RAND_RESET_Q(64);
    vlSelf->cin = VL_RAND_RESET_I(1);
    vlSelf->sum = VL_RAND_RESET_Q(64);
    vlSelf->cout = VL_RAND_RESET_I(1);
    vlSelf->__VdfgTmp_hcb94e63d__0 = 0;
    vlSelf->__VdfgTmp_h298e4177__0 = 0;
    vlSelf->__VdfgTmp_h74194960__0 = 0;
    vlSelf->__VdfgTmp_h232807b7__0 = 0;
    vlSelf->__VdfgTmp_hd24c3501__0 = 0;
    vlSelf->__VdfgTmp_h761a3d38__0 = 0;
    vlSelf->__VdfgTmp_h6c321e91__0 = 0;
    vlSelf->__VdfgTmp_hd714f642__0 = 0;
    vlSelf->__VdfgTmp_h2c7fe75a__0 = 0;
    vlSelf->__VdfgTmp_hcdc2ed9d__0 = 0;
    vlSelf->__VdfgTmp_h023e990b__0 = 0;
    vlSelf->__VdfgTmp_h20b5e56c__0 = 0;
    vlSelf->__VdfgTmp_h9964639d__0 = 0;
    vlSelf->__VdfgTmp_he5f41691__0 = 0;
    vlSelf->__VdfgTmp_h5fd6ee97__0 = 0;
    vlSelf->__VdfgTmp_h7a87c33e__0 = 0;
    vlSelf->__VdfgTmp_hd5223a50__0 = 0;
    vlSelf->__VdfgTmp_hea841958__0 = 0;
    vlSelf->__VdfgTmp_h658b89e5__0 = 0;
    vlSelf->__VdfgTmp_h4ce4f244__0 = 0;
    vlSelf->__VdfgTmp_h12fa8efa__0 = 0;
    vlSelf->__VdfgTmp_hb4ef687e__0 = 0;
    vlSelf->__VdfgTmp_h1415cb2a__0 = 0;
    vlSelf->__VdfgTmp_h20737028__0 = 0;
    vlSelf->__VdfgTmp_h091f2a6d__0 = 0;
    vlSelf->__VdfgTmp_h1fcc151d__0 = 0;
    vlSelf->__VdfgTmp_h7f366d3a__0 = 0;
    vlSelf->__VdfgTmp_h1de1fdad__0 = 0;
    vlSelf->__VdfgTmp_hb6ef9f0d__0 = 0;
    vlSelf->__VdfgTmp_h9068ff90__0 = 0;
    vlSelf->__VdfgTmp_h28961f87__0 = 0;
    vlSelf->__VdfgTmp_h4eab30df__0 = 0;
    vlSelf->__VdfgTmp_h08ed10c6__0 = 0;
    vlSelf->__VdfgTmp_h36a4ac1f__0 = 0;
    vlSelf->__VdfgTmp_h88f09a82__0 = 0;
    vlSelf->__VdfgTmp_h972b127e__0 = 0;
    vlSelf->__VdfgTmp_h9225518d__0 = 0;
    vlSelf->__VdfgTmp_hbea07a75__0 = 0;
    vlSelf->__VdfgTmp_h306f6bb1__0 = 0;
    vlSelf->__VdfgTmp_ha18bc244__0 = 0;
    vlSelf->__VdfgTmp_h2ee0c1ba__0 = 0;
    vlSelf->__VdfgTmp_h86b12e0b__0 = 0;
    vlSelf->__VdfgTmp_ha9677518__0 = 0;
    vlSelf->__VdfgTmp_h6f3165f5__0 = 0;
    vlSelf->__VdfgTmp_h4000edf2__0 = 0;
    vlSelf->__VdfgTmp_head7116f__0 = 0;
    vlSelf->__VdfgTmp_h80842e09__0 = 0;
    vlSelf->__VdfgTmp_h6148911b__0 = 0;
    vlSelf->__VdfgTmp_he387e2c0__0 = 0;
    vlSelf->__VdfgTmp_h7c5fe774__0 = 0;
    vlSelf->__VdfgTmp_h93a14d4f__0 = 0;
    vlSelf->__VdfgTmp_h8b630af4__0 = 0;
    vlSelf->__VdfgTmp_h75e626e3__0 = 0;
    vlSelf->__VdfgTmp_hecb49a16__0 = 0;
    vlSelf->__VdfgTmp_h2f503fc5__0 = 0;
    vlSelf->__VdfgTmp_h7e5603e2__0 = 0;
    vlSelf->__VdfgTmp_h16ea3da0__0 = 0;
    vlSelf->__VdfgTmp_h6da8e773__0 = 0;
    vlSelf->__VdfgTmp_h2079d32a__0 = 0;
    vlSelf->__VdfgTmp_h3647d151__0 = 0;
    vlSelf->__VdfgTmp_hce34db0d__0 = 0;
    vlSelf->__VdfgTmp_h52aeba38__0 = 0;
    vlSelf->__VdfgTmp_hf38bb500__0 = 0;
    vlSelf->__VdfgTmp_h00eda6f4__0 = 0;
    vlSelf->__VdfgTmp_h2b674654__0 = 0;
    vlSelf->__VdfgTmp_h98f43db0__0 = 0;
    vlSelf->__VdfgTmp_h8ea7dc66__0 = 0;
    vlSelf->__VdfgTmp_h51dd4909__0 = 0;
    vlSelf->__VdfgTmp_h697ef392__0 = 0;
    vlSelf->__VdfgTmp_he5d5adf7__0 = 0;
    vlSelf->__VdfgTmp_ha4c128de__0 = 0;
    vlSelf->__VdfgTmp_h15068167__0 = 0;
    vlSelf->__VdfgTmp_hab4a3fa4__0 = 0;
    vlSelf->__VdfgTmp_h1b971e58__0 = 0;
    vlSelf->__VdfgTmp_hca14ef16__0 = 0;
    vlSelf->__VdfgTmp_h0ed41778__0 = 0;
    vlSelf->__VdfgTmp_h350fb0c9__0 = 0;
    vlSelf->__VdfgTmp_h00c7774b__0 = 0;
    vlSelf->__VdfgTmp_h5ffc93a5__0 = 0;
    vlSelf->__VdfgTmp_h0a0ffdab__0 = 0;
    vlSelf->__VdfgTmp_hf79b9de3__0 = 0;
    vlSelf->__VdfgTmp_hf7ee08e9__0 = 0;
    vlSelf->__VdfgTmp_h6e577051__0 = 0;
    vlSelf->__VdfgTmp_h37e33924__0 = 0;
    vlSelf->__VdfgTmp_hece3181c__0 = 0;
}
