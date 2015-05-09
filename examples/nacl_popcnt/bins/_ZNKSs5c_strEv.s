  .text
  .globl _ZNKSs5c_strEv
  .type _ZNKSs5c_strEv, @function

#! file-offset 0x445e0
#! rip-offset  0x445e0
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  
._ZNKSs5c_strEv:            #        0x445e0  0      
  popq %r11                 #  1     0x445e0  3      
  movl %edi, %edi           #  2     0x445e3  2      
  movl %edi, %edi           #  3     0x445e5  2      
  movl (%r15,%rdi,1), %eax  #  4     0x445e7  4      
  andl $0xffffffe0, %r11d   #  5     0x445eb  7      
  addq %r15, %r11           #  6     0x445f2  3      
  jmpq %r11                 #  7     0x445f5  3      
  nop                       #  8     0x445f8  1      
  nop                       #  9     0x445f9  1      
  nop                       #  10    0x445fa  1      
  nop                       #  11    0x445fb  1      
  nop                       #  12    0x445fc  1      
  nop                       #  13    0x445fd  1      
  nop                       #  14    0x445fe  1      
  nop                       #  15    0x445ff  1      
  nop                       #  16    0x44600  1      
  nop                       #  17    0x44601  1      
  nop                       #  18    0x44602  1      
  nop                       #  19    0x44603  1      
                                                     
.size _ZNKSs5c_strEv, .-_ZNKSs5c_strEv

