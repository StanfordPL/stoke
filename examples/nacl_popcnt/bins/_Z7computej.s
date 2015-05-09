  .text
  .globl _Z7computej
  .type _Z7computej, @function

#! file-offset 0x201e0
#! rip-offset  0x201e0
#! capacity    96 bytes

# Text                     #  Line  RIP      Bytes  
._Z7computej:              #        0x201e0  0      
  xorl %eax, %eax          #  1     0x201e0  2      
  testl %edi, %edi         #  2     0x201e2  2      
  je .L_20220              #  3     0x201e4  6      
  nop                      #  4     0x201ea  1      
  nop                      #  5     0x201eb  1      
.L_20200:                  #        0x201ec  0      
  movl %edi, %edx          #  6     0x201ec  2      
  andl $0x1, %edx          #  7     0x201ee  3      
  cmpl $0x1, %edx          #  8     0x201f1  3      
  sbbl $0xffffffff, %eax   #  9     0x201f4  5      
  shrl $0x1, %edi          #  10    0x201f9  2      
  jne .L_20200             #  11    0x201fb  6      
  xchgw %ax, %ax           #  12    0x20201  3      
  nop                      #  13    0x20204  1      
.L_20220:                  #        0x20205  0      
  popq %r11                #  14    0x20205  3      
  andl $0xffffffe0, %r11d  #  15    0x20208  7      
  addq %r15, %r11          #  16    0x2020f  3      
  jmpq %r11                #  17    0x20212  3      
  nop                      #  18    0x20215  1      
  nop                      #  19    0x20216  1      
                                                    
.size _Z7computej, .-_Z7computej

