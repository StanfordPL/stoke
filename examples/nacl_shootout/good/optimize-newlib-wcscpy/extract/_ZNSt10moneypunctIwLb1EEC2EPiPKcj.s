  .text
  .globl _ZNSt10moneypunctIwLb1EEC2EPiPKcj
  .type _ZNSt10moneypunctIwLb1EEC2EPiPKcj, @function

#! file-offset 0xf6fa0
#! rip-offset  0xb6fa0
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIwLb1EEC2EPiPKcj:                                #        0xb6fa0  0      OPC=<label>         
  pushq %rbx                                                       #  1     0xb6fa0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0xb6fa1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0xb6fa3  2      OPC=movl_r32_r32    
  movl %esi, %esi                                                  #  4     0xb6fa5  2      OPC=movl_r32_r32    
  movl %edx, %edx                                                  #  5     0xb6fa7  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  6     0xb6fa9  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  7     0xb6fab  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  8     0xb6fae  3      OPC=addq_r64_r64    
  testl %ecx, %ecx                                                 #  9     0xb6fb1  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  10    0xb6fb3  2      OPC=movl_r32_r32    
  movl $0x1003c108, (%r15,%rbx,1)                                  #  11    0xb6fb5  8      OPC=movl_m32_imm32  
  setne %al                                                        #  12    0xb6fbd  3      OPC=setne_r8        
  movl %ebx, %ebx                                                  #  13    0xb6fc0  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                                      #  14    0xb6fc2  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                  #  15    0xb6fcb  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  16    0xb6fcd  5      OPC=movl_m32_r32    
  nop                                                              #  17    0xb6fd2  1      OPC=nop             
  nop                                                              #  18    0xb6fd3  1      OPC=nop             
  nop                                                              #  19    0xb6fd4  1      OPC=nop             
  nop                                                              #  20    0xb6fd5  1      OPC=nop             
  nop                                                              #  21    0xb6fd6  1      OPC=nop             
  nop                                                              #  22    0xb6fd7  1      OPC=nop             
  nop                                                              #  23    0xb6fd8  1      OPC=nop             
  nop                                                              #  24    0xb6fd9  1      OPC=nop             
  nop                                                              #  25    0xb6fda  1      OPC=nop             
  callq ._ZNSt10moneypunctIwLb1EE24_M_initialize_moneypunctEPiPKc  #  26    0xb6fdb  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  27    0xb6fe0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  28    0xb6fe3  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  29    0xb6fe6  1      OPC=popq_r64_1      
  popq %r11                                                        #  30    0xb6fe7  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  31    0xb6fe9  7      OPC=andl_r32_imm32  
  nop                                                              #  32    0xb6ff0  1      OPC=nop             
  nop                                                              #  33    0xb6ff1  1      OPC=nop             
  nop                                                              #  34    0xb6ff2  1      OPC=nop             
  nop                                                              #  35    0xb6ff3  1      OPC=nop             
  addq %r15, %r11                                                  #  36    0xb6ff4  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  37    0xb6ff7  3      OPC=jmpq_r64        
  nop                                                              #  38    0xb6ffa  1      OPC=nop             
  nop                                                              #  39    0xb6ffb  1      OPC=nop             
  nop                                                              #  40    0xb6ffc  1      OPC=nop             
  nop                                                              #  41    0xb6ffd  1      OPC=nop             
  nop                                                              #  42    0xb6ffe  1      OPC=nop             
  nop                                                              #  43    0xb6fff  1      OPC=nop             
  nop                                                              #  44    0xb7000  1      OPC=nop             
  nop                                                              #  45    0xb7001  1      OPC=nop             
  nop                                                              #  46    0xb7002  1      OPC=nop             
  nop                                                              #  47    0xb7003  1      OPC=nop             
  nop                                                              #  48    0xb7004  1      OPC=nop             
  nop                                                              #  49    0xb7005  1      OPC=nop             
  nop                                                              #  50    0xb7006  1      OPC=nop             
  movl %ebx, %edi                                                  #  51    0xb7007  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  52    0xb7009  4      OPC=movl_m32_r32    
  nop                                                              #  53    0xb700d  1      OPC=nop             
  nop                                                              #  54    0xb700e  1      OPC=nop             
  nop                                                              #  55    0xb700f  1      OPC=nop             
  nop                                                              #  56    0xb7010  1      OPC=nop             
  nop                                                              #  57    0xb7011  1      OPC=nop             
  nop                                                              #  58    0xb7012  1      OPC=nop             
  nop                                                              #  59    0xb7013  1      OPC=nop             
  nop                                                              #  60    0xb7014  1      OPC=nop             
  nop                                                              #  61    0xb7015  1      OPC=nop             
  nop                                                              #  62    0xb7016  1      OPC=nop             
  nop                                                              #  63    0xb7017  1      OPC=nop             
  nop                                                              #  64    0xb7018  1      OPC=nop             
  nop                                                              #  65    0xb7019  1      OPC=nop             
  nop                                                              #  66    0xb701a  1      OPC=nop             
  nop                                                              #  67    0xb701b  1      OPC=nop             
  nop                                                              #  68    0xb701c  1      OPC=nop             
  nop                                                              #  69    0xb701d  1      OPC=nop             
  nop                                                              #  70    0xb701e  1      OPC=nop             
  nop                                                              #  71    0xb701f  1      OPC=nop             
  nop                                                              #  72    0xb7020  1      OPC=nop             
  nop                                                              #  73    0xb7021  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  74    0xb7022  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  75    0xb7027  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  76    0xb702b  2      OPC=movl_r32_r32    
  nop                                                              #  77    0xb702d  1      OPC=nop             
  nop                                                              #  78    0xb702e  1      OPC=nop             
  nop                                                              #  79    0xb702f  1      OPC=nop             
  nop                                                              #  80    0xb7030  1      OPC=nop             
  nop                                                              #  81    0xb7031  1      OPC=nop             
  nop                                                              #  82    0xb7032  1      OPC=nop             
  nop                                                              #  83    0xb7033  1      OPC=nop             
  nop                                                              #  84    0xb7034  1      OPC=nop             
  nop                                                              #  85    0xb7035  1      OPC=nop             
  nop                                                              #  86    0xb7036  1      OPC=nop             
  nop                                                              #  87    0xb7037  1      OPC=nop             
  nop                                                              #  88    0xb7038  1      OPC=nop             
  nop                                                              #  89    0xb7039  1      OPC=nop             
  nop                                                              #  90    0xb703a  1      OPC=nop             
  nop                                                              #  91    0xb703b  1      OPC=nop             
  nop                                                              #  92    0xb703c  1      OPC=nop             
  nop                                                              #  93    0xb703d  1      OPC=nop             
  nop                                                              #  94    0xb703e  1      OPC=nop             
  nop                                                              #  95    0xb703f  1      OPC=nop             
  nop                                                              #  96    0xb7040  1      OPC=nop             
  nop                                                              #  97    0xb7041  1      OPC=nop             
  callq ._Unwind_Resume                                            #  98    0xb7042  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIwLb1EEC2EPiPKcj, .-_ZNSt10moneypunctIwLb1EEC2EPiPKcj

