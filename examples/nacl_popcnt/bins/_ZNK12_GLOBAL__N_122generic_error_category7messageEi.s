  .text
  .globl _ZNK12_GLOBAL__N_122generic_error_category7messageEi
  .type _ZNK12_GLOBAL__N_122generic_error_category7messageEi, @function

#! file-offset 0x4f140
#! rip-offset  0x4f140
#! capacity    128 bytes

# Text                                                  #  Line  RIP      Bytes  
._ZNK12_GLOBAL__N_122generic_error_category7messageEi:  #        0x4f140  0      
  pushq %rbx                                            #  1     0x4f140  2      
  movl %edi, %ebx                                       #  2     0x4f142  2      
  movl %edx, %edi                                       #  3     0x4f144  2      
  subl $0x10, %esp                                      #  4     0x4f146  3      
  addq %r15, %rsp                                       #  5     0x4f149  3      
  nop                                                   #  6     0x4f14c  1      
  nop                                                   #  7     0x4f14d  1      
  callq .strerror                                       #  8     0x4f14e  5      
  leal 0xf(%rsp), %edx                                  #  9     0x4f153  4      
  movl %eax, %esi                                       #  10    0x4f157  2      
  movl %ebx, %edi                                       #  11    0x4f159  2      
  nop                                                   #  12    0x4f15b  1      
  nop                                                   #  13    0x4f15c  1      
  callq ._ZNSsC1EPKcRKSaIcE                             #  14    0x4f15d  5      
  movl %ebx, %eax                                       #  15    0x4f162  2      
  addl $0x10, %esp                                      #  16    0x4f164  3      
  addq %r15, %rsp                                       #  17    0x4f167  3      
  popq %rbx                                             #  18    0x4f16a  2      
  popq %r11                                             #  19    0x4f16c  3      
  andl $0xffffffe0, %r11d                               #  20    0x4f16f  7      
  addq %r15, %r11                                       #  21    0x4f176  3      
  jmpq %r11                                             #  22    0x4f179  3      
  nop                                                   #  23    0x4f17c  1      
  movl %eax, %edi                                       #  24    0x4f17d  2      
  nop                                                   #  25    0x4f17f  1      
  nop                                                   #  26    0x4f180  1      
  callq ._Unwind_Resume                                 #  27    0x4f181  5      
                                                                                 
.size _ZNK12_GLOBAL__N_122generic_error_category7messageEi, .-_ZNK12_GLOBAL__N_122generic_error_category7messageEi

