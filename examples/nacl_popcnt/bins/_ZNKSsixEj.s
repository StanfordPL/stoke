  .text
  .globl _ZNKSsixEj
  .type _ZNKSsixEj, @function

#! file-offset 0x445e0
#! rip-offset  0x445e0
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  
._ZNKSsixEj:                #        0x445e0  0      
  popq %r11                 #  1     0x445e0  3      
  movl %edi, %edi           #  2     0x445e3  2      
  movl %esi, %eax           #  3     0x445e5  2      
  movl %edi, %edi           #  4     0x445e7  2      
  addl (%r15,%rdi,1), %eax  #  5     0x445e9  4      
  andl $0xffffffe0, %r11d   #  6     0x445ed  7      
  addq %r15, %r11           #  7     0x445f4  3      
  jmpq %r11                 #  8     0x445f7  3      
  nop                       #  9     0x445fa  1      
  nop                       #  10    0x445fb  1      
  nop                       #  11    0x445fc  1      
  nop                       #  12    0x445fd  1      
  nop                       #  13    0x445fe  1      
  nop                       #  14    0x445ff  1      
  nop                       #  15    0x44600  1      
  nop                       #  16    0x44601  1      
  nop                       #  17    0x44602  1      
  nop                       #  18    0x44603  1      
                                                     
.size _ZNKSsixEj, .-_ZNKSsixEj

