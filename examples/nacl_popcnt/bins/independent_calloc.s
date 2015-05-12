  .text
  .globl independent_calloc
  .type independent_calloc, @function

#! file-offset 0x67400
#! rip-offset  0x67400
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  
.independent_calloc:       #        0x67400  0      
  subl $0x18, %esp         #  1     0x67400  3      
  addq %r15, %rsp          #  2     0x67403  3      
  movl %edx, %ecx          #  3     0x67406  2      
  movl $0x3, %edx          #  4     0x67408  5      
  movl %esi, 0xc(%rsp)     #  5     0x6740d  4      
  leal 0xc(%rsp), %esi     #  6     0x67411  4      
  nop                      #  7     0x67415  1      
  callq .T_278             #  8     0x67416  5      
  addl $0x18, %esp         #  9     0x6741b  3      
  addq %r15, %rsp          #  10    0x6741e  3      
  movl %eax, %eax          #  11    0x67421  2      
  popq %r11                #  12    0x67423  3      
  andl $0xffffffe0, %r11d  #  13    0x67426  7      
  addq %r15, %r11          #  14    0x6742d  3      
  jmpq %r11                #  15    0x67430  3      
  nop                      #  16    0x67433  1      
                                                    
.size independent_calloc, .-independent_calloc

