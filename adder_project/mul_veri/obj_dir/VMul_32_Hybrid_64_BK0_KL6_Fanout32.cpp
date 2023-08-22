// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Model implementation (design independent parts)

#include "VMul_32_Hybrid_64_BK0_KL6_Fanout32.h"
#include "VMul_32_Hybrid_64_BK0_KL6_Fanout32__Syms.h"

//============================================================
// Constructors

VMul_32_Hybrid_64_BK0_KL6_Fanout32::VMul_32_Hybrid_64_BK0_KL6_Fanout32(VerilatedContext* _vcontextp__, const char* _vcname__)
    : VerilatedModel{*_vcontextp__}
    , vlSymsp{new VMul_32_Hybrid_64_BK0_KL6_Fanout32__Syms(contextp(), _vcname__, this)}
    , a{vlSymsp->TOP.a}
    , b{vlSymsp->TOP.b}
    , out{vlSymsp->TOP.out}
    , __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_0{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_0}
    , __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_1{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_1}
    , __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_2{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_2}
    , __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_3{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_3}
    , __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_4{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_4}
    , __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_5{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_5}
    , __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_6{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_6}
    , __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_7{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_7}
    , __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_8{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_8}
    , __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_9{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_9}
    , __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_10{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_10}
    , __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_11{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_11}
    , __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_12{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_12}
    , __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_13{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_13}
    , __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_14{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_14}
    , __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_15{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_15}
    , __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_16{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_16}
    , __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_17{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_17}
    , __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_18{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_18}
    , __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_19{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_19}
    , __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_20{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_20}
    , __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_21{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_21}
    , __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_22{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_22}
    , __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_23{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_23}
    , __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_24{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_24}
    , __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_25{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_25}
    , __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_26{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_26}
    , __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_27{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_27}
    , __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_28{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_28}
    , __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_29{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_29}
    , __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_30{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_30}
    , rootp{&(vlSymsp->TOP)}
{
    // Register model with the context
    contextp()->addModel(this);
}

VMul_32_Hybrid_64_BK0_KL6_Fanout32::VMul_32_Hybrid_64_BK0_KL6_Fanout32(const char* _vcname__)
    : VMul_32_Hybrid_64_BK0_KL6_Fanout32(Verilated::threadContextp(), _vcname__)
{
}

//============================================================
// Destructor

VMul_32_Hybrid_64_BK0_KL6_Fanout32::~VMul_32_Hybrid_64_BK0_KL6_Fanout32() {
    delete vlSymsp;
}

//============================================================
// Evaluation function

#ifdef VL_DEBUG
void VMul_32_Hybrid_64_BK0_KL6_Fanout32___024root___eval_debug_assertions(VMul_32_Hybrid_64_BK0_KL6_Fanout32___024root* vlSelf);
#endif  // VL_DEBUG
void VMul_32_Hybrid_64_BK0_KL6_Fanout32___024root___eval_static(VMul_32_Hybrid_64_BK0_KL6_Fanout32___024root* vlSelf);
void VMul_32_Hybrid_64_BK0_KL6_Fanout32___024root___eval_initial(VMul_32_Hybrid_64_BK0_KL6_Fanout32___024root* vlSelf);
void VMul_32_Hybrid_64_BK0_KL6_Fanout32___024root___eval_settle(VMul_32_Hybrid_64_BK0_KL6_Fanout32___024root* vlSelf);
void VMul_32_Hybrid_64_BK0_KL6_Fanout32___024root___eval(VMul_32_Hybrid_64_BK0_KL6_Fanout32___024root* vlSelf);

void VMul_32_Hybrid_64_BK0_KL6_Fanout32::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate VMul_32_Hybrid_64_BK0_KL6_Fanout32::eval_step\n"); );
#ifdef VL_DEBUG
    // Debug assertions
    VMul_32_Hybrid_64_BK0_KL6_Fanout32___024root___eval_debug_assertions(&(vlSymsp->TOP));
#endif  // VL_DEBUG
    vlSymsp->__Vm_deleter.deleteAll();
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) {
        vlSymsp->__Vm_didInit = true;
        VL_DEBUG_IF(VL_DBG_MSGF("+ Initial\n"););
        VMul_32_Hybrid_64_BK0_KL6_Fanout32___024root___eval_static(&(vlSymsp->TOP));
        VMul_32_Hybrid_64_BK0_KL6_Fanout32___024root___eval_initial(&(vlSymsp->TOP));
        VMul_32_Hybrid_64_BK0_KL6_Fanout32___024root___eval_settle(&(vlSymsp->TOP));
    }
    // MTask 0 start
    VL_DEBUG_IF(VL_DBG_MSGF("MTask0 starting\n"););
    Verilated::mtaskId(0);
    VL_DEBUG_IF(VL_DBG_MSGF("+ Eval\n"););
    VMul_32_Hybrid_64_BK0_KL6_Fanout32___024root___eval(&(vlSymsp->TOP));
    // Evaluate cleanup
    Verilated::endOfThreadMTask(vlSymsp->__Vm_evalMsgQp);
    Verilated::endOfEval(vlSymsp->__Vm_evalMsgQp);
}

//============================================================
// Events and timing
bool VMul_32_Hybrid_64_BK0_KL6_Fanout32::eventsPending() { return false; }

uint64_t VMul_32_Hybrid_64_BK0_KL6_Fanout32::nextTimeSlot() {
    VL_FATAL_MT(__FILE__, __LINE__, "", "%Error: No delays in the design");
    return 0;
}

//============================================================
// Utilities

const char* VMul_32_Hybrid_64_BK0_KL6_Fanout32::name() const {
    return vlSymsp->name();
}

//============================================================
// Invoke final blocks

void VMul_32_Hybrid_64_BK0_KL6_Fanout32___024root___eval_final(VMul_32_Hybrid_64_BK0_KL6_Fanout32___024root* vlSelf);

VL_ATTR_COLD void VMul_32_Hybrid_64_BK0_KL6_Fanout32::final() {
    VMul_32_Hybrid_64_BK0_KL6_Fanout32___024root___eval_final(&(vlSymsp->TOP));
}

//============================================================
// Implementations of abstract methods from VerilatedModel

const char* VMul_32_Hybrid_64_BK0_KL6_Fanout32::hierName() const { return vlSymsp->name(); }
const char* VMul_32_Hybrid_64_BK0_KL6_Fanout32::modelName() const { return "VMul_32_Hybrid_64_BK0_KL6_Fanout32"; }
unsigned VMul_32_Hybrid_64_BK0_KL6_Fanout32::threads() const { return 1; }
