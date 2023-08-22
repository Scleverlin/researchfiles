// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Model implementation (design independent parts)

#include "VHybrid_8_BK1_KL2_Fanout2.h"
#include "VHybrid_8_BK1_KL2_Fanout2__Syms.h"

//============================================================
// Constructors

VHybrid_8_BK1_KL2_Fanout2::VHybrid_8_BK1_KL2_Fanout2(VerilatedContext* _vcontextp__, const char* _vcname__)
    : VerilatedModel{*_vcontextp__}
    , vlSymsp{new VHybrid_8_BK1_KL2_Fanout2__Syms(contextp(), _vcname__, this)}
    , clk{vlSymsp->TOP.clk}
    , a{vlSymsp->TOP.a}
    , b{vlSymsp->TOP.b}
    , cin{vlSymsp->TOP.cin}
    , sum{vlSymsp->TOP.sum}
    , cout{vlSymsp->TOP.cout}
    , rst{vlSymsp->TOP.rst}
    , rootp{&(vlSymsp->TOP)}
{
    // Register model with the context
    contextp()->addModel(this);
}

VHybrid_8_BK1_KL2_Fanout2::VHybrid_8_BK1_KL2_Fanout2(const char* _vcname__)
    : VHybrid_8_BK1_KL2_Fanout2(Verilated::threadContextp(), _vcname__)
{
}

//============================================================
// Destructor

VHybrid_8_BK1_KL2_Fanout2::~VHybrid_8_BK1_KL2_Fanout2() {
    delete vlSymsp;
}

//============================================================
// Evaluation function

#ifdef VL_DEBUG
void VHybrid_8_BK1_KL2_Fanout2___024root___eval_debug_assertions(VHybrid_8_BK1_KL2_Fanout2___024root* vlSelf);
#endif  // VL_DEBUG
void VHybrid_8_BK1_KL2_Fanout2___024root___eval_static(VHybrid_8_BK1_KL2_Fanout2___024root* vlSelf);
void VHybrid_8_BK1_KL2_Fanout2___024root___eval_initial(VHybrid_8_BK1_KL2_Fanout2___024root* vlSelf);
void VHybrid_8_BK1_KL2_Fanout2___024root___eval_settle(VHybrid_8_BK1_KL2_Fanout2___024root* vlSelf);
void VHybrid_8_BK1_KL2_Fanout2___024root___eval(VHybrid_8_BK1_KL2_Fanout2___024root* vlSelf);

void VHybrid_8_BK1_KL2_Fanout2::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate VHybrid_8_BK1_KL2_Fanout2::eval_step\n"); );
#ifdef VL_DEBUG
    // Debug assertions
    VHybrid_8_BK1_KL2_Fanout2___024root___eval_debug_assertions(&(vlSymsp->TOP));
#endif  // VL_DEBUG
    vlSymsp->__Vm_deleter.deleteAll();
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) {
        vlSymsp->__Vm_didInit = true;
        VL_DEBUG_IF(VL_DBG_MSGF("+ Initial\n"););
        VHybrid_8_BK1_KL2_Fanout2___024root___eval_static(&(vlSymsp->TOP));
        VHybrid_8_BK1_KL2_Fanout2___024root___eval_initial(&(vlSymsp->TOP));
        VHybrid_8_BK1_KL2_Fanout2___024root___eval_settle(&(vlSymsp->TOP));
    }
    // MTask 0 start
    VL_DEBUG_IF(VL_DBG_MSGF("MTask0 starting\n"););
    Verilated::mtaskId(0);
    VL_DEBUG_IF(VL_DBG_MSGF("+ Eval\n"););
    VHybrid_8_BK1_KL2_Fanout2___024root___eval(&(vlSymsp->TOP));
    // Evaluate cleanup
    Verilated::endOfThreadMTask(vlSymsp->__Vm_evalMsgQp);
    Verilated::endOfEval(vlSymsp->__Vm_evalMsgQp);
}

//============================================================
// Events and timing
bool VHybrid_8_BK1_KL2_Fanout2::eventsPending() { return false; }

uint64_t VHybrid_8_BK1_KL2_Fanout2::nextTimeSlot() {
    VL_FATAL_MT(__FILE__, __LINE__, "", "%Error: No delays in the design");
    return 0;
}

//============================================================
// Utilities

const char* VHybrid_8_BK1_KL2_Fanout2::name() const {
    return vlSymsp->name();
}

//============================================================
// Invoke final blocks

void VHybrid_8_BK1_KL2_Fanout2___024root___eval_final(VHybrid_8_BK1_KL2_Fanout2___024root* vlSelf);

VL_ATTR_COLD void VHybrid_8_BK1_KL2_Fanout2::final() {
    VHybrid_8_BK1_KL2_Fanout2___024root___eval_final(&(vlSymsp->TOP));
}

//============================================================
// Implementations of abstract methods from VerilatedModel

const char* VHybrid_8_BK1_KL2_Fanout2::hierName() const { return vlSymsp->name(); }
const char* VHybrid_8_BK1_KL2_Fanout2::modelName() const { return "VHybrid_8_BK1_KL2_Fanout2"; }
unsigned VHybrid_8_BK1_KL2_Fanout2::threads() const { return 1; }
