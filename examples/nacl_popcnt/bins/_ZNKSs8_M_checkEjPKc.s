  .text
  .globl _ZNKSs8_M_checkEjPKc
  .type _ZNKSs8_M_checkEjPKc, @function

#! file-offset 0x44f60
#! rip-offset  0x44f60
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNKSs8_M_checkEjPKc:                  #        0x44f60  0      
  movl %edi, %edi                       #  1     0x44f60  2      
  subl $0x8, %esp                       #  2     0x44f62  3      
  addq %r15, %rsp                       #  3     0x44f65  3      
  movl %edx, %edx                       #  4     0x44f68  2      
  movl %edi, %edi                       #  5     0x44f6a  2      
  movl (%r15,%rdi,1), %eax              #  6     0x44f6c  4      
  subl $0xc, %eax                       #  7     0x44f70  3      
  movl %eax, %eax                       #  8     0x44f73  2      
  cmpl (%r15,%rax,1), %esi              #  9     0x44f75  4      
  ja .L_44fa0                           #  10    0x44f79  6      
  nop                                   #  11    0x44f7f  1      
  addl $0x8, %esp                       #  12    0x44f80  3      
  addq %r15, %rsp                       #  13    0x44f83  3      
  movl %esi, %eax                       #  14    0x44f86  2      
  popq %r11                             #  15    0x44f88  3      
  andl $0xffffffe0, %r11d               #  16    0x44f8b  7      
  addq %r15, %r11                       #  17    0x44f92  3      
  jmpq %r11                             #  18    0x44f95  3      
  nop                                   #  19    0x44f98  1      
.L_44fa0:                               #        0x44f99  0      
  movl %edx, %edi                       #  20    0x44f99  2      
  nop                                   #  21    0x44f9b  1      
  nop                                   #  22    0x44f9c  1      
  callq ._ZSt20__throw_out_of_rangePKc  #  23    0x44f9d  5      
                                                                 
.size _ZNKSs8_M_checkEjPKc, .-_ZNKSs8_M_checkEjPKc

