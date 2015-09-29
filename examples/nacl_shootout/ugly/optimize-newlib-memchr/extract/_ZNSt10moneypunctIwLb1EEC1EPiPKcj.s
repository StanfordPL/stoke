  .text
  .globl _ZNSt10moneypunctIwLb1EEC1EPiPKcj
  .type _ZNSt10moneypunctIwLb1EEC1EPiPKcj, @function

#! file-offset 0xf7920
#! rip-offset  0xb7920
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIwLb1EEC1EPiPKcj:                                #        0xb7920  0      OPC=<label>         
  pushq %rbx                                                       #  1     0xb7920  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0xb7921  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0xb7923  2      OPC=movl_r32_r32    
  movl %esi, %esi                                                  #  4     0xb7925  2      OPC=movl_r32_r32    
  movl %edx, %edx                                                  #  5     0xb7927  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  6     0xb7929  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  7     0xb792b  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  8     0xb792e  3      OPC=addq_r64_r64    
  testl %ecx, %ecx                                                 #  9     0xb7931  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  10    0xb7933  2      OPC=movl_r32_r32    
  movl $0x1003c108, (%r15,%rbx,1)                                  #  11    0xb7935  8      OPC=movl_m32_imm32  
  setne %al                                                        #  12    0xb793d  3      OPC=setne_r8        
  movl %ebx, %ebx                                                  #  13    0xb7940  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                                      #  14    0xb7942  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                  #  15    0xb794b  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  16    0xb794d  5      OPC=movl_m32_r32    
  nop                                                              #  17    0xb7952  1      OPC=nop             
  nop                                                              #  18    0xb7953  1      OPC=nop             
  nop                                                              #  19    0xb7954  1      OPC=nop             
  nop                                                              #  20    0xb7955  1      OPC=nop             
  nop                                                              #  21    0xb7956  1      OPC=nop             
  nop                                                              #  22    0xb7957  1      OPC=nop             
  nop                                                              #  23    0xb7958  1      OPC=nop             
  nop                                                              #  24    0xb7959  1      OPC=nop             
  nop                                                              #  25    0xb795a  1      OPC=nop             
  callq ._ZNSt10moneypunctIwLb1EE24_M_initialize_moneypunctEPiPKc  #  26    0xb795b  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  27    0xb7960  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  28    0xb7963  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  29    0xb7966  1      OPC=popq_r64_1      
  popq %r11                                                        #  30    0xb7967  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  31    0xb7969  7      OPC=andl_r32_imm32  
  nop                                                              #  32    0xb7970  1      OPC=nop             
  nop                                                              #  33    0xb7971  1      OPC=nop             
  nop                                                              #  34    0xb7972  1      OPC=nop             
  nop                                                              #  35    0xb7973  1      OPC=nop             
  addq %r15, %r11                                                  #  36    0xb7974  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  37    0xb7977  3      OPC=jmpq_r64        
  nop                                                              #  38    0xb797a  1      OPC=nop             
  nop                                                              #  39    0xb797b  1      OPC=nop             
  nop                                                              #  40    0xb797c  1      OPC=nop             
  nop                                                              #  41    0xb797d  1      OPC=nop             
  nop                                                              #  42    0xb797e  1      OPC=nop             
  nop                                                              #  43    0xb797f  1      OPC=nop             
  nop                                                              #  44    0xb7980  1      OPC=nop             
  nop                                                              #  45    0xb7981  1      OPC=nop             
  nop                                                              #  46    0xb7982  1      OPC=nop             
  nop                                                              #  47    0xb7983  1      OPC=nop             
  nop                                                              #  48    0xb7984  1      OPC=nop             
  nop                                                              #  49    0xb7985  1      OPC=nop             
  nop                                                              #  50    0xb7986  1      OPC=nop             
  movl %ebx, %edi                                                  #  51    0xb7987  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  52    0xb7989  4      OPC=movl_m32_r32    
  nop                                                              #  53    0xb798d  1      OPC=nop             
  nop                                                              #  54    0xb798e  1      OPC=nop             
  nop                                                              #  55    0xb798f  1      OPC=nop             
  nop                                                              #  56    0xb7990  1      OPC=nop             
  nop                                                              #  57    0xb7991  1      OPC=nop             
  nop                                                              #  58    0xb7992  1      OPC=nop             
  nop                                                              #  59    0xb7993  1      OPC=nop             
  nop                                                              #  60    0xb7994  1      OPC=nop             
  nop                                                              #  61    0xb7995  1      OPC=nop             
  nop                                                              #  62    0xb7996  1      OPC=nop             
  nop                                                              #  63    0xb7997  1      OPC=nop             
  nop                                                              #  64    0xb7998  1      OPC=nop             
  nop                                                              #  65    0xb7999  1      OPC=nop             
  nop                                                              #  66    0xb799a  1      OPC=nop             
  nop                                                              #  67    0xb799b  1      OPC=nop             
  nop                                                              #  68    0xb799c  1      OPC=nop             
  nop                                                              #  69    0xb799d  1      OPC=nop             
  nop                                                              #  70    0xb799e  1      OPC=nop             
  nop                                                              #  71    0xb799f  1      OPC=nop             
  nop                                                              #  72    0xb79a0  1      OPC=nop             
  nop                                                              #  73    0xb79a1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  74    0xb79a2  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  75    0xb79a7  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  76    0xb79ab  2      OPC=movl_r32_r32    
  nop                                                              #  77    0xb79ad  1      OPC=nop             
  nop                                                              #  78    0xb79ae  1      OPC=nop             
  nop                                                              #  79    0xb79af  1      OPC=nop             
  nop                                                              #  80    0xb79b0  1      OPC=nop             
  nop                                                              #  81    0xb79b1  1      OPC=nop             
  nop                                                              #  82    0xb79b2  1      OPC=nop             
  nop                                                              #  83    0xb79b3  1      OPC=nop             
  nop                                                              #  84    0xb79b4  1      OPC=nop             
  nop                                                              #  85    0xb79b5  1      OPC=nop             
  nop                                                              #  86    0xb79b6  1      OPC=nop             
  nop                                                              #  87    0xb79b7  1      OPC=nop             
  nop                                                              #  88    0xb79b8  1      OPC=nop             
  nop                                                              #  89    0xb79b9  1      OPC=nop             
  nop                                                              #  90    0xb79ba  1      OPC=nop             
  nop                                                              #  91    0xb79bb  1      OPC=nop             
  nop                                                              #  92    0xb79bc  1      OPC=nop             
  nop                                                              #  93    0xb79bd  1      OPC=nop             
  nop                                                              #  94    0xb79be  1      OPC=nop             
  nop                                                              #  95    0xb79bf  1      OPC=nop             
  nop                                                              #  96    0xb79c0  1      OPC=nop             
  nop                                                              #  97    0xb79c1  1      OPC=nop             
  callq ._Unwind_Resume                                            #  98    0xb79c2  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIwLb1EEC1EPiPKcj, .-_ZNSt10moneypunctIwLb1EEC1EPiPKcj

