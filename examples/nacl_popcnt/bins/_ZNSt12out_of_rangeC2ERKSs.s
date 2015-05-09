  .text
  .globl _ZNSt12out_of_rangeC2ERKSs
  .type _ZNSt12out_of_rangeC2ERKSs, @function

#! file-offset 0x4e860
#! rip-offset  0x4e860
#! capacity    64 bytes

# Text                              #  Line  RIP      Bytes  
._ZNSt12out_of_rangeC2ERKSs:        #        0x4e860  0      
  pushq %rbx                        #  1     0x4e860  2      
  movl %edi, %ebx                   #  2     0x4e862  2      
  movl %esi, %esi                   #  3     0x4e864  2      
  movl %ebx, %edi                   #  4     0x4e866  2      
  nop                               #  5     0x4e868  1      
  nop                               #  6     0x4e869  1      
  callq ._ZNSt11logic_errorC2ERKSs  #  7     0x4e86a  5      
  movl %ebx, %ebx                   #  8     0x4e86f  2      
  movl $0x10021068, (%r15,%rbx,1)   #  9     0x4e871  8      
  popq %rbx                         #  10    0x4e879  2      
  popq %r11                         #  11    0x4e87b  3      
  andl $0xffffffe0, %r11d           #  12    0x4e87e  7      
  addq %r15, %r11                   #  13    0x4e885  3      
  jmpq %r11                         #  14    0x4e888  3      
  nop                               #  15    0x4e88b  1      
  nop                               #  16    0x4e88c  1      
  nop                               #  17    0x4e88d  1      
  nop                               #  18    0x4e88e  1      
  nop                               #  19    0x4e88f  1      
  nop                               #  20    0x4e890  1      
  nop                               #  21    0x4e891  1      
  nop                               #  22    0x4e892  1      
  nop                               #  23    0x4e893  1      
                                                             
.size _ZNSt12out_of_rangeC2ERKSs, .-_ZNSt12out_of_rangeC2ERKSs

