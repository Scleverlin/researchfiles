# Verilated -*- Makefile -*-
# DESCRIPTION: Verilator output: Make include file with class lists
#
# This file lists generated Verilated files, for including in higher level makefiles.
# See VMul_32_Hybrid_64_BK3_SA3.mk for the caller.

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
	VMul_32_Hybrid_64_BK3_SA3 \
	VMul_32_Hybrid_64_BK3_SA3___024root__DepSet_h45f1c57d__0 \
	VMul_32_Hybrid_64_BK3_SA3___024root__DepSet_h7421ea4b__0 \
	VMul_32_Hybrid_64_BK3_SA3_Hybrid_64_BK3_SA3__DepSet_h74df3615__0 \
	VMul_32_Hybrid_64_BK3_SA3_Hybrid_64_BK3_SA3__DepSet_h74df3615__1 \
	VMul_32_Hybrid_64_BK3_SA3_Hybrid_64_BK3_SA3__DepSet_h74df3615__2 \
	VMul_32_Hybrid_64_BK3_SA3_Hybrid_64_BK3_SA3__DepSet_h74df3615__3 \

# Generated module classes, non-fast-path, compile with low/medium optimization
VM_CLASSES_SLOW += \
	VMul_32_Hybrid_64_BK3_SA3___024root__Slow \
	VMul_32_Hybrid_64_BK3_SA3___024root__DepSet_h45f1c57d__0__Slow \
	VMul_32_Hybrid_64_BK3_SA3___024root__DepSet_h7421ea4b__0__Slow \
	VMul_32_Hybrid_64_BK3_SA3_Hybrid_64_BK3_SA3__Slow \
	VMul_32_Hybrid_64_BK3_SA3_Hybrid_64_BK3_SA3__DepSet_h42354b38__0__Slow \

# Generated support classes, fast-path, compile with highest optimization
VM_SUPPORT_FAST += \

# Generated support classes, non-fast-path, compile with low/medium optimization
VM_SUPPORT_SLOW += \
	VMul_32_Hybrid_64_BK3_SA3__Syms \

# Global classes, need linked once per executable, fast-path, compile with highest optimization
VM_GLOBAL_FAST += \
	verilated \
	verilated_threads \

# Global classes, need linked once per executable, non-fast-path, compile with low/medium optimization
VM_GLOBAL_SLOW += \


# Verilated -*- Makefile -*-
