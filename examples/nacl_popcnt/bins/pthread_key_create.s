  .text
  .globl pthread_key_create
  .type pthread_key_create, @function

#! file-offset 0x40520
#! rip-offset  0x40520
#! capacity    160 bytes

# Text                                #  Line  RIP      Bytes  
.pthread_key_create:                  #        0x40520  0      
  movl %edi, %r10d                    #  1     0x40520  3      
  movl %esi, %r9d                     #  2     0x40523  3      
  xorl %edx, %edx                     #  3     0x40526  2      
  nop                                 #  4     0x40528  1      
  nop                                 #  5     0x40529  1      
.L_40540:                             #        0x4052a  0      
  leal (,%rdx,8), %edi                #  6     0x4052a  7      
  movslq %edi, %rsi                   #  7     0x40531  3      
  leaq 0x10030da4(%rsi), %rax         #  8     0x40534  7      
  movl %eax, %eax                     #  9     0x4053b  2      
  movl (%r15,%rax,1), %ecx            #  10    0x4053d  4      
  testb $0x1, %cl                     #  11    0x40541  3      
  jne .L_40580                        #  12    0x40544  6      
  cmpl $0xfffffffe, %ecx              #  13    0x4054a  6      
  nop                                 #  14    0x40550  1      
  je .L_40580                         #  15    0x40551  6      
  leal 0x1(%rcx), %r8d                #  16    0x40557  4      
  addl $0x10030da4, %edi              #  17    0x4055b  6      
  movl %ecx, %eax                     #  18    0x40561  2      
  movl %edi, %edi                     #  19    0x40563  2      
  lock                                #  20    0x40565  1      
  cmpxchgl %r8d, (%r15,%rdi,1)        #  21    0x40566  5      
  cmpl %ecx, %eax                     #  22    0x4056b  2      
  je .L_405a0                         #  23    0x4056d  6      
  nop                                 #  24    0x40573  1      
.L_40580:                             #        0x40574  0      
  addl $0x1, %edx                     #  25    0x40574  3      
  cmpl $0x200, %edx                   #  26    0x40577  6      
  jne .L_40540                        #  27    0x4057d  6      
  movl $0xb, %eax                     #  28    0x40583  5      
  popq %r11                           #  29    0x40588  3      
  andl $0xffffffe0, %r11d             #  30    0x4058b  7      
  addq %r15, %r11                     #  31    0x40592  3      
  jmpq %r11                           #  32    0x40595  3      
  nop                                 #  33    0x40598  1      
.L_405a0:                             #        0x40599  0      
  movl %r10d, %r10d                   #  34    0x40599  3      
  movl %edx, (%r15,%r10,1)            #  35    0x4059c  4      
  movl %esi, %esi                     #  36    0x405a0  2      
  movl %r9d, 0x10030da0(%r15,%rsi,1)  #  37    0x405a2  8      
  xorl %eax, %eax                     #  38    0x405aa  2      
  popq %r11                           #  39    0x405ac  3      
  andl $0xffffffe0, %r11d             #  40    0x405af  7      
  addq %r15, %r11                     #  41    0x405b6  3      
  jmpq %r11                           #  42    0x405b9  3      
  nop                                 #  43    0x405bc  1      
                                                               
.size pthread_key_create, .-pthread_key_create

