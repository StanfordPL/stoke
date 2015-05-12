  .text
  .globl stub_read
  .type stub_read, @function

#! file-offset 0x674c0
#! rip-offset  0x674c0
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  
.stub_read:                #        0x674c0  0      
  popq %r11                #  1     0x674c0  3      
  movl $0x26, %eax         #  2     0x674c3  5      
  andl $0xffffffe0, %r11d  #  3     0x674c8  7      
  addq %r15, %r11          #  4     0x674cf  3      
  jmpq %r11                #  5     0x674d2  3      
  nop                      #  6     0x674d5  1      
                                                    
.size stub_read, .-stub_read

