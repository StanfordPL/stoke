  .text
  .globl _ZNSs9_M_assignEPcjc
  .type _ZNSs9_M_assignEPcjc, @function

#! file-offset 0x44fc0
#! rip-offset  0x44fc0
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  
._ZNSs9_M_assignEPcjc:     #        0x44fc0  0      
  cmpl $0x1, %esi          #  1     0x44fc0  3      
  movl %edi, %edi          #  2     0x44fc3  2      
  je .L_44fe0              #  3     0x44fc5  6      
  movsbl %dl, %eax         #  4     0x44fcb  3      
  movl %esi, %edx          #  5     0x44fce  2      
  movl %eax, %esi          #  6     0x44fd0  2      
  jmpq .memset             #  7     0x44fd2  5      
  nop                      #  8     0x44fd7  1      
.L_44fe0:                  #        0x44fd8  0      
  popq %r11                #  9     0x44fd8  3      
  movl %edi, %edi          #  10    0x44fdb  2      
  movb %dl, (%r15,%rdi,1)  #  11    0x44fdd  4      
  andl $0xffffffe0, %r11d  #  12    0x44fe1  7      
  addq %r15, %r11          #  13    0x44fe8  3      
  jmpq %r11                #  14    0x44feb  3      
  nop                      #  15    0x44fee  1      
  nop                      #  16    0x44fef  1      
  nop                      #  17    0x44ff0  1      
  nop                      #  18    0x44ff1  1      
  nop                      #  19    0x44ff2  1      
  nop                      #  20    0x44ff3  1      
  nop                      #  21    0x44ff4  1      
  nop                      #  22    0x44ff5  1      
  nop                      #  23    0x44ff6  1      
  nop                      #  24    0x44ff7  1      
  nop                      #  25    0x44ff8  1      
  nop                      #  26    0x44ff9  1      
  nop                      #  27    0x44ffa  1      
  nop                      #  28    0x44ffb  1      
                                                    
.size _ZNSs9_M_assignEPcjc, .-_ZNSs9_M_assignEPcjc

