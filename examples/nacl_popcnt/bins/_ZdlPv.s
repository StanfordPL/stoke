  .text
  .globl _ZdlPv
  .type _ZdlPv, @function

#! file-offset 0x4b4e0
#! rip-offset  0x4b4e0
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  
._ZdlPv:                   #        0x4b4e0  0      
  movl %edi, %edi          #  1     0x4b4e0  2      
  testq %rdi, %rdi         #  2     0x4b4e2  3      
  je .L_4b500              #  3     0x4b4e5  6      
  jmpq .free               #  4     0x4b4eb  5      
  nop                      #  5     0x4b4f0  1      
  nop                      #  6     0x4b4f1  1      
.L_4b500:                  #        0x4b4f2  0      
  popq %r11                #  7     0x4b4f2  3      
  andl $0xffffffe0, %r11d  #  8     0x4b4f5  7      
  addq %r15, %r11          #  9     0x4b4fc  3      
  jmpq %r11                #  10    0x4b4ff  3      
  nop                      #  11    0x4b502  1      
  nop                      #  12    0x4b503  1      
  nop                      #  13    0x4b504  1      
  nop                      #  14    0x4b505  1      
  nop                      #  15    0x4b506  1      
  nop                      #  16    0x4b507  1      
  nop                      #  17    0x4b508  1      
  nop                      #  18    0x4b509  1      
  nop                      #  19    0x4b50a  1      
  nop                      #  20    0x4b50b  1      
  nop                      #  21    0x4b50c  1      
  nop                      #  22    0x4b50d  1      
  nop                      #  23    0x4b50e  1      
  nop                      #  24    0x4b50f  1      
  nop                      #  25    0x4b510  1      
  nop                      #  26    0x4b511  1      
  nop                      #  27    0x4b512  1      
  nop                      #  28    0x4b513  1      
  nop                      #  29    0x4b514  1      
  nop                      #  30    0x4b515  1      
                                                    
.size _ZdlPv, .-_ZdlPv

