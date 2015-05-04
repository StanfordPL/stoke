  .text
  .globl _ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_
  .type _ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_, @function

#! file-offset 0x46f40
#! rip-offset  0x46f40
#! capacity    160 bytes

# Text                                                  #  Line  RIP      Bytes  
._ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_:  #        0x46f40  0      
  movq %rbx, -0x10(%rsp)                                #  1     0x46f40  5      
  movl %edi, %ebx                                       #  2     0x46f45  2      
  movq %r12, -0x8(%rsp)                                 #  3     0x46f47  5      
  movl %esi, %esi                                       #  4     0x46f4c  2      
  movl %edx, %r12d                                      #  5     0x46f4e  3      
  movl %ebx, %edi                                       #  6     0x46f51  2      
  subl $0x18, %esp                                      #  7     0x46f53  3      
  addq %r15, %rsp                                       #  8     0x46f56  3      
  xchgw %ax, %ax                                        #  9     0x46f59  3      
  callq ._ZNSsC1ERKSs                                   #  10    0x46f5c  5      
  movl %r12d, %esi                                      #  11    0x46f61  3      
  movl %ebx, %edi                                       #  12    0x46f64  2      
  nop                                                   #  13    0x46f66  1      
  nop                                                   #  14    0x46f67  1      
  callq ._ZNSs6appendERKSs                              #  15    0x46f68  5      
  movl %ebx, %eax                                       #  16    0x46f6d  2      
  movq 0x10(%rsp), %r12                                 #  17    0x46f6f  5      
  movq 0x8(%rsp), %rbx                                  #  18    0x46f74  5      
  addl $0x18, %esp                                      #  19    0x46f79  3      
  addq %r15, %rsp                                       #  20    0x46f7c  3      
  popq %r11                                             #  21    0x46f7f  3      
  andl $0xffffffe0, %r11d                               #  22    0x46f82  7      
  addq %r15, %r11                                       #  23    0x46f89  3      
  jmpq %r11                                             #  24    0x46f8c  3      
  xchgw %ax, %ax                                        #  25    0x46f8f  3      
  movl %eax, %r12d                                      #  26    0x46f92  3      
  movl %ebx, %edi                                       #  27    0x46f95  2      
  nop                                                   #  28    0x46f97  1      
  nop                                                   #  29    0x46f98  1      
  callq ._ZNSsD1Ev                                      #  30    0x46f99  5      
  movl %r12d, %edi                                      #  31    0x46f9e  3      
  nop                                                   #  32    0x46fa1  1      
  nop                                                   #  33    0x46fa2  1      
  callq ._Unwind_Resume                                 #  34    0x46fa3  5      
                                                                                 
.size _ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_, .-_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_

