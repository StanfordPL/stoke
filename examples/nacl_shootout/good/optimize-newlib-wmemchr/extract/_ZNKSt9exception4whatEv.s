  .text
  .globl _ZNKSt9exception4whatEv
  .type _ZNKSt9exception4whatEv, @function

#! file-offset 0x123580
#! rip-offset  0xe3580
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
._ZNKSt9exception4whatEv:  #        0xe3580  0      OPC=<label>         
  popq %r11                #  1     0xe3580  2      OPC=popq_r64_1      
  movl $0x1003d2d0, %eax   #  2     0xe3582  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %r11d  #  3     0xe3587  7      OPC=andl_r32_imm32  
  nop                      #  4     0xe358e  1      OPC=nop             
  nop                      #  5     0xe358f  1      OPC=nop             
  nop                      #  6     0xe3590  1      OPC=nop             
  nop                      #  7     0xe3591  1      OPC=nop             
  addq %r15, %r11          #  8     0xe3592  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0xe3595  3      OPC=jmpq_r64        
  nop                      #  10    0xe3598  1      OPC=nop             
  nop                      #  11    0xe3599  1      OPC=nop             
  nop                      #  12    0xe359a  1      OPC=nop             
  nop                      #  13    0xe359b  1      OPC=nop             
  nop                      #  14    0xe359c  1      OPC=nop             
  nop                      #  15    0xe359d  1      OPC=nop             
  nop                      #  16    0xe359e  1      OPC=nop             
  nop                      #  17    0xe359f  1      OPC=nop             
  nop                      #  18    0xe35a0  1      OPC=nop             
  nop                      #  19    0xe35a1  1      OPC=nop             
  nop                      #  20    0xe35a2  1      OPC=nop             
  nop                      #  21    0xe35a3  1      OPC=nop             
  nop                      #  22    0xe35a4  1      OPC=nop             
  nop                      #  23    0xe35a5  1      OPC=nop             
  nop                      #  24    0xe35a6  1      OPC=nop             
                                                                        
.size _ZNKSt9exception4whatEv, .-_ZNKSt9exception4whatEv

