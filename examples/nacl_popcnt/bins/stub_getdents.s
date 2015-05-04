  .text
  .globl stub_getdents
  .type stub_getdents, @function

#! file-offset 0x675c0
#! rip-offset  0x675c0
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  
.stub_getdents:            #        0x675c0  0      
  popq %r11                #  1     0x675c0  3      
  movl $0x26, %eax         #  2     0x675c3  5      
  andl $0xffffffe0, %r11d  #  3     0x675c8  7      
  addq %r15, %r11          #  4     0x675cf  3      
  jmpq %r11                #  5     0x675d2  3      
  nop                      #  6     0x675d5  1      
                                                    
.size stub_getdents, .-stub_getdents

