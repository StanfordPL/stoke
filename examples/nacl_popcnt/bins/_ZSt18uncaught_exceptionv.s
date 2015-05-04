  .text
  .globl _ZSt18uncaught_exceptionv
  .type _ZSt18uncaught_exceptionv, @function

#! file-offset 0x4c4e0
#! rip-offset  0x4c4e0
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  
._ZSt18uncaught_exceptionv:    #        0x4c4e0  0      
  subl $0x8, %esp              #  1     0x4c4e0  3      
  addq %r15, %rsp              #  2     0x4c4e3  3      
  nop                          #  3     0x4c4e6  1      
  nop                          #  4     0x4c4e7  1      
  callq .__cxa_get_globals     #  5     0x4c4e8  5      
  movl %eax, %eax              #  6     0x4c4ed  2      
  movl %eax, %eax              #  7     0x4c4ef  2      
  movl 0x4(%r15,%rax,1), %eax  #  8     0x4c4f1  5      
  testl %eax, %eax             #  9     0x4c4f6  2      
  setne %al                    #  10    0x4c4f8  3      
  addl $0x8, %esp              #  11    0x4c4fb  3      
  addq %r15, %rsp              #  12    0x4c4fe  3      
  popq %r11                    #  13    0x4c501  3      
  andl $0xffffffe0, %r11d      #  14    0x4c504  7      
  addq %r15, %r11              #  15    0x4c50b  3      
  jmpq %r11                    #  16    0x4c50e  3      
                                                        
.size _ZSt18uncaught_exceptionv, .-_ZSt18uncaught_exceptionv

