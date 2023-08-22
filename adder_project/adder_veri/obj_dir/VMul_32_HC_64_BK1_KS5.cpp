// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Model implementation (design independent parts)

#include "VMul_32_HC_64_BK1_KS5.h"
#include "VMul_32_HC_64_BK1_KS5__Syms.h"

//============================================================
// Constructors

VMul_32_HC_64_BK1_KS5::VMul_32_HC_64_BK1_KS5(VerilatedContext* _vcontextp__, const char* _vcname__)
    : VerilatedModel{*_vcontextp__}
    , vlSymsp{new VMul_32_HC_64_BK1_KS5__Syms(contextp(), _vcname__, this)}
    , clk{vlSymsp->TOP.clk}
    , cin{vlSymsp->TOP.cin}
    , cout{vlSymsp->TOP.cout}
    , rst{vlSymsp->TOP.rst}
    , Mul_32_HC_64_BK1_KS5__02Ea{vlSymsp->TOP.Mul_32_HC_64_BK1_KS5__02Ea}
    , Mul_32_HC_64_BK1_KS5__02Eb{vlSymsp->TOP.Mul_32_HC_64_BK1_KS5__02Eb}
    , HC_64_BK1_KS5_top__02Ea{vlSymsp->TOP.HC_64_BK1_KS5_top__02Ea}
    , HC_64_BK1_KS5_top__02Eb{vlSymsp->TOP.HC_64_BK1_KS5_top__02Eb}
    , sum{vlSymsp->TOP.sum}
    , out{vlSymsp->TOP.out}
    , __PVT__HC_64_BK1_KS5_top__DOT__u0{vlSymsp->TOP.__PVT__HC_64_BK1_KS5_top__DOT__u0}
    , __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_0{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_0}
    , __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_1{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_1}
    , __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_2{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_2}
    , __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_3{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_3}
    , __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_4{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_4}
    , __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_5{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_5}
    , __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_6{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_6}
    , __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_7{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_7}
    , __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_8{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_8}
    , __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_9{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_9}
    , __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_10{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_10}
    , __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_11{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_11}
    , __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_12{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_12}
    , __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_13{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_13}
    , __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_14{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_14}
    , __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_15{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_15}
    , __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_16{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_16}
    , __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_17{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_17}
    , __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_18{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_18}
    , __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_19{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_19}
    , __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_20{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_20}
    , __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_21{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_21}
    , __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_22{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_22}
    , __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_23{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_23}
    , __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_24{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_24}
    , __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_25{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_25}
    , __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_26{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_26}
    , __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_27{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_27}
    , __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_28{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_28}
    , __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_29{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_29}
    , __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_30{vlSymsp->TOP.__PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_30}
    , rootp{&(vlSymsp->TOP)}
{
    // Register model with the context
    contextp()->addModel(this);
}

VMul_32_HC_64_BK1_KS5::VMul_32_HC_64_BK1_KS5(const char* _vcname__)
    : VMul_32_HC_64_BK1_KS5(Verilated::threadContextp(), _vcname__)
{
}

//============================================================
// Destructor

VMul_32_HC_64_BK1_KS5::~VMul_32_HC_64_BK1_KS5() {
    delete vlSymsp;
}

//============================================================
// Evaluation function

#ifdef VL_DEBUG
void VMul_32_HC_64_BK1_KS5___024root___eval_debug_assertions(VMul_32_HC_64_BK1_KS5___024root* vlSelf);
#endif  // VL_DEBUG
void VMul_32_HC_64_BK1_KS5___024root___eval_static(VMul_32_HC_64_BK1_KS5___024root* vlSelf);
void VMul_32_HC_64_BK1_KS5___024root___eval_initial(VMul_32_HC_64_BK1_KS5___024root* vlSelf);
void VMul_32_HC_64_BK1_KS5___024root___eval_settle(VMul_32_HC_64_BK1_KS5___024root* vlSelf);
void VMul_32_HC_64_BK1_KS5___024root___eval(VMul_32_HC_64_BK1_KS5___024root* vlSelf);

void VMul_32_HC_64_BK1_KS5::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate VMul_32_HC_64_BK1_KS5::eval_step\n"); );
#ifdef VL_DEBUG
    // Debug assertions
    VMul_32_HC_64_BK1_KS5___024root___eval_debug_assertions(&(vlSymsp->TOP));
#endif  // VL_DEBUG
    vlSymsp->__Vm_deleter.deleteAll();
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) {
        vlSymsp->__Vm_didInit = true;
        VL_DEBUG_IF(VL_DBG_MSGF("+ Initial\n"););
        VMul_32_HC_64_BK1_KS5___024root___eval_static(&(vlSymsp->TOP));
        VMul_32_HC_64_BK1_KS5___024root___eval_initial(&(vlSymsp->TOP));
        VMul_32_HC_64_BK1_KS5___024root___eval_settle(&(vlSymsp->TOP));
    }
    // MTask 0 start
    VL_DEBUG_IF(VL_DBG_MSGF("MTask0 starting\n"););
    Verilated::mtaskId(0);
    VL_DEBUG_IF(VL_DBG_MSGF("+ Eval\n"););
    VMul_32_HC_64_BK1_KS5___024root___eval(&(vlSymsp->TOP));
    // Evaluate cleanup
    Verilated::endOfThreadMTask(vlSymsp->__Vm_evalMsgQp);
    Verilated::endOfEval(vlSymsp->__Vm_evalMsgQp);
}

//============================================================
// Events and timing
bool VMul_32_HC_64_BK1_KS5::eventsPending() { return false; }

uint64_t VMul_32_HC_64_BK1_KS5::nextTimeSlot() {
    VL_FATAL_MT(__FILE__, __LINE__, "", "%Error: No delays in the design");
    return 0;
}

//============================================================
// Utilities

const char* VMul_32_HC_64_BK1_KS5::name() const {
    return vlSymsp->name();
}

//============================================================
// Invoke final blocks

void VMul_32_HC_64_BK1_KS5___024root___eval_final(VMul_32_HC_64_BK1_KS5___024root* vlSelf);

VL_ATTR_COLD void VMul_32_HC_64_BK1_KS5::final() {
    VMul_32_HC_64_BK1_KS5___024root___eval_final(&(vlSymsp->TOP));
}

//============================================================
// Implementations of abstract methods from VerilatedModel

const char* VMul_32_HC_64_BK1_KS5::hierName() const { return vlSymsp->name(); }
const char* VMul_32_HC_64_BK1_KS5::modelName() const { return "VMul_32_HC_64_BK1_KS5"; }
unsigned VMul_32_HC_64_BK1_KS5::threads() const { return 1; }
