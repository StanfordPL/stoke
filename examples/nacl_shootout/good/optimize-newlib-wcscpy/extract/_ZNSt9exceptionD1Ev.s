  .text
  .globl _ZNSt9exceptionD1Ev
  .type _ZNSt9exceptionD1Ev, @function

#! file-offset 0x1231a0
#! rip-offset  0xe31a0
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt9exceptionD1Ev:              #        0xe31a0  0      OPC=<label>         
  popq %r11                        #  1     0xe31a0  2      OPC=popq_r64_1      
  movl %edi, %edi                  #  2     0xe31a2  2      OPC=movl_r32_r32    
  movl %edi, %edi                  #  3     0xe31a4  2      OPC=movl_r32_r32    
  movl $0x1003d368, (%r15,%rdi,1)  #  4     0xe31a6  8      OPC=movl_m32_imm32  
  andl $0xffffffe0, %r11d          #  5     0xe31ae  7      OPC=andl_r32_imm32  
  nop                              #  6     0xe31b5  1      OPC=nop             
  nop                              #  7     0xe31b6  1      OPC=nop             
  nop                              #  8     0xe31b7  1      OPC=nop             
  nop                              #  9     0xe31b8  1      OPC=nop             
  addq %r15, %r11                  #  10    0xe31b9  3      OPC=addq_r64_r64    
  jmpq %r11                        #  11    0xe31bc  3      OPC=jmpq_r64        
  nop                              #  12    0xe31bf  1      OPC=nop             
  nop                              #  13    0xe31c0  1      OPC=nop             
  nop                              #  14    0xe31c1  1      OPC=nop             
  nop                              #  15    0xe31c2  1      OPC=nop             
  nop                              #  16    0xe31c3  1      OPC=nop             
  nop                              #  17    0xe31c4  1      OPC=nop             
  nop                              #  18    0xe31c5  1      OPC=nop             
  nop                              #  19    0xe31c6  1      OPC=nop             
                                                                                
.size _ZNSt9exceptionD1Ev, .-_ZNSt9exceptionD1Ev

