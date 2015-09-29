  .text
  .globl pthread_attr_getstacksize
  .type pthread_attr_getstacksize, @function

#! file-offset 0x6e380
#! rip-offset  0x2e380
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.pthread_attr_getstacksize:    #        0x2e380  0      OPC=<label>         
  movl %edi, %edi              #  1     0x2e380  2      OPC=movl_r32_r32    
  movl %esi, %esi              #  2     0x2e382  2      OPC=movl_r32_r32    
  movl $0x16, %eax             #  3     0x2e384  5      OPC=movl_r32_imm32  
  testq %rdi, %rdi             #  4     0x2e389  3      OPC=testq_r64_r64   
  je .L_2e3a0                  #  5     0x2e38c  2      OPC=je_label        
  movl %edi, %edi              #  6     0x2e38e  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rdi,1), %eax  #  7     0x2e390  5      OPC=movl_r32_m32    
  movl %esi, %esi              #  8     0x2e395  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rsi,1)     #  9     0x2e397  4      OPC=movl_m32_r32    
  xorl %eax, %eax              #  10    0x2e39b  2      OPC=xorl_r32_r32    
  nop                          #  11    0x2e39d  1      OPC=nop             
  nop                          #  12    0x2e39e  1      OPC=nop             
  nop                          #  13    0x2e39f  1      OPC=nop             
.L_2e3a0:                      #        0x2e3a0  0      OPC=<label>         
  popq %r11                    #  14    0x2e3a0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  15    0x2e3a2  7      OPC=andl_r32_imm32  
  nop                          #  16    0x2e3a9  1      OPC=nop             
  nop                          #  17    0x2e3aa  1      OPC=nop             
  nop                          #  18    0x2e3ab  1      OPC=nop             
  nop                          #  19    0x2e3ac  1      OPC=nop             
  addq %r15, %r11              #  20    0x2e3ad  3      OPC=addq_r64_r64    
  jmpq %r11                    #  21    0x2e3b0  3      OPC=jmpq_r64        
  nop                          #  22    0x2e3b3  1      OPC=nop             
  nop                          #  23    0x2e3b4  1      OPC=nop             
  nop                          #  24    0x2e3b5  1      OPC=nop             
  nop                          #  25    0x2e3b6  1      OPC=nop             
  nop                          #  26    0x2e3b7  1      OPC=nop             
  nop                          #  27    0x2e3b8  1      OPC=nop             
  nop                          #  28    0x2e3b9  1      OPC=nop             
  nop                          #  29    0x2e3ba  1      OPC=nop             
  nop                          #  30    0x2e3bb  1      OPC=nop             
  nop                          #  31    0x2e3bc  1      OPC=nop             
  nop                          #  32    0x2e3bd  1      OPC=nop             
  nop                          #  33    0x2e3be  1      OPC=nop             
  nop                          #  34    0x2e3bf  1      OPC=nop             
  nop                          #  35    0x2e3c0  1      OPC=nop             
  nop                          #  36    0x2e3c1  1      OPC=nop             
  nop                          #  37    0x2e3c2  1      OPC=nop             
  nop                          #  38    0x2e3c3  1      OPC=nop             
  nop                          #  39    0x2e3c4  1      OPC=nop             
  nop                          #  40    0x2e3c5  1      OPC=nop             
  nop                          #  41    0x2e3c6  1      OPC=nop             
                                                                            
.size pthread_attr_getstacksize, .-pthread_attr_getstacksize

