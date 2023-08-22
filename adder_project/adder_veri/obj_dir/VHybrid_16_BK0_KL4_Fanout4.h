// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Primary model header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef VERILATED_VHYBRID_16_BK0_KL4_FANOUT4_H_
#define VERILATED_VHYBRID_16_BK0_KL4_FANOUT4_H_  // guard

#include "verilated.h"

class VHybrid_16_BK0_KL4_Fanout4__Syms;
class VHybrid_16_BK0_KL4_Fanout4___024root;

// This class is the main interface to the Verilated model
class alignas(VL_CACHE_LINE_BYTES) VHybrid_16_BK0_KL4_Fanout4 VL_NOT_FINAL : public VerilatedModel {
  private:
    // Symbol table holding complete model state (owned by this class)
    VHybrid_16_BK0_KL4_Fanout4__Syms* const vlSymsp;

  public:

    // PORTS
    // The application code writes and reads these signals to
    // propagate new values into/out from the Verilated model.
    VL_IN8(&clk,0,0);
    VL_IN8(&cin,0,0);
    VL_OUT8(&cout,0,0);
    VL_IN8(&rst,0,0);
    VL_IN16(&a,15,0);
    VL_IN16(&b,15,0);
    VL_OUT16(&sum,15,0);

    // CELLS
    // Public to allow access to /* verilator public */ items.
    // Otherwise the application code can consider these internals.

    // Root instance pointer to allow access to model internals,
    // including inlined /* verilator public_flat_* */ items.
    VHybrid_16_BK0_KL4_Fanout4___024root* const rootp;

    // CONSTRUCTORS
    /// Construct the model; called by application code
    /// If contextp is null, then the model will use the default global context
    /// If name is "", then makes a wrapper with a
    /// single model invisible with respect to DPI scope names.
    explicit VHybrid_16_BK0_KL4_Fanout4(VerilatedContext* contextp, const char* name = "TOP");
    explicit VHybrid_16_BK0_KL4_Fanout4(const char* name = "TOP");
    /// Destroy the model; called (often implicitly) by application code
    virtual ~VHybrid_16_BK0_KL4_Fanout4();
  private:
    VL_UNCOPYABLE(VHybrid_16_BK0_KL4_Fanout4);  ///< Copying not allowed

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
