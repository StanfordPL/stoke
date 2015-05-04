  .text
  .globl __libnacl_irt_mprotect
  .type __libnacl_irt_mprotect, @function

#! file-offset 0x680e0
#! rip-offset  0x680e0
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  
.__libnacl_irt_mprotect:   #        0x680e0  0      
  popq %r11                #  1     0x680e0  3      
  movl $0x26, %eax         #  2     0x680e3  5      
  andl $0xffffffe0, %r11d  #  3     0x680e8  7      
  addq %r15, %r11          #  4     0x680ef  3      
  jmpq %r11                #  5     0x680f2  3      
  nop                      #  6     0x680f5  1      
                                                    
.size __libnacl_irt_mprotect, .-__libnacl_irt_mprotect

