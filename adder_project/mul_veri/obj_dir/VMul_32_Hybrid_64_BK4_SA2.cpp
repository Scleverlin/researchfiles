// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Model implementation (design independent parts)

#include "VMul_32_Hybrid_64_BK4_SA2.h"
#include "VMul_32_Hybrid_64_BK4_SA2__Syms.h"

//============================================================
// Constructors

VMul_32_Hybrid_64_BK4_SA2::VMul_32_Hybrid_64_BK4_SA2(VerilatedContext* _vcontextp__, const char* _vcname__)
    : VerilatedModel{*_vcontextp__}
    , vlSymsp{new VMul_32_Hybrid_64_BK4_SA2__Syms(contextp(), _vcname__, this)}
    , a{vlSymsp->TOP.a}
    , b{vlSymsp->TOP.b}
    , out{vlSymsp->TOP.out}
    , __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_0{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_0}
    , __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_1{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_1}
    , __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_2{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_2}
    , __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_3{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_3}
    , __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_4{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_4}
    , __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_5{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_5}
    , __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_6{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_6}
    , __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_7{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_7}
    , __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_8{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_8}
    , __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_9{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_9}
    , __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_10{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_10}
    , __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_11{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_11}
    , __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_12{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_12}
    , __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_13{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_13}
    , __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_14{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_14}
    , __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_15{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_15}
    , __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_16{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_16}
    , __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_17{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_17}
    , __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_18{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_18}
    , __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_19{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_19}
    , __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_20{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_20}
    , __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_21{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_21}
    , __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_22{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_22}
    , __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_23{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_23}
    , __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_24{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_24}
    , __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_25{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_25}
    , __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_26{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_26}
    , __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_27{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_27}
    , __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_28{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_28}
    , __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_29{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_29}
    , __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_30{vlSymsp->TOP.__PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_30}
    , rootp{&(vlSymsp->TOP)}
{
    // Register model with the context
    contextp()->addModel(this);
}

VMul_32_Hybrid_64_BK4_SA2::VMul_32_Hybrid_64_BK4_SA2(const char* _vcname__)
    : VMul_32_Hybrid_64_BK4_SA2(Verilated::threadContextp(), _vcname__)
{
}

//============================================================
// Destructor

VMul_32_Hybrid_64_BK4_SA2::~VMul_32_Hybrid_64_BK4_SA2() {
    delete vlSymsp;
}

//============================================================
// Evaluation function

#ifdef VL_DEBUG
void VMul_32_Hybrid_64_BK4_SA2___024root___eval_debug_assertions(VMul_32_Hybrid_64_BK4_SA2___024root* vlSelf);
#endif  // VL_DEBUG
void VMul_32_Hybrid_64_BK4_SA2___024root___eval_static(VMul_32_Hybrid_64_BK4_SA2___024root* vlSelf);
void VMul_32_Hybrid_64_BK4_SA2___024root___eval_initial(VMul_32_Hybrid_64_BK4_SA2___024root* vlSelf);
void VMul_32_Hybrid_64_BK4_SA2___024root___eval_settle(VMul_32_Hybrid_64_BK4_SA2___024root* vlSelf);
void VMul_32_Hybrid_64_BK4_SA2___024root___eval(VMul_32_Hybrid_64_BK4_SA2___024root* vlSelf);

void VMul_32_Hybrid_64_BK4_SA2::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate VMul_32_Hybrid_64_BK4_SA2::eval_step\n"); );
#ifdef VL_DEBUG
    // Debug assertions
    VMul_32_Hybrid_64_BK4_SA2___024root___eval_debug_assertions(&(vlSymsp->TOP));
#endif  // VL_DEBUG
    vlSymsp->__Vm_deleter.deleteAll();
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) {
        vlSymsp->__Vm_didInit = true;
        VL_DEBUG_IF(VL_DBG_MSGF("+ Initial\n"););
        VMul_32_Hybrid_64_BK4_SA2___024root___eval_static(&(vlSymsp->TOP));
        VMul_32_Hybrid_64_BK4_SA2___024root___eval_initial(&(vlSymsp->TOP));
        VMul_32_Hybrid_64_BK4_SA2___024root___eval_settle(&(vlSymsp->TOP));
    }
    // MTask 0 start
    VL_DEBUG_IF(VL_DBG_MSGF("MTask0 starting\n"););
    Verilated::mtaskId(0);
    VL_DEBUG_IF(VL_DBG_MSGF("+ Eval\n"););
    VMul_32_Hybrid_64_BK4_SA2___024root___eval(&(vlSymsp->TOP));
    // Evaluate cleanup
    Verilated::endOfThreadMTask(vlSymsp->__Vm_evalMsgQp);
    Verilated::endOfEval(vlSymsp->__Vm_evalMsgQp);
}

//============================================================
// Events and timing
bool VMul_32_Hybrid_64_BK4_SA2::eventsPending() { return false; }

uint64_t VMul_32_Hybrid_64_BK4_SA2::nextTimeSlot() {
    VL_FATAL_MT(__FILE__, __LINE__, "", "%Error: No delays in the design");
    return 0;
}

//============================================================
// Utilities

const char* VMul_32_Hybrid_64_BK4_SA2::name() const {
    return vlSymsp->name();
}

//============================================================
// Invoke final blocks

void VMul_32_Hybrid_64_BK4_SA2___024root___eval_final(VMul_32_Hybrid_64_BK4_SA2___024root* vlSelf);

VL_ATTR_COLD void VMul_32_Hybrid_64_BK4_SA2::final() {
    VMul_32_Hybrid_64_BK4_SA2___024root___eval_final(&(vlSymsp->TOP));
}

//============================================================
// Implementations of abstract methods from VerilatedModel

const char* VMul_32_Hybrid_64_BK4_SA2::hierName() const { return vlSymsp->name(); }
const char* VMul_32_Hybrid_64_BK4_SA2::modelName() const { return "VMul_32_Hybrid_64_BK4_SA2"; }
unsigned VMul_32_Hybrid_64_BK4_SA2::threads() const { return 1; }
