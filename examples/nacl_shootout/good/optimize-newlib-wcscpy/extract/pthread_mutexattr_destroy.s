  .text
  .globl pthread_mutexattr_destroy
  .type pthread_mutexattr_destroy, @function

#! file-offset 0x6d0e0
#! rip-offset  0x2d0e0
#! capacity    32 bytes

# Text                       #  Line  RIP      Bytes  Opcode              
.pthread_mutexattr_destroy:  #        0x2d0e0  0      OPC=<label>         
  popq %r11                  #  1     0x2d0e0  2      OPC=popq_r64_1      
  xorl %eax, %eax            #  2     0x2d0e2  2      OPC=xorl_r32_r32    
  andl $0xffffffe0, %r11d    #  3     0x2d0e4  7      OPC=andl_r32_imm32  
  nop                        #  4     0x2d0eb  1      OPC=nop             
  nop                        #  5     0x2d0ec  1      OPC=nop             
  nop                        #  6     0x2d0ed  1      OPC=nop             
  nop                        #  7     0x2d0ee  1      OPC=nop             
  addq %r15, %r11            #  8     0x2d0ef  3      OPC=addq_r64_r64    
  jmpq %r11                  #  9     0x2d0f2  3      OPC=jmpq_r64        
  nop                        #  10    0x2d0f5  1      OPC=nop             
  nop                        #  11    0x2d0f6  1      OPC=nop             
  nop                        #  12    0x2d0f7  1      OPC=nop             
  nop                        #  13    0x2d0f8  1      OPC=nop             
  nop                        #  14    0x2d0f9  1      OPC=nop             
  nop                        #  15    0x2d0fa  1      OPC=nop             
  nop                        #  16    0x2d0fb  1      OPC=nop             
  nop                        #  17    0x2d0fc  1      OPC=nop             
  nop                        #  18    0x2d0fd  1      OPC=nop             
  nop                        #  19    0x2d0fe  1      OPC=nop             
  nop                        #  20    0x2d0ff  1      OPC=nop             
  nop                        #  21    0x2d100  1      OPC=nop             
  nop                        #  22    0x2d101  1      OPC=nop             
  nop                        #  23    0x2d102  1      OPC=nop             
  nop                        #  24    0x2d103  1      OPC=nop             
  nop                        #  25    0x2d104  1      OPC=nop             
  nop                        #  26    0x2d105  1      OPC=nop             
  nop                        #  27    0x2d106  1      OPC=nop             
                                                                          
.size pthread_mutexattr_destroy, .-pthread_mutexattr_destroy

