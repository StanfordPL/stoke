  .text
  .globl PPP_GetInterface
  .type PPP_GetInterface, @function

#! file-offset 0x26b00
#! rip-offset  0x26b00
#! capacity    96 bytes

# Text                                         #  Line  RIP      Bytes  
.PPP_GetInterface:                             #        0x26b00  0      
  movl %edi, %esi                              #  1     0x26b00  2      
  movl 0x1000a14c(%rip), %edi                  #  2     0x26b02  6      
  testq %rdi, %rdi                             #  3     0x26b08  3      
  je .L_26b20                                  #  4     0x26b0b  6      
  jmpq ._ZN2pp6Module18GetPluginInterfaceEPKc  #  5     0x26b11  5      
  nop                                          #  6     0x26b16  1      
.L_26b20:                                      #        0x26b17  0      
  movl 0x1000a13b(%rip), %eax                  #  7     0x26b17  6      
  testq %rax, %rax                             #  8     0x26b1d  3      
  je .L_26b40                                  #  9     0x26b20  6      
  movl %esi, %edi                              #  10    0x26b26  2      
  andl $0xffffffe0, %eax                       #  11    0x26b28  5      
  addq %r15, %rax                              #  12    0x26b2d  3      
  jmpq %rax                                    #  13    0x26b30  2      
  nop                                          #  14    0x26b32  1      
.L_26b40:                                      #        0x26b33  0      
  popq %r11                                    #  15    0x26b33  3      
  andl $0xffffffe0, %r11d                      #  16    0x26b36  7      
  addq %r15, %r11                              #  17    0x26b3d  3      
  jmpq %r11                                    #  18    0x26b40  3      
  nop                                          #  19    0x26b43  1      
  nop                                          #  20    0x26b44  1      
                                                                        
.size PPP_GetInterface, .-PPP_GetInterface

