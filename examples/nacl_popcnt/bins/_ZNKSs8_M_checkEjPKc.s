  .text
  .globl _ZNKSs8_M_checkEjPKc
  .type _ZNKSs8_M_checkEjPKc, @function

#! file-offset 0x44ec0
#! rip-offset  0x44ec0
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNKSs8_M_checkEjPKc:                  #        0x44ec0  0      
  movl %edi, %edi                       #  1     0x44ec0  2      
  subl $0x8, %esp                       #  2     0x44ec2  3      
  addq %r15, %rsp                       #  3     0x44ec5  3      
  movl %edx, %edx                       #  4     0x44ec8  2      
  movl %edi, %edi                       #  5     0x44eca  2      
  movl (%r15,%rdi,1), %eax              #  6     0x44ecc  4      
  subl $0xc, %eax                       #  7     0x44ed0  3      
  movl %eax, %eax                       #  8     0x44ed3  2      
  cmpl (%r15,%rax,1), %esi              #  9     0x44ed5  4      
  ja .L_44f00                           #  10    0x44ed9  6      
  nop                                   #  11    0x44edf  1      
  addl $0x8, %esp                       #  12    0x44ee0  3      
  addq %r15, %rsp                       #  13    0x44ee3  3      
  movl %esi, %eax                       #  14    0x44ee6  2      
  popq %r11                             #  15    0x44ee8  3      
  andl $0xffffffe0, %r11d               #  16    0x44eeb  7      
  addq %r15, %r11                       #  17    0x44ef2  3      
  jmpq %r11                             #  18    0x44ef5  3      
  nop                                   #  19    0x44ef8  1      
.L_44f00:                               #        0x44ef9  0      
  movl %edx, %edi                       #  20    0x44ef9  2      
  nop                                   #  21    0x44efb  1      
  nop                                   #  22    0x44efc  1      
  callq ._ZSt20__throw_out_of_rangePKc  #  23    0x44efd  5      
                                                                 
.size _ZNKSs8_M_checkEjPKc, .-_ZNKSs8_M_checkEjPKc

