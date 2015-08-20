  .text
  .globl _ZNSt10moneypunctIwLb0EEC2Ej
  .type _ZNSt10moneypunctIwLb0EEC2Ej, @function

#! file-offset 0xf7960
#! rip-offset  0xb7960
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIwLb0EEC2Ej:                                     #        0xb7960  0      OPC=<label>         
  pushq %rbx                                                       #  1     0xb7960  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0xb7961  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0xb7963  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  4     0xb7965  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  5     0xb7967  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  6     0xb796a  3      OPC=addq_r64_r64    
  testl %esi, %esi                                                 #  7     0xb796d  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  8     0xb796f  2      OPC=movl_r32_r32    
  movl $0x1003c0c8, (%r15,%rbx,1)                                  #  9     0xb7971  8      OPC=movl_m32_imm32  
  setne %al                                                        #  10    0xb7979  3      OPC=setne_r8        
  nop                                                              #  11    0xb797c  1      OPC=nop             
  nop                                                              #  12    0xb797d  1      OPC=nop             
  nop                                                              #  13    0xb797e  1      OPC=nop             
  nop                                                              #  14    0xb797f  1      OPC=nop             
  movl %ebx, %ebx                                                  #  15    0xb7980  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                                      #  16    0xb7982  9      OPC=movl_m32_imm32  
  xorl %edx, %edx                                                  #  17    0xb798b  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                                  #  18    0xb798d  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  19    0xb798f  5      OPC=movl_m32_r32    
  xorl %esi, %esi                                                  #  20    0xb7994  2      OPC=xorl_r32_r32    
  nop                                                              #  21    0xb7996  1      OPC=nop             
  nop                                                              #  22    0xb7997  1      OPC=nop             
  nop                                                              #  23    0xb7998  1      OPC=nop             
  nop                                                              #  24    0xb7999  1      OPC=nop             
  nop                                                              #  25    0xb799a  1      OPC=nop             
  callq ._ZNSt10moneypunctIwLb0EE24_M_initialize_moneypunctEPiPKc  #  26    0xb799b  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  27    0xb79a0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  28    0xb79a3  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  29    0xb79a6  1      OPC=popq_r64_1      
  popq %r11                                                        #  30    0xb79a7  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  31    0xb79a9  7      OPC=andl_r32_imm32  
  nop                                                              #  32    0xb79b0  1      OPC=nop             
  nop                                                              #  33    0xb79b1  1      OPC=nop             
  nop                                                              #  34    0xb79b2  1      OPC=nop             
  nop                                                              #  35    0xb79b3  1      OPC=nop             
  addq %r15, %r11                                                  #  36    0xb79b4  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  37    0xb79b7  3      OPC=jmpq_r64        
  nop                                                              #  38    0xb79ba  1      OPC=nop             
  nop                                                              #  39    0xb79bb  1      OPC=nop             
  nop                                                              #  40    0xb79bc  1      OPC=nop             
  nop                                                              #  41    0xb79bd  1      OPC=nop             
  nop                                                              #  42    0xb79be  1      OPC=nop             
  nop                                                              #  43    0xb79bf  1      OPC=nop             
  nop                                                              #  44    0xb79c0  1      OPC=nop             
  nop                                                              #  45    0xb79c1  1      OPC=nop             
  nop                                                              #  46    0xb79c2  1      OPC=nop             
  nop                                                              #  47    0xb79c3  1      OPC=nop             
  nop                                                              #  48    0xb79c4  1      OPC=nop             
  nop                                                              #  49    0xb79c5  1      OPC=nop             
  nop                                                              #  50    0xb79c6  1      OPC=nop             
  movl %ebx, %edi                                                  #  51    0xb79c7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  52    0xb79c9  4      OPC=movl_m32_r32    
  nop                                                              #  53    0xb79cd  1      OPC=nop             
  nop                                                              #  54    0xb79ce  1      OPC=nop             
  nop                                                              #  55    0xb79cf  1      OPC=nop             
  nop                                                              #  56    0xb79d0  1      OPC=nop             
  nop                                                              #  57    0xb79d1  1      OPC=nop             
  nop                                                              #  58    0xb79d2  1      OPC=nop             
  nop                                                              #  59    0xb79d3  1      OPC=nop             
  nop                                                              #  60    0xb79d4  1      OPC=nop             
  nop                                                              #  61    0xb79d5  1      OPC=nop             
  nop                                                              #  62    0xb79d6  1      OPC=nop             
  nop                                                              #  63    0xb79d7  1      OPC=nop             
  nop                                                              #  64    0xb79d8  1      OPC=nop             
  nop                                                              #  65    0xb79d9  1      OPC=nop             
  nop                                                              #  66    0xb79da  1      OPC=nop             
  nop                                                              #  67    0xb79db  1      OPC=nop             
  nop                                                              #  68    0xb79dc  1      OPC=nop             
  nop                                                              #  69    0xb79dd  1      OPC=nop             
  nop                                                              #  70    0xb79de  1      OPC=nop             
  nop                                                              #  71    0xb79df  1      OPC=nop             
  nop                                                              #  72    0xb79e0  1      OPC=nop             
  nop                                                              #  73    0xb79e1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  74    0xb79e2  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  75    0xb79e7  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  76    0xb79eb  2      OPC=movl_r32_r32    
  nop                                                              #  77    0xb79ed  1      OPC=nop             
  nop                                                              #  78    0xb79ee  1      OPC=nop             
  nop                                                              #  79    0xb79ef  1      OPC=nop             
  nop                                                              #  80    0xb79f0  1      OPC=nop             
  nop                                                              #  81    0xb79f1  1      OPC=nop             
  nop                                                              #  82    0xb79f2  1      OPC=nop             
  nop                                                              #  83    0xb79f3  1      OPC=nop             
  nop                                                              #  84    0xb79f4  1      OPC=nop             
  nop                                                              #  85    0xb79f5  1      OPC=nop             
  nop                                                              #  86    0xb79f6  1      OPC=nop             
  nop                                                              #  87    0xb79f7  1      OPC=nop             
  nop                                                              #  88    0xb79f8  1      OPC=nop             
  nop                                                              #  89    0xb79f9  1      OPC=nop             
  nop                                                              #  90    0xb79fa  1      OPC=nop             
  nop                                                              #  91    0xb79fb  1      OPC=nop             
  nop                                                              #  92    0xb79fc  1      OPC=nop             
  nop                                                              #  93    0xb79fd  1      OPC=nop             
  nop                                                              #  94    0xb79fe  1      OPC=nop             
  nop                                                              #  95    0xb79ff  1      OPC=nop             
  nop                                                              #  96    0xb7a00  1      OPC=nop             
  nop                                                              #  97    0xb7a01  1      OPC=nop             
  callq ._Unwind_Resume                                            #  98    0xb7a02  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIwLb0EEC2Ej, .-_ZNSt10moneypunctIwLb0EEC2Ej

