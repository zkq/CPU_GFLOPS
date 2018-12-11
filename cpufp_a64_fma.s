.globl cpufp_a64_fma_fp32
.globl cpufp_a64_fma_fp64

cpufp_a64_fma_fp32:
    ldr x0, =0x40000000
    eor v0.16b, v0.16b, v0.16b
    eor v1.16b, v1.16b, v1.16b
    eor v2.16b, v2.16b, v2.16b
    eor v3.16b, v3.16b, v3.16b
    eor v4.16b, v4.16b, v4.16b
    eor v5.16b, v5.16b, v5.16b
    eor v6.16b, v6.16b, v6.16b
    eor v7.16b, v7.16b, v7.16b
    eor v8.16b, v8.16b, v8.16b
    eor v9.16b, v9.16b, v9.16b
.cpufp.a64.fma.fp32.L1:
    fmla v0.4s, v0.4s, v0.4s
    fmla v1.4s, v1.4S, v1.4s
    fmla v2.4s, v2.4s, v2.4s
    fmla v3.4s, v3.4s, v3.4s
    fmla v4.4s, v4.4s, v4.4s
    subs x0, x0, #1
    fmla v5.4s, v5.4s, v5.4s
    fmla v6.4s, v6.4s, v6.4s
    fmla v7.4s, v7.4s, v7.4s
    fmla v8.4s, v8.4s, v8.4s
    fmla v9.4s, v9.4s, v9.4s
    bne .cpufp.a64.fma.fp32.L1
    ret

cpufp_a64_fma_fp64:
    ldr x0, =0x40000000
    eor v0.16b, v0.16b, v0.16b
    eor v1.16b, v1.16b, v1.16b
    eor v2.16b, v2.16b, v2.16b
    eor v3.16b, v3.16b, v3.16b
    eor v4.16b, v4.16b, v4.16b
    eor v5.16b, v5.16b, v5.16b
    eor v6.16b, v6.16b, v6.16b
    eor v7.16b, v7.16b, v7.16b
    eor v8.16b, v8.16b, v8.16b
    eor v9.16b, v9.16b, v9.16b
.cpufp.a64.fma.fp64.L1:
    fmla v0.2d, v0.2d, v0.2d
    fmla v1.2d, v1.2d, v1.2d
    fmla v2.2d, v2.2d, v2.2d
    fmla v3.2d, v3.2d, v3.2d
    fmla v4.2d, v4.2d, v4.2d
    subs x0, x0, #1
    fmla v5.2d, v5.2d, v5.2d
    fmla v6.2d, v6.2d, v6.2d
    fmla v7.2d, v7.2d, v7.2d
    fmla v8.2d, v8.2d, v8.2d
    fmla v9.2d, v9.2d, v9.2d
    bne .cpufp.a64.fma.fp64.L1
    ret
