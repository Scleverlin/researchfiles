// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VHC_8_BK0_KS3.h for the primary calling header

#include "verilated.h"

#include "VHC_8_BK0_KS3__Syms.h"
#include "VHC_8_BK0_KS3___024root.h"

VL_INLINE_OPT void VHC_8_BK0_KS3___024root___ico_sequent__TOP__0(VHC_8_BK0_KS3___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_8_BK0_KS3__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_8_BK0_KS3___024root___ico_sequent__TOP__0\n"); );
    // Body
    vlSelf->__VdfgTmp_hecee864b__0 = ((IData)(vlSelf->a) 
                                      & (IData)(vlSelf->b));
    vlSelf->__VdfgTmp_h37e6ab0d__0 = ((IData)(vlSelf->a) 
                                      ^ (IData)(vlSelf->b));
    vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_h6f1acb74__0 
        = (IData)((0xcU == (0xcU & (IData)(vlSelf->__VdfgTmp_h37e6ab0d__0))));
    vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_h69184624__0 
        = (IData)((0x30U == (0x30U & (IData)(vlSelf->__VdfgTmp_h37e6ab0d__0))));
    vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_hac67cd56__0 
        = (1U & (((IData)(vlSelf->__VdfgTmp_hecee864b__0) 
                  >> 3U) | (((IData)(vlSelf->__VdfgTmp_h37e6ab0d__0) 
                             >> 3U) & ((IData)(vlSelf->__VdfgTmp_hecee864b__0) 
                                       >> 2U))));
    vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_h76aa7215__0 
        = (IData)((3U == (3U & (IData)(vlSelf->__VdfgTmp_h37e6ab0d__0))));
    vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_he565380d__0 
        = (1U & (((IData)(vlSelf->__VdfgTmp_hecee864b__0) 
                  >> 1U) | (((IData)(vlSelf->__VdfgTmp_h37e6ab0d__0) 
                             >> 1U) & (IData)(vlSelf->__VdfgTmp_hecee864b__0))));
    vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_h6600f75e__0 
        = (IData)((0x18U == (0x18U & (IData)(vlSelf->__VdfgTmp_h37e6ab0d__0))));
    vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_h69dd0221__0 
        = (IData)((0x60U == (0x60U & (IData)(vlSelf->__VdfgTmp_h37e6ab0d__0))));
    vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_h51a16d14__0 
        = (1U & (((IData)(vlSelf->__VdfgTmp_hecee864b__0) 
                  >> 4U) | (((IData)(vlSelf->__VdfgTmp_h37e6ab0d__0) 
                             >> 4U) & ((IData)(vlSelf->__VdfgTmp_hecee864b__0) 
                                       >> 3U))));
    vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_h74194960__0 
        = (IData)((6U == (6U & (IData)(vlSelf->__VdfgTmp_h37e6ab0d__0))));
    vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_h298e4177__0 
        = (1U & (((IData)(vlSelf->__VdfgTmp_hecee864b__0) 
                  >> 2U) | (((IData)(vlSelf->__VdfgTmp_h37e6ab0d__0) 
                             >> 2U) & ((IData)(vlSelf->__VdfgTmp_hecee864b__0) 
                                       >> 1U))));
    vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_he4db5a5d__0 
        = (1U & ((IData)(vlSelf->__VdfgTmp_hecee864b__0) 
                 | ((IData)(vlSelf->__VdfgTmp_h37e6ab0d__0) 
                    & (IData)(vlSelf->HC_8_BK0_KS3_top__DOT__cin_r))));
    vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_heeb61628__0 
        = ((IData)(vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_he565380d__0) 
           | ((IData)(vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_h76aa7215__0) 
              & (IData)(vlSelf->HC_8_BK0_KS3_top__DOT__cin_r)));
    vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_hf583e290__0 
        = ((IData)(vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_h298e4177__0) 
           | ((IData)(vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_h74194960__0) 
              & (IData)(vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_he4db5a5d__0)));
    vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_hedeb8924__0 
        = (1U & (((((IData)(vlSelf->__VdfgTmp_hecee864b__0) 
                    >> 6U) | (((IData)(vlSelf->__VdfgTmp_h37e6ab0d__0) 
                               >> 6U) & ((IData)(vlSelf->__VdfgTmp_hecee864b__0) 
                                         >> 5U))) | 
                  ((IData)(vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_h69dd0221__0) 
                   & (IData)(vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_h51a16d14__0))) 
                 | (((IData)(vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_h69dd0221__0) 
                     & (IData)(vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_h6600f75e__0)) 
                    & (IData)(vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_hf583e290__0))));
}

void VHC_8_BK0_KS3___024root___eval_ico(VHC_8_BK0_KS3___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_8_BK0_KS3__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_8_BK0_KS3___024root___eval_ico\n"); );
    // Body
    if ((1ULL & vlSelf->__VicoTriggered.word(0U))) {
        VHC_8_BK0_KS3___024root___ico_sequent__TOP__0(vlSelf);
    }
}

void VHC_8_BK0_KS3___024root___eval_act(VHC_8_BK0_KS3___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_8_BK0_KS3__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_8_BK0_KS3___024root___eval_act\n"); );
}

VL_INLINE_OPT void VHC_8_BK0_KS3___024root___nba_sequent__TOP__0(VHC_8_BK0_KS3___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_8_BK0_KS3__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_8_BK0_KS3___024root___nba_sequent__TOP__0\n"); );
    // Body
    vlSelf->cout = (1U & ((~ (IData)(vlSelf->rst)) 
                          & (((IData)(vlSelf->__VdfgTmp_hecee864b__0) 
                              >> 7U) | (((IData)(vlSelf->__VdfgTmp_h37e6ab0d__0) 
                                         >> 7U) & (IData)(vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_hedeb8924__0)))));
    vlSelf->sum = ((IData)(vlSelf->rst) ? 0U : (((IData)(
                                                         (((IData)(vlSelf->__VdfgTmp_h37e6ab0d__0) 
                                                           >> 7U) 
                                                          ^ (IData)(vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_hedeb8924__0))) 
                                                 << 7U) 
                                                | ((0x40U 
                                                    & ((0xffffffc0U 
                                                        & (IData)(vlSelf->__VdfgTmp_h37e6ab0d__0)) 
                                                       ^ 
                                                       (((0xffffffc0U 
                                                          & (((IData)(vlSelf->__VdfgTmp_hecee864b__0) 
                                                              << 1U) 
                                                             | (((IData)(vlSelf->__VdfgTmp_h37e6ab0d__0) 
                                                                 << 1U) 
                                                                & ((IData)(vlSelf->__VdfgTmp_hecee864b__0) 
                                                                   << 2U)))) 
                                                         | (((IData)(vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_h69184624__0) 
                                                             & (IData)(vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_hac67cd56__0)) 
                                                            << 6U)) 
                                                        | ((((IData)(vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_h69184624__0) 
                                                             & (IData)(vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_h6f1acb74__0)) 
                                                            & (IData)(vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_heeb61628__0)) 
                                                           << 6U)))) 
                                                   | ((0x20U 
                                                       & ((0xffffffe0U 
                                                           & (IData)(vlSelf->__VdfgTmp_h37e6ab0d__0)) 
                                                          ^ 
                                                          ((((IData)(vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_h51a16d14__0) 
                                                             | ((IData)(vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_h6600f75e__0) 
                                                                & (IData)(vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_h298e4177__0))) 
                                                            | (((IData)(vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_h6600f75e__0) 
                                                                & (IData)(vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_h74194960__0)) 
                                                               & (IData)(vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_he4db5a5d__0))) 
                                                           << 5U))) 
                                                      | ((0x10U 
                                                          & ((0xfffffff0U 
                                                              & (IData)(vlSelf->__VdfgTmp_h37e6ab0d__0)) 
                                                             ^ 
                                                             ((((IData)(vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_hac67cd56__0) 
                                                                | ((IData)(vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_h6f1acb74__0) 
                                                                   & (IData)(vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_he565380d__0))) 
                                                               | (((IData)(vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_h6f1acb74__0) 
                                                                   & (IData)(vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_h76aa7215__0)) 
                                                                  & (IData)(vlSelf->HC_8_BK0_KS3_top__DOT__cin_r))) 
                                                              << 4U))) 
                                                         | ((8U 
                                                             & ((0xfffffff8U 
                                                                 & (IData)(vlSelf->__VdfgTmp_h37e6ab0d__0)) 
                                                                ^ 
                                                                ((IData)(vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_hf583e290__0) 
                                                                 << 3U))) 
                                                            | ((4U 
                                                                & ((0xfffffffcU 
                                                                    & (IData)(vlSelf->__VdfgTmp_h37e6ab0d__0)) 
                                                                   ^ 
                                                                   ((IData)(vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_heeb61628__0) 
                                                                    << 2U))) 
                                                               | ((2U 
                                                                   & ((0xfffffffeU 
                                                                       & (IData)(vlSelf->__VdfgTmp_h37e6ab0d__0)) 
                                                                      ^ 
                                                                      ((IData)(vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_he4db5a5d__0) 
                                                                       << 1U))) 
                                                                  | (1U 
                                                                     & ((IData)(vlSelf->__VdfgTmp_h37e6ab0d__0) 
                                                                        ^ (IData)(vlSelf->HC_8_BK0_KS3_top__DOT__cin_r)))))))))));
    if ((1U & (~ (IData)(vlSelf->rst)))) {
        vlSelf->HC_8_BK0_KS3_top__DOT__cin_r = vlSelf->cin;
    }
}

VL_INLINE_OPT void VHC_8_BK0_KS3___024root___nba_sequent__TOP__1(VHC_8_BK0_KS3___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_8_BK0_KS3__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_8_BK0_KS3___024root___nba_sequent__TOP__1\n"); );
    // Body
    vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_he4db5a5d__0 
        = (1U & ((IData)(vlSelf->__VdfgTmp_hecee864b__0) 
                 | ((IData)(vlSelf->__VdfgTmp_h37e6ab0d__0) 
                    & (IData)(vlSelf->HC_8_BK0_KS3_top__DOT__cin_r))));
    vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_heeb61628__0 
        = ((IData)(vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_he565380d__0) 
           | ((IData)(vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_h76aa7215__0) 
              & (IData)(vlSelf->HC_8_BK0_KS3_top__DOT__cin_r)));
    vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_hf583e290__0 
        = ((IData)(vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_h298e4177__0) 
           | ((IData)(vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_h74194960__0) 
              & (IData)(vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_he4db5a5d__0)));
    vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_hedeb8924__0 
        = (1U & (((((IData)(vlSelf->__VdfgTmp_hecee864b__0) 
                    >> 6U) | (((IData)(vlSelf->__VdfgTmp_h37e6ab0d__0) 
                               >> 6U) & ((IData)(vlSelf->__VdfgTmp_hecee864b__0) 
                                         >> 5U))) | 
                  ((IData)(vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_h69dd0221__0) 
                   & (IData)(vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_h51a16d14__0))) 
                 | (((IData)(vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_h69dd0221__0) 
                     & (IData)(vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_h6600f75e__0)) 
                    & (IData)(vlSelf->HC_8_BK0_KS3_top__DOT__u0__DOT____VdfgTmp_hf583e290__0))));
}

void VHC_8_BK0_KS3___024root___eval_nba(VHC_8_BK0_KS3___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_8_BK0_KS3__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_8_BK0_KS3___024root___eval_nba\n"); );
    // Body
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VHC_8_BK0_KS3___024root___nba_sequent__TOP__0(vlSelf);
        VHC_8_BK0_KS3___024root___nba_sequent__TOP__1(vlSelf);
    }
}

void VHC_8_BK0_KS3___024root___eval_triggers__ico(VHC_8_BK0_KS3___024root* vlSelf);
#ifdef VL_DEBUG
VL_ATTR_COLD void VHC_8_BK0_KS3___024root___dump_triggers__ico(VHC_8_BK0_KS3___024root* vlSelf);
#endif  // VL_DEBUG
void VHC_8_BK0_KS3___024root___eval_triggers__act(VHC_8_BK0_KS3___024root* vlSelf);
#ifdef VL_DEBUG
VL_ATTR_COLD void VHC_8_BK0_KS3___024root___dump_triggers__act(VHC_8_BK0_KS3___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void VHC_8_BK0_KS3___024root___dump_triggers__nba(VHC_8_BK0_KS3___024root* vlSelf);
#endif  // VL_DEBUG

void VHC_8_BK0_KS3___024root___eval(VHC_8_BK0_KS3___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_8_BK0_KS3__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_8_BK0_KS3___024root___eval\n"); );
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
        VHC_8_BK0_KS3___024root___eval_triggers__ico(vlSelf);
        if (vlSelf->__VicoTriggered.any()) {
            __VicoContinue = 1U;
            if (VL_UNLIKELY((0x64U < vlSelf->__VicoIterCount))) {
#ifdef VL_DEBUG
                VHC_8_BK0_KS3___024root___dump_triggers__ico(vlSelf);
#endif
                VL_FATAL_MT("/home/shi/research/adder_project/adder_gen/HC_8_BK0_KS3.v", 3, "", "Input combinational region did not converge.");
            }
            vlSelf->__VicoIterCount = ((IData)(1U) 
                                       + vlSelf->__VicoIterCount);
            VHC_8_BK0_KS3___024root___eval_ico(vlSelf);
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
            VHC_8_BK0_KS3___024root___eval_triggers__act(vlSelf);
            if (vlSelf->__VactTriggered.any()) {
                vlSelf->__VactContinue = 1U;
                if (VL_UNLIKELY((0x64U < vlSelf->__VactIterCount))) {
#ifdef VL_DEBUG
                    VHC_8_BK0_KS3___024root___dump_triggers__act(vlSelf);
#endif
                    VL_FATAL_MT("/home/shi/research/adder_project/adder_gen/HC_8_BK0_KS3.v", 3, "", "Active region did not converge.");
                }
                vlSelf->__VactIterCount = ((IData)(1U) 
                                           + vlSelf->__VactIterCount);
                __VpreTriggered.andNot(vlSelf->__VactTriggered, vlSelf->__VnbaTriggered);
                vlSelf->__VnbaTriggered.thisOr(vlSelf->__VactTriggered);
                VHC_8_BK0_KS3___024root___eval_act(vlSelf);
            }
        }
        if (vlSelf->__VnbaTriggered.any()) {
            __VnbaContinue = 1U;
            if (VL_UNLIKELY((0x64U < __VnbaIterCount))) {
#ifdef VL_DEBUG
                VHC_8_BK0_KS3___024root___dump_triggers__nba(vlSelf);
#endif
                VL_FATAL_MT("/home/shi/research/adder_project/adder_gen/HC_8_BK0_KS3.v", 3, "", "NBA region did not converge.");
            }
            __VnbaIterCount = ((IData)(1U) + __VnbaIterCount);
            VHC_8_BK0_KS3___024root___eval_nba(vlSelf);
        }
    }
}

#ifdef VL_DEBUG
void VHC_8_BK0_KS3___024root___eval_debug_assertions(VHC_8_BK0_KS3___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VHC_8_BK0_KS3__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VHC_8_BK0_KS3___024root___eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((vlSelf->cin & 0xfeU))) {
        Verilated::overWidthError("cin");}
    if (VL_UNLIKELY((vlSelf->clk & 0xfeU))) {
        Verilated::overWidthError("clk");}
    if (VL_UNLIKELY((vlSelf->rst & 0xfeU))) {
        Verilated::overWidthError("rst");}
}
#endif  // VL_DEBUG
