  .text
  .globl __cxa_get_globals_fast
  .type __cxa_get_globals_fast, @function

#! file-offset 0x4b1c0
#! rip-offset  0x4b1c0
#! capacity    192 bytes

# Text                            #  Line  RIP      Bytes  
.__cxa_get_globals_fast:          #        0x4b1c0  0      
  subl $0x8, %esp                 #  1     0x4b1c0  3      
  addq %r15, %rsp                 #  2     0x4b1c3  3      
  cmpb $0x0, 0xffe6be7(%rip)      #  3     0x4b1c6  7      
  movl $0x10031db8, %eax          #  4     0x4b1cd  5      
  jne .L_4b200                    #  5     0x4b1d2  6      
  addl $0x8, %esp                 #  6     0x4b1d8  3      
  addq %r15, %rsp                 #  7     0x4b1db  3      
  popq %r11                       #  8     0x4b1de  3      
  nop                             #  9     0x4b1e1  1      
  andl $0xffffffe0, %r11d         #  10    0x4b1e2  7      
  addq %r15, %r11                 #  11    0x4b1e9  3      
  jmpq %r11                       #  12    0x4b1ec  3      
  nop                             #  13    0x4b1ef  1      
  nop                             #  14    0x4b1f0  1      
.L_4b200:                         #        0x4b1f1  0      
  movl 0xffe6bb9(%rip), %edi      #  15    0x4b1f1  6      
  nop                             #  16    0x4b1f7  1      
  nop                             #  17    0x4b1f8  1      
  callq .pthread_getspecific      #  18    0x4b1f9  5      
  addl $0x8, %esp                 #  19    0x4b1fe  3      
  addq %r15, %rsp                 #  20    0x4b201  3      
  movl %eax, %eax                 #  21    0x4b204  2      
  popq %r11                       #  22    0x4b206  3      
  andl $0xffffffe0, %r11d         #  23    0x4b209  7      
  addq %r15, %r11                 #  24    0x4b210  3      
  jmpq %r11                       #  25    0x4b213  3      
  nop                             #  26    0x4b216  1      
  cmpq $0xffffffffffffffff, %rdx  #  27    0x4b217  4      
  movl %eax, %edi                 #  28    0x4b21b  2      
  je .L_4b260                     #  29    0x4b21d  6      
  nop                             #  30    0x4b223  1      
  nop                             #  31    0x4b224  1      
  callq ._Unwind_Resume           #  32    0x4b225  5      
.L_4b260:                         #        0x4b22a  0      
  nop                             #  33    0x4b22a  1      
  nop                             #  34    0x4b22b  1      
  callq .__cxa_call_unexpected    #  35    0x4b22c  5      
                                                           
.size __cxa_get_globals_fast, .-__cxa_get_globals_fast

