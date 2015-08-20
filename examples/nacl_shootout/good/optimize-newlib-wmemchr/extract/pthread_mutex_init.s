  .text
  .globl pthread_mutex_init
  .type pthread_mutex_init, @function

#! file-offset 0x6d2c0
#! rip-offset  0x2d2c0
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.pthread_mutex_init:           #        0x2d2c0  0      OPC=<label>         
  movl %esi, %esi              #  1     0x2d2c0  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  2     0x2d2c2  2      OPC=movl_r32_r32    
  testq %rsi, %rsi             #  3     0x2d2c4  3      OPC=testq_r64_r64   
  movl %edi, %edi              #  4     0x2d2c7  2      OPC=movl_r32_r32    
  movl $0x0, (%r15,%rdi,1)     #  5     0x2d2c9  8      OPC=movl_m32_imm32  
  movl %edi, %edi              #  6     0x2d2d1  2      OPC=movl_r32_r32    
  movl $0x0, 0xc(%r15,%rdi,1)  #  7     0x2d2d3  9      OPC=movl_m32_imm32  
  nop                          #  8     0x2d2dc  1      OPC=nop             
  nop                          #  9     0x2d2dd  1      OPC=nop             
  nop                          #  10    0x2d2de  1      OPC=nop             
  nop                          #  11    0x2d2df  1      OPC=nop             
  movl %edi, %edi              #  12    0x2d2e0  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rdi,1)  #  13    0x2d2e2  9      OPC=movl_m32_imm32  
  je .L_2d320                  #  14    0x2d2eb  2      OPC=je_label        
  popq %r11                    #  15    0x2d2ed  2      OPC=popq_r64_1      
  movl %esi, %esi              #  16    0x2d2ef  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax     #  17    0x2d2f1  4      OPC=movl_r32_m32    
  movl %edi, %edi              #  18    0x2d2f5  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rdi,1)  #  19    0x2d2f7  5      OPC=movl_m32_r32    
  xorl %eax, %eax              #  20    0x2d2fc  2      OPC=xorl_r32_r32    
  xchgw %ax, %ax               #  21    0x2d2fe  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %r11d      #  22    0x2d300  7      OPC=andl_r32_imm32  
  nop                          #  23    0x2d307  1      OPC=nop             
  nop                          #  24    0x2d308  1      OPC=nop             
  nop                          #  25    0x2d309  1      OPC=nop             
  nop                          #  26    0x2d30a  1      OPC=nop             
  addq %r15, %r11              #  27    0x2d30b  3      OPC=addq_r64_r64    
  jmpq %r11                    #  28    0x2d30e  3      OPC=jmpq_r64        
  nop                          #  29    0x2d311  1      OPC=nop             
  nop                          #  30    0x2d312  1      OPC=nop             
  nop                          #  31    0x2d313  1      OPC=nop             
  nop                          #  32    0x2d314  1      OPC=nop             
  nop                          #  33    0x2d315  1      OPC=nop             
  nop                          #  34    0x2d316  1      OPC=nop             
  nop                          #  35    0x2d317  1      OPC=nop             
  nop                          #  36    0x2d318  1      OPC=nop             
  nop                          #  37    0x2d319  1      OPC=nop             
  nop                          #  38    0x2d31a  1      OPC=nop             
  nop                          #  39    0x2d31b  1      OPC=nop             
  nop                          #  40    0x2d31c  1      OPC=nop             
  nop                          #  41    0x2d31d  1      OPC=nop             
  nop                          #  42    0x2d31e  1      OPC=nop             
  nop                          #  43    0x2d31f  1      OPC=nop             
  nop                          #  44    0x2d320  1      OPC=nop             
  nop                          #  45    0x2d321  1      OPC=nop             
  nop                          #  46    0x2d322  1      OPC=nop             
  nop                          #  47    0x2d323  1      OPC=nop             
  nop                          #  48    0x2d324  1      OPC=nop             
  nop                          #  49    0x2d325  1      OPC=nop             
  nop                          #  50    0x2d326  1      OPC=nop             
.L_2d320:                      #        0x2d327  0      OPC=<label>         
  popq %r11                    #  51    0x2d327  2      OPC=popq_r64_1      
  xorl %eax, %eax              #  52    0x2d329  2      OPC=xorl_r32_r32    
  movl %edi, %edi              #  53    0x2d32b  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rdi,1)  #  54    0x2d32d  9      OPC=movl_m32_imm32  
  andl $0xffffffe0, %r11d      #  55    0x2d336  7      OPC=andl_r32_imm32  
  nop                          #  56    0x2d33d  1      OPC=nop             
  nop                          #  57    0x2d33e  1      OPC=nop             
  nop                          #  58    0x2d33f  1      OPC=nop             
  nop                          #  59    0x2d340  1      OPC=nop             
  addq %r15, %r11              #  60    0x2d341  3      OPC=addq_r64_r64    
  jmpq %r11                    #  61    0x2d344  3      OPC=jmpq_r64        
  nop                          #  62    0x2d347  1      OPC=nop             
  nop                          #  63    0x2d348  1      OPC=nop             
  nop                          #  64    0x2d349  1      OPC=nop             
  nop                          #  65    0x2d34a  1      OPC=nop             
  nop                          #  66    0x2d34b  1      OPC=nop             
  nop                          #  67    0x2d34c  1      OPC=nop             
  nop                          #  68    0x2d34d  1      OPC=nop             
                                                                            
.size pthread_mutex_init, .-pthread_mutex_init

