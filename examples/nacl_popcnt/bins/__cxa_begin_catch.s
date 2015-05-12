  .text
  .globl __cxa_begin_catch
  .type __cxa_begin_catch, @function

#! file-offset 0x4c5e0
#! rip-offset  0x4c5e0
#! capacity    320 bytes

# Text                            #  Line  RIP      Bytes  
.__cxa_begin_catch:               #        0x4c5e0  0      
  pushq %rbx                      #  1     0x4c5e0  2      
  movl %edi, %ebx                 #  2     0x4c5e2  2      
  subl $0x30, %ebx                #  3     0x4c5e4  3      
  nop                             #  4     0x4c5e7  1      
  nop                             #  5     0x4c5e8  1      
  callq .__cxa_get_globals        #  6     0x4c5e9  5      
  movq $0xb8b1aabcbcd4d500, %rdx  #  7     0x4c5ee  10     
  movl %ebx, %ebx                 #  8     0x4c5f8  2      
  addq 0x30(%r15,%rbx,1), %rdx    #  9     0x4c5fa  5      
  movl %eax, %eax                 #  10    0x4c5ff  2      
  movl %eax, %eax                 #  11    0x4c601  2      
  movl (%r15,%rax,1), %ecx        #  12    0x4c603  4      
  cmpq $0x1, %rdx                 #  13    0x4c607  4      
  nop                             #  14    0x4c60b  1      
  jbe .L_4c640                    #  15    0x4c60c  6      
  testq %rcx, %rcx                #  16    0x4c612  3      
  jne .L_4c6c0                    #  17    0x4c615  6      
  movl %eax, %eax                 #  18    0x4c61b  2      
  movl %ebx, (%r15,%rax,1)        #  19    0x4c61d  4      
  xorl %eax, %eax                 #  20    0x4c621  2      
  popq %rbx                       #  21    0x4c623  2      
  popq %r11                       #  22    0x4c625  3      
  andl $0xffffffe0, %r11d         #  23    0x4c628  7      
  addq %r15, %r11                 #  24    0x4c62f  3      
  jmpq %r11                       #  25    0x4c632  3      
.L_4c640:                         #        0x4c635  0      
  movl %ebx, %ebx                 #  26    0x4c635  2      
  movl 0x14(%r15,%rbx,1), %edx    #  27    0x4c637  5      
  testl %edx, %edx                #  28    0x4c63c  2      
  leal 0x1(%rdx), %esi            #  29    0x4c63e  3      
  js .L_4c6a0                     #  30    0x4c641  6      
  nop                             #  31    0x4c647  1      
  nop                             #  32    0x4c648  1      
.L_4c660:                         #        0x4c649  0      
  movl %ebx, %ebx                 #  33    0x4c649  2      
  movl %esi, 0x14(%r15,%rbx,1)    #  34    0x4c64b  5      
  movl %eax, %eax                 #  35    0x4c650  2      
  subl $0x1, 0x4(%r15,%rax,1)     #  36    0x4c652  6      
  cmpl %ebx, %ecx                 #  37    0x4c658  2      
  je .L_4c680                     #  38    0x4c65a  6      
  movl %ebx, %ebx                 #  39    0x4c660  2      
  movl %ecx, 0x10(%r15,%rbx,1)    #  40    0x4c662  5      
  movl %eax, %eax                 #  41    0x4c667  2      
  movl %ebx, (%r15,%rax,1)        #  42    0x4c669  4      
.L_4c680:                         #        0x4c66d  0      
  movl %ebx, %ebx                 #  43    0x4c66d  2      
  movl 0x28(%r15,%rbx,1), %eax    #  44    0x4c66f  5      
  popq %rbx                       #  45    0x4c674  2      
  popq %r11                       #  46    0x4c676  3      
  andl $0xffffffe0, %r11d         #  47    0x4c679  7      
  addq %r15, %r11                 #  48    0x4c680  3      
  jmpq %r11                       #  49    0x4c683  3      
  nop                             #  50    0x4c686  1      
.L_4c6a0:                         #        0x4c687  0      
  movl $0x1, %esi                 #  51    0x4c687  5      
  subl %edx, %esi                 #  52    0x4c68c  2      
  jmpq .L_4c660                   #  53    0x4c68e  5      
  nop                             #  54    0x4c693  1      
  nop                             #  55    0x4c694  1      
.L_4c6c0:                         #        0x4c695  0      
  nop                             #  56    0x4c695  1      
  nop                             #  57    0x4c696  1      
  callq ._ZSt9terminatev          #  58    0x4c697  5      
  cmpq $0xffffffffffffffff, %rdx  #  59    0x4c69c  4      
  movl %eax, %edi                 #  60    0x4c6a0  2      
  je .L_4c700                     #  61    0x4c6a2  6      
  nop                             #  62    0x4c6a8  1      
  nop                             #  63    0x4c6a9  1      
  callq ._Unwind_Resume           #  64    0x4c6aa  5      
.L_4c700:                         #        0x4c6af  0      
  nop                             #  65    0x4c6af  1      
  nop                             #  66    0x4c6b0  1      
  callq .__cxa_call_unexpected    #  67    0x4c6b1  5      
                                                           
.size __cxa_begin_catch, .-__cxa_begin_catch

