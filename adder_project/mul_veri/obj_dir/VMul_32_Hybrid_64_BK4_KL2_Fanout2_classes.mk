# Verilated -*- Makefile -*-
# DESCRIPTION: Verilator output: Make include file with class lists
#
# This file lists generated Verilated files, for including in higher level makefiles.
# See VMul_32_Hybrid_64_BK4_KL2_Fanout2.mk for the caller.

### Switches...
# C11 constructs required?  0/1 (always on now)
VM_C11 = 1
# Timing enabled?  0/1
VM_TIMING = 0
# Coverage output mode?  0/1 (from --coverage)
VM_COVERAGE = 0
# Parallel builds?  0/1 (from --output-split)
VM_PARALLEL_BUILDS = 1
# Tracing output mode?  0/1 (from --trace/--trace-fst)
VM_TRACE = 0
# Tracing output mode in VCD format?  0/1 (from --trace)
VM_TRACE_VCD = 0
# Tracing output mode in FST format?  0/1 (from --trace-fst)
VM_TRACE_FST = 0

### Object file lists...
# Generated module classes, fast-path, compile with highest optimization
VM_CLASSES_FAST += \
	VMul_32_Hybrid_64_BK4_KL2_Fanout2 \
	VMul_32_Hybrid_64_BK4_KL2_Fanout2___024root__DepSet_h9e47e69f__0 \
	VMul_32_Hybrid_64_BK4_KL2_Fanout2___024root__DepSet_haa9f2b0d__0 \
	VMul_32_Hybrid_64_BK4_KL2_Fanout2_Hybrid_64_BK4_KL2_Fanout2__DepSet_h1adc74f7__0 \
	VMul_32_Hybrid_64_BK4_KL2_Fanout2_Hybrid_64_BK4_KL2_Fanout2__DepSet_h1adc74f7__1 \
	VMul_32_Hybrid_64_BK4_KL2_Fanout2_Hybrid_64_BK4_KL2_Fanout2__DepSet_h1adc74f7__2 \
	VMul_32_Hybrid_64_BK4_KL2_Fanout2_Hybrid_64_BK4_KL2_Fanout2__DepSet_h1adc74f7__3 \

# Generated module classes, non-fast-path, compile with low/medium optimization
VM_CLASSES_SLOW += \
	VMul_32_Hybrid_64_BK4_KL2_Fanout2___024root__Slow \
	VMul_32_Hybrid_64_BK4_KL2_Fanout2___024root__DepSet_h9e47e69f__0__Slow \
	VMul_32_Hybrid_64_BK4_KL2_Fanout2___024root__DepSet_haa9f2b0d__0__Slow \
	VMul_32_Hybrid_64_BK4_KL2_Fanout2_Hybrid_64_BK4_KL2_Fanout2__Slow \
	VMul_32_Hybrid_64_BK4_KL2_Fanout2_Hybrid_64_BK4_KL2_Fanout2__DepSet_hac3dc22d__0__Slow \

# Generated support classes, fast-path, compile with highest optimization
VM_SUPPORT_FAST += \

# Generated support classes, non-fast-path, compile with low/medium optimization
VM_SUPPORT_SLOW += \
	VMul_32_Hybrid_64_BK4_KL2_Fanout2__Syms \

# Global classes, need linked once per executable, fast-path, compile with highest optimization
VM_GLOBAL_FAST += \
	verilated \
	verilated_threads \

# Global classes, need linked once per executable, non-fast-path, compile with low/medium optimization
VM_GLOBAL_SLOW += \


# Verilated -*- Makefile -*-
