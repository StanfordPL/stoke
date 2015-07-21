  .text
  .globl random_init
  .type random_init, @function

#! file-offset 0x60680
#! rip-offset  0x20680
#! capacity    32 bytes

# Text                       #  Line  RIP      Bytes  Opcode    
.random_init:                #        0x20680  0      OPC=0     
  movl %edi, %edi            #  1     0x20680  2      OPC=1157  
  movl %edi, %edi            #  2     0x20682  2      OPC=1157  
  movl $0x2a, (%r15,%rdi,1)  #  3     0x20684  8      OPC=1135  
  popq %r11                  #  4     0x2068c  2      OPC=1694  
  andl $0xffffffe0, %r11d    #  5     0x2068e  7      OPC=131   
  nop                        #  6     0x20695  1      OPC=1343  
  nop                        #  7     0x20696  1      OPC=1343  
  nop                        #  8     0x20697  1      OPC=1343  
  nop                        #  9     0x20698  1      OPC=1343  
  addq %r15, %r11            #  10    0x20699  3      OPC=72    
  jmpq %r11                  #  11    0x2069c  3      OPC=928   
  nop                        #  12    0x2069f  1      OPC=1343  
  nop                        #  13    0x206a0  1      OPC=1343  
  nop                        #  14    0x206a1  1      OPC=1343  
  nop                        #  15    0x206a2  1      OPC=1343  
  nop                        #  16    0x206a3  1      OPC=1343  
  nop                        #  17    0x206a4  1      OPC=1343  
  nop                        #  18    0x206a5  1      OPC=1343  
  nop                        #  19    0x206a6  1      OPC=1343  
                                                                
.size random_init, .-random_init

