  .text
  .globl PPP_GetInterface
  .type PPP_GetInterface, @function

#! file-offset 0x26a80
#! rip-offset  0x26a80
#! capacity    96 bytes

# Text                                         #  Line  RIP      Bytes  
.PPP_GetInterface:                             #        0x26a80  0      
  movl %edi, %esi                              #  1     0x26a80  2      
  movl 0x1000a1cc(%rip), %edi                  #  2     0x26a82  6      
  testq %rdi, %rdi                             #  3     0x26a88  3      
  je .L_26aa0                                  #  4     0x26a8b  6      
  jmpq ._ZN2pp6Module18GetPluginInterfaceEPKc  #  5     0x26a91  5      
  nop                                          #  6     0x26a96  1      
.L_26aa0:                                      #        0x26a97  0      
  movl 0x1000a1bb(%rip), %eax                  #  7     0x26a97  6      
  testq %rax, %rax                             #  8     0x26a9d  3      
  je .L_26ac0                                  #  9     0x26aa0  6      
  movl %esi, %edi                              #  10    0x26aa6  2      
  andl $0xffffffe0, %eax                       #  11    0x26aa8  5      
  addq %r15, %rax                              #  12    0x26aad  3      
  jmpq %rax                                    #  13    0x26ab0  2      
  nop                                          #  14    0x26ab2  1      
.L_26ac0:                                      #        0x26ab3  0      
  popq %r11                                    #  15    0x26ab3  3      
  andl $0xffffffe0, %r11d                      #  16    0x26ab6  7      
  addq %r15, %r11                              #  17    0x26abd  3      
  jmpq %r11                                    #  18    0x26ac0  3      
  nop                                          #  19    0x26ac3  1      
  nop                                          #  20    0x26ac4  1      
                                                                        
.size PPP_GetInterface, .-PPP_GetInterface

