# Verilated -*- Makefile -*-
# DESCRIPTION: Verilator output: Make include file with class lists
#
# This file lists generated Verilated files, for including in higher level makefiles.
# See VMul_32_HC_64_BK0_KS6.mk for the caller.

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
	VMul_32_HC_64_BK0_KS6 \
	VMul_32_HC_64_BK0_KS6___024root__DepSet_h905d73b3__0 \
	VMul_32_HC_64_BK0_KS6___024root__DepSet_hd5168cd6__0 \
	VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6__DepSet_h8d8b2da4__0 \
	VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6__DepSet_h8d8b2da4__1 \
	VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6__DepSet_h8d8b2da4__2 \
	VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6__DepSet_h8d8b2da4__3 \
	VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6__DepSet_h8d8b2da4__4 \
	VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6__DepSet_h8d8b2da4__5 \
	VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6__DepSet_h8d8b2da4__6 \
	VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6__DepSet_h8d8b2da4__7 \
	VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6__DepSet_h8d8b2da4__8 \
	VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6__DepSet_h8d8b2da4__9 \
	VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6__DepSet_h8d8b2da4__10 \

# Generated module classes, non-fast-path, compile with low/medium optimization
VM_CLASSES_SLOW += \
	VMul_32_HC_64_BK0_KS6___024root__Slow \
	VMul_32_HC_64_BK0_KS6___024root__DepSet_h905d73b3__0__Slow \
	VMul_32_HC_64_BK0_KS6___024root__DepSet_hd5168cd6__0__Slow \
	VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6__Slow \
	VMul_32_HC_64_BK0_KS6_HC_64_BK0_KS6__DepSet_h97dbdb11__0__Slow \

# Generated support classes, fast-path, compile with highest optimization
VM_SUPPORT_FAST += \

# Generated support classes, non-fast-path, compile with low/medium optimization
VM_SUPPORT_SLOW += \
	VMul_32_HC_64_BK0_KS6__Syms \

# Global classes, need linked once per executable, fast-path, compile with highest optimization
VM_GLOBAL_FAST += \
	verilated \
	verilated_threads \

# Global classes, need linked once per executable, non-fast-path, compile with low/medium optimization
VM_GLOBAL_SLOW += \


# Verilated -*- Makefile -*-
