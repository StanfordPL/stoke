  .text
  .globl _ZNK12_GLOBAL__N_121system_error_category7messageEi
  .type _ZNK12_GLOBAL__N_121system_error_category7messageEi, @function

#! file-offset 0x4f240
#! rip-offset  0x4f240
#! capacity    128 bytes

# Text                                                 #  Line  RIP      Bytes  
._ZNK12_GLOBAL__N_121system_error_category7messageEi:  #        0x4f240  0      
  pushq %rbx                                           #  1     0x4f240  2      
  movl %edi, %ebx                                      #  2     0x4f242  2      
  movl %edx, %edi                                      #  3     0x4f244  2      
  subl $0x10, %esp                                     #  4     0x4f246  3      
  addq %r15, %rsp                                      #  5     0x4f249  3      
  nop                                                  #  6     0x4f24c  1      
  nop                                                  #  7     0x4f24d  1      
  callq .strerror                                      #  8     0x4f24e  5      
  leal 0xf(%rsp), %edx                                 #  9     0x4f253  4      
  movl %eax, %esi                                      #  10    0x4f257  2      
  movl %ebx, %edi                                      #  11    0x4f259  2      
  nop                                                  #  12    0x4f25b  1      
  nop                                                  #  13    0x4f25c  1      
  callq ._ZNSsC1EPKcRKSaIcE                            #  14    0x4f25d  5      
  movl %ebx, %eax                                      #  15    0x4f262  2      
  addl $0x10, %esp                                     #  16    0x4f264  3      
  addq %r15, %rsp                                      #  17    0x4f267  3      
  popq %rbx                                            #  18    0x4f26a  2      
  popq %r11                                            #  19    0x4f26c  3      
  andl $0xffffffe0, %r11d                              #  20    0x4f26f  7      
  addq %r15, %r11                                      #  21    0x4f276  3      
  jmpq %r11                                            #  22    0x4f279  3      
  nop                                                  #  23    0x4f27c  1      
  movl %eax, %edi                                      #  24    0x4f27d  2      
  nop                                                  #  25    0x4f27f  1      
  nop                                                  #  26    0x4f280  1      
  callq ._Unwind_Resume                                #  27    0x4f281  5      
                                                                                
.size _ZNK12_GLOBAL__N_121system_error_category7messageEi, .-_ZNK12_GLOBAL__N_121system_error_category7messageEi

