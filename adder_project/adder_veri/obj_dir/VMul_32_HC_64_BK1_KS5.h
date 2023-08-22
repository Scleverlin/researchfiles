// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Primary model header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef VERILATED_VMUL_32_HC_64_BK1_KS5_H_
#define VERILATED_VMUL_32_HC_64_BK1_KS5_H_  // guard

#include "verilated.h"

class VMul_32_HC_64_BK1_KS5__Syms;
class VMul_32_HC_64_BK1_KS5___024root;
class VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5;


// This class is the main interface to the Verilated model
class alignas(VL_CACHE_LINE_BYTES) VMul_32_HC_64_BK1_KS5 VL_NOT_FINAL : public VerilatedModel {
  private:
    // Symbol table holding complete model state (owned by this class)
    VMul_32_HC_64_BK1_KS5__Syms* const vlSymsp;

  public:

    // PORTS
    // The application code writes and reads these signals to
    // propagate new values into/out from the Verilated model.
    VL_IN8(&clk,0,0);
    VL_IN8(&cin,0,0);
    VL_OUT8(&cout,0,0);
    VL_IN8(&rst,0,0);
    VL_IN(&Mul_32_HC_64_BK1_KS5__02Ea,31,0);
    VL_IN(&Mul_32_HC_64_BK1_KS5__02Eb,31,0);
    VL_IN64(&HC_64_BK1_KS5_top__02Ea,63,0);
    VL_IN64(&HC_64_BK1_KS5_top__02Eb,63,0);
    VL_OUT64(&sum,63,0);
    VL_OUT64(&out,63,0);

    // CELLS
    // Public to allow access to /* verilator public */ items.
    // Otherwise the application code can consider these internals.
    VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* const __PVT__HC_64_BK1_KS5_top__DOT__u0;
    VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* const __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_0;
    VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* const __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_1;
    VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* const __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_2;
    VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* const __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_3;
    VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* const __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_4;
    VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* const __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_5;
    VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* const __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_6;
    VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* const __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_7;
    VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* const __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_8;
    VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* const __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_9;
    VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* const __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_10;
    VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* const __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_11;
    VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* const __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_12;
    VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* const __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_13;
    VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* const __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_14;
    VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* const __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_15;
    VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* const __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_16;
    VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* const __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_17;
    VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* const __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_18;
    VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* const __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_19;
    VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* const __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_20;
    VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* const __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_21;
    VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* const __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_22;
    VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* const __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_23;
    VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* const __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_24;
    VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* const __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_25;
    VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* const __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_26;
    VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* const __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_27;
    VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* const __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_28;
    VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* const __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_29;
    VMul_32_HC_64_BK1_KS5_HC_64_BK1_KS5* const __PVT__Mul_32_HC_64_BK1_KS5__DOT__HC_64_BK1_KS5_30;

    // Root instance pointer to allow access to model internals,
    // including inlined /* verilator public_flat_* */ items.
    VMul_32_HC_64_BK1_KS5___024root* const rootp;

    // CONSTRUCTORS
    /// Construct the model; called by application code
    /// If contextp is null, then the model will use the default global context
    /// If name is "", then makes a wrapper with a
    /// single model invisible with respect to DPI scope names.
    explicit VMul_32_HC_64_BK1_KS5(VerilatedContext* contextp, const char* name = "TOP");
    explicit VMul_32_HC_64_BK1_KS5(const char* name = "TOP");
    /// Destroy the model; called (often implicitly) by application code
    virtual ~VMul_32_HC_64_BK1_KS5();
  private:
    VL_UNCOPYABLE(VMul_32_HC_64_BK1_KS5);  ///< Copying not allowed

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
