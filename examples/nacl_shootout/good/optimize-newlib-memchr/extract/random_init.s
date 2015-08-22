  .text
  .globl random_init
  .type random_init, @function

#! file-offset 0x60c00
#! rip-offset  0x20c00
#! capacity    32 bytes

# Text                       #  Line  RIP      Bytes  Opcode              
.random_init:                #        0x20c00  0      OPC=<label>         
  movl %edi, %edi            #  1     0x20c00  2      OPC=movl_r32_r32    
  movl %edi, %edi            #  2     0x20c02  2      OPC=movl_r32_r32    
  movl $0x2a, (%r15,%rdi,1)  #  3     0x20c04  8      OPC=movl_m32_imm32  
  popq %r11                  #  4     0x20c0c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d    #  5     0x20c0e  7      OPC=andl_r32_imm32  
  nop                        #  6     0x20c15  1      OPC=nop             
  nop                        #  7     0x20c16  1      OPC=nop             
  nop                        #  8     0x20c17  1      OPC=nop             
  nop                        #  9     0x20c18  1      OPC=nop             
  addq %r15, %r11            #  10    0x20c19  3      OPC=addq_r64_r64    
  jmpq %r11                  #  11    0x20c1c  3      OPC=jmpq_r64        
  nop                        #  12    0x20c1f  1      OPC=nop             
  nop                        #  13    0x20c20  1      OPC=nop             
  nop                        #  14    0x20c21  1      OPC=nop             
  nop                        #  15    0x20c22  1      OPC=nop             
  nop                        #  16    0x20c23  1      OPC=nop             
  nop                        #  17    0x20c24  1      OPC=nop             
  nop                        #  18    0x20c25  1      OPC=nop             
  nop                        #  19    0x20c26  1      OPC=nop             
                                                                          
.size random_init, .-random_init

