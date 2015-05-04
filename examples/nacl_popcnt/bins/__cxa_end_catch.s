  .text
  .globl __cxa_end_catch
  .type __cxa_end_catch, @function

#! file-offset 0x4c520
#! rip-offset  0x4c520
#! capacity    320 bytes

# Text                            #  Line  RIP      Bytes  
.__cxa_end_catch:                 #        0x4c520  0      
  subl $0x8, %esp                 #  1     0x4c520  3      
  addq %r15, %rsp                 #  2     0x4c523  3      
  nop                             #  3     0x4c526  1      
  nop                             #  4     0x4c527  1      
  callq .__cxa_get_globals_fast   #  5     0x4c528  5      
  movl %eax, %eax                 #  6     0x4c52d  2      
  movl %eax, %eax                 #  7     0x4c52f  2      
  movl (%r15,%rax,1), %edi        #  8     0x4c531  4      
  testq %rdi, %rdi                #  9     0x4c535  3      
  je .L_4c5c0                     #  10    0x4c538  6      
  movq $0xb8b1aabcbcd4d500, %rdx  #  11    0x4c53e  10     
  movl %edi, %edi                 #  12    0x4c548  2      
  addq 0x30(%r15,%rdi,1), %rdx    #  13    0x4c54a  5      
  xchgw %ax, %ax                  #  14    0x4c54f  3      
  cmpq $0x1, %rdx                 #  15    0x4c552  4      
  ja .L_4c5e0                     #  16    0x4c556  6      
  movl %edi, %edi                 #  17    0x4c55c  2      
  movl 0x14(%r15,%rdi,1), %edx    #  18    0x4c55e  5      
  testl %edx, %edx                #  19    0x4c563  2      
  js .L_4c600                     #  20    0x4c565  6      
  subl $0x1, %edx                 #  21    0x4c56b  3      
  je .L_4c620                     #  22    0x4c56e  6      
  xchgw %ax, %ax                  #  23    0x4c574  3      
  cmpl $0xffffffff, %edx          #  24    0x4c577  6      
  je .L_4c640                     #  25    0x4c57d  6      
  nop                             #  26    0x4c583  1      
  nop                             #  27    0x4c584  1      
.L_4c5a0:                         #        0x4c585  0      
  movl %edi, %edi                 #  28    0x4c585  2      
  movl %edx, 0x14(%r15,%rdi,1)    #  29    0x4c587  5      
  nop                             #  30    0x4c58c  1      
  nop                             #  31    0x4c58d  1      
.L_4c5c0:                         #        0x4c58e  0      
  addl $0x8, %esp                 #  32    0x4c58e  3      
  addq %r15, %rsp                 #  33    0x4c591  3      
  popq %r11                       #  34    0x4c594  3      
  andl $0xffffffe0, %r11d         #  35    0x4c597  7      
  addq %r15, %r11                 #  36    0x4c59e  3      
  jmpq %r11                       #  37    0x4c5a1  3      
  nop                             #  38    0x4c5a4  1      
.L_4c5e0:                         #        0x4c5a5  0      
  movl %eax, %eax                 #  39    0x4c5a5  2      
  movl $0x0, (%r15,%rax,1)        #  40    0x4c5a7  8      
  addl $0x30, %edi                #  41    0x4c5af  3      
  addl $0x8, %esp                 #  42    0x4c5b2  3      
  addq %r15, %rsp                 #  43    0x4c5b5  3      
  jmpq ._Unwind_DeleteException   #  44    0x4c5b8  5      
  nop                             #  45    0x4c5bd  1      
.L_4c600:                         #        0x4c5be  0      
  addl $0x1, %edx                 #  46    0x4c5be  3      
  jne .L_4c5a0                    #  47    0x4c5c1  6      
  movl %edi, %edi                 #  48    0x4c5c7  2      
  movl 0x10(%r15,%rdi,1), %ecx    #  49    0x4c5c9  5      
  movl %eax, %eax                 #  50    0x4c5ce  2      
  movl %ecx, (%r15,%rax,1)        #  51    0x4c5d0  4      
  jmpq .L_4c5a0                   #  52    0x4c5d4  5      
  nop                             #  53    0x4c5d9  1      
.L_4c620:                         #        0x4c5da  0      
  movl %edi, %edi                 #  54    0x4c5da  2      
  movl 0x10(%r15,%rdi,1), %edx    #  55    0x4c5dc  5      
  addl $0x30, %edi                #  56    0x4c5e1  3      
  movl %eax, %eax                 #  57    0x4c5e4  2      
  movl %edx, (%r15,%rax,1)        #  58    0x4c5e6  4      
  addl $0x8, %esp                 #  59    0x4c5ea  3      
  addq %r15, %rsp                 #  60    0x4c5ed  3      
  jmpq ._Unwind_DeleteException   #  61    0x4c5f0  5      
  nop                             #  62    0x4c5f5  1      
.L_4c640:                         #        0x4c5f6  0      
  nop                             #  63    0x4c5f6  1      
  nop                             #  64    0x4c5f7  1      
  callq ._ZSt9terminatev          #  65    0x4c5f8  5      
                                                           
.size __cxa_end_catch, .-__cxa_end_catch

