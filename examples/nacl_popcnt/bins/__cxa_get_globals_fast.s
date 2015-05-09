  .text
  .globl __cxa_get_globals_fast
  .type __cxa_get_globals_fast, @function

#! file-offset 0x4b120
#! rip-offset  0x4b120
#! capacity    192 bytes

# Text                            #  Line  RIP      Bytes  
.__cxa_get_globals_fast:          #        0x4b120  0      
  subl $0x8, %esp                 #  1     0x4b120  3      
  addq %r15, %rsp                 #  2     0x4b123  3      
  cmpb $0x0, 0xffe6c87(%rip)      #  3     0x4b126  7      
  movl $0x10031db8, %eax          #  4     0x4b12d  5      
  jne .L_4b160                    #  5     0x4b132  6      
  addl $0x8, %esp                 #  6     0x4b138  3      
  addq %r15, %rsp                 #  7     0x4b13b  3      
  popq %r11                       #  8     0x4b13e  3      
  nop                             #  9     0x4b141  1      
  andl $0xffffffe0, %r11d         #  10    0x4b142  7      
  addq %r15, %r11                 #  11    0x4b149  3      
  jmpq %r11                       #  12    0x4b14c  3      
  nop                             #  13    0x4b14f  1      
  nop                             #  14    0x4b150  1      
.L_4b160:                         #        0x4b151  0      
  movl 0xffe6c59(%rip), %edi      #  15    0x4b151  6      
  nop                             #  16    0x4b157  1      
  nop                             #  17    0x4b158  1      
  callq .pthread_getspecific      #  18    0x4b159  5      
  addl $0x8, %esp                 #  19    0x4b15e  3      
  addq %r15, %rsp                 #  20    0x4b161  3      
  movl %eax, %eax                 #  21    0x4b164  2      
  popq %r11                       #  22    0x4b166  3      
  andl $0xffffffe0, %r11d         #  23    0x4b169  7      
  addq %r15, %r11                 #  24    0x4b170  3      
  jmpq %r11                       #  25    0x4b173  3      
  nop                             #  26    0x4b176  1      
  cmpq $0xffffffffffffffff, %rdx  #  27    0x4b177  4      
  movl %eax, %edi                 #  28    0x4b17b  2      
  je .L_4b1c0                     #  29    0x4b17d  6      
  nop                             #  30    0x4b183  1      
  nop                             #  31    0x4b184  1      
  callq ._Unwind_Resume           #  32    0x4b185  5      
.L_4b1c0:                         #        0x4b18a  0      
  nop                             #  33    0x4b18a  1      
  nop                             #  34    0x4b18b  1      
  callq .__cxa_call_unexpected    #  35    0x4b18c  5      
                                                           
.size __cxa_get_globals_fast, .-__cxa_get_globals_fast

