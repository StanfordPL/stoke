  .text
  .globl stub_seek
  .type stub_seek, @function

#! file-offset 0x67580
#! rip-offset  0x67580
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  
.stub_seek:                #        0x67580  0      
  popq %r11                #  1     0x67580  3      
  movl $0x26, %eax         #  2     0x67583  5      
  andl $0xffffffe0, %r11d  #  3     0x67588  7      
  addq %r15, %r11          #  4     0x6758f  3      
  jmpq %r11                #  5     0x67592  3      
  nop                      #  6     0x67595  1      
                                                    
.size stub_seek, .-stub_seek

