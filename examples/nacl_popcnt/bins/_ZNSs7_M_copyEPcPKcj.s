  .text
  .globl _ZNSs7_M_copyEPcPKcj
  .type _ZNSs7_M_copyEPcPKcj, @function

#! file-offset 0x45040
#! rip-offset  0x45040
#! capacity    64 bytes

# Text                        #  Line  RIP      Bytes  
._ZNSs7_M_copyEPcPKcj:        #        0x45040  0      
  cmpl $0x1, %edx             #  1     0x45040  3      
  movl %edi, %edi             #  2     0x45043  2      
  movl %esi, %esi             #  3     0x45045  2      
  je .L_45060                 #  4     0x45047  6      
  jmpq .memcpy                #  5     0x4504d  5      
  nop                         #  6     0x45052  1      
  nop                         #  7     0x45053  1      
.L_45060:                     #        0x45054  0      
  movl %esi, %esi             #  8     0x45054  2      
  movzbl (%r15,%rsi,1), %eax  #  9     0x45056  5      
  popq %r11                   #  10    0x4505b  3      
  movl %edi, %edi             #  11    0x4505e  2      
  movb %al, (%r15,%rdi,1)     #  12    0x45060  4      
  andl $0xffffffe0, %r11d     #  13    0x45064  7      
  addq %r15, %r11             #  14    0x4506b  3      
  jmpq %r11                   #  15    0x4506e  3      
  nop                         #  16    0x45071  1      
  nop                         #  17    0x45072  1      
  nop                         #  18    0x45073  1      
  nop                         #  19    0x45074  1      
  nop                         #  20    0x45075  1      
  nop                         #  21    0x45076  1      
  nop                         #  22    0x45077  1      
                                                       
.size _ZNSs7_M_copyEPcPKcj, .-_ZNSs7_M_copyEPcPKcj

