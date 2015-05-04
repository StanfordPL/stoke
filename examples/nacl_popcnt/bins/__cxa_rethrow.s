  .text
  .globl __cxa_rethrow
  .type __cxa_rethrow, @function

#! file-offset 0x4b280
#! rip-offset  0x4b280
#! capacity    224 bytes

# Text                              #  Line  RIP      Bytes  
.__cxa_rethrow:                     #        0x4b280  0      
  pushq %rbx                        #  1     0x4b280  2      
  nop                               #  2     0x4b282  1      
  nop                               #  3     0x4b283  1      
  callq .__cxa_get_globals          #  4     0x4b284  5      
  movl %eax, %eax                   #  5     0x4b289  2      
  movl %eax, %eax                   #  6     0x4b28b  2      
  movl (%r15,%rax,1), %ebx          #  7     0x4b28d  4      
  movl %eax, %eax                   #  8     0x4b291  2      
  addl $0x1, 0x4(%r15,%rax,1)       #  9     0x4b293  6      
  testq %rbx, %rbx                  #  10    0x4b299  3      
  je .L_4b320                       #  11    0x4b29c  6      
  movq $0xb8b1aabcbcd4d500, %rdx    #  12    0x4b2a2  10     
  nop                               #  13    0x4b2ac  1      
  movl %ebx, %ebx                   #  14    0x4b2ad  2      
  addq 0x30(%r15,%rbx,1), %rdx      #  15    0x4b2af  5      
  cmpq $0x1, %rdx                   #  16    0x4b2b4  4      
  jbe .L_4b340                      #  17    0x4b2b8  6      
  movl %eax, %eax                   #  18    0x4b2be  2      
  movl $0x0, (%r15,%rax,1)          #  19    0x4b2c0  8      
  nop                               #  20    0x4b2c8  1      
.L_4b2e0:                           #        0x4b2c9  0      
  addl $0x30, %ebx                  #  21    0x4b2c9  3      
  movl %ebx, %edi                   #  22    0x4b2cc  2      
  nop                               #  23    0x4b2ce  1      
  nop                               #  24    0x4b2cf  1      
  callq ._Unwind_Resume_or_Rethrow  #  25    0x4b2d0  5      
  movl %ebx, %edi                   #  26    0x4b2d5  2      
  nop                               #  27    0x4b2d7  1      
  nop                               #  28    0x4b2d8  1      
  callq .__cxa_begin_catch          #  29    0x4b2d9  5      
.L_4b320:                           #        0x4b2de  0      
  nop                               #  30    0x4b2de  1      
  nop                               #  31    0x4b2df  1      
  callq ._ZSt9terminatev            #  32    0x4b2e0  5      
.L_4b340:                           #        0x4b2e5  0      
  movl %ebx, %ebx                   #  33    0x4b2e5  2      
  negl 0x14(%r15,%rbx,1)            #  34    0x4b2e7  5      
  jmpq .L_4b2e0                     #  35    0x4b2ec  5      
  nop                               #  36    0x4b2f1  1      
  nop                               #  37    0x4b2f2  1      
  nop                               #  38    0x4b2f3  1      
  nop                               #  39    0x4b2f4  1      
  nop                               #  40    0x4b2f5  1      
  nop                               #  41    0x4b2f6  1      
  nop                               #  42    0x4b2f7  1      
  nop                               #  43    0x4b2f8  1      
  nop                               #  44    0x4b2f9  1      
  nop                               #  45    0x4b2fa  1      
  nop                               #  46    0x4b2fb  1      
  nop                               #  47    0x4b2fc  1      
  nop                               #  48    0x4b2fd  1      
  nop                               #  49    0x4b2fe  1      
  nop                               #  50    0x4b2ff  1      
  nop                               #  51    0x4b300  1      
  nop                               #  52    0x4b301  1      
  nop                               #  53    0x4b302  1      
  nop                               #  54    0x4b303  1      
  nop                               #  55    0x4b304  1      
  nop                               #  56    0x4b305  1      
  nop                               #  57    0x4b306  1      
  nop                               #  58    0x4b307  1      
                                                             
.size __cxa_rethrow, .-__cxa_rethrow

