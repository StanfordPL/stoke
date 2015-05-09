  .text
  .globl _ZNSs7_M_copyEPcPKcj
  .type _ZNSs7_M_copyEPcPKcj, @function

#! file-offset 0x44fa0
#! rip-offset  0x44fa0
#! capacity    64 bytes

# Text                        #  Line  RIP      Bytes  
._ZNSs7_M_copyEPcPKcj:        #        0x44fa0  0      
  cmpl $0x1, %edx             #  1     0x44fa0  3      
  movl %edi, %edi             #  2     0x44fa3  2      
  movl %esi, %esi             #  3     0x44fa5  2      
  je .L_44fc0                 #  4     0x44fa7  6      
  jmpq .memcpy                #  5     0x44fad  5      
  nop                         #  6     0x44fb2  1      
  nop                         #  7     0x44fb3  1      
.L_44fc0:                     #        0x44fb4  0      
  movl %esi, %esi             #  8     0x44fb4  2      
  movzbl (%r15,%rsi,1), %eax  #  9     0x44fb6  5      
  popq %r11                   #  10    0x44fbb  3      
  movl %edi, %edi             #  11    0x44fbe  2      
  movb %al, (%r15,%rdi,1)     #  12    0x44fc0  4      
  andl $0xffffffe0, %r11d     #  13    0x44fc4  7      
  addq %r15, %r11             #  14    0x44fcb  3      
  jmpq %r11                   #  15    0x44fce  3      
  nop                         #  16    0x44fd1  1      
  nop                         #  17    0x44fd2  1      
  nop                         #  18    0x44fd3  1      
  nop                         #  19    0x44fd4  1      
  nop                         #  20    0x44fd5  1      
  nop                         #  21    0x44fd6  1      
  nop                         #  22    0x44fd7  1      
                                                       
.size _ZNSs7_M_copyEPcPKcj, .-_ZNSs7_M_copyEPcPKcj

