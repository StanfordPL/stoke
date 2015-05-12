  .text
  .globl _ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_
  .type _ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_, @function

#! file-offset 0x46ec0
#! rip-offset  0x46ec0
#! capacity    160 bytes

# Text                                                  #  Line  RIP      Bytes  
._ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_:  #        0x46ec0  0      
  movq %rbx, -0x10(%rsp)                                #  1     0x46ec0  5      
  movl %edi, %ebx                                       #  2     0x46ec5  2      
  movq %r12, -0x8(%rsp)                                 #  3     0x46ec7  5      
  movl %esi, %esi                                       #  4     0x46ecc  2      
  movl %edx, %r12d                                      #  5     0x46ece  3      
  movl %ebx, %edi                                       #  6     0x46ed1  2      
  subl $0x18, %esp                                      #  7     0x46ed3  3      
  addq %r15, %rsp                                       #  8     0x46ed6  3      
  xchgw %ax, %ax                                        #  9     0x46ed9  3      
  callq ._ZNSsC1ERKSs                                   #  10    0x46edc  5      
  movl %r12d, %esi                                      #  11    0x46ee1  3      
  movl %ebx, %edi                                       #  12    0x46ee4  2      
  nop                                                   #  13    0x46ee6  1      
  nop                                                   #  14    0x46ee7  1      
  callq ._ZNSs6appendERKSs                              #  15    0x46ee8  5      
  movl %ebx, %eax                                       #  16    0x46eed  2      
  movq 0x10(%rsp), %r12                                 #  17    0x46eef  5      
  movq 0x8(%rsp), %rbx                                  #  18    0x46ef4  5      
  addl $0x18, %esp                                      #  19    0x46ef9  3      
  addq %r15, %rsp                                       #  20    0x46efc  3      
  popq %r11                                             #  21    0x46eff  3      
  andl $0xffffffe0, %r11d                               #  22    0x46f02  7      
  addq %r15, %r11                                       #  23    0x46f09  3      
  jmpq %r11                                             #  24    0x46f0c  3      
  xchgw %ax, %ax                                        #  25    0x46f0f  3      
  movl %eax, %r12d                                      #  26    0x46f12  3      
  movl %ebx, %edi                                       #  27    0x46f15  2      
  nop                                                   #  28    0x46f17  1      
  nop                                                   #  29    0x46f18  1      
  callq ._ZNSsD1Ev                                      #  30    0x46f19  5      
  movl %r12d, %edi                                      #  31    0x46f1e  3      
  nop                                                   #  32    0x46f21  1      
  nop                                                   #  33    0x46f22  1      
  callq ._Unwind_Resume                                 #  34    0x46f23  5      
                                                                                 
.size _ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_, .-_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_

