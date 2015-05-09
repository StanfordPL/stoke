  .text
  .globl stub_seek
  .type stub_seek, @function

#! file-offset 0x674e0
#! rip-offset  0x674e0
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  
.stub_seek:                #        0x674e0  0      
  popq %r11                #  1     0x674e0  3      
  movl $0x26, %eax         #  2     0x674e3  5      
  andl $0xffffffe0, %r11d  #  3     0x674e8  7      
  addq %r15, %r11          #  4     0x674ef  3      
  jmpq %r11                #  5     0x674f2  3      
  nop                      #  6     0x674f5  1      
                                                    
.size stub_seek, .-stub_seek

