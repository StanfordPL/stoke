  .text
  .globl AddAtStrength
  .type AddAtStrength, @function

#! file-offset 0x687e0
#! rip-offset  0x287e0
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.AddAtStrength:                #        0x287e0  0      OPC=<label>         
  movl %edi, %edi              #  1     0x287e0  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  2     0x287e2  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax  #  3     0x287e4  5      OPC=movl_r32_m32    
  cmpl 0x100509c5(%rip), %eax  #  4     0x287e9  6      OPC=cmpl_r32_m32    
  je .L_28800                  #  5     0x287ef  2      OPC=je_label        
  popq %r11                    #  6     0x287f1  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  7     0x287f3  7      OPC=andl_r32_imm32  
  nop                          #  8     0x287fa  1      OPC=nop             
  nop                          #  9     0x287fb  1      OPC=nop             
  nop                          #  10    0x287fc  1      OPC=nop             
  nop                          #  11    0x287fd  1      OPC=nop             
  addq %r15, %r11              #  12    0x287fe  3      OPC=addq_r64_r64    
  jmpq %r11                    #  13    0x28801  3      OPC=jmpq_r64        
  nop                          #  14    0x28804  1      OPC=nop             
  nop                          #  15    0x28805  1      OPC=nop             
  nop                          #  16    0x28806  1      OPC=nop             
.L_28800:                      #        0x28807  0      OPC=<label>         
  jmpq .IncrementalAdd         #  17    0x28807  5      OPC=jmpq_label_1    
  nop                          #  18    0x2880c  1      OPC=nop             
  nop                          #  19    0x2880d  1      OPC=nop             
  nop                          #  20    0x2880e  1      OPC=nop             
  nop                          #  21    0x2880f  1      OPC=nop             
  nop                          #  22    0x28810  1      OPC=nop             
  nop                          #  23    0x28811  1      OPC=nop             
  nop                          #  24    0x28812  1      OPC=nop             
  nop                          #  25    0x28813  1      OPC=nop             
  nop                          #  26    0x28814  1      OPC=nop             
  nop                          #  27    0x28815  1      OPC=nop             
  nop                          #  28    0x28816  1      OPC=nop             
  nop                          #  29    0x28817  1      OPC=nop             
  nop                          #  30    0x28818  1      OPC=nop             
  nop                          #  31    0x28819  1      OPC=nop             
  nop                          #  32    0x2881a  1      OPC=nop             
  nop                          #  33    0x2881b  1      OPC=nop             
  nop                          #  34    0x2881c  1      OPC=nop             
  nop                          #  35    0x2881d  1      OPC=nop             
  nop                          #  36    0x2881e  1      OPC=nop             
  nop                          #  37    0x2881f  1      OPC=nop             
  nop                          #  38    0x28820  1      OPC=nop             
  nop                          #  39    0x28821  1      OPC=nop             
  nop                          #  40    0x28822  1      OPC=nop             
  nop                          #  41    0x28823  1      OPC=nop             
  nop                          #  42    0x28824  1      OPC=nop             
  nop                          #  43    0x28825  1      OPC=nop             
  nop                          #  44    0x28826  1      OPC=nop             
                                                                            
.size AddAtStrength, .-AddAtStrength

