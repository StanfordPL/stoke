  .text
  .globl __cxa_get_globals_fast
  .type __cxa_get_globals_fast, @function

#! file-offset 0x4b140
#! rip-offset  0x4b140
#! capacity    192 bytes

# Text                            #  Line  RIP      Bytes  
.__cxa_get_globals_fast:          #        0x4b140  0      
  subl $0x8, %esp                 #  1     0x4b140  3      
  addq %r15, %rsp                 #  2     0x4b143  3      
  cmpb $0x0, 0xffe6c67(%rip)      #  3     0x4b146  7      
  movl $0x10031db8, %eax          #  4     0x4b14d  5      
  jne .L_4b180                    #  5     0x4b152  6      
  addl $0x8, %esp                 #  6     0x4b158  3      
  addq %r15, %rsp                 #  7     0x4b15b  3      
  popq %r11                       #  8     0x4b15e  3      
  nop                             #  9     0x4b161  1      
  andl $0xffffffe0, %r11d         #  10    0x4b162  7      
  addq %r15, %r11                 #  11    0x4b169  3      
  jmpq %r11                       #  12    0x4b16c  3      
  nop                             #  13    0x4b16f  1      
  nop                             #  14    0x4b170  1      
.L_4b180:                         #        0x4b171  0      
  movl 0xffe6c39(%rip), %edi      #  15    0x4b171  6      
  nop                             #  16    0x4b177  1      
  nop                             #  17    0x4b178  1      
  callq .pthread_getspecific      #  18    0x4b179  5      
  addl $0x8, %esp                 #  19    0x4b17e  3      
  addq %r15, %rsp                 #  20    0x4b181  3      
  movl %eax, %eax                 #  21    0x4b184  2      
  popq %r11                       #  22    0x4b186  3      
  andl $0xffffffe0, %r11d         #  23    0x4b189  7      
  addq %r15, %r11                 #  24    0x4b190  3      
  jmpq %r11                       #  25    0x4b193  3      
  nop                             #  26    0x4b196  1      
  cmpq $0xffffffffffffffff, %rdx  #  27    0x4b197  4      
  movl %eax, %edi                 #  28    0x4b19b  2      
  je .L_4b1e0                     #  29    0x4b19d  6      
  nop                             #  30    0x4b1a3  1      
  nop                             #  31    0x4b1a4  1      
  callq ._Unwind_Resume           #  32    0x4b1a5  5      
.L_4b1e0:                         #        0x4b1aa  0      
  nop                             #  33    0x4b1aa  1      
  nop                             #  34    0x4b1ab  1      
  callq .__cxa_call_unexpected    #  35    0x4b1ac  5      
                                                           
.size __cxa_get_globals_fast, .-__cxa_get_globals_fast

