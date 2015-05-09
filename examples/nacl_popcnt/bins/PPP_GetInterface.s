  .text
  .globl PPP_GetInterface
  .type PPP_GetInterface, @function

#! file-offset 0x26a60
#! rip-offset  0x26a60
#! capacity    96 bytes

# Text                                         #  Line  RIP      Bytes  
.PPP_GetInterface:                             #        0x26a60  0      
  movl %edi, %esi                              #  1     0x26a60  2      
  movl 0x1000a1ec(%rip), %edi                  #  2     0x26a62  6      
  testq %rdi, %rdi                             #  3     0x26a68  3      
  je .L_26a80                                  #  4     0x26a6b  6      
  jmpq ._ZN2pp6Module18GetPluginInterfaceEPKc  #  5     0x26a71  5      
  nop                                          #  6     0x26a76  1      
.L_26a80:                                      #        0x26a77  0      
  movl 0x1000a1db(%rip), %eax                  #  7     0x26a77  6      
  testq %rax, %rax                             #  8     0x26a7d  3      
  je .L_26aa0                                  #  9     0x26a80  6      
  movl %esi, %edi                              #  10    0x26a86  2      
  andl $0xffffffe0, %eax                       #  11    0x26a88  5      
  addq %r15, %rax                              #  12    0x26a8d  3      
  jmpq %rax                                    #  13    0x26a90  2      
  nop                                          #  14    0x26a92  1      
.L_26aa0:                                      #        0x26a93  0      
  popq %r11                                    #  15    0x26a93  3      
  andl $0xffffffe0, %r11d                      #  16    0x26a96  7      
  addq %r15, %r11                              #  17    0x26a9d  3      
  jmpq %r11                                    #  18    0x26aa0  3      
  nop                                          #  19    0x26aa3  1      
  nop                                          #  20    0x26aa4  1      
                                                                        
.size PPP_GetInterface, .-PPP_GetInterface

