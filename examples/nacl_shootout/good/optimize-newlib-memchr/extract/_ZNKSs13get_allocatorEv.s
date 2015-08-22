  .text
  .globl _ZNKSs13get_allocatorEv
  .type _ZNKSs13get_allocatorEv, @function

#! file-offset 0xeb040
#! rip-offset  0xab040
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
._ZNKSs13get_allocatorEv:  #        0xab040  0      OPC=<label>         
  popq %r11                #  1     0xab040  2      OPC=popq_r64_1      
  movl %edi, %eax          #  2     0xab042  2      OPC=movl_r32_r32    
  andl $0xffffffe0, %r11d  #  3     0xab044  7      OPC=andl_r32_imm32  
  nop                      #  4     0xab04b  1      OPC=nop             
  nop                      #  5     0xab04c  1      OPC=nop             
  nop                      #  6     0xab04d  1      OPC=nop             
  nop                      #  7     0xab04e  1      OPC=nop             
  addq %r15, %r11          #  8     0xab04f  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0xab052  3      OPC=jmpq_r64        
  nop                      #  10    0xab055  1      OPC=nop             
  nop                      #  11    0xab056  1      OPC=nop             
  nop                      #  12    0xab057  1      OPC=nop             
  nop                      #  13    0xab058  1      OPC=nop             
  nop                      #  14    0xab059  1      OPC=nop             
  nop                      #  15    0xab05a  1      OPC=nop             
  nop                      #  16    0xab05b  1      OPC=nop             
  nop                      #  17    0xab05c  1      OPC=nop             
  nop                      #  18    0xab05d  1      OPC=nop             
  nop                      #  19    0xab05e  1      OPC=nop             
  nop                      #  20    0xab05f  1      OPC=nop             
  nop                      #  21    0xab060  1      OPC=nop             
  nop                      #  22    0xab061  1      OPC=nop             
  nop                      #  23    0xab062  1      OPC=nop             
  nop                      #  24    0xab063  1      OPC=nop             
  nop                      #  25    0xab064  1      OPC=nop             
  nop                      #  26    0xab065  1      OPC=nop             
  nop                      #  27    0xab066  1      OPC=nop             
                                                                        
.size _ZNKSs13get_allocatorEv, .-_ZNKSs13get_allocatorEv

