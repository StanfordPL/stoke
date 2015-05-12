  .text
  .globl stub_fstat
  .type stub_fstat, @function

#! file-offset 0x67520
#! rip-offset  0x67520
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  
.stub_fstat:               #        0x67520  0      
  popq %r11                #  1     0x67520  3      
  movl $0x26, %eax         #  2     0x67523  5      
  andl $0xffffffe0, %r11d  #  3     0x67528  7      
  addq %r15, %r11          #  4     0x6752f  3      
  jmpq %r11                #  5     0x67532  3      
  nop                      #  6     0x67535  1      
                                                    
.size stub_fstat, .-stub_fstat

