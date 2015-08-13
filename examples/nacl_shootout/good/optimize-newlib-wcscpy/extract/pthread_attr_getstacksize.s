  .text
  .globl pthread_attr_getstacksize
  .type pthread_attr_getstacksize, @function

#! file-offset 0x6d960
#! rip-offset  0x2d960
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.pthread_attr_getstacksize:    #        0x2d960  0      OPC=<label>         
  movl %edi, %edi              #  1     0x2d960  2      OPC=movl_r32_r32    
  movl %esi, %esi              #  2     0x2d962  2      OPC=movl_r32_r32    
  movl $0x16, %eax             #  3     0x2d964  5      OPC=movl_r32_imm32  
  testq %rdi, %rdi             #  4     0x2d969  3      OPC=testq_r64_r64   
  je .L_2d980                  #  5     0x2d96c  2      OPC=je_label        
  movl %edi, %edi              #  6     0x2d96e  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rdi,1), %eax  #  7     0x2d970  5      OPC=movl_r32_m32    
  movl %esi, %esi              #  8     0x2d975  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rsi,1)     #  9     0x2d977  4      OPC=movl_m32_r32    
  xorl %eax, %eax              #  10    0x2d97b  2      OPC=xorl_r32_r32    
  nop                          #  11    0x2d97d  1      OPC=nop             
  nop                          #  12    0x2d97e  1      OPC=nop             
  nop                          #  13    0x2d97f  1      OPC=nop             
.L_2d980:                      #        0x2d980  0      OPC=<label>         
  popq %r11                    #  14    0x2d980  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  15    0x2d982  7      OPC=andl_r32_imm32  
  nop                          #  16    0x2d989  1      OPC=nop             
  nop                          #  17    0x2d98a  1      OPC=nop             
  nop                          #  18    0x2d98b  1      OPC=nop             
  nop                          #  19    0x2d98c  1      OPC=nop             
  addq %r15, %r11              #  20    0x2d98d  3      OPC=addq_r64_r64    
  jmpq %r11                    #  21    0x2d990  3      OPC=jmpq_r64        
  nop                          #  22    0x2d993  1      OPC=nop             
  nop                          #  23    0x2d994  1      OPC=nop             
  nop                          #  24    0x2d995  1      OPC=nop             
  nop                          #  25    0x2d996  1      OPC=nop             
  nop                          #  26    0x2d997  1      OPC=nop             
  nop                          #  27    0x2d998  1      OPC=nop             
  nop                          #  28    0x2d999  1      OPC=nop             
  nop                          #  29    0x2d99a  1      OPC=nop             
  nop                          #  30    0x2d99b  1      OPC=nop             
  nop                          #  31    0x2d99c  1      OPC=nop             
  nop                          #  32    0x2d99d  1      OPC=nop             
  nop                          #  33    0x2d99e  1      OPC=nop             
  nop                          #  34    0x2d99f  1      OPC=nop             
  nop                          #  35    0x2d9a0  1      OPC=nop             
  nop                          #  36    0x2d9a1  1      OPC=nop             
  nop                          #  37    0x2d9a2  1      OPC=nop             
  nop                          #  38    0x2d9a3  1      OPC=nop             
  nop                          #  39    0x2d9a4  1      OPC=nop             
  nop                          #  40    0x2d9a5  1      OPC=nop             
  nop                          #  41    0x2d9a6  1      OPC=nop             
                                                                            
.size pthread_attr_getstacksize, .-pthread_attr_getstacksize

