  .text
  .globl AddAtStrength
  .type AddAtStrength, @function

#! file-offset 0x68800
#! rip-offset  0x28800
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.AddAtStrength:                #        0x28800  0      OPC=<label>         
  movl %edi, %edi              #  1     0x28800  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  2     0x28802  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax  #  3     0x28804  5      OPC=movl_r32_m32    
  cmpl 0x100509a5(%rip), %eax  #  4     0x28809  6      OPC=cmpl_r32_m32    
  je .L_28820                  #  5     0x2880f  2      OPC=je_label        
  popq %r11                    #  6     0x28811  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  7     0x28813  7      OPC=andl_r32_imm32  
  nop                          #  8     0x2881a  1      OPC=nop             
  nop                          #  9     0x2881b  1      OPC=nop             
  nop                          #  10    0x2881c  1      OPC=nop             
  nop                          #  11    0x2881d  1      OPC=nop             
  addq %r15, %r11              #  12    0x2881e  3      OPC=addq_r64_r64    
  jmpq %r11                    #  13    0x28821  3      OPC=jmpq_r64        
  nop                          #  14    0x28824  1      OPC=nop             
  nop                          #  15    0x28825  1      OPC=nop             
  nop                          #  16    0x28826  1      OPC=nop             
.L_28820:                      #        0x28827  0      OPC=<label>         
  jmpq .IncrementalAdd         #  17    0x28827  5      OPC=jmpq_label_1    
  nop                          #  18    0x2882c  1      OPC=nop             
  nop                          #  19    0x2882d  1      OPC=nop             
  nop                          #  20    0x2882e  1      OPC=nop             
  nop                          #  21    0x2882f  1      OPC=nop             
  nop                          #  22    0x28830  1      OPC=nop             
  nop                          #  23    0x28831  1      OPC=nop             
  nop                          #  24    0x28832  1      OPC=nop             
  nop                          #  25    0x28833  1      OPC=nop             
  nop                          #  26    0x28834  1      OPC=nop             
  nop                          #  27    0x28835  1      OPC=nop             
  nop                          #  28    0x28836  1      OPC=nop             
  nop                          #  29    0x28837  1      OPC=nop             
  nop                          #  30    0x28838  1      OPC=nop             
  nop                          #  31    0x28839  1      OPC=nop             
  nop                          #  32    0x2883a  1      OPC=nop             
  nop                          #  33    0x2883b  1      OPC=nop             
  nop                          #  34    0x2883c  1      OPC=nop             
  nop                          #  35    0x2883d  1      OPC=nop             
  nop                          #  36    0x2883e  1      OPC=nop             
  nop                          #  37    0x2883f  1      OPC=nop             
  nop                          #  38    0x28840  1      OPC=nop             
  nop                          #  39    0x28841  1      OPC=nop             
  nop                          #  40    0x28842  1      OPC=nop             
  nop                          #  41    0x28843  1      OPC=nop             
  nop                          #  42    0x28844  1      OPC=nop             
  nop                          #  43    0x28845  1      OPC=nop             
  nop                          #  44    0x28846  1      OPC=nop             
                                                                            
.size AddAtStrength, .-AddAtStrength

