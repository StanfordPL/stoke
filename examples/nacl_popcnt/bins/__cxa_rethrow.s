  .text
  .globl __cxa_rethrow
  .type __cxa_rethrow, @function

#! file-offset 0x4b200
#! rip-offset  0x4b200
#! capacity    224 bytes

# Text                              #  Line  RIP      Bytes  
.__cxa_rethrow:                     #        0x4b200  0      
  pushq %rbx                        #  1     0x4b200  2      
  nop                               #  2     0x4b202  1      
  nop                               #  3     0x4b203  1      
  callq .__cxa_get_globals          #  4     0x4b204  5      
  movl %eax, %eax                   #  5     0x4b209  2      
  movl %eax, %eax                   #  6     0x4b20b  2      
  movl (%r15,%rax,1), %ebx          #  7     0x4b20d  4      
  movl %eax, %eax                   #  8     0x4b211  2      
  addl $0x1, 0x4(%r15,%rax,1)       #  9     0x4b213  6      
  testq %rbx, %rbx                  #  10    0x4b219  3      
  je .L_4b2a0                       #  11    0x4b21c  6      
  movq $0xb8b1aabcbcd4d500, %rdx    #  12    0x4b222  10     
  nop                               #  13    0x4b22c  1      
  movl %ebx, %ebx                   #  14    0x4b22d  2      
  addq 0x30(%r15,%rbx,1), %rdx      #  15    0x4b22f  5      
  cmpq $0x1, %rdx                   #  16    0x4b234  4      
  jbe .L_4b2c0                      #  17    0x4b238  6      
  movl %eax, %eax                   #  18    0x4b23e  2      
  movl $0x0, (%r15,%rax,1)          #  19    0x4b240  8      
  nop                               #  20    0x4b248  1      
.L_4b260:                           #        0x4b249  0      
  addl $0x30, %ebx                  #  21    0x4b249  3      
  movl %ebx, %edi                   #  22    0x4b24c  2      
  nop                               #  23    0x4b24e  1      
  nop                               #  24    0x4b24f  1      
  callq ._Unwind_Resume_or_Rethrow  #  25    0x4b250  5      
  movl %ebx, %edi                   #  26    0x4b255  2      
  nop                               #  27    0x4b257  1      
  nop                               #  28    0x4b258  1      
  callq .__cxa_begin_catch          #  29    0x4b259  5      
.L_4b2a0:                           #        0x4b25e  0      
  nop                               #  30    0x4b25e  1      
  nop                               #  31    0x4b25f  1      
  callq ._ZSt9terminatev            #  32    0x4b260  5      
.L_4b2c0:                           #        0x4b265  0      
  movl %ebx, %ebx                   #  33    0x4b265  2      
  negl 0x14(%r15,%rbx,1)            #  34    0x4b267  5      
  jmpq .L_4b260                     #  35    0x4b26c  5      
  nop                               #  36    0x4b271  1      
  nop                               #  37    0x4b272  1      
  nop                               #  38    0x4b273  1      
  nop                               #  39    0x4b274  1      
  nop                               #  40    0x4b275  1      
  nop                               #  41    0x4b276  1      
  nop                               #  42    0x4b277  1      
  nop                               #  43    0x4b278  1      
  nop                               #  44    0x4b279  1      
  nop                               #  45    0x4b27a  1      
  nop                               #  46    0x4b27b  1      
  nop                               #  47    0x4b27c  1      
  nop                               #  48    0x4b27d  1      
  nop                               #  49    0x4b27e  1      
  nop                               #  50    0x4b27f  1      
  nop                               #  51    0x4b280  1      
  nop                               #  52    0x4b281  1      
  nop                               #  53    0x4b282  1      
  nop                               #  54    0x4b283  1      
  nop                               #  55    0x4b284  1      
  nop                               #  56    0x4b285  1      
  nop                               #  57    0x4b286  1      
  nop                               #  58    0x4b287  1      
                                                             
.size __cxa_rethrow, .-__cxa_rethrow

