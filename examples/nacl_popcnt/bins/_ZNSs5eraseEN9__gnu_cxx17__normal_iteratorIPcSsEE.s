  .text
  .globl _ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEE
  .type _ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEE, @function

#! file-offset 0x488c0
#! rip-offset  0x488c0
#! capacity    128 bytes

# Text                                               #  Line  RIP      Bytes  
._ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEE:  #        0x488c0  0      
  movq %r12, -0x8(%rsp)                              #  1     0x488c0  5      
  movl %edi, %r12d                                   #  2     0x488c5  3      
  movq %rbx, -0x10(%rsp)                             #  3     0x488c8  5      
  subl $0x18, %esp                                   #  4     0x488cd  3      
  addq %r15, %rsp                                    #  5     0x488d0  3      
  movl %esi, %ebx                                    #  6     0x488d3  2      
  movl %r12d, %r12d                                  #  7     0x488d5  3      
  subl (%r15,%r12,1), %ebx                           #  8     0x488d8  4      
  nop                                                #  9     0x488dc  1      
  movl $0x1, %edx                                    #  10    0x488dd  5      
  movl %r12d, %edi                                   #  11    0x488e2  3      
  xorl %ecx, %ecx                                    #  12    0x488e5  2      
  movl %ebx, %esi                                    #  13    0x488e7  2      
  nop                                                #  14    0x488e9  1      
  callq ._ZNSs9_M_mutateEjjj                         #  15    0x488ea  5      
  movl %r12d, %r12d                                  #  16    0x488ef  3      
  movl (%r15,%r12,1), %eax                           #  17    0x488f2  4      
  leal -0xc(%rax), %edx                              #  18    0x488f6  3      
  leal (%rbx,%rax,1), %eax                           #  19    0x488f9  3      
  movl %edx, %edx                                    #  20    0x488fc  2      
  movl $0xffffffff, 0x8(%r15,%rdx,1)                 #  21    0x488fe  9      
  movq 0x8(%rsp), %rbx                               #  22    0x48907  5      
  nop                                                #  23    0x4890c  1      
  movq 0x10(%rsp), %r12                              #  24    0x4890d  5      
  addl $0x18, %esp                                   #  25    0x48912  3      
  addq %r15, %rsp                                    #  26    0x48915  3      
  popq %r11                                          #  27    0x48918  3      
  andl $0xffffffe0, %r11d                            #  28    0x4891b  7      
  addq %r15, %r11                                    #  29    0x48922  3      
  jmpq %r11                                          #  30    0x48925  3      
  nop                                                #  31    0x48928  1      
  nop                                                #  32    0x48929  1      
  nop                                                #  33    0x4892a  1      
  nop                                                #  34    0x4892b  1      
  nop                                                #  35    0x4892c  1      
  nop                                                #  36    0x4892d  1      
  nop                                                #  37    0x4892e  1      
  nop                                                #  38    0x4892f  1      
  nop                                                #  39    0x48930  1      
                                                                              
.size _ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEE, .-_ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEE

