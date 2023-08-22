// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Model implementation (design independent parts)

#include "VMul_32_Hybrid_64_BK5_SA1.h"
#include "VMul_32_Hybrid_64_BK5_SA1__Syms.h"

//============================================================
// Constructors

VMul_32_Hybrid_64_BK5_SA1::VMul_32_Hybrid_64_BK5_SA1(VerilatedContext* _vcontextp__, const char* _vcname__)
    : VerilatedModel{*_vcontextp__}
    , vlSymsp{new VMul_32_Hybrid_64_BK5_SA1__Syms(contextp(), _vcname__, this)}
    , a{vlSymsp->TOP.a}
    , b{vlSymsp->TOP.b}
    , out{vlSymsp->TOP.out}
    , __PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_0{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_0}
    , __PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_1{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_1}
    , __PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_2{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_2}
    , __PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_3{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_3}
    , __PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_4{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_4}
    , __PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_5{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_5}
    , __PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_6{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_6}
    , __PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_7{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_7}
    , __PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_8{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_8}
    , __PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_9{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_9}
    , __PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_10{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_10}
    , __PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_11{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_11}
    , __PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_12{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_12}
    , __PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_13{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_13}
    , __PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_14{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_14}
    , __PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_15{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_15}
    , __PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_16{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_16}
    , __PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_17{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_17}
    , __PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_18{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_18}
    , __PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_19{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_19}
    , __PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_20{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_20}
    , __PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_21{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_21}
    , __PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_22{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_22}
    , __PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_23{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_23}
    , __PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_24{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_24}
    , __PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_25{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_25}
    , __PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_26{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_26}
    , __PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_27{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_27}
    , __PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_28{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_28}
    , __PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_29{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_29}
    , __PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_30{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK5_SA1__DOT__Hybrid_64_BK5_SA1_30}
    , rootp{&(vlSymsp->TOP)}
{
    // Register model with the context
    contextp()->addModel(this);
}

VMul_32_Hybrid_64_BK5_SA1::VMul_32_Hybrid_64_BK5_SA1(const char* _vcname__)
    : VMul_32_Hybrid_64_BK5_SA1(Verilated::threadContextp(), _vcname__)
{
}

//============================================================
// Destructor

VMul_32_Hybrid_64_BK5_SA1::~VMul_32_Hybrid_64_BK5_SA1() {
    delete vlSymsp;
}

//============================================================
// Evaluation function

#ifdef VL_DEBUG
void VMul_32_Hybrid_64_BK5_SA1___024root___eval_debug_assertions(VMul_32_Hybrid_64_BK5_SA1___024root* vlSelf);
#endif  // VL_DEBUG
void VMul_32_Hybrid_64_BK5_SA1___024root___eval_static(VMul_32_Hybrid_64_BK5_SA1___024root* vlSelf);
void VMul_32_Hybrid_64_BK5_SA1___024root___eval_initial(VMul_32_Hybrid_64_BK5_SA1___024root* vlSelf);
void VMul_32_Hybrid_64_BK5_SA1___024root___eval_settle(VMul_32_Hybrid_64_BK5_SA1___024root* vlSelf);
void VMul_32_Hybrid_64_BK5_SA1___024root___eval(VMul_32_Hybrid_64_BK5_SA1___024root* vlSelf);

void VMul_32_Hybrid_64_BK5_SA1::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate VMul_32_Hybrid_64_BK5_SA1::eval_step\n"); );
#ifdef VL_DEBUG
    // Debug assertions
    VMul_32_Hybrid_64_BK5_SA1___024root___eval_debug_assertions(&(vlSymsp->TOP));
#endif  // VL_DEBUG
    vlSymsp->__Vm_deleter.deleteAll();
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) {
        vlSymsp->__Vm_didInit = true;
        VL_DEBUG_IF(VL_DBG_MSGF("+ Initial\n"););
        VMul_32_Hybrid_64_BK5_SA1___024root___eval_static(&(vlSymsp->TOP));
        VMul_32_Hybrid_64_BK5_SA1___024root___eval_initial(&(vlSymsp->TOP));
        VMul_32_Hybrid_64_BK5_SA1___024root___eval_settle(&(vlSymsp->TOP));
    }
    // MTask 0 start
    VL_DEBUG_IF(VL_DBG_MSGF("MTask0 starting\n"););
    Verilated::mtaskId(0);
    VL_DEBUG_IF(VL_DBG_MSGF("+ Eval\n"););
    VMul_32_Hybrid_64_BK5_SA1___024root___eval(&(vlSymsp->TOP));
    // Evaluate cleanup
    Verilated::endOfThreadMTask(vlSymsp->__Vm_evalMsgQp);
    Verilated::endOfEval(vlSymsp->__Vm_evalMsgQp);
}

//============================================================
// Events and timing
bool VMul_32_Hybrid_64_BK5_SA1::eventsPending() { return false; }

uint64_t VMul_32_Hybrid_64_BK5_SA1::nextTimeSlot() {
    VL_FATAL_MT(__FILE__, __LINE__, "", "%Error: No delays in the design");
    return 0;
}

//============================================================
// Utilities

const char* VMul_32_Hybrid_64_BK5_SA1::name() const {
    return vlSymsp->name();
}

//============================================================
// Invoke final blocks

void VMul_32_Hybrid_64_BK5_SA1___024root___eval_final(VMul_32_Hybrid_64_BK5_SA1___024root* vlSelf);

VL_ATTR_COLD void VMul_32_Hybrid_64_BK5_SA1::final() {
    VMul_32_Hybrid_64_BK5_SA1___024root___eval_final(&(vlSymsp->TOP));
}

//============================================================
// Implementations of abstract methods from VerilatedModel

const char* VMul_32_Hybrid_64_BK5_SA1::hierName() const { return vlSymsp->name(); }
const char* VMul_32_Hybrid_64_BK5_SA1::modelName() const { return "VMul_32_Hybrid_64_BK5_SA1"; }
unsigned VMul_32_Hybrid_64_BK5_SA1::threads() const { return 1; }
