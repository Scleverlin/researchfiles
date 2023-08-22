// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Primary model header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef VERILATED_VMUL_32_HYBRID_64_BK1_KL5_FANOUT8_H_
#define VERILATED_VMUL_32_HYBRID_64_BK1_KL5_FANOUT8_H_  // guard

#include "verilated.h"

class VMul_32_Hybrid_64_BK1_KL5_Fanout8__Syms;
class VMul_32_Hybrid_64_BK1_KL5_Fanout8___024root;
class VMul_32_Hybrid_64_BK1_KL5_Fanout8_Hybrid_64_BK1_KL5_Fanout8;


// This class is the main interface to the Verilated model
class alignas(VL_CACHE_LINE_BYTES) VMul_32_Hybrid_64_BK1_KL5_Fanout8 VL_NOT_FINAL : public VerilatedModel {
  private:
    // Symbol table holding complete model state (owned by this class)
    VMul_32_Hybrid_64_BK1_KL5_Fanout8__Syms* const vlSymsp;

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
    VMul_32_Hybrid_64_BK1_KL5_Fanout8_Hybrid_64_BK1_KL5_Fanout8* const __PVT__Mul_32_Hybrid_64_BK1_KL5_Fanout8__DOT__Hybrid_64_BK1_KL5_Fanout8_0;
    VMul_32_Hybrid_64_BK1_KL5_Fanout8_Hybrid_64_BK1_KL5_Fanout8* const __PVT__Mul_32_Hybrid_64_BK1_KL5_Fanout8__DOT__Hybrid_64_BK1_KL5_Fanout8_1;
    VMul_32_Hybrid_64_BK1_KL5_Fanout8_Hybrid_64_BK1_KL5_Fanout8* const __PVT__Mul_32_Hybrid_64_BK1_KL5_Fanout8__DOT__Hybrid_64_BK1_KL5_Fanout8_2;
    VMul_32_Hybrid_64_BK1_KL5_Fanout8_Hybrid_64_BK1_KL5_Fanout8* const __PVT__Mul_32_Hybrid_64_BK1_KL5_Fanout8__DOT__Hybrid_64_BK1_KL5_Fanout8_3;
    VMul_32_Hybrid_64_BK1_KL5_Fanout8_Hybrid_64_BK1_KL5_Fanout8* const __PVT__Mul_32_Hybrid_64_BK1_KL5_Fanout8__DOT__Hybrid_64_BK1_KL5_Fanout8_4;
    VMul_32_Hybrid_64_BK1_KL5_Fanout8_Hybrid_64_BK1_KL5_Fanout8* const __PVT__Mul_32_Hybrid_64_BK1_KL5_Fanout8__DOT__Hybrid_64_BK1_KL5_Fanout8_5;
    VMul_32_Hybrid_64_BK1_KL5_Fanout8_Hybrid_64_BK1_KL5_Fanout8* const __PVT__Mul_32_Hybrid_64_BK1_KL5_Fanout8__DOT__Hybrid_64_BK1_KL5_Fanout8_6;
    VMul_32_Hybrid_64_BK1_KL5_Fanout8_Hybrid_64_BK1_KL5_Fanout8* const __PVT__Mul_32_Hybrid_64_BK1_KL5_Fanout8__DOT__Hybrid_64_BK1_KL5_Fanout8_7;
    VMul_32_Hybrid_64_BK1_KL5_Fanout8_Hybrid_64_BK1_KL5_Fanout8* const __PVT__Mul_32_Hybrid_64_BK1_KL5_Fanout8__DOT__Hybrid_64_BK1_KL5_Fanout8_8;
    VMul_32_Hybrid_64_BK1_KL5_Fanout8_Hybrid_64_BK1_KL5_Fanout8* const __PVT__Mul_32_Hybrid_64_BK1_KL5_Fanout8__DOT__Hybrid_64_BK1_KL5_Fanout8_9;
    VMul_32_Hybrid_64_BK1_KL5_Fanout8_Hybrid_64_BK1_KL5_Fanout8* const __PVT__Mul_32_Hybrid_64_BK1_KL5_Fanout8__DOT__Hybrid_64_BK1_KL5_Fanout8_10;
    VMul_32_Hybrid_64_BK1_KL5_Fanout8_Hybrid_64_BK1_KL5_Fanout8* const __PVT__Mul_32_Hybrid_64_BK1_KL5_Fanout8__DOT__Hybrid_64_BK1_KL5_Fanout8_11;
    VMul_32_Hybrid_64_BK1_KL5_Fanout8_Hybrid_64_BK1_KL5_Fanout8* const __PVT__Mul_32_Hybrid_64_BK1_KL5_Fanout8__DOT__Hybrid_64_BK1_KL5_Fanout8_12;
    VMul_32_Hybrid_64_BK1_KL5_Fanout8_Hybrid_64_BK1_KL5_Fanout8* const __PVT__Mul_32_Hybrid_64_BK1_KL5_Fanout8__DOT__Hybrid_64_BK1_KL5_Fanout8_13;
    VMul_32_Hybrid_64_BK1_KL5_Fanout8_Hybrid_64_BK1_KL5_Fanout8* const __PVT__Mul_32_Hybrid_64_BK1_KL5_Fanout8__DOT__Hybrid_64_BK1_KL5_Fanout8_14;
    VMul_32_Hybrid_64_BK1_KL5_Fanout8_Hybrid_64_BK1_KL5_Fanout8* const __PVT__Mul_32_Hybrid_64_BK1_KL5_Fanout8__DOT__Hybrid_64_BK1_KL5_Fanout8_15;
    VMul_32_Hybrid_64_BK1_KL5_Fanout8_Hybrid_64_BK1_KL5_Fanout8* const __PVT__Mul_32_Hybrid_64_BK1_KL5_Fanout8__DOT__Hybrid_64_BK1_KL5_Fanout8_16;
    VMul_32_Hybrid_64_BK1_KL5_Fanout8_Hybrid_64_BK1_KL5_Fanout8* const __PVT__Mul_32_Hybrid_64_BK1_KL5_Fanout8__DOT__Hybrid_64_BK1_KL5_Fanout8_17;
    VMul_32_Hybrid_64_BK1_KL5_Fanout8_Hybrid_64_BK1_KL5_Fanout8* const __PVT__Mul_32_Hybrid_64_BK1_KL5_Fanout8__DOT__Hybrid_64_BK1_KL5_Fanout8_18;
    VMul_32_Hybrid_64_BK1_KL5_Fanout8_Hybrid_64_BK1_KL5_Fanout8* const __PVT__Mul_32_Hybrid_64_BK1_KL5_Fanout8__DOT__Hybrid_64_BK1_KL5_Fanout8_19;
    VMul_32_Hybrid_64_BK1_KL5_Fanout8_Hybrid_64_BK1_KL5_Fanout8* const __PVT__Mul_32_Hybrid_64_BK1_KL5_Fanout8__DOT__Hybrid_64_BK1_KL5_Fanout8_20;
    VMul_32_Hybrid_64_BK1_KL5_Fanout8_Hybrid_64_BK1_KL5_Fanout8* const __PVT__Mul_32_Hybrid_64_BK1_KL5_Fanout8__DOT__Hybrid_64_BK1_KL5_Fanout8_21;
    VMul_32_Hybrid_64_BK1_KL5_Fanout8_Hybrid_64_BK1_KL5_Fanout8* const __PVT__Mul_32_Hybrid_64_BK1_KL5_Fanout8__DOT__Hybrid_64_BK1_KL5_Fanout8_22;
    VMul_32_Hybrid_64_BK1_KL5_Fanout8_Hybrid_64_BK1_KL5_Fanout8* const __PVT__Mul_32_Hybrid_64_BK1_KL5_Fanout8__DOT__Hybrid_64_BK1_KL5_Fanout8_23;
    VMul_32_Hybrid_64_BK1_KL5_Fanout8_Hybrid_64_BK1_KL5_Fanout8* const __PVT__Mul_32_Hybrid_64_BK1_KL5_Fanout8__DOT__Hybrid_64_BK1_KL5_Fanout8_24;
    VMul_32_Hybrid_64_BK1_KL5_Fanout8_Hybrid_64_BK1_KL5_Fanout8* const __PVT__Mul_32_Hybrid_64_BK1_KL5_Fanout8__DOT__Hybrid_64_BK1_KL5_Fanout8_25;
    VMul_32_Hybrid_64_BK1_KL5_Fanout8_Hybrid_64_BK1_KL5_Fanout8* const __PVT__Mul_32_Hybrid_64_BK1_KL5_Fanout8__DOT__Hybrid_64_BK1_KL5_Fanout8_26;
    VMul_32_Hybrid_64_BK1_KL5_Fanout8_Hybrid_64_BK1_KL5_Fanout8* const __PVT__Mul_32_Hybrid_64_BK1_KL5_Fanout8__DOT__Hybrid_64_BK1_KL5_Fanout8_27;
    VMul_32_Hybrid_64_BK1_KL5_Fanout8_Hybrid_64_BK1_KL5_Fanout8* const __PVT__Mul_32_Hybrid_64_BK1_KL5_Fanout8__DOT__Hybrid_64_BK1_KL5_Fanout8_28;
    VMul_32_Hybrid_64_BK1_KL5_Fanout8_Hybrid_64_BK1_KL5_Fanout8* const __PVT__Mul_32_Hybrid_64_BK1_KL5_Fanout8__DOT__Hybrid_64_BK1_KL5_Fanout8_29;
    VMul_32_Hybrid_64_BK1_KL5_Fanout8_Hybrid_64_BK1_KL5_Fanout8* const __PVT__Mul_32_Hybrid_64_BK1_KL5_Fanout8__DOT__Hybrid_64_BK1_KL5_Fanout8_30;

    // Root instance pointer to allow access to model internals,
    // including inlined /* verilator public_flat_* */ items.
    VMul_32_Hybrid_64_BK1_KL5_Fanout8___024root* const rootp;

    // CONSTRUCTORS
    /// Construct the model; called by application code
    /// If contextp is null, then the model will use the default global context
    /// If name is "", then makes a wrapper with a
    /// single model invisible with respect to DPI scope names.
    explicit VMul_32_Hybrid_64_BK1_KL5_Fanout8(VerilatedContext* contextp, const char* name = "TOP");
    explicit VMul_32_Hybrid_64_BK1_KL5_Fanout8(const char* name = "TOP");
    /// Destroy the model; called (often implicitly) by application code
    virtual ~VMul_32_Hybrid_64_BK1_KL5_Fanout8();
  private:
    VL_UNCOPYABLE(VMul_32_Hybrid_64_BK1_KL5_Fanout8);  ///< Copying not allowed

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
