/*
 * void CopyWithMovsb(void *src, void *dst, size_t size)
 */
.text
    .align 4
#if defined(TARGET_MAC)
.globl _CopyWithMovsb
_CopyWithMovsb:
#else
.globl CopyWithMovsb
CopyWithMovsb:
#endif
    xchg    %rdi, %rsi  /* src, dst */
    mov     %rdx, %rcx  /* size */
    rep movsb
    ret
