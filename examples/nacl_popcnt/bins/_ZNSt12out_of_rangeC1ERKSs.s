  .text
  .globl _ZNSt12out_of_rangeC1ERKSs
  .type _ZNSt12out_of_rangeC1ERKSs, @function

#! file-offset 0x4e840
#! rip-offset  0x4e840
#! capacity    64 bytes

# Text                              #  Line  RIP      Bytes  
._ZNSt12out_of_rangeC1ERKSs:        #        0x4e840  0      
  pushq %rbx                        #  1     0x4e840  2      
  movl %edi, %ebx                   #  2     0x4e842  2      
  movl %esi, %esi                   #  3     0x4e844  2      
  movl %ebx, %edi                   #  4     0x4e846  2      
  nop                               #  5     0x4e848  1      
  nop                               #  6     0x4e849  1      
  callq ._ZNSt11logic_errorC2ERKSs  #  7     0x4e84a  5      
  movl %ebx, %ebx                   #  8     0x4e84f  2      
  movl $0x10021068, (%r15,%rbx,1)   #  9     0x4e851  8      
  popq %rbx                         #  10    0x4e859  2      
  popq %r11                         #  11    0x4e85b  3      
  andl $0xffffffe0, %r11d           #  12    0x4e85e  7      
  addq %r15, %r11                   #  13    0x4e865  3      
  jmpq %r11                         #  14    0x4e868  3      
  nop                               #  15    0x4e86b  1      
  nop                               #  16    0x4e86c  1      
  nop                               #  17    0x4e86d  1      
  nop                               #  18    0x4e86e  1      
  nop                               #  19    0x4e86f  1      
  nop                               #  20    0x4e870  1      
  nop                               #  21    0x4e871  1      
  nop                               #  22    0x4e872  1      
  nop                               #  23    0x4e873  1      
                                                             
.size _ZNSt12out_of_rangeC1ERKSs, .-_ZNSt12out_of_rangeC1ERKSs

