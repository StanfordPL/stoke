  .text
  .globl independent_calloc
  .type independent_calloc, @function

#! file-offset 0x67480
#! rip-offset  0x67480
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  
.independent_calloc:       #        0x67480  0      
  subl $0x18, %esp         #  1     0x67480  3      
  addq %r15, %rsp          #  2     0x67483  3      
  movl %edx, %ecx          #  3     0x67486  2      
  movl $0x3, %edx          #  4     0x67488  5      
  movl %esi, 0xc(%rsp)     #  5     0x6748d  4      
  leal 0xc(%rsp), %esi     #  6     0x67491  4      
  nop                      #  7     0x67495  1      
  callq .T_278             #  8     0x67496  5      
  addl $0x18, %esp         #  9     0x6749b  3      
  addq %r15, %rsp          #  10    0x6749e  3      
  movl %eax, %eax          #  11    0x674a1  2      
  popq %r11                #  12    0x674a3  3      
  andl $0xffffffe0, %r11d  #  13    0x674a6  7      
  addq %r15, %r11          #  14    0x674ad  3      
  jmpq %r11                #  15    0x674b0  3      
  nop                      #  16    0x674b3  1      
                                                    
.size independent_calloc, .-independent_calloc

