  .text
  .globl _getenv_r
  .type _getenv_r, @function

#! file-offset 0x69a80
#! rip-offset  0x69a80
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  
._getenv_r:                #        0x69a80  0      
  subl $0x18, %esp         #  1     0x69a80  3      
  addq %r15, %rsp          #  2     0x69a83  3      
  movl %edi, %edi          #  3     0x69a86  2      
  movl %esi, %esi          #  4     0x69a88  2      
  leal 0xc(%rsp), %edx     #  5     0x69a8a  4      
  nop                      #  6     0x69a8e  1      
  callq ._findenv_r        #  7     0x69a8f  5      
  addl $0x18, %esp         #  8     0x69a94  3      
  addq %r15, %rsp          #  9     0x69a97  3      
  movl %eax, %eax          #  10    0x69a9a  2      
  popq %r11                #  11    0x69a9c  3      
  andl $0xffffffe0, %r11d  #  12    0x69a9f  7      
  addq %r15, %r11          #  13    0x69aa6  3      
  jmpq %r11                #  14    0x69aa9  3      
  nop                      #  15    0x69aac  1      
  nop                      #  16    0x69aad  1      
  nop                      #  17    0x69aae  1      
  nop                      #  18    0x69aaf  1      
  nop                      #  19    0x69ab0  1      
  nop                      #  20    0x69ab1  1      
  nop                      #  21    0x69ab2  1      
  nop                      #  22    0x69ab3  1      
  nop                      #  23    0x69ab4  1      
  nop                      #  24    0x69ab5  1      
  nop                      #  25    0x69ab6  1      
  nop                      #  26    0x69ab7  1      
                                                    
.size _getenv_r, .-_getenv_r

