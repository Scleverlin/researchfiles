// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Primary model header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef VERILATED_VMUL_32_HYBRID_64_BK4_SA2_H_
#define VERILATED_VMUL_32_HYBRID_64_BK4_SA2_H_  // guard

#include "verilated.h"

class VMul_32_Hybrid_64_BK4_SA2__Syms;
class VMul_32_Hybrid_64_BK4_SA2___024root;
class VMul_32_Hybrid_64_BK4_SA2_Hybrid_64_BK4_SA2;


// This class is the main interface to the Verilated model
class alignas(VL_CACHE_LINE_BYTES) VMul_32_Hybrid_64_BK4_SA2 VL_NOT_FINAL : public VerilatedModel {
  private:
    // Symbol table holding complete model state (owned by this class)
    VMul_32_Hybrid_64_BK4_SA2__Syms* const vlSymsp;

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
    VMul_32_Hybrid_64_BK4_SA2_Hybrid_64_BK4_SA2* const __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_0;
    VMul_32_Hybrid_64_BK4_SA2_Hybrid_64_BK4_SA2* const __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_1;
    VMul_32_Hybrid_64_BK4_SA2_Hybrid_64_BK4_SA2* const __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_2;
    VMul_32_Hybrid_64_BK4_SA2_Hybrid_64_BK4_SA2* const __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_3;
    VMul_32_Hybrid_64_BK4_SA2_Hybrid_64_BK4_SA2* const __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_4;
    VMul_32_Hybrid_64_BK4_SA2_Hybrid_64_BK4_SA2* const __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_5;
    VMul_32_Hybrid_64_BK4_SA2_Hybrid_64_BK4_SA2* const __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_6;
    VMul_32_Hybrid_64_BK4_SA2_Hybrid_64_BK4_SA2* const __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_7;
    VMul_32_Hybrid_64_BK4_SA2_Hybrid_64_BK4_SA2* const __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_8;
    VMul_32_Hybrid_64_BK4_SA2_Hybrid_64_BK4_SA2* const __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_9;
    VMul_32_Hybrid_64_BK4_SA2_Hybrid_64_BK4_SA2* const __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_10;
    VMul_32_Hybrid_64_BK4_SA2_Hybrid_64_BK4_SA2* const __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_11;
    VMul_32_Hybrid_64_BK4_SA2_Hybrid_64_BK4_SA2* const __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_12;
    VMul_32_Hybrid_64_BK4_SA2_Hybrid_64_BK4_SA2* const __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_13;
    VMul_32_Hybrid_64_BK4_SA2_Hybrid_64_BK4_SA2* const __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_14;
    VMul_32_Hybrid_64_BK4_SA2_Hybrid_64_BK4_SA2* const __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_15;
    VMul_32_Hybrid_64_BK4_SA2_Hybrid_64_BK4_SA2* const __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_16;
    VMul_32_Hybrid_64_BK4_SA2_Hybrid_64_BK4_SA2* const __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_17;
    VMul_32_Hybrid_64_BK4_SA2_Hybrid_64_BK4_SA2* const __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_18;
    VMul_32_Hybrid_64_BK4_SA2_Hybrid_64_BK4_SA2* const __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_19;
    VMul_32_Hybrid_64_BK4_SA2_Hybrid_64_BK4_SA2* const __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_20;
    VMul_32_Hybrid_64_BK4_SA2_Hybrid_64_BK4_SA2* const __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_21;
    VMul_32_Hybrid_64_BK4_SA2_Hybrid_64_BK4_SA2* const __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_22;
    VMul_32_Hybrid_64_BK4_SA2_Hybrid_64_BK4_SA2* const __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_23;
    VMul_32_Hybrid_64_BK4_SA2_Hybrid_64_BK4_SA2* const __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_24;
    VMul_32_Hybrid_64_BK4_SA2_Hybrid_64_BK4_SA2* const __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_25;
    VMul_32_Hybrid_64_BK4_SA2_Hybrid_64_BK4_SA2* const __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_26;
    VMul_32_Hybrid_64_BK4_SA2_Hybrid_64_BK4_SA2* const __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_27;
    VMul_32_Hybrid_64_BK4_SA2_Hybrid_64_BK4_SA2* const __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_28;
    VMul_32_Hybrid_64_BK4_SA2_Hybrid_64_BK4_SA2* const __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_29;
    VMul_32_Hybrid_64_BK4_SA2_Hybrid_64_BK4_SA2* const __PVT__Mul_32_Hybrid_64_BK4_SA2__DOT__Hybrid_64_BK4_SA2_30;

    // Root instance pointer to allow access to model internals,
    // including inlined /* verilator public_flat_* */ items.
    VMul_32_Hybrid_64_BK4_SA2___024root* const rootp;

    // CONSTRUCTORS
    /// Construct the model; called by application code
    /// If contextp is null, then the model will use the default global context
    /// If name is "", then makes a wrapper with a
    /// single model invisible with respect to DPI scope names.
    explicit VMul_32_Hybrid_64_BK4_SA2(VerilatedContext* contextp, const char* name = "TOP");
    explicit VMul_32_Hybrid_64_BK4_SA2(const char* name = "TOP");
    /// Destroy the model; called (often implicitly) by application code
    virtual ~VMul_32_Hybrid_64_BK4_SA2();
  private:
    VL_UNCOPYABLE(VMul_32_Hybrid_64_BK4_SA2);  ///< Copying not allowed

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
