  .text
  .globl stub_write
  .type stub_write, @function

#! file-offset 0x67560
#! rip-offset  0x67560
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  
.stub_write:               #        0x67560  0      
  popq %r11                #  1     0x67560  3      
  movl $0x26, %eax         #  2     0x67563  5      
  andl $0xffffffe0, %r11d  #  3     0x67568  7      
  addq %r15, %r11          #  4     0x6756f  3      
  jmpq %r11                #  5     0x67572  3      
  nop                      #  6     0x67575  1      
                                                    
.size stub_write, .-stub_write

