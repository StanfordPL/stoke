  .text
  .globl pthread_mutex_init
  .type pthread_mutex_init, @function

#! file-offset 0x6cfc0
#! rip-offset  0x2cfc0
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.pthread_mutex_init:           #        0x2cfc0  0      OPC=<label>         
  movl %esi, %esi              #  1     0x2cfc0  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  2     0x2cfc2  2      OPC=movl_r32_r32    
  testq %rsi, %rsi             #  3     0x2cfc4  3      OPC=testq_r64_r64   
  movl %edi, %edi              #  4     0x2cfc7  2      OPC=movl_r32_r32    
  movl $0x0, (%r15,%rdi,1)     #  5     0x2cfc9  8      OPC=movl_m32_imm32  
  movl %edi, %edi              #  6     0x2cfd1  2      OPC=movl_r32_r32    
  movl $0x0, 0xc(%r15,%rdi,1)  #  7     0x2cfd3  9      OPC=movl_m32_imm32  
  nop                          #  8     0x2cfdc  1      OPC=nop             
  nop                          #  9     0x2cfdd  1      OPC=nop             
  nop                          #  10    0x2cfde  1      OPC=nop             
  nop                          #  11    0x2cfdf  1      OPC=nop             
  movl %edi, %edi              #  12    0x2cfe0  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rdi,1)  #  13    0x2cfe2  9      OPC=movl_m32_imm32  
  je .L_2d020                  #  14    0x2cfeb  2      OPC=je_label        
  popq %r11                    #  15    0x2cfed  2      OPC=popq_r64_1      
  movl %esi, %esi              #  16    0x2cfef  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax     #  17    0x2cff1  4      OPC=movl_r32_m32    
  movl %edi, %edi              #  18    0x2cff5  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rdi,1)  #  19    0x2cff7  5      OPC=movl_m32_r32    
  xorl %eax, %eax              #  20    0x2cffc  2      OPC=xorl_r32_r32    
  xchgw %ax, %ax               #  21    0x2cffe  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %r11d      #  22    0x2d000  7      OPC=andl_r32_imm32  
  nop                          #  23    0x2d007  1      OPC=nop             
  nop                          #  24    0x2d008  1      OPC=nop             
  nop                          #  25    0x2d009  1      OPC=nop             
  nop                          #  26    0x2d00a  1      OPC=nop             
  addq %r15, %r11              #  27    0x2d00b  3      OPC=addq_r64_r64    
  jmpq %r11                    #  28    0x2d00e  3      OPC=jmpq_r64        
  nop                          #  29    0x2d011  1      OPC=nop             
  nop                          #  30    0x2d012  1      OPC=nop             
  nop                          #  31    0x2d013  1      OPC=nop             
  nop                          #  32    0x2d014  1      OPC=nop             
  nop                          #  33    0x2d015  1      OPC=nop             
  nop                          #  34    0x2d016  1      OPC=nop             
  nop                          #  35    0x2d017  1      OPC=nop             
  nop                          #  36    0x2d018  1      OPC=nop             
  nop                          #  37    0x2d019  1      OPC=nop             
  nop                          #  38    0x2d01a  1      OPC=nop             
  nop                          #  39    0x2d01b  1      OPC=nop             
  nop                          #  40    0x2d01c  1      OPC=nop             
  nop                          #  41    0x2d01d  1      OPC=nop             
  nop                          #  42    0x2d01e  1      OPC=nop             
  nop                          #  43    0x2d01f  1      OPC=nop             
  nop                          #  44    0x2d020  1      OPC=nop             
  nop                          #  45    0x2d021  1      OPC=nop             
  nop                          #  46    0x2d022  1      OPC=nop             
  nop                          #  47    0x2d023  1      OPC=nop             
  nop                          #  48    0x2d024  1      OPC=nop             
  nop                          #  49    0x2d025  1      OPC=nop             
  nop                          #  50    0x2d026  1      OPC=nop             
.L_2d020:                      #        0x2d027  0      OPC=<label>         
  popq %r11                    #  51    0x2d027  2      OPC=popq_r64_1      
  xorl %eax, %eax              #  52    0x2d029  2      OPC=xorl_r32_r32    
  movl %edi, %edi              #  53    0x2d02b  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rdi,1)  #  54    0x2d02d  9      OPC=movl_m32_imm32  
  andl $0xffffffe0, %r11d      #  55    0x2d036  7      OPC=andl_r32_imm32  
  nop                          #  56    0x2d03d  1      OPC=nop             
  nop                          #  57    0x2d03e  1      OPC=nop             
  nop                          #  58    0x2d03f  1      OPC=nop             
  nop                          #  59    0x2d040  1      OPC=nop             
  addq %r15, %r11              #  60    0x2d041  3      OPC=addq_r64_r64    
  jmpq %r11                    #  61    0x2d044  3      OPC=jmpq_r64        
  nop                          #  62    0x2d047  1      OPC=nop             
  nop                          #  63    0x2d048  1      OPC=nop             
  nop                          #  64    0x2d049  1      OPC=nop             
  nop                          #  65    0x2d04a  1      OPC=nop             
  nop                          #  66    0x2d04b  1      OPC=nop             
  nop                          #  67    0x2d04c  1      OPC=nop             
  nop                          #  68    0x2d04d  1      OPC=nop             
                                                                            
.size pthread_mutex_init, .-pthread_mutex_init

