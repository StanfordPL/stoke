  .text
  .globl __cxa_end_catch
  .type __cxa_end_catch, @function

#! file-offset 0x4c4a0
#! rip-offset  0x4c4a0
#! capacity    320 bytes

# Text                            #  Line  RIP      Bytes  
.__cxa_end_catch:                 #        0x4c4a0  0      
  subl $0x8, %esp                 #  1     0x4c4a0  3      
  addq %r15, %rsp                 #  2     0x4c4a3  3      
  nop                             #  3     0x4c4a6  1      
  nop                             #  4     0x4c4a7  1      
  callq .__cxa_get_globals_fast   #  5     0x4c4a8  5      
  movl %eax, %eax                 #  6     0x4c4ad  2      
  movl %eax, %eax                 #  7     0x4c4af  2      
  movl (%r15,%rax,1), %edi        #  8     0x4c4b1  4      
  testq %rdi, %rdi                #  9     0x4c4b5  3      
  je .L_4c540                     #  10    0x4c4b8  6      
  movq $0xb8b1aabcbcd4d500, %rdx  #  11    0x4c4be  10     
  movl %edi, %edi                 #  12    0x4c4c8  2      
  addq 0x30(%r15,%rdi,1), %rdx    #  13    0x4c4ca  5      
  xchgw %ax, %ax                  #  14    0x4c4cf  3      
  cmpq $0x1, %rdx                 #  15    0x4c4d2  4      
  ja .L_4c560                     #  16    0x4c4d6  6      
  movl %edi, %edi                 #  17    0x4c4dc  2      
  movl 0x14(%r15,%rdi,1), %edx    #  18    0x4c4de  5      
  testl %edx, %edx                #  19    0x4c4e3  2      
  js .L_4c580                     #  20    0x4c4e5  6      
  subl $0x1, %edx                 #  21    0x4c4eb  3      
  je .L_4c5a0                     #  22    0x4c4ee  6      
  xchgw %ax, %ax                  #  23    0x4c4f4  3      
  cmpl $0xffffffff, %edx          #  24    0x4c4f7  6      
  je .L_4c5c0                     #  25    0x4c4fd  6      
  nop                             #  26    0x4c503  1      
  nop                             #  27    0x4c504  1      
.L_4c520:                         #        0x4c505  0      
  movl %edi, %edi                 #  28    0x4c505  2      
  movl %edx, 0x14(%r15,%rdi,1)    #  29    0x4c507  5      
  nop                             #  30    0x4c50c  1      
  nop                             #  31    0x4c50d  1      
.L_4c540:                         #        0x4c50e  0      
  addl $0x8, %esp                 #  32    0x4c50e  3      
  addq %r15, %rsp                 #  33    0x4c511  3      
  popq %r11                       #  34    0x4c514  3      
  andl $0xffffffe0, %r11d         #  35    0x4c517  7      
  addq %r15, %r11                 #  36    0x4c51e  3      
  jmpq %r11                       #  37    0x4c521  3      
  nop                             #  38    0x4c524  1      
.L_4c560:                         #        0x4c525  0      
  movl %eax, %eax                 #  39    0x4c525  2      
  movl $0x0, (%r15,%rax,1)        #  40    0x4c527  8      
  addl $0x30, %edi                #  41    0x4c52f  3      
  addl $0x8, %esp                 #  42    0x4c532  3      
  addq %r15, %rsp                 #  43    0x4c535  3      
  jmpq ._Unwind_DeleteException   #  44    0x4c538  5      
  nop                             #  45    0x4c53d  1      
.L_4c580:                         #        0x4c53e  0      
  addl $0x1, %edx                 #  46    0x4c53e  3      
  jne .L_4c520                    #  47    0x4c541  6      
  movl %edi, %edi                 #  48    0x4c547  2      
  movl 0x10(%r15,%rdi,1), %ecx    #  49    0x4c549  5      
  movl %eax, %eax                 #  50    0x4c54e  2      
  movl %ecx, (%r15,%rax,1)        #  51    0x4c550  4      
  jmpq .L_4c520                   #  52    0x4c554  5      
  nop                             #  53    0x4c559  1      
.L_4c5a0:                         #        0x4c55a  0      
  movl %edi, %edi                 #  54    0x4c55a  2      
  movl 0x10(%r15,%rdi,1), %edx    #  55    0x4c55c  5      
  addl $0x30, %edi                #  56    0x4c561  3      
  movl %eax, %eax                 #  57    0x4c564  2      
  movl %edx, (%r15,%rax,1)        #  58    0x4c566  4      
  addl $0x8, %esp                 #  59    0x4c56a  3      
  addq %r15, %rsp                 #  60    0x4c56d  3      
  jmpq ._Unwind_DeleteException   #  61    0x4c570  5      
  nop                             #  62    0x4c575  1      
.L_4c5c0:                         #        0x4c576  0      
  nop                             #  63    0x4c576  1      
  nop                             #  64    0x4c577  1      
  callq ._ZSt9terminatev          #  65    0x4c578  5      
                                                           
.size __cxa_end_catch, .-__cxa_end_catch

