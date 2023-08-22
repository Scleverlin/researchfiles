// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Model implementation (design independent parts)

#include "VHC_8_BK3_KS0.h"
#include "VHC_8_BK3_KS0__Syms.h"

//============================================================
// Constructors

VHC_8_BK3_KS0::VHC_8_BK3_KS0(VerilatedContext* _vcontextp__, const char* _vcname__)
    : VerilatedModel{*_vcontextp__}
    , vlSymsp{new VHC_8_BK3_KS0__Syms(contextp(), _vcname__, this)}
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

VHC_8_BK3_KS0::VHC_8_BK3_KS0(const char* _vcname__)
    : VHC_8_BK3_KS0(Verilated::threadContextp(), _vcname__)
{
}

//============================================================
// Destructor

VHC_8_BK3_KS0::~VHC_8_BK3_KS0() {
    delete vlSymsp;
}

//============================================================
// Evaluation function

#ifdef VL_DEBUG
void VHC_8_BK3_KS0___024root___eval_debug_assertions(VHC_8_BK3_KS0___024root* vlSelf);
#endif  // VL_DEBUG
void VHC_8_BK3_KS0___024root___eval_static(VHC_8_BK3_KS0___024root* vlSelf);
void VHC_8_BK3_KS0___024root___eval_initial(VHC_8_BK3_KS0___024root* vlSelf);
void VHC_8_BK3_KS0___024root___eval_settle(VHC_8_BK3_KS0___024root* vlSelf);
void VHC_8_BK3_KS0___024root___eval(VHC_8_BK3_KS0___024root* vlSelf);

void VHC_8_BK3_KS0::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate VHC_8_BK3_KS0::eval_step\n"); );
#ifdef VL_DEBUG
    // Debug assertions
    VHC_8_BK3_KS0___024root___eval_debug_assertions(&(vlSymsp->TOP));
#endif  // VL_DEBUG
    vlSymsp->__Vm_deleter.deleteAll();
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) {
        vlSymsp->__Vm_didInit = true;
        VL_DEBUG_IF(VL_DBG_MSGF("+ Initial\n"););
        VHC_8_BK3_KS0___024root___eval_static(&(vlSymsp->TOP));
        VHC_8_BK3_KS0___024root___eval_initial(&(vlSymsp->TOP));
        VHC_8_BK3_KS0___024root___eval_settle(&(vlSymsp->TOP));
    }
    // MTask 0 start
    VL_DEBUG_IF(VL_DBG_MSGF("MTask0 starting\n"););
    Verilated::mtaskId(0);
    VL_DEBUG_IF(VL_DBG_MSGF("+ Eval\n"););
    VHC_8_BK3_KS0___024root___eval(&(vlSymsp->TOP));
    // Evaluate cleanup
    Verilated::endOfThreadMTask(vlSymsp->__Vm_evalMsgQp);
    Verilated::endOfEval(vlSymsp->__Vm_evalMsgQp);
}

//============================================================
// Events and timing
bool VHC_8_BK3_KS0::eventsPending() { return false; }

uint64_t VHC_8_BK3_KS0::nextTimeSlot() {
    VL_FATAL_MT(__FILE__, __LINE__, "", "%Error: No delays in the design");
    return 0;
}

//============================================================
// Utilities

const char* VHC_8_BK3_KS0::name() const {
    return vlSymsp->name();
}

//============================================================
// Invoke final blocks

void VHC_8_BK3_KS0___024root___eval_final(VHC_8_BK3_KS0___024root* vlSelf);

VL_ATTR_COLD void VHC_8_BK3_KS0::final() {
    VHC_8_BK3_KS0___024root___eval_final(&(vlSymsp->TOP));
}

//============================================================
// Implementations of abstract methods from VerilatedModel

const char* VHC_8_BK3_KS0::hierName() const { return vlSymsp->name(); }
const char* VHC_8_BK3_KS0::modelName() const { return "VHC_8_BK3_KS0"; }
unsigned VHC_8_BK3_KS0::threads() const { return 1; }