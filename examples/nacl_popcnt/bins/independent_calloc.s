  .text
  .globl independent_calloc
  .type independent_calloc, @function

#! file-offset 0x673e0
#! rip-offset  0x673e0
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  
.independent_calloc:       #        0x673e0  0      
  subl $0x18, %esp         #  1     0x673e0  3      
  addq %r15, %rsp          #  2     0x673e3  3      
  movl %edx, %ecx          #  3     0x673e6  2      
  movl $0x3, %edx          #  4     0x673e8  5      
  movl %esi, 0xc(%rsp)     #  5     0x673ed  4      
  leal 0xc(%rsp), %esi     #  6     0x673f1  4      
  nop                      #  7     0x673f5  1      
  callq .T_278             #  8     0x673f6  5      
  addl $0x18, %esp         #  9     0x673fb  3      
  addq %r15, %rsp          #  10    0x673fe  3      
  movl %eax, %eax          #  11    0x67401  2      
  popq %r11                #  12    0x67403  3      
  andl $0xffffffe0, %r11d  #  13    0x67406  7      
  addq %r15, %r11          #  14    0x6740d  3      
  jmpq %r11                #  15    0x67410  3      
  nop                      #  16    0x67413  1      
                                                    
.size independent_calloc, .-independent_calloc

