  .text
  .globl pthread_attr_getstacksize
  .type pthread_attr_getstacksize, @function

#! file-offset 0x6dc60
#! rip-offset  0x2dc60
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.pthread_attr_getstacksize:    #        0x2dc60  0      OPC=<label>         
  movl %edi, %edi              #  1     0x2dc60  2      OPC=movl_r32_r32    
  movl %esi, %esi              #  2     0x2dc62  2      OPC=movl_r32_r32    
  movl $0x16, %eax             #  3     0x2dc64  5      OPC=movl_r32_imm32  
  testq %rdi, %rdi             #  4     0x2dc69  3      OPC=testq_r64_r64   
  je .L_2dc80                  #  5     0x2dc6c  2      OPC=je_label        
  movl %edi, %edi              #  6     0x2dc6e  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rdi,1), %eax  #  7     0x2dc70  5      OPC=movl_r32_m32    
  movl %esi, %esi              #  8     0x2dc75  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rsi,1)     #  9     0x2dc77  4      OPC=movl_m32_r32    
  xorl %eax, %eax              #  10    0x2dc7b  2      OPC=xorl_r32_r32    
  nop                          #  11    0x2dc7d  1      OPC=nop             
  nop                          #  12    0x2dc7e  1      OPC=nop             
  nop                          #  13    0x2dc7f  1      OPC=nop             
.L_2dc80:                      #        0x2dc80  0      OPC=<label>         
  popq %r11                    #  14    0x2dc80  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  15    0x2dc82  7      OPC=andl_r32_imm32  
  nop                          #  16    0x2dc89  1      OPC=nop             
  nop                          #  17    0x2dc8a  1      OPC=nop             
  nop                          #  18    0x2dc8b  1      OPC=nop             
  nop                          #  19    0x2dc8c  1      OPC=nop             
  addq %r15, %r11              #  20    0x2dc8d  3      OPC=addq_r64_r64    
  jmpq %r11                    #  21    0x2dc90  3      OPC=jmpq_r64        
  nop                          #  22    0x2dc93  1      OPC=nop             
  nop                          #  23    0x2dc94  1      OPC=nop             
  nop                          #  24    0x2dc95  1      OPC=nop             
  nop                          #  25    0x2dc96  1      OPC=nop             
  nop                          #  26    0x2dc97  1      OPC=nop             
  nop                          #  27    0x2dc98  1      OPC=nop             
  nop                          #  28    0x2dc99  1      OPC=nop             
  nop                          #  29    0x2dc9a  1      OPC=nop             
  nop                          #  30    0x2dc9b  1      OPC=nop             
  nop                          #  31    0x2dc9c  1      OPC=nop             
  nop                          #  32    0x2dc9d  1      OPC=nop             
  nop                          #  33    0x2dc9e  1      OPC=nop             
  nop                          #  34    0x2dc9f  1      OPC=nop             
  nop                          #  35    0x2dca0  1      OPC=nop             
  nop                          #  36    0x2dca1  1      OPC=nop             
  nop                          #  37    0x2dca2  1      OPC=nop             
  nop                          #  38    0x2dca3  1      OPC=nop             
  nop                          #  39    0x2dca4  1      OPC=nop             
  nop                          #  40    0x2dca5  1      OPC=nop             
  nop                          #  41    0x2dca6  1      OPC=nop             
                                                                            
.size pthread_attr_getstacksize, .-pthread_attr_getstacksize

