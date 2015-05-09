  .text
  .globl _ZNKSs15_M_check_lengthEjjPKc
  .type _ZNKSs15_M_check_lengthEjjPKc, @function

#! file-offset 0x44ae0
#! rip-offset  0x44ae0
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNKSs15_M_check_lengthEjjPKc:         #        0x44ae0  0      
  movl %edi, %edi                       #  1     0x44ae0  2      
  subl $0x8, %esp                       #  2     0x44ae2  3      
  addq %r15, %rsp                       #  3     0x44ae5  3      
  movl %ecx, %ecx                       #  4     0x44ae8  2      
  movl %edi, %edi                       #  5     0x44aea  2      
  movl (%r15,%rdi,1), %eax              #  6     0x44aec  4      
  subl $0xc, %eax                       #  7     0x44af0  3      
  movl %eax, %eax                       #  8     0x44af3  2      
  subl (%r15,%rax,1), %esi              #  9     0x44af5  4      
  addl $0x3ffffffc, %esi                #  10    0x44af9  6      
  nop                                   #  11    0x44aff  1      
  cmpl %edx, %esi                       #  12    0x44b00  2      
  jb .L_44b20                           #  13    0x44b02  6      
  addl $0x8, %esp                       #  14    0x44b08  3      
  addq %r15, %rsp                       #  15    0x44b0b  3      
  popq %r11                             #  16    0x44b0e  3      
  andl $0xffffffe0, %r11d               #  17    0x44b11  7      
  addq %r15, %r11                       #  18    0x44b18  3      
  jmpq %r11                             #  19    0x44b1b  3      
  nop                                   #  20    0x44b1e  1      
.L_44b20:                               #        0x44b1f  0      
  movl %ecx, %edi                       #  21    0x44b1f  2      
  nop                                   #  22    0x44b21  1      
  nop                                   #  23    0x44b22  1      
  callq ._ZSt20__throw_length_errorPKc  #  24    0x44b23  5      
                                                                 
.size _ZNKSs15_M_check_lengthEjjPKc, .-_ZNKSs15_M_check_lengthEjjPKc

