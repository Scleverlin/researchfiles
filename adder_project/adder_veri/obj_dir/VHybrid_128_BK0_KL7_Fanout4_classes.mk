# Verilated -*- Makefile -*-
# DESCRIPTION: Verilator output: Make include file with class lists
#
# This file lists generated Verilated files, for including in higher level makefiles.
# See VHybrid_128_BK0_KL7_Fanout4.mk for the caller.

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
	VHybrid_128_BK0_KL7_Fanout4 \
	VHybrid_128_BK0_KL7_Fanout4___024root__DepSet_h23150a1d__0 \
	VHybrid_128_BK0_KL7_Fanout4___024root__DepSet_h015d420f__0 \
	VHybrid_128_BK0_KL7_Fanout4___024root__DepSet_h015d420f__1 \

# Generated module classes, non-fast-path, compile with low/medium optimization
VM_CLASSES_SLOW += \
	VHybrid_128_BK0_KL7_Fanout4___024root__Slow \
	VHybrid_128_BK0_KL7_Fanout4___024root__DepSet_h23150a1d__0__Slow \
	VHybrid_128_BK0_KL7_Fanout4___024root__DepSet_h015d420f__0__Slow \

# Generated support classes, fast-path, compile with highest optimization
VM_SUPPORT_FAST += \

# Generated support classes, non-fast-path, compile with low/medium optimization
VM_SUPPORT_SLOW += \
	VHybrid_128_BK0_KL7_Fanout4__Syms \

# Global classes, need linked once per executable, fast-path, compile with highest optimization
VM_GLOBAL_FAST += \
	verilated \
	verilated_threads \

# Global classes, need linked once per executable, non-fast-path, compile with low/medium optimization
VM_GLOBAL_SLOW += \


# Verilated -*- Makefile -*-
