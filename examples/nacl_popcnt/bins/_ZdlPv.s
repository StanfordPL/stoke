  .text
  .globl _ZdlPv
  .type _ZdlPv, @function

#! file-offset 0x4b460
#! rip-offset  0x4b460
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  
._ZdlPv:                   #        0x4b460  0      
  movl %edi, %edi          #  1     0x4b460  2      
  testq %rdi, %rdi         #  2     0x4b462  3      
  je .L_4b480              #  3     0x4b465  6      
  jmpq .free               #  4     0x4b46b  5      
  nop                      #  5     0x4b470  1      
  nop                      #  6     0x4b471  1      
.L_4b480:                  #        0x4b472  0      
  popq %r11                #  7     0x4b472  3      
  andl $0xffffffe0, %r11d  #  8     0x4b475  7      
  addq %r15, %r11          #  9     0x4b47c  3      
  jmpq %r11                #  10    0x4b47f  3      
  nop                      #  11    0x4b482  1      
  nop                      #  12    0x4b483  1      
  nop                      #  13    0x4b484  1      
  nop                      #  14    0x4b485  1      
  nop                      #  15    0x4b486  1      
  nop                      #  16    0x4b487  1      
  nop                      #  17    0x4b488  1      
  nop                      #  18    0x4b489  1      
  nop                      #  19    0x4b48a  1      
  nop                      #  20    0x4b48b  1      
  nop                      #  21    0x4b48c  1      
  nop                      #  22    0x4b48d  1      
  nop                      #  23    0x4b48e  1      
  nop                      #  24    0x4b48f  1      
  nop                      #  25    0x4b490  1      
  nop                      #  26    0x4b491  1      
  nop                      #  27    0x4b492  1      
  nop                      #  28    0x4b493  1      
  nop                      #  29    0x4b494  1      
  nop                      #  30    0x4b495  1      
                                                    
.size _ZdlPv, .-_ZdlPv

