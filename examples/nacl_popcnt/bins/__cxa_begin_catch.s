  .text
  .globl __cxa_begin_catch
  .type __cxa_begin_catch, @function

#! file-offset 0x4c5c0
#! rip-offset  0x4c5c0
#! capacity    320 bytes

# Text                            #  Line  RIP      Bytes  
.__cxa_begin_catch:               #        0x4c5c0  0      
  pushq %rbx                      #  1     0x4c5c0  2      
  movl %edi, %ebx                 #  2     0x4c5c2  2      
  subl $0x30, %ebx                #  3     0x4c5c4  3      
  nop                             #  4     0x4c5c7  1      
  nop                             #  5     0x4c5c8  1      
  callq .__cxa_get_globals        #  6     0x4c5c9  5      
  movq $0xb8b1aabcbcd4d500, %rdx  #  7     0x4c5ce  10     
  movl %ebx, %ebx                 #  8     0x4c5d8  2      
  addq 0x30(%r15,%rbx,1), %rdx    #  9     0x4c5da  5      
  movl %eax, %eax                 #  10    0x4c5df  2      
  movl %eax, %eax                 #  11    0x4c5e1  2      
  movl (%r15,%rax,1), %ecx        #  12    0x4c5e3  4      
  cmpq $0x1, %rdx                 #  13    0x4c5e7  4      
  nop                             #  14    0x4c5eb  1      
  jbe .L_4c620                    #  15    0x4c5ec  6      
  testq %rcx, %rcx                #  16    0x4c5f2  3      
  jne .L_4c6a0                    #  17    0x4c5f5  6      
  movl %eax, %eax                 #  18    0x4c5fb  2      
  movl %ebx, (%r15,%rax,1)        #  19    0x4c5fd  4      
  xorl %eax, %eax                 #  20    0x4c601  2      
  popq %rbx                       #  21    0x4c603  2      
  popq %r11                       #  22    0x4c605  3      
  andl $0xffffffe0, %r11d         #  23    0x4c608  7      
  addq %r15, %r11                 #  24    0x4c60f  3      
  jmpq %r11                       #  25    0x4c612  3      
.L_4c620:                         #        0x4c615  0      
  movl %ebx, %ebx                 #  26    0x4c615  2      
  movl 0x14(%r15,%rbx,1), %edx    #  27    0x4c617  5      
  testl %edx, %edx                #  28    0x4c61c  2      
  leal 0x1(%rdx), %esi            #  29    0x4c61e  3      
  js .L_4c680                     #  30    0x4c621  6      
  nop                             #  31    0x4c627  1      
  nop                             #  32    0x4c628  1      
.L_4c640:                         #        0x4c629  0      
  movl %ebx, %ebx                 #  33    0x4c629  2      
  movl %esi, 0x14(%r15,%rbx,1)    #  34    0x4c62b  5      
  movl %eax, %eax                 #  35    0x4c630  2      
  subl $0x1, 0x4(%r15,%rax,1)     #  36    0x4c632  6      
  cmpl %ebx, %ecx                 #  37    0x4c638  2      
  je .L_4c660                     #  38    0x4c63a  6      
  movl %ebx, %ebx                 #  39    0x4c640  2      
  movl %ecx, 0x10(%r15,%rbx,1)    #  40    0x4c642  5      
  movl %eax, %eax                 #  41    0x4c647  2      
  movl %ebx, (%r15,%rax,1)        #  42    0x4c649  4      
.L_4c660:                         #        0x4c64d  0      
  movl %ebx, %ebx                 #  43    0x4c64d  2      
  movl 0x28(%r15,%rbx,1), %eax    #  44    0x4c64f  5      
  popq %rbx                       #  45    0x4c654  2      
  popq %r11                       #  46    0x4c656  3      
  andl $0xffffffe0, %r11d         #  47    0x4c659  7      
  addq %r15, %r11                 #  48    0x4c660  3      
  jmpq %r11                       #  49    0x4c663  3      
  nop                             #  50    0x4c666  1      
.L_4c680:                         #        0x4c667  0      
  movl $0x1, %esi                 #  51    0x4c667  5      
  subl %edx, %esi                 #  52    0x4c66c  2      
  jmpq .L_4c640                   #  53    0x4c66e  5      
  nop                             #  54    0x4c673  1      
  nop                             #  55    0x4c674  1      
.L_4c6a0:                         #        0x4c675  0      
  nop                             #  56    0x4c675  1      
  nop                             #  57    0x4c676  1      
  callq ._ZSt9terminatev          #  58    0x4c677  5      
  cmpq $0xffffffffffffffff, %rdx  #  59    0x4c67c  4      
  movl %eax, %edi                 #  60    0x4c680  2      
  je .L_4c6e0                     #  61    0x4c682  6      
  nop                             #  62    0x4c688  1      
  nop                             #  63    0x4c689  1      
  callq ._Unwind_Resume           #  64    0x4c68a  5      
.L_4c6e0:                         #        0x4c68f  0      
  nop                             #  65    0x4c68f  1      
  nop                             #  66    0x4c690  1      
  callq .__cxa_call_unexpected    #  67    0x4c691  5      
                                                           
.size __cxa_begin_catch, .-__cxa_begin_catch

