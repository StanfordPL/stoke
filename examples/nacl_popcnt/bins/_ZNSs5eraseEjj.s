  .text
  .globl _ZNSs5eraseEjj
  .type _ZNSs5eraseEjj, @function

#! file-offset 0x489e0
#! rip-offset  0x489e0
#! capacity    128 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSs5eraseEjj:                        #        0x489e0  0      
  pushq %rbx                            #  1     0x489e0  2      
  movl %edi, %ebx                       #  2     0x489e2  2      
  movl %edx, %ecx                       #  3     0x489e4  2      
  movl %ebx, %ebx                       #  4     0x489e6  2      
  movl (%r15,%rbx,1), %eax              #  5     0x489e8  4      
  subl $0xc, %eax                       #  6     0x489ec  3      
  movl %eax, %eax                       #  7     0x489ef  2      
  movl (%r15,%rax,1), %eax              #  8     0x489f1  4      
  cmpl %eax, %esi                       #  9     0x489f5  2      
  ja .L_48a40                           #  10    0x489f7  6      
  movl %eax, %edx                       #  11    0x489fd  2      
  movl %ebx, %edi                       #  12    0x489ff  2      
  subl %esi, %edx                       #  13    0x48a01  2      
  cmpl %ecx, %edx                       #  14    0x48a03  2      
  cmoval %ecx, %edx                     #  15    0x48a05  3      
  xorl %ecx, %ecx                       #  16    0x48a08  2      
  nop                                   #  17    0x48a0a  1      
  nop                                   #  18    0x48a0b  1      
  callq ._ZNSs9_M_mutateEjjj            #  19    0x48a0c  5      
  movl %ebx, %eax                       #  20    0x48a11  2      
  popq %rbx                             #  21    0x48a13  2      
  popq %r11                             #  22    0x48a15  3      
  andl $0xffffffe0, %r11d               #  23    0x48a18  7      
  addq %r15, %r11                       #  24    0x48a1f  3      
  jmpq %r11                             #  25    0x48a22  3      
  xchgw %ax, %ax                        #  26    0x48a25  3      
  nop                                   #  27    0x48a28  1      
.L_48a40:                               #        0x48a29  0      
  movl $0x10020a7f, %edi                #  28    0x48a29  5      
  nop                                   #  29    0x48a2e  1      
  nop                                   #  30    0x48a2f  1      
  callq ._ZSt20__throw_out_of_rangePKc  #  31    0x48a30  5      
                                                                 
.size _ZNSs5eraseEjj, .-_ZNSs5eraseEjj

