  .text
  .globl random_init
  .type random_init, @function

#! file-offset 0x60680
#! rip-offset  0x20680
#! capacity    32 bytes

# Text                       #  Line  RIP      Bytes  Opcode              
.random_init:                #        0x20680  0      OPC=<label>         
  movl %edi, %edi            #  1     0x20680  2      OPC=movl_r32_r32    
  movl %edi, %edi            #  2     0x20682  2      OPC=movl_r32_r32    
  movl $0x2a, (%r15,%rdi,1)  #  3     0x20684  8      OPC=movl_m32_imm32  
  popq %r11                  #  4     0x2068c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d    #  5     0x2068e  7      OPC=andl_r32_imm32  
  nop                        #  6     0x20695  1      OPC=nop             
  nop                        #  7     0x20696  1      OPC=nop             
  nop                        #  8     0x20697  1      OPC=nop             
  nop                        #  9     0x20698  1      OPC=nop             
  addq %r15, %r11            #  10    0x20699  3      OPC=addq_r64_r64    
  jmpq %r11                  #  11    0x2069c  3      OPC=jmpq_r64        
  nop                        #  12    0x2069f  1      OPC=nop             
  nop                        #  13    0x206a0  1      OPC=nop             
  nop                        #  14    0x206a1  1      OPC=nop             
  nop                        #  15    0x206a2  1      OPC=nop             
  nop                        #  16    0x206a3  1      OPC=nop             
  nop                        #  17    0x206a4  1      OPC=nop             
  nop                        #  18    0x206a5  1      OPC=nop             
  nop                        #  19    0x206a6  1      OPC=nop             
                                                                          
.size random_init, .-random_init

