// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Model implementation (design independent parts)

#include "VMul_32_HC_64_BK0_KS6.h"
#include "VMul_32_HC_64_BK0_KS6__Syms.h"

//============================================================
// Constructors

VMul_32_HC_64_BK0_KS6::VMul_32_HC_64_BK0_KS6(VerilatedContext* _vcontextp__, const char* _vcname__)
    : VerilatedModel{*_vcontextp__}
    , vlSymsp{new VMul_32_HC_64_BK0_KS6__Syms(contextp(), _vcname__, this)}
    , a{vlSymsp->TOP.a}
    , b{vlSymsp->TOP.b}
    , out{vlSymsp->TOP.out}
    , __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_0{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_0}
    , __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_1{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_1}
    , __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_2{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_2}
    , __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_3{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_3}
    , __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_4{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_4}
    , __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_5{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_5}
    , __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_6{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_6}
    , __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_7{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_7}
    , __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_8{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_8}
    , __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_9{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_9}
    , __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_10{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_10}
    , __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_11{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_11}
    , __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_12{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_12}
    , __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_13{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_13}
    , __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_14{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_14}
    , __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_15{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_15}
    , __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_16{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_16}
    , __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_17{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_17}
    , __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_18{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_18}
    , __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_19{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_19}
    , __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_20{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_20}
    , __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_21{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_21}
    , __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_22{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_22}
    , __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_23{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_23}
    , __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_24{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_24}
    , __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_25{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_25}
    , __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_26{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_26}
    , __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_27{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_27}
    , __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_28{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_28}
    , __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_29{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_29}
    , __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_30{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_30}
    , rootp{&(vlSymsp->TOP)}
{
    // Register model with the context
    contextp()->addModel(this);
}

VMul_32_HC_64_BK0_KS6::VMul_32_HC_64_BK0_KS6(const char* _vcname__)
    : VMul_32_HC_64_BK0_KS6(Verilated::threadContextp(), _vcname__)
{
}

//============================================================
// Destructor

VMul_32_HC_64_BK0_KS6::~VMul_32_HC_64_BK0_KS6() {
    delete vlSymsp;
}

//============================================================
// Evaluation function

#ifdef VL_DEBUG
void VMul_32_HC_64_BK0_KS6___024root___eval_debug_assertions(VMul_32_HC_64_BK0_KS6___024root* vlSelf);
#endif  // VL_DEBUG
void VMul_32_HC_64_BK0_KS6___024root___eval_static(VMul_32_HC_64_BK0_KS6___024root* vlSelf);
void VMul_32_HC_64_BK0_KS6___024root___eval_initial(VMul_32_HC_64_BK0_KS6___024root* vlSelf);
void VMul_32_HC_64_BK0_KS6___024root___eval_settle(VMul_32_HC_64_BK0_KS6___024root* vlSelf);
void VMul_32_HC_64_BK0_KS6___024root___eval(VMul_32_HC_64_BK0_KS6___024root* vlSelf);

void VMul_32_HC_64_BK0_KS6::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate VMul_32_HC_64_BK0_KS6::eval_step\n"); );
#ifdef VL_DEBUG
    // Debug assertions
    VMul_32_HC_64_BK0_KS6___024root___eval_debug_assertions(&(vlSymsp->TOP));
#endif  // VL_DEBUG
    vlSymsp->__Vm_deleter.deleteAll();
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) {
        vlSymsp->__Vm_didInit = true;
        VL_DEBUG_IF(VL_DBG_MSGF("+ Initial\n"););
        VMul_32_HC_64_BK0_KS6___024root___eval_static(&(vlSymsp->TOP));
        VMul_32_HC_64_BK0_KS6___024root___eval_initial(&(vlSymsp->TOP));
        VMul_32_HC_64_BK0_KS6___024root___eval_settle(&(vlSymsp->TOP));
    }
    // MTask 0 start
    VL_DEBUG_IF(VL_DBG_MSGF("MTask0 starting\n"););
    Verilated::mtaskId(0);
    VL_DEBUG_IF(VL_DBG_MSGF("+ Eval\n"););
    VMul_32_HC_64_BK0_KS6___024root___eval(&(vlSymsp->TOP));
    // Evaluate cleanup
    Verilated::endOfThreadMTask(vlSymsp->__Vm_evalMsgQp);
    Verilated::endOfEval(vlSymsp->__Vm_evalMsgQp);
}

//============================================================
// Events and timing
bool VMul_32_HC_64_BK0_KS6::eventsPending() { return false; }

uint64_t VMul_32_HC_64_BK0_KS6::nextTimeSlot() {
    VL_FATAL_MT(__FILE__, __LINE__, "", "%Error: No delays in the design");
    return 0;
}

//============================================================
// Utilities

const char* VMul_32_HC_64_BK0_KS6::name() const {
    return vlSymsp->name();
}

//============================================================
// Invoke final blocks

void VMul_32_HC_64_BK0_KS6___024root___eval_final(VMul_32_HC_64_BK0_KS6___024root* vlSelf);

VL_ATTR_COLD void VMul_32_HC_64_BK0_KS6::final() {
    VMul_32_HC_64_BK0_KS6___024root___eval_final(&(vlSymsp->TOP));
}

//============================================================
// Implementations of abstract methods from VerilatedModel

const char* VMul_32_HC_64_BK0_KS6::hierName() const { return vlSymsp->name(); }
const char* VMul_32_HC_64_BK0_KS6::modelName() const { return "VMul_32_HC_64_BK0_KS6"; }
unsigned VMul_32_HC_64_BK0_KS6::threads() const { return 1; }
