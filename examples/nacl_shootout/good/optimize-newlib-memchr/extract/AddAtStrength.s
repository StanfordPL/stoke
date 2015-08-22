  .text
  .globl AddAtStrength
  .type AddAtStrength, @function

#! file-offset 0x68d60
#! rip-offset  0x28d60
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.AddAtStrength:                #        0x28d60  0      OPC=<label>         
  movl %edi, %edi              #  1     0x28d60  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  2     0x28d62  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax  #  3     0x28d64  5      OPC=movl_r32_m32    
  cmpl 0x10050445(%rip), %eax  #  4     0x28d69  6      OPC=cmpl_r32_m32    
  je .L_28d80                  #  5     0x28d6f  2      OPC=je_label        
  popq %r11                    #  6     0x28d71  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  7     0x28d73  7      OPC=andl_r32_imm32  
  nop                          #  8     0x28d7a  1      OPC=nop             
  nop                          #  9     0x28d7b  1      OPC=nop             
  nop                          #  10    0x28d7c  1      OPC=nop             
  nop                          #  11    0x28d7d  1      OPC=nop             
  addq %r15, %r11              #  12    0x28d7e  3      OPC=addq_r64_r64    
  jmpq %r11                    #  13    0x28d81  3      OPC=jmpq_r64        
  nop                          #  14    0x28d84  1      OPC=nop             
  nop                          #  15    0x28d85  1      OPC=nop             
  nop                          #  16    0x28d86  1      OPC=nop             
.L_28d80:                      #        0x28d87  0      OPC=<label>         
  jmpq .IncrementalAdd         #  17    0x28d87  5      OPC=jmpq_label_1    
  nop                          #  18    0x28d8c  1      OPC=nop             
  nop                          #  19    0x28d8d  1      OPC=nop             
  nop                          #  20    0x28d8e  1      OPC=nop             
  nop                          #  21    0x28d8f  1      OPC=nop             
  nop                          #  22    0x28d90  1      OPC=nop             
  nop                          #  23    0x28d91  1      OPC=nop             
  nop                          #  24    0x28d92  1      OPC=nop             
  nop                          #  25    0x28d93  1      OPC=nop             
  nop                          #  26    0x28d94  1      OPC=nop             
  nop                          #  27    0x28d95  1      OPC=nop             
  nop                          #  28    0x28d96  1      OPC=nop             
  nop                          #  29    0x28d97  1      OPC=nop             
  nop                          #  30    0x28d98  1      OPC=nop             
  nop                          #  31    0x28d99  1      OPC=nop             
  nop                          #  32    0x28d9a  1      OPC=nop             
  nop                          #  33    0x28d9b  1      OPC=nop             
  nop                          #  34    0x28d9c  1      OPC=nop             
  nop                          #  35    0x28d9d  1      OPC=nop             
  nop                          #  36    0x28d9e  1      OPC=nop             
  nop                          #  37    0x28d9f  1      OPC=nop             
  nop                          #  38    0x28da0  1      OPC=nop             
  nop                          #  39    0x28da1  1      OPC=nop             
  nop                          #  40    0x28da2  1      OPC=nop             
  nop                          #  41    0x28da3  1      OPC=nop             
  nop                          #  42    0x28da4  1      OPC=nop             
  nop                          #  43    0x28da5  1      OPC=nop             
  nop                          #  44    0x28da6  1      OPC=nop             
                                                                            
.size AddAtStrength, .-AddAtStrength

