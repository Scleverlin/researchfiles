// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VHC_16_BK1_KS3.h for the primary calling header

#include "verilated.h"

#include "VHC_16_BK1_KS3__Syms.h"
#include "VHC_16_BK1_KS3___024root.h"

VL_INLINE_OPT void VHC_16_BK1_KS3___024root___ico_sequent__TOP__0(VHC_16_BK1_KS3___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_16_BK1_KS3__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_16_BK1_KS3___024root___ico_sequent__TOP__0\n"); );
    // Init
    CData/*0:0*/ HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h51a16d14__0;
    HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h51a16d14__0 = 0;
    CData/*0:0*/ HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h6600f75e__0;
    HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h6600f75e__0 = 0;
    CData/*0:0*/ HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_haebba59d__0;
    HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_haebba59d__0 = 0;
    CData/*0:0*/ HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h69dd0221__0;
    HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h69dd0221__0 = 0;
    CData/*0:0*/ HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h61e10e23__0;
    HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h61e10e23__0 = 0;
    CData/*0:0*/ HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_hba910b0f__0;
    HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_hba910b0f__0 = 0;
    CData/*0:0*/ HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h6c0ec1e0__0;
    HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h6c0ec1e0__0 = 0;
    // Body
    vlSelf->__VdfgTmp_hecee163f__0 = ((IData)(vlSelf->a) 
                                      & (IData)(vlSelf->b));
    vlSelf->__VdfgTmp_h361627f9__0 = ((IData)(vlSelf->a) 
                                      ^ (IData)(vlSelf->b));
    vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h177172a1__0 
        = (1U & (((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                  >> 0xcU) | (((IData)(vlSelf->__VdfgTmp_h361627f9__0) 
                               >> 0xcU) & ((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                                           >> 0xbU))));
    vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h603f5c25__0 
        = (IData)((0x6000U == (0x6000U & (IData)(vlSelf->__VdfgTmp_h361627f9__0))));
    vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h68264b72__0 
        = (1U & (((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                  >> 0xaU) | (((IData)(vlSelf->__VdfgTmp_h361627f9__0) 
                               >> 0xaU) & ((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                                           >> 9U))));
    vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h5e515a86__0 
        = (IData)((0x1800U == (0x1800U & (IData)(vlSelf->__VdfgTmp_h361627f9__0))));
    HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h61e10e23__0 
        = (1U & (((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                  >> 8U) | (((IData)(vlSelf->__VdfgTmp_h361627f9__0) 
                             >> 8U) & ((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                                       >> 7U))));
    HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_haebba59d__0 
        = (1U & (((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                  >> 6U) | (((IData)(vlSelf->__VdfgTmp_h361627f9__0) 
                             >> 6U) & ((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                                       >> 5U))));
    vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_he4db5a5d__0 
        = (1U & ((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                 | ((IData)(vlSelf->__VdfgTmp_h361627f9__0) 
                    & (IData)(vlSelf->HC_16_BK1_KS3_top__DOT__cin_r))));
    vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h74194960__0 
        = (IData)((6U == (6U & (IData)(vlSelf->__VdfgTmp_h361627f9__0))));
    vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h298e4177__0 
        = (1U & (((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                  >> 2U) | (((IData)(vlSelf->__VdfgTmp_h361627f9__0) 
                             >> 2U) & ((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                                       >> 1U))));
    HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h51a16d14__0 
        = (1U & (((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                  >> 4U) | (((IData)(vlSelf->__VdfgTmp_h361627f9__0) 
                             >> 4U) & ((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                                       >> 3U))));
    HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h6c0ec1e0__0 
        = (IData)((0x600U == (0x600U & (IData)(vlSelf->__VdfgTmp_h361627f9__0))));
    HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_hba910b0f__0 
        = (IData)((0x180U == (0x180U & (IData)(vlSelf->__VdfgTmp_h361627f9__0))));
    HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h69dd0221__0 
        = (IData)((0x60U == (0x60U & (IData)(vlSelf->__VdfgTmp_h361627f9__0))));
    HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h6600f75e__0 
        = (IData)((0x18U == (0x18U & (IData)(vlSelf->__VdfgTmp_h361627f9__0))));
    vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_he06aba82__0 
        = ((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h603f5c25__0) 
           & (IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h5e515a86__0));
    vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_hf583e290__0 
        = ((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h298e4177__0) 
           | ((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h74194960__0) 
              & (IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_he4db5a5d__0)));
    vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h1a277a74__0 
        = ((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h5e515a86__0) 
           & (IData)(HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h6c0ec1e0__0));
    vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h417d006b__0 
        = ((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h68264b72__0) 
           | ((IData)(HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h6c0ec1e0__0) 
              & (IData)(HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h61e10e23__0)));
    vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_he1d8a650__0 
        = ((IData)(HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h61e10e23__0) 
           | ((IData)(HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_hba910b0f__0) 
              & (IData)(HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_haebba59d__0)));
    vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h27c785a9__0 
        = ((IData)(HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h6c0ec1e0__0) 
           & (IData)(HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_hba910b0f__0));
    vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h75092490__0 
        = ((IData)(HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_hba910b0f__0) 
           & (IData)(HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h69dd0221__0));
    vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_hcdc2ed9d__0 
        = ((IData)(HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_haebba59d__0) 
           | ((IData)(HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h69dd0221__0) 
              & (IData)(HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h51a16d14__0)));
    vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h2c7fe75a__0 
        = ((IData)(HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h6600f75e__0) 
           & (IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h74194960__0));
    vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_hd714f642__0 
        = ((IData)(HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h51a16d14__0) 
           | ((IData)(HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h6600f75e__0) 
              & (IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h298e4177__0)));
    vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h023e990b__0 
        = ((IData)(HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h69dd0221__0) 
           & (IData)(HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h6600f75e__0));
    vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h325ea031__0 
        = (((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_he1d8a650__0) 
            | ((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h75092490__0) 
               & (IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_hd714f642__0))) 
           | (((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h75092490__0) 
               & (IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h2c7fe75a__0)) 
              & (IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_he4db5a5d__0)));
    vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h6ac2a968__0 
        = ((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_hd714f642__0) 
           | ((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h2c7fe75a__0) 
              & (IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_he4db5a5d__0)));
    vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h62fe8b34__0 
        = (((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h417d006b__0) 
            | ((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h27c785a9__0) 
               & (IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_hcdc2ed9d__0))) 
           | (((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h27c785a9__0) 
               & (IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h023e990b__0)) 
              & (IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_hf583e290__0)));
    vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_hedeb8924__0 
        = ((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_hcdc2ed9d__0) 
           | ((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h023e990b__0) 
              & (IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_hf583e290__0)));
    vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h126a63a6__0 
        = ((((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h177172a1__0) 
             | ((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h5e515a86__0) 
                & (IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h68264b72__0))) 
            | ((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h1a277a74__0) 
               & (IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_he1d8a650__0))) 
           | (((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h1a277a74__0) 
               & (IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h75092490__0)) 
              & (IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h6ac2a968__0)));
    vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_head9933d__0 
        = (1U & ((((((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                     >> 0xeU) | (((IData)(vlSelf->__VdfgTmp_h361627f9__0) 
                                  >> 0xeU) & ((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                                              >> 0xdU))) 
                   | ((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h603f5c25__0) 
                      & (IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h177172a1__0))) 
                  | ((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_he06aba82__0) 
                     & (IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h417d006b__0))) 
                 | (((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_he06aba82__0) 
                     & (IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h27c785a9__0)) 
                    & (IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_hedeb8924__0))));
}

void VHC_16_BK1_KS3___024root___eval_ico(VHC_16_BK1_KS3___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_16_BK1_KS3__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_16_BK1_KS3___024root___eval_ico\n"); );
    // Body
    if ((1ULL & vlSelf->__VicoTriggered.word(0U))) {
        VHC_16_BK1_KS3___024root___ico_sequent__TOP__0(vlSelf);
    }
}

void VHC_16_BK1_KS3___024root___eval_act(VHC_16_BK1_KS3___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_16_BK1_KS3__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_16_BK1_KS3___024root___eval_act\n"); );
}

VL_INLINE_OPT void VHC_16_BK1_KS3___024root___nba_sequent__TOP__0(VHC_16_BK1_KS3___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_16_BK1_KS3__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_16_BK1_KS3___024root___nba_sequent__TOP__0\n"); );
    // Body
    vlSelf->cout = (1U & ((~ (IData)(vlSelf->rst)) 
                          & (((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                              >> 0xfU) | (((IData)(vlSelf->__VdfgTmp_h361627f9__0) 
                                           >> 0xfU) 
                                          & (IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_head9933d__0)))));
    vlSelf->sum = ((IData)(vlSelf->rst) ? 0U : ((IData)(vlSelf->__VdfgTmp_h361627f9__0) 
                                                ^ (
                                                   ((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_head9933d__0) 
                                                    << 0xfU) 
                                                   | ((0x4000U 
                                                       & (((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                                                           << 1U) 
                                                          | (((IData)(vlSelf->__VdfgTmp_h361627f9__0) 
                                                              << 1U) 
                                                             & ((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h126a63a6__0) 
                                                                << 0xeU)))) 
                                                      | (((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h126a63a6__0) 
                                                          << 0xdU) 
                                                         | ((0x1000U 
                                                             & (((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                                                                 << 1U) 
                                                                | (((IData)(vlSelf->__VdfgTmp_h361627f9__0) 
                                                                    << 1U) 
                                                                   & ((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h62fe8b34__0) 
                                                                      << 0xcU)))) 
                                                            | (((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h62fe8b34__0) 
                                                                << 0xbU) 
                                                               | ((0x400U 
                                                                   & (((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                                                                       << 1U) 
                                                                      | (((IData)(vlSelf->__VdfgTmp_h361627f9__0) 
                                                                          << 1U) 
                                                                         & ((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h325ea031__0) 
                                                                            << 0xaU)))) 
                                                                  | (((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h325ea031__0) 
                                                                      << 9U) 
                                                                     | ((0x100U 
                                                                         & (((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                                                                             << 1U) 
                                                                            | (((IData)(vlSelf->__VdfgTmp_h361627f9__0) 
                                                                                << 1U) 
                                                                               & ((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_hedeb8924__0) 
                                                                                << 8U)))) 
                                                                        | (((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_hedeb8924__0) 
                                                                            << 7U) 
                                                                           | ((0x40U 
                                                                               & (((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                                                                                << 1U) 
                                                                                | (((IData)(vlSelf->__VdfgTmp_h361627f9__0) 
                                                                                << 1U) 
                                                                                & ((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h6ac2a968__0) 
                                                                                << 6U)))) 
                                                                              | (((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h6ac2a968__0) 
                                                                                << 5U) 
                                                                                | ((0x10U 
                                                                                & (((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                                                                                << 1U) 
                                                                                | (((IData)(vlSelf->__VdfgTmp_h361627f9__0) 
                                                                                << 1U) 
                                                                                & ((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_hf583e290__0) 
                                                                                << 4U)))) 
                                                                                | (((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_hf583e290__0) 
                                                                                << 3U) 
                                                                                | ((4U 
                                                                                & (((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                                                                                << 1U) 
                                                                                | (((IData)(vlSelf->__VdfgTmp_h361627f9__0) 
                                                                                << 1U) 
                                                                                & ((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_he4db5a5d__0) 
                                                                                << 2U)))) 
                                                                                | (((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_he4db5a5d__0) 
                                                                                << 1U) 
                                                                                | (IData)(vlSelf->HC_16_BK1_KS3_top__DOT__cin_r))))))))))))))))));
    if ((1U & (~ (IData)(vlSelf->rst)))) {
        vlSelf->HC_16_BK1_KS3_top__DOT__cin_r = vlSelf->cin;
    }
}

VL_INLINE_OPT void VHC_16_BK1_KS3___024root___nba_sequent__TOP__1(VHC_16_BK1_KS3___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_16_BK1_KS3__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_16_BK1_KS3___024root___nba_sequent__TOP__1\n"); );
    // Body
    vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_he4db5a5d__0 
        = (1U & ((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                 | ((IData)(vlSelf->__VdfgTmp_h361627f9__0) 
                    & (IData)(vlSelf->HC_16_BK1_KS3_top__DOT__cin_r))));
    vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h325ea031__0 
        = (((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_he1d8a650__0) 
            | ((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h75092490__0) 
               & (IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_hd714f642__0))) 
           | (((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h75092490__0) 
               & (IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h2c7fe75a__0)) 
              & (IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_he4db5a5d__0)));
    vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h6ac2a968__0 
        = ((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_hd714f642__0) 
           | ((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h2c7fe75a__0) 
              & (IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_he4db5a5d__0)));
    vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_hf583e290__0 
        = ((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h298e4177__0) 
           | ((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h74194960__0) 
              & (IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_he4db5a5d__0)));
    vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h126a63a6__0 
        = ((((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h177172a1__0) 
             | ((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h5e515a86__0) 
                & (IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h68264b72__0))) 
            | ((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h1a277a74__0) 
               & (IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_he1d8a650__0))) 
           | (((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h1a277a74__0) 
               & (IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h75092490__0)) 
              & (IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h6ac2a968__0)));
    vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h62fe8b34__0 
        = (((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h417d006b__0) 
            | ((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h27c785a9__0) 
               & (IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_hcdc2ed9d__0))) 
           | (((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h27c785a9__0) 
               & (IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h023e990b__0)) 
              & (IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_hf583e290__0)));
    vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_hedeb8924__0 
        = ((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_hcdc2ed9d__0) 
           | ((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h023e990b__0) 
              & (IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_hf583e290__0)));
    vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_head9933d__0 
        = (1U & ((((((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                     >> 0xeU) | (((IData)(vlSelf->__VdfgTmp_h361627f9__0) 
                                  >> 0xeU) & ((IData)(vlSelf->__VdfgTmp_hecee163f__0) 
                                              >> 0xdU))) 
                   | ((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h603f5c25__0) 
                      & (IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h177172a1__0))) 
                  | ((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_he06aba82__0) 
                     & (IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h417d006b__0))) 
                 | (((IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_he06aba82__0) 
                     & (IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_h27c785a9__0)) 
                    & (IData)(vlSelf->HC_16_BK1_KS3_top__DOT__u0__DOT____VdfgTmp_hedeb8924__0))));
}

void VHC_16_BK1_KS3___024root___eval_nba(VHC_16_BK1_KS3___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_16_BK1_KS3__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_16_BK1_KS3___024root___eval_nba\n"); );
    // Body
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VHC_16_BK1_KS3___024root___nba_sequent__TOP__0(vlSelf);
        VHC_16_BK1_KS3___024root___nba_sequent__TOP__1(vlSelf);
    }
}

void VHC_16_BK1_KS3___024root___eval_triggers__ico(VHC_16_BK1_KS3___024root* vlSelf);
#ifdef VL_DEBUG
VL_ATTR_COLD void VHC_16_BK1_KS3___024root___dump_triggers__ico(VHC_16_BK1_KS3___024root* vlSelf);
#endif  // VL_DEBUG
void VHC_16_BK1_KS3___024root___eval_triggers__act(VHC_16_BK1_KS3___024root* vlSelf);
#ifdef VL_DEBUG
VL_ATTR_COLD void VHC_16_BK1_KS3___024root___dump_triggers__act(VHC_16_BK1_KS3___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void VHC_16_BK1_KS3___024root___dump_triggers__nba(VHC_16_BK1_KS3___024root* vlSelf);
#endif  // VL_DEBUG

void VHC_16_BK1_KS3___024root___eval(VHC_16_BK1_KS3___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_16_BK1_KS3__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_16_BK1_KS3___024root___eval\n"); );
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
        VHC_16_BK1_KS3___024root___eval_triggers__ico(vlSelf);
        if (vlSelf->__VicoTriggered.any()) {
            __VicoContinue = 1U;
            if (VL_UNLIKELY((0x64U < vlSelf->__VicoIterCount))) {
#ifdef VL_DEBUG
                VHC_16_BK1_KS3___024root___dump_triggers__ico(vlSelf);
#endif
                VL_FATAL_MT("/home/shi/research/adder_project/adder_gen/HC_16_BK1_KS3.v", 3, "", "Input combinational region did not converge.");
            }
            vlSelf->__VicoIterCount = ((IData)(1U) 
                                       + vlSelf->__VicoIterCount);
            VHC_16_BK1_KS3___024root___eval_ico(vlSelf);
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
            VHC_16_BK1_KS3___024root___eval_triggers__act(vlSelf);
            if (vlSelf->__VactTriggered.any()) {
                vlSelf->__VactContinue = 1U;
                if (VL_UNLIKELY((0x64U < vlSelf->__VactIterCount))) {
#ifdef VL_DEBUG
                    VHC_16_BK1_KS3___024root___dump_triggers__act(vlSelf);
#endif
                    VL_FATAL_MT("/home/shi/research/adder_project/adder_gen/HC_16_BK1_KS3.v", 3, "", "Active region did not converge.");
                }
                vlSelf->__VactIterCount = ((IData)(1U) 
                                           + vlSelf->__VactIterCount);
                __VpreTriggered.andNot(vlSelf->__VactTriggered, vlSelf->__VnbaTriggered);
                vlSelf->__VnbaTriggered.thisOr(vlSelf->__VactTriggered);
                VHC_16_BK1_KS3___024root___eval_act(vlSelf);
            }
        }
        if (vlSelf->__VnbaTriggered.any()) {
            __VnbaContinue = 1U;
            if (VL_UNLIKELY((0x64U < __VnbaIterCount))) {
#ifdef VL_DEBUG
                VHC_16_BK1_KS3___024root___dump_triggers__nba(vlSelf);
#endif
                VL_FATAL_MT("/home/shi/research/adder_project/adder_gen/HC_16_BK1_KS3.v", 3, "", "NBA region did not converge.");
            }
            __VnbaIterCount = ((IData)(1U) + __VnbaIterCount);
            VHC_16_BK1_KS3___024root___eval_nba(vlSelf);
        }
    }
}

#ifdef VL_DEBUG
void VHC_16_BK1_KS3___024root___eval_debug_assertions(VHC_16_BK1_KS3___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_16_BK1_KS3__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_16_BK1_KS3___024root___eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((vlSelf->cin & 0xfeU))) {
        Verilated::overWidthError("cin");}
    if (VL_UNLIKELY((vlSelf->clk & 0xfeU))) {
        Verilated::overWidthError("clk");}
    if (VL_UNLIKELY((vlSelf->rst & 0xfeU))) {
        Verilated::overWidthError("rst");}
}
#endif  // VL_DEBUG
