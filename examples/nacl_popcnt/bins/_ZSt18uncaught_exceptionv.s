  .text
  .globl _ZSt18uncaught_exceptionv
  .type _ZSt18uncaught_exceptionv, @function

#! file-offset 0x4c460
#! rip-offset  0x4c460
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  
._ZSt18uncaught_exceptionv:    #        0x4c460  0      
  subl $0x8, %esp              #  1     0x4c460  3      
  addq %r15, %rsp              #  2     0x4c463  3      
  nop                          #  3     0x4c466  1      
  nop                          #  4     0x4c467  1      
  callq .__cxa_get_globals     #  5     0x4c468  5      
  movl %eax, %eax              #  6     0x4c46d  2      
  movl %eax, %eax              #  7     0x4c46f  2      
  movl 0x4(%r15,%rax,1), %eax  #  8     0x4c471  5      
  testl %eax, %eax             #  9     0x4c476  2      
  setne %al                    #  10    0x4c478  3      
  addl $0x8, %esp              #  11    0x4c47b  3      
  addq %r15, %rsp              #  12    0x4c47e  3      
  popq %r11                    #  13    0x4c481  3      
  andl $0xffffffe0, %r11d      #  14    0x4c484  7      
  addq %r15, %r11              #  15    0x4c48b  3      
  jmpq %r11                    #  16    0x4c48e  3      
                                                        
.size _ZSt18uncaught_exceptionv, .-_ZSt18uncaught_exceptionv

