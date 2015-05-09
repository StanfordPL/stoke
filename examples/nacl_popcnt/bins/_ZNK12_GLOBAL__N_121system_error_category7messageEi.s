  .text
  .globl _ZNK12_GLOBAL__N_121system_error_category7messageEi
  .type _ZNK12_GLOBAL__N_121system_error_category7messageEi, @function

#! file-offset 0x4f1a0
#! rip-offset  0x4f1a0
#! capacity    128 bytes

# Text                                                 #  Line  RIP      Bytes  
._ZNK12_GLOBAL__N_121system_error_category7messageEi:  #        0x4f1a0  0      
  pushq %rbx                                           #  1     0x4f1a0  2      
  movl %edi, %ebx                                      #  2     0x4f1a2  2      
  movl %edx, %edi                                      #  3     0x4f1a4  2      
  subl $0x10, %esp                                     #  4     0x4f1a6  3      
  addq %r15, %rsp                                      #  5     0x4f1a9  3      
  nop                                                  #  6     0x4f1ac  1      
  nop                                                  #  7     0x4f1ad  1      
  callq .strerror                                      #  8     0x4f1ae  5      
  leal 0xf(%rsp), %edx                                 #  9     0x4f1b3  4      
  movl %eax, %esi                                      #  10    0x4f1b7  2      
  movl %ebx, %edi                                      #  11    0x4f1b9  2      
  nop                                                  #  12    0x4f1bb  1      
  nop                                                  #  13    0x4f1bc  1      
  callq ._ZNSsC1EPKcRKSaIcE                            #  14    0x4f1bd  5      
  movl %ebx, %eax                                      #  15    0x4f1c2  2      
  addl $0x10, %esp                                     #  16    0x4f1c4  3      
  addq %r15, %rsp                                      #  17    0x4f1c7  3      
  popq %rbx                                            #  18    0x4f1ca  2      
  popq %r11                                            #  19    0x4f1cc  3      
  andl $0xffffffe0, %r11d                              #  20    0x4f1cf  7      
  addq %r15, %r11                                      #  21    0x4f1d6  3      
  jmpq %r11                                            #  22    0x4f1d9  3      
  nop                                                  #  23    0x4f1dc  1      
  movl %eax, %edi                                      #  24    0x4f1dd  2      
  nop                                                  #  25    0x4f1df  1      
  nop                                                  #  26    0x4f1e0  1      
  callq ._Unwind_Resume                                #  27    0x4f1e1  5      
                                                                                
.size _ZNK12_GLOBAL__N_121system_error_category7messageEi, .-_ZNK12_GLOBAL__N_121system_error_category7messageEi

