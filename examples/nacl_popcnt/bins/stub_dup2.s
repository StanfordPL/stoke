  .text
  .globl stub_dup2
  .type stub_dup2, @function

#! file-offset 0x67480
#! rip-offset  0x67480
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  
.stub_dup2:                #        0x67480  0      
  popq %r11                #  1     0x67480  3      
  movl $0x26, %eax         #  2     0x67483  5      
  andl $0xffffffe0, %r11d  #  3     0x67488  7      
  addq %r15, %r11          #  4     0x6748f  3      
  jmpq %r11                #  5     0x67492  3      
  nop                      #  6     0x67495  1      
                                                    
.size stub_dup2, .-stub_dup2

