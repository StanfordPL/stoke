  .text
  .globl _ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEE
  .type _ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEE, @function

#! file-offset 0x48960
#! rip-offset  0x48960
#! capacity    128 bytes

# Text                                               #  Line  RIP      Bytes  
._ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEE:  #        0x48960  0      
  movq %r12, -0x8(%rsp)                              #  1     0x48960  5      
  movl %edi, %r12d                                   #  2     0x48965  3      
  movq %rbx, -0x10(%rsp)                             #  3     0x48968  5      
  subl $0x18, %esp                                   #  4     0x4896d  3      
  addq %r15, %rsp                                    #  5     0x48970  3      
  movl %esi, %ebx                                    #  6     0x48973  2      
  movl %r12d, %r12d                                  #  7     0x48975  3      
  subl (%r15,%r12,1), %ebx                           #  8     0x48978  4      
  nop                                                #  9     0x4897c  1      
  movl $0x1, %edx                                    #  10    0x4897d  5      
  movl %r12d, %edi                                   #  11    0x48982  3      
  xorl %ecx, %ecx                                    #  12    0x48985  2      
  movl %ebx, %esi                                    #  13    0x48987  2      
  nop                                                #  14    0x48989  1      
  callq ._ZNSs9_M_mutateEjjj                         #  15    0x4898a  5      
  movl %r12d, %r12d                                  #  16    0x4898f  3      
  movl (%r15,%r12,1), %eax                           #  17    0x48992  4      
  leal -0xc(%rax), %edx                              #  18    0x48996  3      
  leal (%rbx,%rax,1), %eax                           #  19    0x48999  3      
  movl %edx, %edx                                    #  20    0x4899c  2      
  movl $0xffffffff, 0x8(%r15,%rdx,1)                 #  21    0x4899e  9      
  movq 0x8(%rsp), %rbx                               #  22    0x489a7  5      
  nop                                                #  23    0x489ac  1      
  movq 0x10(%rsp), %r12                              #  24    0x489ad  5      
  addl $0x18, %esp                                   #  25    0x489b2  3      
  addq %r15, %rsp                                    #  26    0x489b5  3      
  popq %r11                                          #  27    0x489b8  3      
  andl $0xffffffe0, %r11d                            #  28    0x489bb  7      
  addq %r15, %r11                                    #  29    0x489c2  3      
  jmpq %r11                                          #  30    0x489c5  3      
  nop                                                #  31    0x489c8  1      
  nop                                                #  32    0x489c9  1      
  nop                                                #  33    0x489ca  1      
  nop                                                #  34    0x489cb  1      
  nop                                                #  35    0x489cc  1      
  nop                                                #  36    0x489cd  1      
  nop                                                #  37    0x489ce  1      
  nop                                                #  38    0x489cf  1      
  nop                                                #  39    0x489d0  1      
                                                                              
.size _ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEE, .-_ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEE

