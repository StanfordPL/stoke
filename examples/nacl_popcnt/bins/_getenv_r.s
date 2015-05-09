  .text
  .globl _getenv_r
  .type _getenv_r, @function

#! file-offset 0x69a60
#! rip-offset  0x69a60
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  
._getenv_r:                #        0x69a60  0      
  subl $0x18, %esp         #  1     0x69a60  3      
  addq %r15, %rsp          #  2     0x69a63  3      
  movl %edi, %edi          #  3     0x69a66  2      
  movl %esi, %esi          #  4     0x69a68  2      
  leal 0xc(%rsp), %edx     #  5     0x69a6a  4      
  nop                      #  6     0x69a6e  1      
  callq ._findenv_r        #  7     0x69a6f  5      
  addl $0x18, %esp         #  8     0x69a74  3      
  addq %r15, %rsp          #  9     0x69a77  3      
  movl %eax, %eax          #  10    0x69a7a  2      
  popq %r11                #  11    0x69a7c  3      
  andl $0xffffffe0, %r11d  #  12    0x69a7f  7      
  addq %r15, %r11          #  13    0x69a86  3      
  jmpq %r11                #  14    0x69a89  3      
  nop                      #  15    0x69a8c  1      
  nop                      #  16    0x69a8d  1      
  nop                      #  17    0x69a8e  1      
  nop                      #  18    0x69a8f  1      
  nop                      #  19    0x69a90  1      
  nop                      #  20    0x69a91  1      
  nop                      #  21    0x69a92  1      
  nop                      #  22    0x69a93  1      
  nop                      #  23    0x69a94  1      
  nop                      #  24    0x69a95  1      
  nop                      #  25    0x69a96  1      
  nop                      #  26    0x69a97  1      
                                                    
.size _getenv_r, .-_getenv_r

