  .text
  .globl stub_fstat
  .type stub_fstat, @function

#! file-offset 0x67500
#! rip-offset  0x67500
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  
.stub_fstat:               #        0x67500  0      
  popq %r11                #  1     0x67500  3      
  movl $0x26, %eax         #  2     0x67503  5      
  andl $0xffffffe0, %r11d  #  3     0x67508  7      
  addq %r15, %r11          #  4     0x6750f  3      
  jmpq %r11                #  5     0x67512  3      
  nop                      #  6     0x67515  1      
                                                    
.size stub_fstat, .-stub_fstat

