// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VHybrid_16_BK1_SA3.h for the primary calling header

#include "verilated.h"

#include "VHybrid_16_BK1_SA3__Syms.h"
#include "VHybrid_16_BK1_SA3___024root.h"

VL_INLINE_OPT void VHybrid_16_BK1_SA3___024root___ico_sequent__TOP__0(VHybrid_16_BK1_SA3___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_16_BK1_SA3__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_16_BK1_SA3___024root___ico_sequent__TOP__0\n"); );
    // Init
    CData/*0:0*/ Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h6c0ec1e0__0;
    Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h6c0ec1e0__0 = 0;
    // Body
    vlSelf->__VdfgTmp_hecee163f__0 = ((IData)(vlSelf->a) 
                                      & (IData)(vlSelf->b));
    vlSelf->__VdfgTmp_h361627f9__0 = ((IData)(vlSelf->a) 
                                      ^ (IData)(vlSelf->b));
    vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h177172a1__0 
        = (1U & (((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                  >> 0xcU) | (((IData)(vlSelf->__VdfgTmp_h361627f9__0) 
                               >> 0xcU) & ((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                                           >> 0xbU))));
    vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h5e515a86__0 
        = (IData)((0x1800U == (0x1800U & (IData)(vlSelf->__VdfgTmp_h361627f9__0))));
    vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h603f5c25__0 
        = (IData)((0x6000U == (0x6000U & (IData)(vlSelf->__VdfgTmp_h361627f9__0))));
    vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_hba910b0f__0 
        = (IData)((0x180U == (0x180U & (IData)(vlSelf->__VdfgTmp_h361627f9__0))));
    vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h61e10e23__0 
        = (1U & (((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                  >> 8U) | (((IData)(vlSelf->__VdfgTmp_h361627f9__0) 
                             >> 8U) & ((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                                       >> 7U))));
    vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h69dd0221__0 
        = (IData)((0x60U == (0x60U & (IData)(vlSelf->__VdfgTmp_h361627f9__0))));
    vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h6600f75e__0 
        = (IData)((0x18U == (0x18U & (IData)(vlSelf->__VdfgTmp_h361627f9__0))));
    vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h51a16d14__0 
        = (1U & (((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                  >> 4U) | (((IData)(vlSelf->__VdfgTmp_h361627f9__0) 
                             >> 4U) & ((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                                       >> 3U))));
    vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_he4db5a5d__0 
        = (1U & ((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                 | ((IData)(vlSelf->__VdfgTmp_h361627f9__0) 
                    & (IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__cin_r))));
    Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h6c0ec1e0__0 
        = (IData)((0x600U == (0x600U & (IData)(vlSelf->__VdfgTmp_h361627f9__0))));
    vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_he06aba82__0 
        = ((IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h603f5c25__0) 
           & (IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h5e515a86__0));
    vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_hf583e290__0 
        = (1U & ((((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                   >> 2U) | (((IData)(vlSelf->__VdfgTmp_h361627f9__0) 
                              >> 2U) & ((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                                        >> 1U))) | 
                 ((IData)((6U == (6U & (IData)(vlSelf->__VdfgTmp_h361627f9__0)))) 
                  & (IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_he4db5a5d__0))));
    vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h27c785a9__0 
        = ((IData)(Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h6c0ec1e0__0) 
           & (IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_hba910b0f__0));
    vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h417d006b__0 
        = (1U & ((((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                   >> 0xaU) | (((IData)(vlSelf->__VdfgTmp_h361627f9__0) 
                                >> 0xaU) & ((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                                            >> 9U))) 
                 | ((IData)(Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h6c0ec1e0__0) 
                    & (IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h61e10e23__0))));
    vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h9b1217bb__0 
        = ((IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h51a16d14__0) 
           | ((IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h6600f75e__0) 
              & (IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_hf583e290__0)));
    vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_hedeb8924__0 
        = (1U & (((((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                    >> 6U) | (((IData)(vlSelf->__VdfgTmp_h361627f9__0) 
                               >> 6U) & ((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                                         >> 5U))) | 
                  ((IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h69dd0221__0) 
                   & (IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h51a16d14__0))) 
                 | (((IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h69dd0221__0) 
                     & (IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h6600f75e__0)) 
                    & (IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_hf583e290__0))));
    vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h94b6b4e1__0 
        = ((IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h417d006b__0) 
           | ((IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h27c785a9__0) 
              & (IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_hedeb8924__0)));
    vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_ha6a8f8df__0 
        = ((IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h61e10e23__0) 
           | ((IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_hba910b0f__0) 
              & (IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_hedeb8924__0)));
    vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_ha2ad985b__0 
        = (((IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h177172a1__0) 
            | ((IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h5e515a86__0) 
               & (IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h417d006b__0))) 
           | (((IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h5e515a86__0) 
               & (IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h27c785a9__0)) 
              & (IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_hedeb8924__0)));
    vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_head9933d__0 
        = (1U & ((((((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                     >> 0xeU) | (((IData)(vlSelf->__VdfgTmp_h361627f9__0) 
                                  >> 0xeU) & ((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                                              >> 0xdU))) 
                   | ((IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h603f5c25__0) 
                      & (IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h177172a1__0))) 
                  | ((IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_he06aba82__0) 
                     & (IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h417d006b__0))) 
                 | (((IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_he06aba82__0) 
                     & (IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h27c785a9__0)) 
                    & (IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_hedeb8924__0))));
}

void VHybrid_16_BK1_SA3___024root___eval_ico(VHybrid_16_BK1_SA3___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_16_BK1_SA3__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_16_BK1_SA3___024root___eval_ico\n"); );
    // Body
    if ((1ULL & vlSelf->__VicoTriggered.word(0U))) {
        VHybrid_16_BK1_SA3___024root___ico_sequent__TOP__0(vlSelf);
    }
}

void VHybrid_16_BK1_SA3___024root___eval_act(VHybrid_16_BK1_SA3___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_16_BK1_SA3__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_16_BK1_SA3___024root___eval_act\n"); );
}

VL_INLINE_OPT void VHybrid_16_BK1_SA3___024root___nba_sequent__TOP__0(VHybrid_16_BK1_SA3___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_16_BK1_SA3__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_16_BK1_SA3___024root___nba_sequent__TOP__0\n"); );
    // Body
    vlSelf->cout = (1U & ((~ (IData)(vlSelf->rst)) 
                          & (((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                              >> 0xfU) | (((IData)(vlSelf->__VdfgTmp_h361627f9__0) 
                                           >> 0xfU) 
                                          & (IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_head9933d__0)))));
    vlSelf->sum = ((IData)(vlSelf->rst) ? 0U : ((IData)(vlSelf->__VdfgTmp_h361627f9__0) 
                                                ^ (
                                                   ((IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_head9933d__0) 
                                                    << 0xfU) 
                                                   | ((0x4000U 
                                                       & (((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                                                           << 1U) 
                                                          | (((IData)(vlSelf->__VdfgTmp_h361627f9__0) 
                                                              << 1U) 
                                                             & ((IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_ha2ad985b__0) 
                                                                << 0xeU)))) 
                                                      | (((IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_ha2ad985b__0) 
                                                          << 0xdU) 
                                                         | ((0x1000U 
                                                             & (((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                                                                 << 1U) 
                                                                | (((IData)(vlSelf->__VdfgTmp_h361627f9__0) 
                                                                    << 1U) 
                                                                   & ((IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h94b6b4e1__0) 
                                                                      << 0xcU)))) 
                                                            | (((IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h94b6b4e1__0) 
                                                                << 0xbU) 
                                                               | ((0x400U 
                                                                   & (((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                                                                       << 1U) 
                                                                      | (((IData)(vlSelf->__VdfgTmp_h361627f9__0) 
                                                                          << 1U) 
                                                                         & ((IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_ha6a8f8df__0) 
                                                                            << 0xaU)))) 
                                                                  | (((IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_ha6a8f8df__0) 
                                                                      << 9U) 
                                                                     | ((0x100U 
                                                                         & (((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                                                                             << 1U) 
                                                                            | (((IData)(vlSelf->__VdfgTmp_h361627f9__0) 
                                                                                << 1U) 
                                                                               & ((IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_hedeb8924__0) 
                                                                                << 8U)))) 
                                                                        | (((IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_hedeb8924__0) 
                                                                            << 7U) 
                                                                           | ((0x40U 
                                                                               & (((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                                                                                << 1U) 
                                                                                | (((IData)(vlSelf->__VdfgTmp_h361627f9__0) 
                                                                                << 1U) 
                                                                                & ((IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h9b1217bb__0) 
                                                                                << 6U)))) 
                                                                              | (((IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h9b1217bb__0) 
                                                                                << 5U) 
                                                                                | ((0x10U 
                                                                                & (((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                                                                                << 1U) 
                                                                                | (((IData)(vlSelf->__VdfgTmp_h361627f9__0) 
                                                                                << 1U) 
                                                                                & ((IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_hf583e290__0) 
                                                                                << 4U)))) 
                                                                                | (((IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_hf583e290__0) 
                                                                                << 3U) 
                                                                                | ((4U 
                                                                                & (((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                                                                                << 1U) 
                                                                                | (((IData)(vlSelf->__VdfgTmp_h361627f9__0) 
                                                                                << 1U) 
                                                                                & ((IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_he4db5a5d__0) 
                                                                                << 2U)))) 
                                                                                | (((IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_he4db5a5d__0) 
                                                                                << 1U) 
                                                                                | (IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__cin_r))))))))))))))))));
    if ((1U & (~ (IData)(vlSelf->rst)))) {
        vlSelf->Hybrid_16_BK1_SA3_top__DOT__cin_r = vlSelf->cin;
    }
}

VL_INLINE_OPT void VHybrid_16_BK1_SA3___024root___nba_sequent__TOP__1(VHybrid_16_BK1_SA3___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_16_BK1_SA3__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_16_BK1_SA3___024root___nba_sequent__TOP__1\n"); );
    // Body
    vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_he4db5a5d__0 
        = (1U & ((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                 | ((IData)(vlSelf->__VdfgTmp_h361627f9__0) 
                    & (IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__cin_r))));
    vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_hf583e290__0 
        = (1U & ((((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                   >> 2U) | (((IData)(vlSelf->__VdfgTmp_h361627f9__0) 
                              >> 2U) & ((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                                        >> 1U))) | 
                 ((IData)((6U == (6U & (IData)(vlSelf->__VdfgTmp_h361627f9__0)))) 
                  & (IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_he4db5a5d__0))));
    vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h9b1217bb__0 
        = ((IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h51a16d14__0) 
           | ((IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h6600f75e__0) 
              & (IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_hf583e290__0)));
    vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_hedeb8924__0 
        = (1U & (((((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                    >> 6U) | (((IData)(vlSelf->__VdfgTmp_h361627f9__0) 
                               >> 6U) & ((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                                         >> 5U))) | 
                  ((IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h69dd0221__0) 
                   & (IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h51a16d14__0))) 
                 | (((IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h69dd0221__0) 
                     & (IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h6600f75e__0)) 
                    & (IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_hf583e290__0))));
    vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h94b6b4e1__0 
        = ((IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h417d006b__0) 
           | ((IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h27c785a9__0) 
              & (IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_hedeb8924__0)));
    vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_ha6a8f8df__0 
        = ((IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h61e10e23__0) 
           | ((IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_hba910b0f__0) 
              & (IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_hedeb8924__0)));
    vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_ha2ad985b__0 
        = (((IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h177172a1__0) 
            | ((IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h5e515a86__0) 
               & (IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h417d006b__0))) 
           | (((IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h5e515a86__0) 
               & (IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h27c785a9__0)) 
              & (IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_hedeb8924__0)));
    vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_head9933d__0 
        = (1U & ((((((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                     >> 0xeU) | (((IData)(vlSelf->__VdfgTmp_h361627f9__0) 
                                  >> 0xeU) & ((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                                              >> 0xdU))) 
                   | ((IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h603f5c25__0) 
                      & (IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h177172a1__0))) 
                  | ((IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_he06aba82__0) 
                     & (IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h417d006b__0))) 
                 | (((IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_he06aba82__0) 
                     & (IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_h27c785a9__0)) 
                    & (IData)(vlSelf->Hybrid_16_BK1_SA3_top__DOT__u0__DOT____VdfgTmp_hedeb8924__0))));
}

void VHybrid_16_BK1_SA3___024root___eval_nba(VHybrid_16_BK1_SA3___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_16_BK1_SA3__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_16_BK1_SA3___024root___eval_nba\n"); );
    // Body
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VHybrid_16_BK1_SA3___024root___nba_sequent__TOP__0(vlSelf);
        VHybrid_16_BK1_SA3___024root___nba_sequent__TOP__1(vlSelf);
    }
}

void VHybrid_16_BK1_SA3___024root___eval_triggers__ico(VHybrid_16_BK1_SA3___024root* vlSelf);
#ifdef VL_DEBUG
VL_ATTR_COLD void VHybrid_16_BK1_SA3___024root___dump_triggers__ico(VHybrid_16_BK1_SA3___024root* vlSelf);
#endif  // VL_DEBUG
void VHybrid_16_BK1_SA3___024root___eval_triggers__act(VHybrid_16_BK1_SA3___024root* vlSelf);
#ifdef VL_DEBUG
VL_ATTR_COLD void VHybrid_16_BK1_SA3___024root___dump_triggers__act(VHybrid_16_BK1_SA3___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void VHybrid_16_BK1_SA3___024root___dump_triggers__nba(VHybrid_16_BK1_SA3___024root* vlSelf);
#endif  // VL_DEBUG

void VHybrid_16_BK1_SA3___024root___eval(VHybrid_16_BK1_SA3___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_16_BK1_SA3__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_16_BK1_SA3___024root___eval\n"); );
    // Init
    CData/*0:0*/ __VicoContinue;
    VlTriggerVec<1> __VpreTriggered;
    IData/*31:0*/ __VnbaIterCount;
    CData/*0:0*/ __VnbaContinue;
    // Body
    vlSelf->__VicoIterCount = 0U;
    __VicoContinue = 1U;
    while (__VicoContinue) {
        __VicoContinue = 0U;
        VHybrid_16_BK1_SA3___024root___eval_triggers__ico(vlSelf);
        if (vlSelf->__VicoTriggered.any()) {
            __VicoContinue = 1U;
            if (VL_UNLIKELY((0x64U < vlSelf->__VicoIterCount))) {
#ifdef VL_DEBUG
                VHybrid_16_BK1_SA3___024root___dump_triggers__ico(vlSelf);
#endif
                VL_FATAL_MT("/home/shi/research/adder_project/adder_gen/Hybrid_16_BK1_SA3.v", 3, "", "Input combinational region did not converge.");
            }
            vlSelf->__VicoIterCount = ((IData)(1U) 
                                       + vlSelf->__VicoIterCount);
            VHybrid_16_BK1_SA3___024root___eval_ico(vlSelf);
        }
    }
    __VnbaIterCount = 0U;
    __VnbaContinue = 1U;
    while (__VnbaContinue) {
        __VnbaContinue = 0U;
        vlSelf->__VnbaTriggered.clear();
        vlSelf->__VactIterCount = 0U;
        vlSelf->__VactContinue = 1U;
        while (vlSelf->__VactContinue) {
            vlSelf->__VactContinue = 0U;
            VHybrid_16_BK1_SA3___024root___eval_triggers__act(vlSelf);
            if (vlSelf->__VactTriggered.any()) {
                vlSelf->__VactContinue = 1U;
                if (VL_UNLIKELY((0x64U < vlSelf->__VactIterCount))) {
#ifdef VL_DEBUG
                    VHybrid_16_BK1_SA3___024root___dump_triggers__act(vlSelf);
#endif
                    VL_FATAL_MT("/home/shi/research/adder_project/adder_gen/Hybrid_16_BK1_SA3.v", 3, "", "Active region did not converge.");
                }
                vlSelf->__VactIterCount = ((IData)(1U) 
                                           + vlSelf->__VactIterCount);
                __VpreTriggered.andNot(vlSelf->__VactTriggered, vlSelf->__VnbaTriggered);
                vlSelf->__VnbaTriggered.thisOr(vlSelf->__VactTriggered);
                VHybrid_16_BK1_SA3___024root___eval_act(vlSelf);
            }
        }
        if (vlSelf->__VnbaTriggered.any()) {
            __VnbaContinue = 1U;
            if (VL_UNLIKELY((0x64U < __VnbaIterCount))) {
#ifdef VL_DEBUG
                VHybrid_16_BK1_SA3___024root___dump_triggers__nba(vlSelf);
#endif
                VL_FATAL_MT("/home/shi/research/adder_project/adder_gen/Hybrid_16_BK1_SA3.v", 3, "", "NBA region did not converge.");
            }
            __VnbaIterCount = ((IData)(1U) + __VnbaIterCount);
            VHybrid_16_BK1_SA3___024root___eval_nba(vlSelf);
        }
    }
}

#ifdef VL_DEBUG
void VHybrid_16_BK1_SA3___024root___eval_debug_assertions(VHybrid_16_BK1_SA3___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHybrid_16_BK1_SA3__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHybrid_16_BK1_SA3___024root___eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((vlSelf->cin & 0xfeU))) {
        Verilated::overWidthError("cin");}
    if (VL_UNLIKELY((vlSelf->clk & 0xfeU))) {
        Verilated::overWidthError("clk");}
    if (VL_UNLIKELY((vlSelf->rst & 0xfeU))) {
        Verilated::overWidthError("rst");}
}
#endif  // VL_DEBUG
