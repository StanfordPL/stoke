  .text
  .globl _ZNSs7_M_dataEPc
  .type _ZNSs7_M_dataEPc, @function

#! file-offset 0x44260
#! rip-offset  0x44260
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  
._ZNSs7_M_dataEPc:          #        0x44260  0      
  popq %r11                 #  1     0x44260  3      
  movl %esi, %eax           #  2     0x44263  2      
  movl %edi, %edi           #  3     0x44265  2      
  movl %edi, %edi           #  4     0x44267  2      
  movl %eax, (%r15,%rdi,1)  #  5     0x44269  4      
  andl $0xffffffe0, %r11d   #  6     0x4426d  7      
  addq %r15, %r11           #  7     0x44274  3      
  jmpq %r11                 #  8     0x44277  3      
  nop                       #  9     0x4427a  1      
  nop                       #  10    0x4427b  1      
  nop                       #  11    0x4427c  1      
  nop                       #  12    0x4427d  1      
  nop                       #  13    0x4427e  1      
  nop                       #  14    0x4427f  1      
  nop                       #  15    0x44280  1      
  nop                       #  16    0x44281  1      
  nop                       #  17    0x44282  1      
  nop                       #  18    0x44283  1      
                                                     
.size _ZNSs7_M_dataEPc, .-_ZNSs7_M_dataEPc

