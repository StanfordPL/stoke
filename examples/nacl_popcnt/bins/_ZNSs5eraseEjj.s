  .text
  .globl _ZNSs5eraseEjj
  .type _ZNSs5eraseEjj, @function

#! file-offset 0x48940
#! rip-offset  0x48940
#! capacity    128 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSs5eraseEjj:                        #        0x48940  0      
  pushq %rbx                            #  1     0x48940  2      
  movl %edi, %ebx                       #  2     0x48942  2      
  movl %edx, %ecx                       #  3     0x48944  2      
  movl %ebx, %ebx                       #  4     0x48946  2      
  movl (%r15,%rbx,1), %eax              #  5     0x48948  4      
  subl $0xc, %eax                       #  6     0x4894c  3      
  movl %eax, %eax                       #  7     0x4894f  2      
  movl (%r15,%rax,1), %eax              #  8     0x48951  4      
  cmpl %eax, %esi                       #  9     0x48955  2      
  ja .L_489a0                           #  10    0x48957  6      
  movl %eax, %edx                       #  11    0x4895d  2      
  movl %ebx, %edi                       #  12    0x4895f  2      
  subl %esi, %edx                       #  13    0x48961  2      
  cmpl %ecx, %edx                       #  14    0x48963  2      
  cmoval %ecx, %edx                     #  15    0x48965  3      
  xorl %ecx, %ecx                       #  16    0x48968  2      
  nop                                   #  17    0x4896a  1      
  nop                                   #  18    0x4896b  1      
  callq ._ZNSs9_M_mutateEjjj            #  19    0x4896c  5      
  movl %ebx, %eax                       #  20    0x48971  2      
  popq %rbx                             #  21    0x48973  2      
  popq %r11                             #  22    0x48975  3      
  andl $0xffffffe0, %r11d               #  23    0x48978  7      
  addq %r15, %r11                       #  24    0x4897f  3      
  jmpq %r11                             #  25    0x48982  3      
  xchgw %ax, %ax                        #  26    0x48985  3      
  nop                                   #  27    0x48988  1      
.L_489a0:                               #        0x48989  0      
  movl $0x10020a7f, %edi                #  28    0x48989  5      
  nop                                   #  29    0x4898e  1      
  nop                                   #  30    0x4898f  1      
  callq ._ZSt20__throw_out_of_rangePKc  #  31    0x48990  5      
                                                                 
.size _ZNSs5eraseEjj, .-_ZNSs5eraseEjj

