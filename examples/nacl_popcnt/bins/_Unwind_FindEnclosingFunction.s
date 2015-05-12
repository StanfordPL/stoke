  .text
  .globl _Unwind_FindEnclosingFunction
  .type _Unwind_FindEnclosingFunction, @function

#! file-offset 0x59300
#! rip-offset  0x59300
#! capacity    64 bytes

# Text                           #  Line  RIP      Bytes  
._Unwind_FindEnclosingFunction:  #        0x59300  0      
  subl $0x18, %esp               #  1     0x59300  3      
  addq %r15, %rsp                #  2     0x59303  3      
  subl $0x1, %edi                #  3     0x59306  3      
  movl %esp, %esi                #  4     0x59309  2      
  nop                            #  5     0x5930b  1      
  nop                            #  6     0x5930c  1      
  callq ._Unwind_Find_FDE        #  7     0x5930d  5      
  movl 0x8(%rsp), %ecx           #  8     0x59312  4      
  movl %eax, %edx                #  9     0x59316  2      
  xorl %eax, %eax                #  10    0x59318  2      
  testl %edx, %edx               #  11    0x5931a  2      
  cmovneq %rcx, %rax             #  12    0x5931c  4      
  addl $0x18, %esp               #  13    0x59320  3      
  addq %r15, %rsp                #  14    0x59323  3      
  popq %r11                      #  15    0x59326  3      
  andl $0xffffffe0, %r11d        #  16    0x59329  7      
  addq %r15, %r11                #  17    0x59330  3      
  jmpq %r11                      #  18    0x59333  3      
                                                          
.size _Unwind_FindEnclosingFunction, .-_Unwind_FindEnclosingFunction

