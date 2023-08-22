// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See VMul_32_Hybrid_64_BK3_SA3.h for the primary calling header

#ifndef VERILATED_VMUL_32_HYBRID_64_BK3_SA3_HYBRID_64_BK3_SA3_H_
#define VERILATED_VMUL_32_HYBRID_64_BK3_SA3_HYBRID_64_BK3_SA3_H_  // guard

#include "verilated.h"


class VMul_32_Hybrid_64_BK3_SA3__Syms;

class alignas(VL_CACHE_LINE_BYTES) VMul_32_Hybrid_64_BK3_SA3_Hybrid_64_BK3_SA3 final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    // Anonymous structures to workaround compiler member-count bugs
    struct {
        VL_IN8(cin,0,0);
        VL_OUT8(cout,0,0);
        CData/*0:0*/ __VdfgTmp_hcb94e63d__0;
        CData/*0:0*/ __VdfgTmp_h51a16d14__0;
        CData/*0:0*/ __VdfgTmp_h6600f75e__0;
        CData/*0:0*/ __VdfgTmp_h69dd0221__0;
        CData/*0:0*/ __VdfgTmp_h61e10e23__0;
        CData/*0:0*/ __VdfgTmp_hba910b0f__0;
        CData/*0:0*/ __VdfgTmp_h177172a1__0;
        CData/*0:0*/ __VdfgTmp_h5e515a86__0;
        CData/*0:0*/ __VdfgTmp_h603f5c25__0;
        CData/*0:0*/ __VdfgTmp_he1859c1a__0;
        CData/*0:0*/ __VdfgTmp_h72837780__0;
        CData/*0:0*/ __VdfgTmp_hd3fa7237__0;
        CData/*0:0*/ __VdfgTmp_hb740abc5__0;
        CData/*0:0*/ __VdfgTmp_h6293a59b__0;
        CData/*0:0*/ __VdfgTmp_hba52ce08__0;
        CData/*0:0*/ __VdfgTmp_hd0fdd63f__0;
        CData/*0:0*/ __VdfgTmp_hb66ac527__0;
        CData/*0:0*/ __VdfgTmp_h444ca1fa__0;
        CData/*0:0*/ __VdfgTmp_hc594bf63__0;
        CData/*0:0*/ __VdfgTmp_h04c9a410__0;
        CData/*0:0*/ __VdfgTmp_h9418fdc7__0;
        CData/*0:0*/ __VdfgTmp_h15e8b2af__0;
        CData/*0:0*/ __VdfgTmp_h7e259763__0;
        CData/*0:0*/ __VdfgTmp_h79fa199e__0;
        CData/*0:0*/ __VdfgTmp_hc4b635b0__0;
        CData/*0:0*/ __VdfgTmp_h0c7b4651__0;
        CData/*0:0*/ __VdfgTmp_h7b2fb4ff__0;
        CData/*0:0*/ __VdfgTmp_h7a0496df__0;
        CData/*0:0*/ __VdfgTmp_h60ef5f1a__0;
        CData/*0:0*/ __VdfgTmp_h7e0931b2__0;
        CData/*0:0*/ __VdfgTmp_h2aa7f70a__0;
        CData/*0:0*/ __VdfgTmp_h72ebac23__0;
        CData/*0:0*/ __VdfgTmp_hd24c3501__0;
        CData/*0:0*/ __VdfgTmp_h761a3d38__0;
        CData/*0:0*/ __VdfgTmp_h6c321e91__0;
        CData/*0:0*/ __VdfgTmp_h417d006b__0;
        CData/*0:0*/ __VdfgTmp_h27c785a9__0;
        CData/*0:0*/ __VdfgTmp_he06aba82__0;
        CData/*0:0*/ __VdfgTmp_h6847d903__0;
        CData/*0:0*/ __VdfgTmp_h00035067__0;
        CData/*0:0*/ __VdfgTmp_h415b4c29__0;
        CData/*0:0*/ __VdfgTmp_h21660944__0;
        CData/*0:0*/ __VdfgTmp_h93d49bae__0;
        CData/*0:0*/ __VdfgTmp_ha7293e10__0;
        CData/*0:0*/ __VdfgTmp_h068ee91b__0;
        CData/*0:0*/ __VdfgTmp_h7a668320__0;
        CData/*0:0*/ __VdfgTmp_h1a682327__0;
        CData/*0:0*/ __VdfgTmp_h10b84258__0;
        CData/*0:0*/ __VdfgTmp_h69d37cbc__0;
        CData/*0:0*/ __VdfgTmp_h7a87c33e__0;
        CData/*0:0*/ __VdfgTmp_hd5223a50__0;
        CData/*0:0*/ __VdfgTmp_h658b89e5__0;
        CData/*0:0*/ __VdfgTmp_hb2a58510__0;
        CData/*0:0*/ __VdfgTmp_h2b8c3e07__0;
        CData/*0:0*/ __VdfgTmp_h894b9aaa__0;
        CData/*0:0*/ __VdfgTmp_hf60f5d6d__0;
        CData/*0:0*/ __VdfgTmp_h38152a26__0;
        CData/*0:0*/ __VdfgTmp_hbea07a75__0;
        CData/*0:0*/ __VdfgTmp_h306f6bb1__0;
        CData/*0:0*/ __VdfgTmp_ha9677518__0;
        CData/*0:0*/ __VdfgTmp_h1b971e58__0;
        CData/*0:0*/ __VdfgTmp_hca14ef16__0;
    };
    struct {
        CData/*0:0*/ __VdfgTmp_h6e577051__0;
        VL_IN64(a,64,1);
        VL_IN64(b,64,1);
        VL_OUT64(sum,64,1);
        QData/*63:0*/ __VdfgTmp_h37e33924__0;
        QData/*63:0*/ __VdfgTmp_hece3181c__0;
    };

    // INTERNAL VARIABLES
    VMul_32_Hybrid_64_BK3_SA3__Syms* const vlSymsp;

    // CONSTRUCTORS
    VMul_32_Hybrid_64_BK3_SA3_Hybrid_64_BK3_SA3(VMul_32_Hybrid_64_BK3_SA3__Syms* symsp, const char* v__name);
    ~VMul_32_Hybrid_64_BK3_SA3_Hybrid_64_BK3_SA3();
    VL_UNCOPYABLE(VMul_32_Hybrid_64_BK3_SA3_Hybrid_64_BK3_SA3);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard
