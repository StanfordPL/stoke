  .text
  .globl __cxa_pure_virtual
  .type __cxa_pure_virtual, @function

#! file-offset 0x4c8c0
#! rip-offset  0x4c8c0
#! capacity    64 bytes

# Text                    #  Line  RIP      Bytes  
.__cxa_pure_virtual:      #        0x4c8c0  0      
  subl $0x8, %esp         #  1     0x4c8c0  3      
  addq %r15, %rsp         #  2     0x4c8c3  3      
  movl $0x1b, %edx        #  3     0x4c8c6  5      
  movl $0x10020f08, %esi  #  4     0x4c8cb  5      
  movl $0x2, %edi         #  5     0x4c8d0  5      
  nop                     #  6     0x4c8d5  1      
  callq .write            #  7     0x4c8d6  5      
  nop                     #  8     0x4c8db  1      
  nop                     #  9     0x4c8dc  1      
  callq ._ZSt9terminatev  #  10    0x4c8dd  5      
                                                   
.size __cxa_pure_virtual, .-__cxa_pure_virtual

