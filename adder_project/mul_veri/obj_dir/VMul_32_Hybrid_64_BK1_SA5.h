// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Primary model header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef VERILATED_VMUL_32_HYBRID_64_BK1_SA5_H_
#define VERILATED_VMUL_32_HYBRID_64_BK1_SA5_H_  // guard

#include "verilated.h"

class VMul_32_Hybrid_64_BK1_SA5__Syms;
class VMul_32_Hybrid_64_BK1_SA5___024root;
class VMul_32_Hybrid_64_BK1_SA5_Hybrid_64_BK1_SA5;


// This class is the main interface to the Verilated model
class alignas(VL_CACHE_LINE_BYTES) VMul_32_Hybrid_64_BK1_SA5 VL_NOT_FINAL : public VerilatedModel {
  private:
    // Symbol table holding complete model state (owned by this class)
    VMul_32_Hybrid_64_BK1_SA5__Syms* const vlSymsp;

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
    VMul_32_Hybrid_64_BK1_SA5_Hybrid_64_BK1_SA5* const __PVT__Mul_32_Hybrid_64_BK1_SA5__DOT__Hybrid_64_BK1_SA5_0;
    VMul_32_Hybrid_64_BK1_SA5_Hybrid_64_BK1_SA5* const __PVT__Mul_32_Hybrid_64_BK1_SA5__DOT__Hybrid_64_BK1_SA5_1;
    VMul_32_Hybrid_64_BK1_SA5_Hybrid_64_BK1_SA5* const __PVT__Mul_32_Hybrid_64_BK1_SA5__DOT__Hybrid_64_BK1_SA5_2;
    VMul_32_Hybrid_64_BK1_SA5_Hybrid_64_BK1_SA5* const __PVT__Mul_32_Hybrid_64_BK1_SA5__DOT__Hybrid_64_BK1_SA5_3;
    VMul_32_Hybrid_64_BK1_SA5_Hybrid_64_BK1_SA5* const __PVT__Mul_32_Hybrid_64_BK1_SA5__DOT__Hybrid_64_BK1_SA5_4;
    VMul_32_Hybrid_64_BK1_SA5_Hybrid_64_BK1_SA5* const __PVT__Mul_32_Hybrid_64_BK1_SA5__DOT__Hybrid_64_BK1_SA5_5;
    VMul_32_Hybrid_64_BK1_SA5_Hybrid_64_BK1_SA5* const __PVT__Mul_32_Hybrid_64_BK1_SA5__DOT__Hybrid_64_BK1_SA5_6;
    VMul_32_Hybrid_64_BK1_SA5_Hybrid_64_BK1_SA5* const __PVT__Mul_32_Hybrid_64_BK1_SA5__DOT__Hybrid_64_BK1_SA5_7;
    VMul_32_Hybrid_64_BK1_SA5_Hybrid_64_BK1_SA5* const __PVT__Mul_32_Hybrid_64_BK1_SA5__DOT__Hybrid_64_BK1_SA5_8;
    VMul_32_Hybrid_64_BK1_SA5_Hybrid_64_BK1_SA5* const __PVT__Mul_32_Hybrid_64_BK1_SA5__DOT__Hybrid_64_BK1_SA5_9;
    VMul_32_Hybrid_64_BK1_SA5_Hybrid_64_BK1_SA5* const __PVT__Mul_32_Hybrid_64_BK1_SA5__DOT__Hybrid_64_BK1_SA5_10;
    VMul_32_Hybrid_64_BK1_SA5_Hybrid_64_BK1_SA5* const __PVT__Mul_32_Hybrid_64_BK1_SA5__DOT__Hybrid_64_BK1_SA5_11;
    VMul_32_Hybrid_64_BK1_SA5_Hybrid_64_BK1_SA5* const __PVT__Mul_32_Hybrid_64_BK1_SA5__DOT__Hybrid_64_BK1_SA5_12;
    VMul_32_Hybrid_64_BK1_SA5_Hybrid_64_BK1_SA5* const __PVT__Mul_32_Hybrid_64_BK1_SA5__DOT__Hybrid_64_BK1_SA5_13;
    VMul_32_Hybrid_64_BK1_SA5_Hybrid_64_BK1_SA5* const __PVT__Mul_32_Hybrid_64_BK1_SA5__DOT__Hybrid_64_BK1_SA5_14;
    VMul_32_Hybrid_64_BK1_SA5_Hybrid_64_BK1_SA5* const __PVT__Mul_32_Hybrid_64_BK1_SA5__DOT__Hybrid_64_BK1_SA5_15;
    VMul_32_Hybrid_64_BK1_SA5_Hybrid_64_BK1_SA5* const __PVT__Mul_32_Hybrid_64_BK1_SA5__DOT__Hybrid_64_BK1_SA5_16;
    VMul_32_Hybrid_64_BK1_SA5_Hybrid_64_BK1_SA5* const __PVT__Mul_32_Hybrid_64_BK1_SA5__DOT__Hybrid_64_BK1_SA5_17;
    VMul_32_Hybrid_64_BK1_SA5_Hybrid_64_BK1_SA5* const __PVT__Mul_32_Hybrid_64_BK1_SA5__DOT__Hybrid_64_BK1_SA5_18;
    VMul_32_Hybrid_64_BK1_SA5_Hybrid_64_BK1_SA5* const __PVT__Mul_32_Hybrid_64_BK1_SA5__DOT__Hybrid_64_BK1_SA5_19;
    VMul_32_Hybrid_64_BK1_SA5_Hybrid_64_BK1_SA5* const __PVT__Mul_32_Hybrid_64_BK1_SA5__DOT__Hybrid_64_BK1_SA5_20;
    VMul_32_Hybrid_64_BK1_SA5_Hybrid_64_BK1_SA5* const __PVT__Mul_32_Hybrid_64_BK1_SA5__DOT__Hybrid_64_BK1_SA5_21;
    VMul_32_Hybrid_64_BK1_SA5_Hybrid_64_BK1_SA5* const __PVT__Mul_32_Hybrid_64_BK1_SA5__DOT__Hybrid_64_BK1_SA5_22;
    VMul_32_Hybrid_64_BK1_SA5_Hybrid_64_BK1_SA5* const __PVT__Mul_32_Hybrid_64_BK1_SA5__DOT__Hybrid_64_BK1_SA5_23;
    VMul_32_Hybrid_64_BK1_SA5_Hybrid_64_BK1_SA5* const __PVT__Mul_32_Hybrid_64_BK1_SA5__DOT__Hybrid_64_BK1_SA5_24;
    VMul_32_Hybrid_64_BK1_SA5_Hybrid_64_BK1_SA5* const __PVT__Mul_32_Hybrid_64_BK1_SA5__DOT__Hybrid_64_BK1_SA5_25;
    VMul_32_Hybrid_64_BK1_SA5_Hybrid_64_BK1_SA5* const __PVT__Mul_32_Hybrid_64_BK1_SA5__DOT__Hybrid_64_BK1_SA5_26;
    VMul_32_Hybrid_64_BK1_SA5_Hybrid_64_BK1_SA5* const __PVT__Mul_32_Hybrid_64_BK1_SA5__DOT__Hybrid_64_BK1_SA5_27;
    VMul_32_Hybrid_64_BK1_SA5_Hybrid_64_BK1_SA5* const __PVT__Mul_32_Hybrid_64_BK1_SA5__DOT__Hybrid_64_BK1_SA5_28;
    VMul_32_Hybrid_64_BK1_SA5_Hybrid_64_BK1_SA5* const __PVT__Mul_32_Hybrid_64_BK1_SA5__DOT__Hybrid_64_BK1_SA5_29;
    VMul_32_Hybrid_64_BK1_SA5_Hybrid_64_BK1_SA5* const __PVT__Mul_32_Hybrid_64_BK1_SA5__DOT__Hybrid_64_BK1_SA5_30;

    // Root instance pointer to allow access to model internals,
    // including inlined /* verilator public_flat_* */ items.
    VMul_32_Hybrid_64_BK1_SA5___024root* const rootp;

    // CONSTRUCTORS
    /// Construct the model; called by application code
    /// If contextp is null, then the model will use the default global context
    /// If name is "", then makes a wrapper with a
    /// single model invisible with respect to DPI scope names.
    explicit VMul_32_Hybrid_64_BK1_SA5(VerilatedContext* contextp, const char* name = "TOP");
    explicit VMul_32_Hybrid_64_BK1_SA5(const char* name = "TOP");
    /// Destroy the model; called (often implicitly) by application code
    virtual ~VMul_32_Hybrid_64_BK1_SA5();
  private:
    VL_UNCOPYABLE(VMul_32_Hybrid_64_BK1_SA5);  ///< Copying not allowed

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
