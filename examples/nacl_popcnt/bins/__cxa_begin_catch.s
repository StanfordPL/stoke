  .text
  .globl __cxa_begin_catch
  .type __cxa_begin_catch, @function

#! file-offset 0x4c660
#! rip-offset  0x4c660
#! capacity    320 bytes

# Text                            #  Line  RIP      Bytes  
.__cxa_begin_catch:               #        0x4c660  0      
  pushq %rbx                      #  1     0x4c660  2      
  movl %edi, %ebx                 #  2     0x4c662  2      
  subl $0x30, %ebx                #  3     0x4c664  3      
  nop                             #  4     0x4c667  1      
  nop                             #  5     0x4c668  1      
  callq .__cxa_get_globals        #  6     0x4c669  5      
  movq $0xb8b1aabcbcd4d500, %rdx  #  7     0x4c66e  10     
  movl %ebx, %ebx                 #  8     0x4c678  2      
  addq 0x30(%r15,%rbx,1), %rdx    #  9     0x4c67a  5      
  movl %eax, %eax                 #  10    0x4c67f  2      
  movl %eax, %eax                 #  11    0x4c681  2      
  movl (%r15,%rax,1), %ecx        #  12    0x4c683  4      
  cmpq $0x1, %rdx                 #  13    0x4c687  4      
  nop                             #  14    0x4c68b  1      
  jbe .L_4c6c0                    #  15    0x4c68c  6      
  testq %rcx, %rcx                #  16    0x4c692  3      
  jne .L_4c740                    #  17    0x4c695  6      
  movl %eax, %eax                 #  18    0x4c69b  2      
  movl %ebx, (%r15,%rax,1)        #  19    0x4c69d  4      
  xorl %eax, %eax                 #  20    0x4c6a1  2      
  popq %rbx                       #  21    0x4c6a3  2      
  popq %r11                       #  22    0x4c6a5  3      
  andl $0xffffffe0, %r11d         #  23    0x4c6a8  7      
  addq %r15, %r11                 #  24    0x4c6af  3      
  jmpq %r11                       #  25    0x4c6b2  3      
.L_4c6c0:                         #        0x4c6b5  0      
  movl %ebx, %ebx                 #  26    0x4c6b5  2      
  movl 0x14(%r15,%rbx,1), %edx    #  27    0x4c6b7  5      
  testl %edx, %edx                #  28    0x4c6bc  2      
  leal 0x1(%rdx), %esi            #  29    0x4c6be  3      
  js .L_4c720                     #  30    0x4c6c1  6      
  nop                             #  31    0x4c6c7  1      
  nop                             #  32    0x4c6c8  1      
.L_4c6e0:                         #        0x4c6c9  0      
  movl %ebx, %ebx                 #  33    0x4c6c9  2      
  movl %esi, 0x14(%r15,%rbx,1)    #  34    0x4c6cb  5      
  movl %eax, %eax                 #  35    0x4c6d0  2      
  subl $0x1, 0x4(%r15,%rax,1)     #  36    0x4c6d2  6      
  cmpl %ebx, %ecx                 #  37    0x4c6d8  2      
  je .L_4c700                     #  38    0x4c6da  6      
  movl %ebx, %ebx                 #  39    0x4c6e0  2      
  movl %ecx, 0x10(%r15,%rbx,1)    #  40    0x4c6e2  5      
  movl %eax, %eax                 #  41    0x4c6e7  2      
  movl %ebx, (%r15,%rax,1)        #  42    0x4c6e9  4      
.L_4c700:                         #        0x4c6ed  0      
  movl %ebx, %ebx                 #  43    0x4c6ed  2      
  movl 0x28(%r15,%rbx,1), %eax    #  44    0x4c6ef  5      
  popq %rbx                       #  45    0x4c6f4  2      
  popq %r11                       #  46    0x4c6f6  3      
  andl $0xffffffe0, %r11d         #  47    0x4c6f9  7      
  addq %r15, %r11                 #  48    0x4c700  3      
  jmpq %r11                       #  49    0x4c703  3      
  nop                             #  50    0x4c706  1      
.L_4c720:                         #        0x4c707  0      
  movl $0x1, %esi                 #  51    0x4c707  5      
  subl %edx, %esi                 #  52    0x4c70c  2      
  jmpq .L_4c6e0                   #  53    0x4c70e  5      
  nop                             #  54    0x4c713  1      
  nop                             #  55    0x4c714  1      
.L_4c740:                         #        0x4c715  0      
  nop                             #  56    0x4c715  1      
  nop                             #  57    0x4c716  1      
  callq ._ZSt9terminatev          #  58    0x4c717  5      
  cmpq $0xffffffffffffffff, %rdx  #  59    0x4c71c  4      
  movl %eax, %edi                 #  60    0x4c720  2      
  je .L_4c780                     #  61    0x4c722  6      
  nop                             #  62    0x4c728  1      
  nop                             #  63    0x4c729  1      
  callq ._Unwind_Resume           #  64    0x4c72a  5      
.L_4c780:                         #        0x4c72f  0      
  nop                             #  65    0x4c72f  1      
  nop                             #  66    0x4c730  1      
  callq .__cxa_call_unexpected    #  67    0x4c731  5      
                                                           
.size __cxa_begin_catch, .-__cxa_begin_catch

