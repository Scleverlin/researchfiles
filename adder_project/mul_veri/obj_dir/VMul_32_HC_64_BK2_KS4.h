// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Primary model header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef VERILATED_VMUL_32_HC_64_BK2_KS4_H_
#define VERILATED_VMUL_32_HC_64_BK2_KS4_H_  // guard

#include "verilated.h"

class VMul_32_HC_64_BK2_KS4__Syms;
class VMul_32_HC_64_BK2_KS4___024root;
class VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4;


// This class is the main interface to the Verilated model
class alignas(VL_CACHE_LINE_BYTES) VMul_32_HC_64_BK2_KS4 VL_NOT_FINAL : public VerilatedModel {
  private:
    // Symbol table holding complete model state (owned by this class)
    VMul_32_HC_64_BK2_KS4__Syms* const vlSymsp;

  public:

    // PORTS
    // The application code writes and reads these signals to
    // propagate new values into/out from the Verilated model.
    VL_IN(&a,31,0);
    VL_IN(&b,31,0);
    VL_OUT64(&out,63,0);

    // CELLS
    // Public to allow access to /* verilator public */ items.
    // Otherwise the application code can consider these internals.
    VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* const __PVT__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_0;
    VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* const __PVT__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_1;
    VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* const __PVT__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_2;
    VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* const __PVT__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_3;
    VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* const __PVT__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_4;
    VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* const __PVT__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_5;
    VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* const __PVT__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_6;
    VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* const __PVT__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_7;
    VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* const __PVT__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_8;
    VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* const __PVT__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_9;
    VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* const __PVT__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_10;
    VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* const __PVT__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_11;
    VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* const __PVT__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_12;
    VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* const __PVT__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_13;
    VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* const __PVT__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_14;
    VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* const __PVT__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_15;
    VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* const __PVT__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_16;
    VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* const __PVT__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_17;
    VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* const __PVT__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_18;
    VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* const __PVT__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_19;
    VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* const __PVT__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_20;
    VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* const __PVT__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_21;
    VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* const __PVT__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_22;
    VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* const __PVT__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_23;
    VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* const __PVT__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_24;
    VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* const __PVT__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_25;
    VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* const __PVT__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_26;
    VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* const __PVT__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_27;
    VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* const __PVT__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_28;
    VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* const __PVT__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_29;
    VMul_32_HC_64_BK2_KS4_HC_64_BK2_KS4* const __PVT__Mul_32_HC_64_BK2_KS4__DOT__HC_64_BK2_KS4_30;

    // Root instance pointer to allow access to model internals,
    // including inlined /* verilator public_flat_* */ items.
    VMul_32_HC_64_BK2_KS4___024root* const rootp;

    // CONSTRUCTORS
    /// Construct the model; called by application code
    /// If contextp is null, then the model will use the default global context
    /// If name is "", then makes a wrapper with a
    /// single model invisible with respect to DPI scope names.
    explicit VMul_32_HC_64_BK2_KS4(VerilatedContext* contextp, const char* name = "TOP");
    explicit VMul_32_HC_64_BK2_KS4(const char* name = "TOP");
    /// Destroy the model; called (often implicitly) by application code
    virtual ~VMul_32_HC_64_BK2_KS4();
  private:
    VL_UNCOPYABLE(VMul_32_HC_64_BK2_KS4);  ///< Copying not allowed

  public:
    // API METHODS
    /// Evaluate the model.  Application must call when inputs change.
    void eval() { eval_step(); }
    /// Evaluate when calling multiple units/models per time step.
    void eval_step();
    /// Evaluate at end of a timestep for tracing, when using eval_step().
    /// Application must call after all eval() and before time changes.
    void eval_end_step() {}
    /// Simulation complete, run final blocks.  Application must call on completion.
    void final();
    /// Are there scheduled events to handle?
    bool eventsPending();
    /// Returns time at next time slot. Aborts if !eventsPending()
    uint64_t nextTimeSlot();
    /// Retrieve name of this model instance (as passed to constructor).
    const char* name() const;

    // Abstract methods from VerilatedModel
    const char* hierName() const override final;
    const char* modelName() const override final;
    unsigned threads() const override final;
};

#endif  // guard
