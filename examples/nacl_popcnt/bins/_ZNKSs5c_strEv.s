  .text
  .globl _ZNKSs5c_strEv
  .type _ZNKSs5c_strEv, @function

#! file-offset 0x44600
#! rip-offset  0x44600
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  
._ZNKSs5c_strEv:            #        0x44600  0      
  popq %r11                 #  1     0x44600  3      
  movl %edi, %edi           #  2     0x44603  2      
  movl %edi, %edi           #  3     0x44605  2      
  movl (%r15,%rdi,1), %eax  #  4     0x44607  4      
  andl $0xffffffe0, %r11d   #  5     0x4460b  7      
  addq %r15, %r11           #  6     0x44612  3      
  jmpq %r11                 #  7     0x44615  3      
  nop                       #  8     0x44618  1      
  nop                       #  9     0x44619  1      
  nop                       #  10    0x4461a  1      
  nop                       #  11    0x4461b  1      
  nop                       #  12    0x4461c  1      
  nop                       #  13    0x4461d  1      
  nop                       #  14    0x4461e  1      
  nop                       #  15    0x4461f  1      
  nop                       #  16    0x44620  1      
  nop                       #  17    0x44621  1      
  nop                       #  18    0x44622  1      
  nop                       #  19    0x44623  1      
                                                     
.size _ZNKSs5c_strEv, .-_ZNKSs5c_strEv

