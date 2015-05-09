  .text
  .globl _ZNSt12out_of_rangeC1ERKSs
  .type _ZNSt12out_of_rangeC1ERKSs, @function

#! file-offset 0x4e820
#! rip-offset  0x4e820
#! capacity    64 bytes

# Text                              #  Line  RIP      Bytes  
._ZNSt12out_of_rangeC1ERKSs:        #        0x4e820  0      
  pushq %rbx                        #  1     0x4e820  2      
  movl %edi, %ebx                   #  2     0x4e822  2      
  movl %esi, %esi                   #  3     0x4e824  2      
  movl %ebx, %edi                   #  4     0x4e826  2      
  nop                               #  5     0x4e828  1      
  nop                               #  6     0x4e829  1      
  callq ._ZNSt11logic_errorC2ERKSs  #  7     0x4e82a  5      
  movl %ebx, %ebx                   #  8     0x4e82f  2      
  movl $0x10021068, (%r15,%rbx,1)   #  9     0x4e831  8      
  popq %rbx                         #  10    0x4e839  2      
  popq %r11                         #  11    0x4e83b  3      
  andl $0xffffffe0, %r11d           #  12    0x4e83e  7      
  addq %r15, %r11                   #  13    0x4e845  3      
  jmpq %r11                         #  14    0x4e848  3      
  nop                               #  15    0x4e84b  1      
  nop                               #  16    0x4e84c  1      
  nop                               #  17    0x4e84d  1      
  nop                               #  18    0x4e84e  1      
  nop                               #  19    0x4e84f  1      
  nop                               #  20    0x4e850  1      
  nop                               #  21    0x4e851  1      
  nop                               #  22    0x4e852  1      
  nop                               #  23    0x4e853  1      
                                                             
.size _ZNSt12out_of_rangeC1ERKSs, .-_ZNSt12out_of_rangeC1ERKSs

