  .text
  .globl __cxa_pure_virtual
  .type __cxa_pure_virtual, @function

#! file-offset 0x4c8e0
#! rip-offset  0x4c8e0
#! capacity    64 bytes

# Text                    #  Line  RIP      Bytes  
.__cxa_pure_virtual:      #        0x4c8e0  0      
  subl $0x8, %esp         #  1     0x4c8e0  3      
  addq %r15, %rsp         #  2     0x4c8e3  3      
  movl $0x1b, %edx        #  3     0x4c8e6  5      
  movl $0x10020f08, %esi  #  4     0x4c8eb  5      
  movl $0x2, %edi         #  5     0x4c8f0  5      
  nop                     #  6     0x4c8f5  1      
  callq .write            #  7     0x4c8f6  5      
  nop                     #  8     0x4c8fb  1      
  nop                     #  9     0x4c8fc  1      
  callq ._ZSt9terminatev  #  10    0x4c8fd  5      
                                                   
.size __cxa_pure_virtual, .-__cxa_pure_virtual

