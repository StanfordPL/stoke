  .text
  .globl pthread_attr_getdetachstate
  .type pthread_attr_getdetachstate, @function

#! file-offset 0x6d840
#! rip-offset  0x2d840
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.pthread_attr_getdetachstate:  #        0x2d840  0      OPC=<label>         
  movl %edi, %edi              #  1     0x2d840  2      OPC=movl_r32_r32    
  movl $0x16, %eax             #  2     0x2d842  5      OPC=movl_r32_imm32  
  testq %rdi, %rdi             #  3     0x2d847  3      OPC=testq_r64_r64   
  je .L_2d860                  #  4     0x2d84a  2      OPC=je_label        
  movl %edi, %edi              #  5     0x2d84c  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax     #  6     0x2d84e  4      OPC=movl_r32_m32    
  nop                          #  7     0x2d852  1      OPC=nop             
  nop                          #  8     0x2d853  1      OPC=nop             
  nop                          #  9     0x2d854  1      OPC=nop             
  nop                          #  10    0x2d855  1      OPC=nop             
  nop                          #  11    0x2d856  1      OPC=nop             
  nop                          #  12    0x2d857  1      OPC=nop             
  nop                          #  13    0x2d858  1      OPC=nop             
  nop                          #  14    0x2d859  1      OPC=nop             
  nop                          #  15    0x2d85a  1      OPC=nop             
  nop                          #  16    0x2d85b  1      OPC=nop             
  nop                          #  17    0x2d85c  1      OPC=nop             
  nop                          #  18    0x2d85d  1      OPC=nop             
  nop                          #  19    0x2d85e  1      OPC=nop             
  nop                          #  20    0x2d85f  1      OPC=nop             
.L_2d860:                      #        0x2d860  0      OPC=<label>         
  popq %r11                    #  21    0x2d860  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  22    0x2d862  7      OPC=andl_r32_imm32  
  nop                          #  23    0x2d869  1      OPC=nop             
  nop                          #  24    0x2d86a  1      OPC=nop             
  nop                          #  25    0x2d86b  1      OPC=nop             
  nop                          #  26    0x2d86c  1      OPC=nop             
  addq %r15, %r11              #  27    0x2d86d  3      OPC=addq_r64_r64    
  jmpq %r11                    #  28    0x2d870  3      OPC=jmpq_r64        
  nop                          #  29    0x2d873  1      OPC=nop             
  nop                          #  30    0x2d874  1      OPC=nop             
  nop                          #  31    0x2d875  1      OPC=nop             
  nop                          #  32    0x2d876  1      OPC=nop             
  nop                          #  33    0x2d877  1      OPC=nop             
  nop                          #  34    0x2d878  1      OPC=nop             
  nop                          #  35    0x2d879  1      OPC=nop             
  nop                          #  36    0x2d87a  1      OPC=nop             
  nop                          #  37    0x2d87b  1      OPC=nop             
  nop                          #  38    0x2d87c  1      OPC=nop             
  nop                          #  39    0x2d87d  1      OPC=nop             
  nop                          #  40    0x2d87e  1      OPC=nop             
  nop                          #  41    0x2d87f  1      OPC=nop             
  nop                          #  42    0x2d880  1      OPC=nop             
  nop                          #  43    0x2d881  1      OPC=nop             
  nop                          #  44    0x2d882  1      OPC=nop             
  nop                          #  45    0x2d883  1      OPC=nop             
  nop                          #  46    0x2d884  1      OPC=nop             
  nop                          #  47    0x2d885  1      OPC=nop             
  nop                          #  48    0x2d886  1      OPC=nop             
                                                                            
.size pthread_attr_getdetachstate, .-pthread_attr_getdetachstate

