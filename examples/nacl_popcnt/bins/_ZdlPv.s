  .text
  .globl _ZdlPv
  .type _ZdlPv, @function

#! file-offset 0x4b440
#! rip-offset  0x4b440
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  
._ZdlPv:                   #        0x4b440  0      
  movl %edi, %edi          #  1     0x4b440  2      
  testq %rdi, %rdi         #  2     0x4b442  3      
  je .L_4b460              #  3     0x4b445  6      
  jmpq .free               #  4     0x4b44b  5      
  nop                      #  5     0x4b450  1      
  nop                      #  6     0x4b451  1      
.L_4b460:                  #        0x4b452  0      
  popq %r11                #  7     0x4b452  3      
  andl $0xffffffe0, %r11d  #  8     0x4b455  7      
  addq %r15, %r11          #  9     0x4b45c  3      
  jmpq %r11                #  10    0x4b45f  3      
  nop                      #  11    0x4b462  1      
  nop                      #  12    0x4b463  1      
  nop                      #  13    0x4b464  1      
  nop                      #  14    0x4b465  1      
  nop                      #  15    0x4b466  1      
  nop                      #  16    0x4b467  1      
  nop                      #  17    0x4b468  1      
  nop                      #  18    0x4b469  1      
  nop                      #  19    0x4b46a  1      
  nop                      #  20    0x4b46b  1      
  nop                      #  21    0x4b46c  1      
  nop                      #  22    0x4b46d  1      
  nop                      #  23    0x4b46e  1      
  nop                      #  24    0x4b46f  1      
  nop                      #  25    0x4b470  1      
  nop                      #  26    0x4b471  1      
  nop                      #  27    0x4b472  1      
  nop                      #  28    0x4b473  1      
  nop                      #  29    0x4b474  1      
  nop                      #  30    0x4b475  1      
                                                    
.size _ZdlPv, .-_ZdlPv

