  .text
  .globl __libnacl_irt_mprotect
  .type __libnacl_irt_mprotect, @function

#! file-offset 0x68060
#! rip-offset  0x68060
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  
.__libnacl_irt_mprotect:   #        0x68060  0      
  popq %r11                #  1     0x68060  3      
  movl $0x26, %eax         #  2     0x68063  5      
  andl $0xffffffe0, %r11d  #  3     0x68068  7      
  addq %r15, %r11          #  4     0x6806f  3      
  jmpq %r11                #  5     0x68072  3      
  nop                      #  6     0x68075  1      
                                                    
.size __libnacl_irt_mprotect, .-__libnacl_irt_mprotect

