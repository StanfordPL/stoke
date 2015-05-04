  .text
  .globl stub_read
  .type stub_read, @function

#! file-offset 0x67540
#! rip-offset  0x67540
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  
.stub_read:                #        0x67540  0      
  popq %r11                #  1     0x67540  3      
  movl $0x26, %eax         #  2     0x67543  5      
  andl $0xffffffe0, %r11d  #  3     0x67548  7      
  addq %r15, %r11          #  4     0x6754f  3      
  jmpq %r11                #  5     0x67552  3      
  nop                      #  6     0x67555  1      
                                                    
.size stub_read, .-stub_read

