  .text
  .globl __cxa_rethrow
  .type __cxa_rethrow, @function

#! file-offset 0x4b1e0
#! rip-offset  0x4b1e0
#! capacity    224 bytes

# Text                              #  Line  RIP      Bytes  
.__cxa_rethrow:                     #        0x4b1e0  0      
  pushq %rbx                        #  1     0x4b1e0  2      
  nop                               #  2     0x4b1e2  1      
  nop                               #  3     0x4b1e3  1      
  callq .__cxa_get_globals          #  4     0x4b1e4  5      
  movl %eax, %eax                   #  5     0x4b1e9  2      
  movl %eax, %eax                   #  6     0x4b1eb  2      
  movl (%r15,%rax,1), %ebx          #  7     0x4b1ed  4      
  movl %eax, %eax                   #  8     0x4b1f1  2      
  addl $0x1, 0x4(%r15,%rax,1)       #  9     0x4b1f3  6      
  testq %rbx, %rbx                  #  10    0x4b1f9  3      
  je .L_4b280                       #  11    0x4b1fc  6      
  movq $0xb8b1aabcbcd4d500, %rdx    #  12    0x4b202  10     
  nop                               #  13    0x4b20c  1      
  movl %ebx, %ebx                   #  14    0x4b20d  2      
  addq 0x30(%r15,%rbx,1), %rdx      #  15    0x4b20f  5      
  cmpq $0x1, %rdx                   #  16    0x4b214  4      
  jbe .L_4b2a0                      #  17    0x4b218  6      
  movl %eax, %eax                   #  18    0x4b21e  2      
  movl $0x0, (%r15,%rax,1)          #  19    0x4b220  8      
  nop                               #  20    0x4b228  1      
.L_4b240:                           #        0x4b229  0      
  addl $0x30, %ebx                  #  21    0x4b229  3      
  movl %ebx, %edi                   #  22    0x4b22c  2      
  nop                               #  23    0x4b22e  1      
  nop                               #  24    0x4b22f  1      
  callq ._Unwind_Resume_or_Rethrow  #  25    0x4b230  5      
  movl %ebx, %edi                   #  26    0x4b235  2      
  nop                               #  27    0x4b237  1      
  nop                               #  28    0x4b238  1      
  callq .__cxa_begin_catch          #  29    0x4b239  5      
.L_4b280:                           #        0x4b23e  0      
  nop                               #  30    0x4b23e  1      
  nop                               #  31    0x4b23f  1      
  callq ._ZSt9terminatev            #  32    0x4b240  5      
.L_4b2a0:                           #        0x4b245  0      
  movl %ebx, %ebx                   #  33    0x4b245  2      
  negl 0x14(%r15,%rbx,1)            #  34    0x4b247  5      
  jmpq .L_4b240                     #  35    0x4b24c  5      
  nop                               #  36    0x4b251  1      
  nop                               #  37    0x4b252  1      
  nop                               #  38    0x4b253  1      
  nop                               #  39    0x4b254  1      
  nop                               #  40    0x4b255  1      
  nop                               #  41    0x4b256  1      
  nop                               #  42    0x4b257  1      
  nop                               #  43    0x4b258  1      
  nop                               #  44    0x4b259  1      
  nop                               #  45    0x4b25a  1      
  nop                               #  46    0x4b25b  1      
  nop                               #  47    0x4b25c  1      
  nop                               #  48    0x4b25d  1      
  nop                               #  49    0x4b25e  1      
  nop                               #  50    0x4b25f  1      
  nop                               #  51    0x4b260  1      
  nop                               #  52    0x4b261  1      
  nop                               #  53    0x4b262  1      
  nop                               #  54    0x4b263  1      
  nop                               #  55    0x4b264  1      
  nop                               #  56    0x4b265  1      
  nop                               #  57    0x4b266  1      
  nop                               #  58    0x4b267  1      
                                                             
.size __cxa_rethrow, .-__cxa_rethrow

