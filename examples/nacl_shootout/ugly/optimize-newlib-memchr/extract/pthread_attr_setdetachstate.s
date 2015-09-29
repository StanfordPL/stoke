  .text
  .globl pthread_attr_setdetachstate
  .type pthread_attr_setdetachstate, @function

#! file-offset 0x6e220
#! rip-offset  0x2e220
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.pthread_attr_setdetachstate:  #        0x2e220  0      OPC=<label>         
  movl %edi, %edi              #  1     0x2e220  2      OPC=movl_r32_r32    
  movl $0x16, %eax             #  2     0x2e222  5      OPC=movl_r32_imm32  
  testq %rdi, %rdi             #  3     0x2e227  3      OPC=testq_r64_r64   
  je .L_2e240                  #  4     0x2e22a  2      OPC=je_label        
  movl %edi, %edi              #  5     0x2e22c  2      OPC=movl_r32_r32    
  movl %esi, (%r15,%rdi,1)     #  6     0x2e22e  4      OPC=movl_m32_r32    
  xorb %al, %al                #  7     0x2e232  2      OPC=xorb_r8_r8      
  nop                          #  8     0x2e234  1      OPC=nop             
  nop                          #  9     0x2e235  1      OPC=nop             
  nop                          #  10    0x2e236  1      OPC=nop             
  nop                          #  11    0x2e237  1      OPC=nop             
  nop                          #  12    0x2e238  1      OPC=nop             
  nop                          #  13    0x2e239  1      OPC=nop             
  nop                          #  14    0x2e23a  1      OPC=nop             
  nop                          #  15    0x2e23b  1      OPC=nop             
  nop                          #  16    0x2e23c  1      OPC=nop             
  nop                          #  17    0x2e23d  1      OPC=nop             
  nop                          #  18    0x2e23e  1      OPC=nop             
  nop                          #  19    0x2e23f  1      OPC=nop             
.L_2e240:                      #        0x2e240  0      OPC=<label>         
  popq %r11                    #  20    0x2e240  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  21    0x2e242  7      OPC=andl_r32_imm32  
  nop                          #  22    0x2e249  1      OPC=nop             
  nop                          #  23    0x2e24a  1      OPC=nop             
  nop                          #  24    0x2e24b  1      OPC=nop             
  nop                          #  25    0x2e24c  1      OPC=nop             
  addq %r15, %r11              #  26    0x2e24d  3      OPC=addq_r64_r64    
  jmpq %r11                    #  27    0x2e250  3      OPC=jmpq_r64        
  nop                          #  28    0x2e253  1      OPC=nop             
  nop                          #  29    0x2e254  1      OPC=nop             
  nop                          #  30    0x2e255  1      OPC=nop             
  nop                          #  31    0x2e256  1      OPC=nop             
  nop                          #  32    0x2e257  1      OPC=nop             
  nop                          #  33    0x2e258  1      OPC=nop             
  nop                          #  34    0x2e259  1      OPC=nop             
  nop                          #  35    0x2e25a  1      OPC=nop             
  nop                          #  36    0x2e25b  1      OPC=nop             
  nop                          #  37    0x2e25c  1      OPC=nop             
  nop                          #  38    0x2e25d  1      OPC=nop             
  nop                          #  39    0x2e25e  1      OPC=nop             
  nop                          #  40    0x2e25f  1      OPC=nop             
  nop                          #  41    0x2e260  1      OPC=nop             
  nop                          #  42    0x2e261  1      OPC=nop             
  nop                          #  43    0x2e262  1      OPC=nop             
  nop                          #  44    0x2e263  1      OPC=nop             
  nop                          #  45    0x2e264  1      OPC=nop             
  nop                          #  46    0x2e265  1      OPC=nop             
  nop                          #  47    0x2e266  1      OPC=nop             
                                                                            
.size pthread_attr_setdetachstate, .-pthread_attr_setdetachstate

