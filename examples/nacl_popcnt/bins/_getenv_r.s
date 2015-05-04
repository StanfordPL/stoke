  .text
  .globl _getenv_r
  .type _getenv_r, @function

#! file-offset 0x69b00
#! rip-offset  0x69b00
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  
._getenv_r:                #        0x69b00  0      
  subl $0x18, %esp         #  1     0x69b00  3      
  addq %r15, %rsp          #  2     0x69b03  3      
  movl %edi, %edi          #  3     0x69b06  2      
  movl %esi, %esi          #  4     0x69b08  2      
  leal 0xc(%rsp), %edx     #  5     0x69b0a  4      
  nop                      #  6     0x69b0e  1      
  callq ._findenv_r        #  7     0x69b0f  5      
  addl $0x18, %esp         #  8     0x69b14  3      
  addq %r15, %rsp          #  9     0x69b17  3      
  movl %eax, %eax          #  10    0x69b1a  2      
  popq %r11                #  11    0x69b1c  3      
  andl $0xffffffe0, %r11d  #  12    0x69b1f  7      
  addq %r15, %r11          #  13    0x69b26  3      
  jmpq %r11                #  14    0x69b29  3      
  nop                      #  15    0x69b2c  1      
  nop                      #  16    0x69b2d  1      
  nop                      #  17    0x69b2e  1      
  nop                      #  18    0x69b2f  1      
  nop                      #  19    0x69b30  1      
  nop                      #  20    0x69b31  1      
  nop                      #  21    0x69b32  1      
  nop                      #  22    0x69b33  1      
  nop                      #  23    0x69b34  1      
  nop                      #  24    0x69b35  1      
  nop                      #  25    0x69b36  1      
  nop                      #  26    0x69b37  1      
                                                    
.size _getenv_r, .-_getenv_r

