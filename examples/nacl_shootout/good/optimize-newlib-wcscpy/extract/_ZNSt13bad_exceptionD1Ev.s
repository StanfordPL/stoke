  .text
  .globl _ZNSt13bad_exceptionD1Ev
  .type _ZNSt13bad_exceptionD1Ev, @function

#! file-offset 0x1231e0
#! rip-offset  0xe31e0
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt13bad_exceptionD1Ev:         #        0xe31e0  0      OPC=<label>         
  popq %r11                        #  1     0xe31e0  2      OPC=popq_r64_1      
  movl %edi, %edi                  #  2     0xe31e2  2      OPC=movl_r32_r32    
  movl %edi, %edi                  #  3     0xe31e4  2      OPC=movl_r32_r32    
  movl $0x1003d368, (%r15,%rdi,1)  #  4     0xe31e6  8      OPC=movl_m32_imm32  
  andl $0xffffffe0, %r11d          #  5     0xe31ee  7      OPC=andl_r32_imm32  
  nop                              #  6     0xe31f5  1      OPC=nop             
  nop                              #  7     0xe31f6  1      OPC=nop             
  nop                              #  8     0xe31f7  1      OPC=nop             
  nop                              #  9     0xe31f8  1      OPC=nop             
  addq %r15, %r11                  #  10    0xe31f9  3      OPC=addq_r64_r64    
  jmpq %r11                        #  11    0xe31fc  3      OPC=jmpq_r64        
  nop                              #  12    0xe31ff  1      OPC=nop             
  nop                              #  13    0xe3200  1      OPC=nop             
  nop                              #  14    0xe3201  1      OPC=nop             
  nop                              #  15    0xe3202  1      OPC=nop             
  nop                              #  16    0xe3203  1      OPC=nop             
  nop                              #  17    0xe3204  1      OPC=nop             
  nop                              #  18    0xe3205  1      OPC=nop             
  nop                              #  19    0xe3206  1      OPC=nop             
                                                                                
.size _ZNSt13bad_exceptionD1Ev, .-_ZNSt13bad_exceptionD1Ev

