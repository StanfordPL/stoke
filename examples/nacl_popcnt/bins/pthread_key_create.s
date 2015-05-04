  .text
  .globl pthread_key_create
  .type pthread_key_create, @function

#! file-offset 0x405a0
#! rip-offset  0x405a0
#! capacity    160 bytes

# Text                                #  Line  RIP      Bytes  
.pthread_key_create:                  #        0x405a0  0      
  movl %edi, %r10d                    #  1     0x405a0  3      
  movl %esi, %r9d                     #  2     0x405a3  3      
  xorl %edx, %edx                     #  3     0x405a6  2      
  nop                                 #  4     0x405a8  1      
  nop                                 #  5     0x405a9  1      
.L_405c0:                             #        0x405aa  0      
  leal (,%rdx,8), %edi                #  6     0x405aa  7      
  movslq %edi, %rsi                   #  7     0x405b1  3      
  leaq 0x10030da4(%rsi), %rax         #  8     0x405b4  7      
  movl %eax, %eax                     #  9     0x405bb  2      
  movl (%r15,%rax,1), %ecx            #  10    0x405bd  4      
  testb $0x1, %cl                     #  11    0x405c1  3      
  jne .L_40600                        #  12    0x405c4  6      
  cmpl $0xfffffffe, %ecx              #  13    0x405ca  6      
  nop                                 #  14    0x405d0  1      
  je .L_40600                         #  15    0x405d1  6      
  leal 0x1(%rcx), %r8d                #  16    0x405d7  4      
  addl $0x10030da4, %edi              #  17    0x405db  6      
  movl %ecx, %eax                     #  18    0x405e1  2      
  movl %edi, %edi                     #  19    0x405e3  2      
  lock                                #  20    0x405e5  1      
  cmpxchgl %r8d, (%r15,%rdi,1)        #  21    0x405e6  5      
  cmpl %ecx, %eax                     #  22    0x405eb  2      
  je .L_40620                         #  23    0x405ed  6      
  nop                                 #  24    0x405f3  1      
.L_40600:                             #        0x405f4  0      
  addl $0x1, %edx                     #  25    0x405f4  3      
  cmpl $0x200, %edx                   #  26    0x405f7  6      
  jne .L_405c0                        #  27    0x405fd  6      
  movl $0xb, %eax                     #  28    0x40603  5      
  popq %r11                           #  29    0x40608  3      
  andl $0xffffffe0, %r11d             #  30    0x4060b  7      
  addq %r15, %r11                     #  31    0x40612  3      
  jmpq %r11                           #  32    0x40615  3      
  nop                                 #  33    0x40618  1      
.L_40620:                             #        0x40619  0      
  movl %r10d, %r10d                   #  34    0x40619  3      
  movl %edx, (%r15,%r10,1)            #  35    0x4061c  4      
  movl %esi, %esi                     #  36    0x40620  2      
  movl %r9d, 0x10030da0(%r15,%rsi,1)  #  37    0x40622  8      
  xorl %eax, %eax                     #  38    0x4062a  2      
  popq %r11                           #  39    0x4062c  3      
  andl $0xffffffe0, %r11d             #  40    0x4062f  7      
  addq %r15, %r11                     #  41    0x40636  3      
  jmpq %r11                           #  42    0x40639  3      
  nop                                 #  43    0x4063c  1      
                                                               
.size pthread_key_create, .-pthread_key_create

