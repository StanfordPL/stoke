  .text
  .globl _ZNSt12out_of_rangeC2ERKSs
  .type _ZNSt12out_of_rangeC2ERKSs, @function

#! file-offset 0x4e880
#! rip-offset  0x4e880
#! capacity    64 bytes

# Text                              #  Line  RIP      Bytes  
._ZNSt12out_of_rangeC2ERKSs:        #        0x4e880  0      
  pushq %rbx                        #  1     0x4e880  2      
  movl %edi, %ebx                   #  2     0x4e882  2      
  movl %esi, %esi                   #  3     0x4e884  2      
  movl %ebx, %edi                   #  4     0x4e886  2      
  nop                               #  5     0x4e888  1      
  nop                               #  6     0x4e889  1      
  callq ._ZNSt11logic_errorC2ERKSs  #  7     0x4e88a  5      
  movl %ebx, %ebx                   #  8     0x4e88f  2      
  movl $0x10021068, (%r15,%rbx,1)   #  9     0x4e891  8      
  popq %rbx                         #  10    0x4e899  2      
  popq %r11                         #  11    0x4e89b  3      
  andl $0xffffffe0, %r11d           #  12    0x4e89e  7      
  addq %r15, %r11                   #  13    0x4e8a5  3      
  jmpq %r11                         #  14    0x4e8a8  3      
  nop                               #  15    0x4e8ab  1      
  nop                               #  16    0x4e8ac  1      
  nop                               #  17    0x4e8ad  1      
  nop                               #  18    0x4e8ae  1      
  nop                               #  19    0x4e8af  1      
  nop                               #  20    0x4e8b0  1      
  nop                               #  21    0x4e8b1  1      
  nop                               #  22    0x4e8b2  1      
  nop                               #  23    0x4e8b3  1      
                                                             
.size _ZNSt12out_of_rangeC2ERKSs, .-_ZNSt12out_of_rangeC2ERKSs

