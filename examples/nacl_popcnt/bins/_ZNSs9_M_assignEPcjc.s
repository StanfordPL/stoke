  .text
  .globl _ZNSs9_M_assignEPcjc
  .type _ZNSs9_M_assignEPcjc, @function

#! file-offset 0x44f40
#! rip-offset  0x44f40
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  
._ZNSs9_M_assignEPcjc:     #        0x44f40  0      
  cmpl $0x1, %esi          #  1     0x44f40  3      
  movl %edi, %edi          #  2     0x44f43  2      
  je .L_44f60              #  3     0x44f45  6      
  movsbl %dl, %eax         #  4     0x44f4b  3      
  movl %esi, %edx          #  5     0x44f4e  2      
  movl %eax, %esi          #  6     0x44f50  2      
  jmpq .memset             #  7     0x44f52  5      
  nop                      #  8     0x44f57  1      
.L_44f60:                  #        0x44f58  0      
  popq %r11                #  9     0x44f58  3      
  movl %edi, %edi          #  10    0x44f5b  2      
  movb %dl, (%r15,%rdi,1)  #  11    0x44f5d  4      
  andl $0xffffffe0, %r11d  #  12    0x44f61  7      
  addq %r15, %r11          #  13    0x44f68  3      
  jmpq %r11                #  14    0x44f6b  3      
  nop                      #  15    0x44f6e  1      
  nop                      #  16    0x44f6f  1      
  nop                      #  17    0x44f70  1      
  nop                      #  18    0x44f71  1      
  nop                      #  19    0x44f72  1      
  nop                      #  20    0x44f73  1      
  nop                      #  21    0x44f74  1      
  nop                      #  22    0x44f75  1      
  nop                      #  23    0x44f76  1      
  nop                      #  24    0x44f77  1      
  nop                      #  25    0x44f78  1      
  nop                      #  26    0x44f79  1      
  nop                      #  27    0x44f7a  1      
  nop                      #  28    0x44f7b  1      
                                                    
.size _ZNSs9_M_assignEPcjc, .-_ZNSs9_M_assignEPcjc

