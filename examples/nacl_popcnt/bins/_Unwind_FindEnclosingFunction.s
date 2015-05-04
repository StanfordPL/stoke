  .text
  .globl _Unwind_FindEnclosingFunction
  .type _Unwind_FindEnclosingFunction, @function

#! file-offset 0x59380
#! rip-offset  0x59380
#! capacity    64 bytes

# Text                           #  Line  RIP      Bytes  
._Unwind_FindEnclosingFunction:  #        0x59380  0      
  subl $0x18, %esp               #  1     0x59380  3      
  addq %r15, %rsp                #  2     0x59383  3      
  subl $0x1, %edi                #  3     0x59386  3      
  movl %esp, %esi                #  4     0x59389  2      
  nop                            #  5     0x5938b  1      
  nop                            #  6     0x5938c  1      
  callq ._Unwind_Find_FDE        #  7     0x5938d  5      
  movl 0x8(%rsp), %ecx           #  8     0x59392  4      
  movl %eax, %edx                #  9     0x59396  2      
  xorl %eax, %eax                #  10    0x59398  2      
  testl %edx, %edx               #  11    0x5939a  2      
  cmovneq %rcx, %rax             #  12    0x5939c  4      
  addl $0x18, %esp               #  13    0x593a0  3      
  addq %r15, %rsp                #  14    0x593a3  3      
  popq %r11                      #  15    0x593a6  3      
  andl $0xffffffe0, %r11d        #  16    0x593a9  7      
  addq %r15, %r11                #  17    0x593b0  3      
  jmpq %r11                      #  18    0x593b3  3      
                                                          
.size _Unwind_FindEnclosingFunction, .-_Unwind_FindEnclosingFunction

