  .text
  .globl stub_fstat
  .type stub_fstat, @function

#! file-offset 0x675a0
#! rip-offset  0x675a0
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  
.stub_fstat:               #        0x675a0  0      
  popq %r11                #  1     0x675a0  3      
  movl $0x26, %eax         #  2     0x675a3  5      
  andl $0xffffffe0, %r11d  #  3     0x675a8  7      
  addq %r15, %r11          #  4     0x675af  3      
  jmpq %r11                #  5     0x675b2  3      
  nop                      #  6     0x675b5  1      
                                                    
.size stub_fstat, .-stub_fstat

