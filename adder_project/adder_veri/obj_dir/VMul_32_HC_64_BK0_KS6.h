// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Primary model header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef VERILATED_VMUL_32_HC_64_BK0_KS6_H_
#define VERILATED_VMUL_32_HC_64_BK0_KS6_H_  // guard

#include "verilated.h"

class VMul_32_HC_64_BK0_KS6__Syms;
class VMul_32_HC_64_BK0_KS6___024root;
class VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6;


// This class is the main interface to the Verilated model
class alignas(VL_CACHE_LINE_BYTES) VMul_32_HC_64_BK0_KS6 VL_NOT_FINAL : public VerilatedModel {
  private:
    // Symbol table holding complete model state (owned by this class)
    VMul_32_HC_64_BK0_KS6__Syms* const vlSymsp;

  public:

    // PORTS
    // The application code writes and reads these signals to
    // propagate new values into/out from the Verilated model.
    VL_IN8(&clk,0,0);
    VL_IN8(&cin,0,0);
    VL_OUT8(&cout,0,0);
    VL_IN8(&rst,0,0);
    VL_IN(&Mul_32_HC_64_BK0_KS6__02Ea,31,0);
    VL_IN(&Mul_32_HC_64_BK0_KS6__02Eb,31,0);
    VL_IN64(&HC_64_BK0_KS6_top__02Ea,63,0);
    VL_IN64(&HC_64_BK0_KS6_top__02Eb,63,0);
    VL_OUT64(&sum,63,0);
    VL_OUT64(&out,63,0);

    // CELLS
    // Public to allow access to /* verilator public */ items.
    // Otherwise the application code can consider these internals.
    VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* const __PVT__HC_64_BK0_KS6_top__DOT__u0;
    VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* const __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_0;
    VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* const __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_1;
    VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* const __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_2;
    VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* const __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_3;
    VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* const __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_4;
    VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* const __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_5;
    VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* const __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_6;
    VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* const __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_7;
    VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* const __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_8;
    VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* const __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_9;
    VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* const __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_10;
    VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* const __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_11;
    VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* const __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_12;
    VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* const __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_13;
    VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* const __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_14;
    VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* const __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_15;
    VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* const __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_16;
    VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* const __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_17;
    VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* const __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_18;
    VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* const __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_19;
    VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* const __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_20;
    VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* const __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_21;
    VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* const __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_22;
    VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* const __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_23;
    VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* const __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_24;
    VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* const __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_25;
    VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* const __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_26;
    VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* const __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_27;
    VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* const __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_28;
    VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* const __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_29;
    VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6* const __PVT__Mul_32_HC_64_BK0_KS6__DOT__HC_64_BK0_KS6_30;

    // Root instance pointer to allow access to model internals,
    // including inlined /* verilator public_flat_* */ items.
    VMul_32_HC_64_BK0_KS6___024root* const rootp;

    // CONSTRUCTORS
    /// Construct the model; called by application code
    /// If contextp is null, then the model will use the default global context
    /// If name is "", then makes a wrapper with a
    /// single model invisible with respect to DPI scope names.
    explicit VMul_32_HC_64_BK0_KS6(VerilatedContext* contextp, const char* name = "TOP");
    explicit VMul_32_HC_64_BK0_KS6(const char* name = "TOP");
    /// Destroy the model; called (often implicitly) by application code
    virtual ~VMul_32_HC_64_BK0_KS6();
  private:
    VL_UNCOPYABLE(VMul_32_HC_64_BK0_KS6);  ///< Copying not allowed

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
