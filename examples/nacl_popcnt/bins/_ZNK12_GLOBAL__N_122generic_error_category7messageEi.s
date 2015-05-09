  .text
  .globl _ZNK12_GLOBAL__N_122generic_error_category7messageEi
  .type _ZNK12_GLOBAL__N_122generic_error_category7messageEi, @function

#! file-offset 0x4f120
#! rip-offset  0x4f120
#! capacity    128 bytes

# Text                                                  #  Line  RIP      Bytes  
._ZNK12_GLOBAL__N_122generic_error_category7messageEi:  #        0x4f120  0      
  pushq %rbx                                            #  1     0x4f120  2      
  movl %edi, %ebx                                       #  2     0x4f122  2      
  movl %edx, %edi                                       #  3     0x4f124  2      
  subl $0x10, %esp                                      #  4     0x4f126  3      
  addq %r15, %rsp                                       #  5     0x4f129  3      
  nop                                                   #  6     0x4f12c  1      
  nop                                                   #  7     0x4f12d  1      
  callq .strerror                                       #  8     0x4f12e  5      
  leal 0xf(%rsp), %edx                                  #  9     0x4f133  4      
  movl %eax, %esi                                       #  10    0x4f137  2      
  movl %ebx, %edi                                       #  11    0x4f139  2      
  nop                                                   #  12    0x4f13b  1      
  nop                                                   #  13    0x4f13c  1      
  callq ._ZNSsC1EPKcRKSaIcE                             #  14    0x4f13d  5      
  movl %ebx, %eax                                       #  15    0x4f142  2      
  addl $0x10, %esp                                      #  16    0x4f144  3      
  addq %r15, %rsp                                       #  17    0x4f147  3      
  popq %rbx                                             #  18    0x4f14a  2      
  popq %r11                                             #  19    0x4f14c  3      
  andl $0xffffffe0, %r11d                               #  20    0x4f14f  7      
  addq %r15, %r11                                       #  21    0x4f156  3      
  jmpq %r11                                             #  22    0x4f159  3      
  nop                                                   #  23    0x4f15c  1      
  movl %eax, %edi                                       #  24    0x4f15d  2      
  nop                                                   #  25    0x4f15f  1      
  nop                                                   #  26    0x4f160  1      
  callq ._Unwind_Resume                                 #  27    0x4f161  5      
                                                                                 
.size _ZNK12_GLOBAL__N_122generic_error_category7messageEi, .-_ZNK12_GLOBAL__N_122generic_error_category7messageEi

