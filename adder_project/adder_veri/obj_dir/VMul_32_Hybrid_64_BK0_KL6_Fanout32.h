// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Primary model header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef VERILATED_VMUL_32_HYBRID_64_BK0_KL6_FANOUT32_H_
#define VERILATED_VMUL_32_HYBRID_64_BK0_KL6_FANOUT32_H_  // guard

#include "verilated.h"

class VMul_32_Hybrid_64_BK0_KL6_Fanout32__Syms;
class VMul_32_Hybrid_64_BK0_KL6_Fanout32___024root;
class VMul_32_Hybrid_64_BK0_KL6_Fanout32_Hybrid_64_BK0_KL6_Fanout32;


// This class is the main interface to the Verilated model
class alignas(VL_CACHE_LINE_BYTES) VMul_32_Hybrid_64_BK0_KL6_Fanout32 VL_NOT_FINAL : public VerilatedModel {
  private:
    // Symbol table holding complete model state (owned by this class)
    VMul_32_Hybrid_64_BK0_KL6_Fanout32__Syms* const vlSymsp;

  public:

    // PORTS
    // The application code writes and reads these signals to
    // propagate new values into/out from the Verilated model.
    VL_IN8(&clk,0,0);
    VL_IN8(&cin,0,0);
    VL_OUT8(&cout,0,0);
    VL_IN8(&rst,0,0);
    VL_IN(&Mul_32_Hybrid_64_BK0_KL6_Fanout32__02Ea,31,0);
    VL_IN(&Mul_32_Hybrid_64_BK0_KL6_Fanout32__02Eb,31,0);
    VL_IN64(&Hybrid_64_BK0_KL6_Fanout32_top__02Ea,63,0);
    VL_IN64(&Hybrid_64_BK0_KL6_Fanout32_top__02Eb,63,0);
    VL_OUT64(&sum,63,0);
    VL_OUT64(&out,63,0);

    // CELLS
    // Public to allow access to /* verilator public */ items.
    // Otherwise the application code can consider these internals.
    VMul_32_Hybrid_64_BK0_KL6_Fanout32_Hybrid_64_BK0_KL6_Fanout32* const __PVT__Hybrid_64_BK0_KL6_Fanout32_top__DOT__u0;
    VMul_32_Hybrid_64_BK0_KL6_Fanout32_Hybrid_64_BK0_KL6_Fanout32* const __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_0;
    VMul_32_Hybrid_64_BK0_KL6_Fanout32_Hybrid_64_BK0_KL6_Fanout32* const __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_1;
    VMul_32_Hybrid_64_BK0_KL6_Fanout32_Hybrid_64_BK0_KL6_Fanout32* const __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_2;
    VMul_32_Hybrid_64_BK0_KL6_Fanout32_Hybrid_64_BK0_KL6_Fanout32* const __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_3;
    VMul_32_Hybrid_64_BK0_KL6_Fanout32_Hybrid_64_BK0_KL6_Fanout32* const __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_4;
    VMul_32_Hybrid_64_BK0_KL6_Fanout32_Hybrid_64_BK0_KL6_Fanout32* const __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_5;
    VMul_32_Hybrid_64_BK0_KL6_Fanout32_Hybrid_64_BK0_KL6_Fanout32* const __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_6;
    VMul_32_Hybrid_64_BK0_KL6_Fanout32_Hybrid_64_BK0_KL6_Fanout32* const __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_7;
    VMul_32_Hybrid_64_BK0_KL6_Fanout32_Hybrid_64_BK0_KL6_Fanout32* const __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_8;
    VMul_32_Hybrid_64_BK0_KL6_Fanout32_Hybrid_64_BK0_KL6_Fanout32* const __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_9;
    VMul_32_Hybrid_64_BK0_KL6_Fanout32_Hybrid_64_BK0_KL6_Fanout32* const __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_10;
    VMul_32_Hybrid_64_BK0_KL6_Fanout32_Hybrid_64_BK0_KL6_Fanout32* const __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_11;
    VMul_32_Hybrid_64_BK0_KL6_Fanout32_Hybrid_64_BK0_KL6_Fanout32* const __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_12;
    VMul_32_Hybrid_64_BK0_KL6_Fanout32_Hybrid_64_BK0_KL6_Fanout32* const __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_13;
    VMul_32_Hybrid_64_BK0_KL6_Fanout32_Hybrid_64_BK0_KL6_Fanout32* const __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_14;
    VMul_32_Hybrid_64_BK0_KL6_Fanout32_Hybrid_64_BK0_KL6_Fanout32* const __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_15;
    VMul_32_Hybrid_64_BK0_KL6_Fanout32_Hybrid_64_BK0_KL6_Fanout32* const __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_16;
    VMul_32_Hybrid_64_BK0_KL6_Fanout32_Hybrid_64_BK0_KL6_Fanout32* const __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_17;
    VMul_32_Hybrid_64_BK0_KL6_Fanout32_Hybrid_64_BK0_KL6_Fanout32* const __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_18;
    VMul_32_Hybrid_64_BK0_KL6_Fanout32_Hybrid_64_BK0_KL6_Fanout32* const __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_19;
    VMul_32_Hybrid_64_BK0_KL6_Fanout32_Hybrid_64_BK0_KL6_Fanout32* const __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_20;
    VMul_32_Hybrid_64_BK0_KL6_Fanout32_Hybrid_64_BK0_KL6_Fanout32* const __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_21;
    VMul_32_Hybrid_64_BK0_KL6_Fanout32_Hybrid_64_BK0_KL6_Fanout32* const __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_22;
    VMul_32_Hybrid_64_BK0_KL6_Fanout32_Hybrid_64_BK0_KL6_Fanout32* const __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_23;
    VMul_32_Hybrid_64_BK0_KL6_Fanout32_Hybrid_64_BK0_KL6_Fanout32* const __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_24;
    VMul_32_Hybrid_64_BK0_KL6_Fanout32_Hybrid_64_BK0_KL6_Fanout32* const __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_25;
    VMul_32_Hybrid_64_BK0_KL6_Fanout32_Hybrid_64_BK0_KL6_Fanout32* const __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_26;
    VMul_32_Hybrid_64_BK0_KL6_Fanout32_Hybrid_64_BK0_KL6_Fanout32* const __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_27;
    VMul_32_Hybrid_64_BK0_KL6_Fanout32_Hybrid_64_BK0_KL6_Fanout32* const __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_28;
    VMul_32_Hybrid_64_BK0_KL6_Fanout32_Hybrid_64_BK0_KL6_Fanout32* const __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_29;
    VMul_32_Hybrid_64_BK0_KL6_Fanout32_Hybrid_64_BK0_KL6_Fanout32* const __PVT__Mul_32_Hybrid_64_BK0_KL6_Fanout32__DOT__Hybrid_64_BK0_KL6_Fanout32_30;

    // Root instance pointer to allow access to model internals,
    // including inlined /* verilator public_flat_* */ items.
    VMul_32_Hybrid_64_BK0_KL6_Fanout32___024root* const rootp;

    // CONSTRUCTORS
    /// Construct the model; called by application code
    /// If contextp is null, then the model will use the default global context
    /// If name is "", then makes a wrapper with a
    /// single model invisible with respect to DPI scope names.
    explicit VMul_32_Hybrid_64_BK0_KL6_Fanout32(VerilatedContext* contextp, const char* name = "TOP");
    explicit VMul_32_Hybrid_64_BK0_KL6_Fanout32(const char* name = "TOP");
    /// Destroy the model; called (often implicitly) by application code
    virtual ~VMul_32_Hybrid_64_BK0_KL6_Fanout32();
  private:
    VL_UNCOPYABLE(VMul_32_Hybrid_64_BK0_KL6_Fanout32);  ///< Copying not allowed

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
