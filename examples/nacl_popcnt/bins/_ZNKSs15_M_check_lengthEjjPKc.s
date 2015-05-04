  .text
  .globl _ZNKSs15_M_check_lengthEjjPKc
  .type _ZNKSs15_M_check_lengthEjjPKc, @function

#! file-offset 0x44b80
#! rip-offset  0x44b80
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNKSs15_M_check_lengthEjjPKc:         #        0x44b80  0      
  movl %edi, %edi                       #  1     0x44b80  2      
  subl $0x8, %esp                       #  2     0x44b82  3      
  addq %r15, %rsp                       #  3     0x44b85  3      
  movl %ecx, %ecx                       #  4     0x44b88  2      
  movl %edi, %edi                       #  5     0x44b8a  2      
  movl (%r15,%rdi,1), %eax              #  6     0x44b8c  4      
  subl $0xc, %eax                       #  7     0x44b90  3      
  movl %eax, %eax                       #  8     0x44b93  2      
  subl (%r15,%rax,1), %esi              #  9     0x44b95  4      
  addl $0x3ffffffc, %esi                #  10    0x44b99  6      
  nop                                   #  11    0x44b9f  1      
  cmpl %edx, %esi                       #  12    0x44ba0  2      
  jb .L_44bc0                           #  13    0x44ba2  6      
  addl $0x8, %esp                       #  14    0x44ba8  3      
  addq %r15, %rsp                       #  15    0x44bab  3      
  popq %r11                             #  16    0x44bae  3      
  andl $0xffffffe0, %r11d               #  17    0x44bb1  7      
  addq %r15, %r11                       #  18    0x44bb8  3      
  jmpq %r11                             #  19    0x44bbb  3      
  nop                                   #  20    0x44bbe  1      
.L_44bc0:                               #        0x44bbf  0      
  movl %ecx, %edi                       #  21    0x44bbf  2      
  nop                                   #  22    0x44bc1  1      
  nop                                   #  23    0x44bc2  1      
  callq ._ZSt20__throw_length_errorPKc  #  24    0x44bc3  5      
                                                                 
.size _ZNKSs15_M_check_lengthEjjPKc, .-_ZNKSs15_M_check_lengthEjjPKc

