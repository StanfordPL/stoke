  .text
  .globl _ZNSs9_M_assignEPcjc
  .type _ZNSs9_M_assignEPcjc, @function

#! file-offset 0x44f20
#! rip-offset  0x44f20
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  
._ZNSs9_M_assignEPcjc:     #        0x44f20  0      
  cmpl $0x1, %esi          #  1     0x44f20  3      
  movl %edi, %edi          #  2     0x44f23  2      
  je .L_44f40              #  3     0x44f25  6      
  movsbl %dl, %eax         #  4     0x44f2b  3      
  movl %esi, %edx          #  5     0x44f2e  2      
  movl %eax, %esi          #  6     0x44f30  2      
  jmpq .memset             #  7     0x44f32  5      
  nop                      #  8     0x44f37  1      
.L_44f40:                  #        0x44f38  0      
  popq %r11                #  9     0x44f38  3      
  movl %edi, %edi          #  10    0x44f3b  2      
  movb %dl, (%r15,%rdi,1)  #  11    0x44f3d  4      
  andl $0xffffffe0, %r11d  #  12    0x44f41  7      
  addq %r15, %r11          #  13    0x44f48  3      
  jmpq %r11                #  14    0x44f4b  3      
  nop                      #  15    0x44f4e  1      
  nop                      #  16    0x44f4f  1      
  nop                      #  17    0x44f50  1      
  nop                      #  18    0x44f51  1      
  nop                      #  19    0x44f52  1      
  nop                      #  20    0x44f53  1      
  nop                      #  21    0x44f54  1      
  nop                      #  22    0x44f55  1      
  nop                      #  23    0x44f56  1      
  nop                      #  24    0x44f57  1      
  nop                      #  25    0x44f58  1      
  nop                      #  26    0x44f59  1      
  nop                      #  27    0x44f5a  1      
  nop                      #  28    0x44f5b  1      
                                                    
.size _ZNSs9_M_assignEPcjc, .-_ZNSs9_M_assignEPcjc

