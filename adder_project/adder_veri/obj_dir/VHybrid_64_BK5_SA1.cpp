// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Model implementation (design independent parts)

#include "VHybrid_64_BK5_SA1.h"
#include "VHybrid_64_BK5_SA1__Syms.h"

//============================================================
// Constructors

VHybrid_64_BK5_SA1::VHybrid_64_BK5_SA1(VerilatedContext* _vcontextp__, const char* _vcname__)
    : VerilatedModel{*_vcontextp__}
    , vlSymsp{new VHybrid_64_BK5_SA1__Syms(contextp(), _vcname__, this)}
    , clk{vlSymsp->TOP.clk}
    , cin{vlSymsp->TOP.cin}
    , cout{vlSymsp->TOP.cout}
    , rst{vlSymsp->TOP.rst}
    , a{vlSymsp->TOP.a}
    , b{vlSymsp->TOP.b}
    , sum{vlSymsp->TOP.sum}
    , rootp{&(vlSymsp->TOP)}
{
    // Register model with the context
    contextp()->addModel(this);
}

VHybrid_64_BK5_SA1::VHybrid_64_BK5_SA1(const char* _vcname__)
    : VHybrid_64_BK5_SA1(Verilated::threadContextp(), _vcname__)
{
}

//============================================================
// Destructor

VHybrid_64_BK5_SA1::~VHybrid_64_BK5_SA1() {
    delete vlSymsp;
}

//============================================================
// Evaluation function

#ifdef VL_DEBUG
void VHybrid_64_BK5_SA1___024root___eval_debug_assertions(VHybrid_64_BK5_SA1___024root* vlSelf);
#endif  // VL_DEBUG
void VHybrid_64_BK5_SA1___024root___eval_static(VHybrid_64_BK5_SA1___024root* vlSelf);
void VHybrid_64_BK5_SA1___024root___eval_initial(VHybrid_64_BK5_SA1___024root* vlSelf);
void VHybrid_64_BK5_SA1___024root___eval_settle(VHybrid_64_BK5_SA1___024root* vlSelf);
void VHybrid_64_BK5_SA1___024root___eval(VHybrid_64_BK5_SA1___024root* vlSelf);

void VHybrid_64_BK5_SA1::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate VHybrid_64_BK5_SA1::eval_step\n"); );
#ifdef VL_DEBUG
    // Debug assertions
    VHybrid_64_BK5_SA1___024root___eval_debug_assertions(&(vlSymsp->TOP));
#endif  // VL_DEBUG
    vlSymsp->__Vm_deleter.deleteAll();
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) {
        vlSymsp->__Vm_didInit = true;
        VL_DEBUG_IF(VL_DBG_MSGF("+ Initial\n"););
        VHybrid_64_BK5_SA1___024root___eval_static(&(vlSymsp->TOP));
        VHybrid_64_BK5_SA1___024root___eval_initial(&(vlSymsp->TOP));
        VHybrid_64_BK5_SA1___024root___eval_settle(&(vlSymsp->TOP));
    }
    // MTask 0 start
    VL_DEBUG_IF(VL_DBG_MSGF("MTask0 starting\n"););
    Verilated::mtaskId(0);
    VL_DEBUG_IF(VL_DBG_MSGF("+ Eval\n"););
    VHybrid_64_BK5_SA1___024root___eval(&(vlSymsp->TOP));
    // Evaluate cleanup
    Verilated::endOfThreadMTask(vlSymsp->__Vm_evalMsgQp);
    Verilated::endOfEval(vlSymsp->__Vm_evalMsgQp);
}

//============================================================
// Events and timing
bool VHybrid_64_BK5_SA1::eventsPending() { return false; }

uint64_t VHybrid_64_BK5_SA1::nextTimeSlot() {
    VL_FATAL_MT(__FILE__, __LINE__, "", "%Error: No delays in the design");
    return 0;
}

//============================================================
// Utilities

const char* VHybrid_64_BK5_SA1::name() const {
    return vlSymsp->name();
}

//============================================================
// Invoke final blocks

void VHybrid_64_BK5_SA1___024root___eval_final(VHybrid_64_BK5_SA1___024root* vlSelf);

VL_ATTR_COLD void VHybrid_64_BK5_SA1::final() {
    VHybrid_64_BK5_SA1___024root___eval_final(&(vlSymsp->TOP));
}

//============================================================
// Implementations of abstract methods from VerilatedModel

const char* VHybrid_64_BK5_SA1::hierName() const { return vlSymsp->name(); }
const char* VHybrid_64_BK5_SA1::modelName() const { return "VHybrid_64_BK5_SA1"; }
unsigned VHybrid_64_BK5_SA1::threads() const { return 1; }
