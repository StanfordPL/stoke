  .text
  .globl stub_close
  .type stub_close, @function

#! file-offset 0x67440
#! rip-offset  0x67440
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  
.stub_close:               #        0x67440  0      
  popq %r11                #  1     0x67440  3      
  movl $0x26, %eax         #  2     0x67443  5      
  andl $0xffffffe0, %r11d  #  3     0x67448  7      
  addq %r15, %r11          #  4     0x6744f  3      
  jmpq %r11                #  5     0x67452  3      
  nop                      #  6     0x67455  1      
                                                    
.size stub_close, .-stub_close

