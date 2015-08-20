  .text
  .globl _ZNSt13bad_exceptionD2Ev
  .type _ZNSt13bad_exceptionD2Ev, @function

#! file-offset 0x1234c0
#! rip-offset  0xe34c0
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt13bad_exceptionD2Ev:         #        0xe34c0  0      OPC=<label>         
  popq %r11                        #  1     0xe34c0  2      OPC=popq_r64_1      
  movl %edi, %edi                  #  2     0xe34c2  2      OPC=movl_r32_r32    
  movl %edi, %edi                  #  3     0xe34c4  2      OPC=movl_r32_r32    
  movl $0x1003d368, (%r15,%rdi,1)  #  4     0xe34c6  8      OPC=movl_m32_imm32  
  andl $0xffffffe0, %r11d          #  5     0xe34ce  7      OPC=andl_r32_imm32  
  nop                              #  6     0xe34d5  1      OPC=nop             
  nop                              #  7     0xe34d6  1      OPC=nop             
  nop                              #  8     0xe34d7  1      OPC=nop             
  nop                              #  9     0xe34d8  1      OPC=nop             
  addq %r15, %r11                  #  10    0xe34d9  3      OPC=addq_r64_r64    
  jmpq %r11                        #  11    0xe34dc  3      OPC=jmpq_r64        
  nop                              #  12    0xe34df  1      OPC=nop             
  nop                              #  13    0xe34e0  1      OPC=nop             
  nop                              #  14    0xe34e1  1      OPC=nop             
  nop                              #  15    0xe34e2  1      OPC=nop             
  nop                              #  16    0xe34e3  1      OPC=nop             
  nop                              #  17    0xe34e4  1      OPC=nop             
  nop                              #  18    0xe34e5  1      OPC=nop             
  nop                              #  19    0xe34e6  1      OPC=nop             
                                                                                
.size _ZNSt13bad_exceptionD2Ev, .-_ZNSt13bad_exceptionD2Ev

