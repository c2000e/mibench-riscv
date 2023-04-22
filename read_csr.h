#ifndef READ_CSR_H
#define READ_CSR_H

// Taken from: https://docs.boom-core.org/en/latest/sections/uarch-counters.html#read-csr
#define read_csr_safe(reg) ({ register long __tmp asm("a0"); \
        asm volatile ("csrr %0, " #reg : "=r"(__tmp)); \
        __tmp; })

#endif
