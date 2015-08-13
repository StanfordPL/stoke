  .text
  .globl _ZNSt14error_categoryD1Ev
  .type _ZNSt14error_categoryD1Ev, @function

#! file-offset 0x129880
#! rip-offset  0xe9880
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt14error_categoryD1Ev:        #        0xe9880  0      OPC=<label>         
  popq %r11                        #  1     0xe9880  2      OPC=popq_r64_1      
  movl %edi, %edi                  #  2     0xe9882  2      OPC=movl_r32_r32    
  movl %edi, %edi                  #  3     0xe9884  2      OPC=movl_r32_r32    
  movl $0x1003dba8, (%r15,%rdi,1)  #  4     0xe9886  8      OPC=movl_m32_imm32  
  andl $0xffffffe0, %r11d          #  5     0xe988e  7      OPC=andl_r32_imm32  
  nop                              #  6     0xe9895  1      OPC=nop             
  nop                              #  7     0xe9896  1      OPC=nop             
  nop                              #  8     0xe9897  1      OPC=nop             
  nop                              #  9     0xe9898  1      OPC=nop             
  addq %r15, %r11                  #  10    0xe9899  3      OPC=addq_r64_r64    
  jmpq %r11                        #  11    0xe989c  3      OPC=jmpq_r64        
  nop                              #  12    0xe989f  1      OPC=nop             
  nop                              #  13    0xe98a0  1      OPC=nop             
  nop                              #  14    0xe98a1  1      OPC=nop             
  nop                              #  15    0xe98a2  1      OPC=nop             
  nop                              #  16    0xe98a3  1      OPC=nop             
  nop                              #  17    0xe98a4  1      OPC=nop             
  nop                              #  18    0xe98a5  1      OPC=nop             
  nop                              #  19    0xe98a6  1      OPC=nop             
                                                                                
.size _ZNSt14error_categoryD1Ev, .-_ZNSt14error_categoryD1Ev

