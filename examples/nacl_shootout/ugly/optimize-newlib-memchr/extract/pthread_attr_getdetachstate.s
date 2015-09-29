  .text
  .globl pthread_attr_getdetachstate
  .type pthread_attr_getdetachstate, @function

#! file-offset 0x6e260
#! rip-offset  0x2e260
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.pthread_attr_getdetachstate:  #        0x2e260  0      OPC=<label>         
  movl %edi, %edi              #  1     0x2e260  2      OPC=movl_r32_r32    
  movl $0x16, %eax             #  2     0x2e262  5      OPC=movl_r32_imm32  
  testq %rdi, %rdi             #  3     0x2e267  3      OPC=testq_r64_r64   
  je .L_2e280                  #  4     0x2e26a  2      OPC=je_label        
  movl %edi, %edi              #  5     0x2e26c  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax     #  6     0x2e26e  4      OPC=movl_r32_m32    
  nop                          #  7     0x2e272  1      OPC=nop             
  nop                          #  8     0x2e273  1      OPC=nop             
  nop                          #  9     0x2e274  1      OPC=nop             
  nop                          #  10    0x2e275  1      OPC=nop             
  nop                          #  11    0x2e276  1      OPC=nop             
  nop                          #  12    0x2e277  1      OPC=nop             
  nop                          #  13    0x2e278  1      OPC=nop             
  nop                          #  14    0x2e279  1      OPC=nop             
  nop                          #  15    0x2e27a  1      OPC=nop             
  nop                          #  16    0x2e27b  1      OPC=nop             
  nop                          #  17    0x2e27c  1      OPC=nop             
  nop                          #  18    0x2e27d  1      OPC=nop             
  nop                          #  19    0x2e27e  1      OPC=nop             
  nop                          #  20    0x2e27f  1      OPC=nop             
.L_2e280:                      #        0x2e280  0      OPC=<label>         
  popq %r11                    #  21    0x2e280  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  22    0x2e282  7      OPC=andl_r32_imm32  
  nop                          #  23    0x2e289  1      OPC=nop             
  nop                          #  24    0x2e28a  1      OPC=nop             
  nop                          #  25    0x2e28b  1      OPC=nop             
  nop                          #  26    0x2e28c  1      OPC=nop             
  addq %r15, %r11              #  27    0x2e28d  3      OPC=addq_r64_r64    
  jmpq %r11                    #  28    0x2e290  3      OPC=jmpq_r64        
  nop                          #  29    0x2e293  1      OPC=nop             
  nop                          #  30    0x2e294  1      OPC=nop             
  nop                          #  31    0x2e295  1      OPC=nop             
  nop                          #  32    0x2e296  1      OPC=nop             
  nop                          #  33    0x2e297  1      OPC=nop             
  nop                          #  34    0x2e298  1      OPC=nop             
  nop                          #  35    0x2e299  1      OPC=nop             
  nop                          #  36    0x2e29a  1      OPC=nop             
  nop                          #  37    0x2e29b  1      OPC=nop             
  nop                          #  38    0x2e29c  1      OPC=nop             
  nop                          #  39    0x2e29d  1      OPC=nop             
  nop                          #  40    0x2e29e  1      OPC=nop             
  nop                          #  41    0x2e29f  1      OPC=nop             
  nop                          #  42    0x2e2a0  1      OPC=nop             
  nop                          #  43    0x2e2a1  1      OPC=nop             
  nop                          #  44    0x2e2a2  1      OPC=nop             
  nop                          #  45    0x2e2a3  1      OPC=nop             
  nop                          #  46    0x2e2a4  1      OPC=nop             
  nop                          #  47    0x2e2a5  1      OPC=nop             
  nop                          #  48    0x2e2a6  1      OPC=nop             
                                                                            
.size pthread_attr_getdetachstate, .-pthread_attr_getdetachstate

