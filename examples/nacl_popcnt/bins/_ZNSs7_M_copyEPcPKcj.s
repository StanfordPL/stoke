  .text
  .globl _ZNSs7_M_copyEPcPKcj
  .type _ZNSs7_M_copyEPcPKcj, @function

#! file-offset 0x44fc0
#! rip-offset  0x44fc0
#! capacity    64 bytes

# Text                        #  Line  RIP      Bytes  
._ZNSs7_M_copyEPcPKcj:        #        0x44fc0  0      
  cmpl $0x1, %edx             #  1     0x44fc0  3      
  movl %edi, %edi             #  2     0x44fc3  2      
  movl %esi, %esi             #  3     0x44fc5  2      
  je .L_44fe0                 #  4     0x44fc7  6      
  jmpq .memcpy                #  5     0x44fcd  5      
  nop                         #  6     0x44fd2  1      
  nop                         #  7     0x44fd3  1      
.L_44fe0:                     #        0x44fd4  0      
  movl %esi, %esi             #  8     0x44fd4  2      
  movzbl (%r15,%rsi,1), %eax  #  9     0x44fd6  5      
  popq %r11                   #  10    0x44fdb  3      
  movl %edi, %edi             #  11    0x44fde  2      
  movb %al, (%r15,%rdi,1)     #  12    0x44fe0  4      
  andl $0xffffffe0, %r11d     #  13    0x44fe4  7      
  addq %r15, %r11             #  14    0x44feb  3      
  jmpq %r11                   #  15    0x44fee  3      
  nop                         #  16    0x44ff1  1      
  nop                         #  17    0x44ff2  1      
  nop                         #  18    0x44ff3  1      
  nop                         #  19    0x44ff4  1      
  nop                         #  20    0x44ff5  1      
  nop                         #  21    0x44ff6  1      
  nop                         #  22    0x44ff7  1      
                                                       
.size _ZNSs7_M_copyEPcPKcj, .-_ZNSs7_M_copyEPcPKcj

