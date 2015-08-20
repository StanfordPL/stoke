  .text
  .globl _ZNSt10moneypunctIcLb1EEC2EPiPKcj
  .type _ZNSt10moneypunctIcLb1EEC2EPiPKcj, @function

#! file-offset 0xbe780
#! rip-offset  0x7e780
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIcLb1EEC2EPiPKcj:                                #        0x7e780  0      OPC=<label>         
  pushq %rbx                                                       #  1     0x7e780  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0x7e781  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0x7e783  2      OPC=movl_r32_r32    
  movl %esi, %esi                                                  #  4     0x7e785  2      OPC=movl_r32_r32    
  movl %edx, %edx                                                  #  5     0x7e787  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  6     0x7e789  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  7     0x7e78b  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  8     0x7e78e  3      OPC=addq_r64_r64    
  testl %ecx, %ecx                                                 #  9     0x7e791  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  10    0x7e793  2      OPC=movl_r32_r32    
  movl $0x1003ae88, (%r15,%rbx,1)                                  #  11    0x7e795  8      OPC=movl_m32_imm32  
  setne %al                                                        #  12    0x7e79d  3      OPC=setne_r8        
  movl %ebx, %ebx                                                  #  13    0x7e7a0  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                                      #  14    0x7e7a2  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                  #  15    0x7e7ab  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  16    0x7e7ad  5      OPC=movl_m32_r32    
  nop                                                              #  17    0x7e7b2  1      OPC=nop             
  nop                                                              #  18    0x7e7b3  1      OPC=nop             
  nop                                                              #  19    0x7e7b4  1      OPC=nop             
  nop                                                              #  20    0x7e7b5  1      OPC=nop             
  nop                                                              #  21    0x7e7b6  1      OPC=nop             
  nop                                                              #  22    0x7e7b7  1      OPC=nop             
  nop                                                              #  23    0x7e7b8  1      OPC=nop             
  nop                                                              #  24    0x7e7b9  1      OPC=nop             
  nop                                                              #  25    0x7e7ba  1      OPC=nop             
  callq ._ZNSt10moneypunctIcLb1EE24_M_initialize_moneypunctEPiPKc  #  26    0x7e7bb  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  27    0x7e7c0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  28    0x7e7c3  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  29    0x7e7c6  1      OPC=popq_r64_1      
  popq %r11                                                        #  30    0x7e7c7  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  31    0x7e7c9  7      OPC=andl_r32_imm32  
  nop                                                              #  32    0x7e7d0  1      OPC=nop             
  nop                                                              #  33    0x7e7d1  1      OPC=nop             
  nop                                                              #  34    0x7e7d2  1      OPC=nop             
  nop                                                              #  35    0x7e7d3  1      OPC=nop             
  addq %r15, %r11                                                  #  36    0x7e7d4  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  37    0x7e7d7  3      OPC=jmpq_r64        
  nop                                                              #  38    0x7e7da  1      OPC=nop             
  nop                                                              #  39    0x7e7db  1      OPC=nop             
  nop                                                              #  40    0x7e7dc  1      OPC=nop             
  nop                                                              #  41    0x7e7dd  1      OPC=nop             
  nop                                                              #  42    0x7e7de  1      OPC=nop             
  nop                                                              #  43    0x7e7df  1      OPC=nop             
  nop                                                              #  44    0x7e7e0  1      OPC=nop             
  nop                                                              #  45    0x7e7e1  1      OPC=nop             
  nop                                                              #  46    0x7e7e2  1      OPC=nop             
  nop                                                              #  47    0x7e7e3  1      OPC=nop             
  nop                                                              #  48    0x7e7e4  1      OPC=nop             
  nop                                                              #  49    0x7e7e5  1      OPC=nop             
  nop                                                              #  50    0x7e7e6  1      OPC=nop             
  movl %ebx, %edi                                                  #  51    0x7e7e7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  52    0x7e7e9  4      OPC=movl_m32_r32    
  nop                                                              #  53    0x7e7ed  1      OPC=nop             
  nop                                                              #  54    0x7e7ee  1      OPC=nop             
  nop                                                              #  55    0x7e7ef  1      OPC=nop             
  nop                                                              #  56    0x7e7f0  1      OPC=nop             
  nop                                                              #  57    0x7e7f1  1      OPC=nop             
  nop                                                              #  58    0x7e7f2  1      OPC=nop             
  nop                                                              #  59    0x7e7f3  1      OPC=nop             
  nop                                                              #  60    0x7e7f4  1      OPC=nop             
  nop                                                              #  61    0x7e7f5  1      OPC=nop             
  nop                                                              #  62    0x7e7f6  1      OPC=nop             
  nop                                                              #  63    0x7e7f7  1      OPC=nop             
  nop                                                              #  64    0x7e7f8  1      OPC=nop             
  nop                                                              #  65    0x7e7f9  1      OPC=nop             
  nop                                                              #  66    0x7e7fa  1      OPC=nop             
  nop                                                              #  67    0x7e7fb  1      OPC=nop             
  nop                                                              #  68    0x7e7fc  1      OPC=nop             
  nop                                                              #  69    0x7e7fd  1      OPC=nop             
  nop                                                              #  70    0x7e7fe  1      OPC=nop             
  nop                                                              #  71    0x7e7ff  1      OPC=nop             
  nop                                                              #  72    0x7e800  1      OPC=nop             
  nop                                                              #  73    0x7e801  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  74    0x7e802  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  75    0x7e807  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  76    0x7e80b  2      OPC=movl_r32_r32    
  nop                                                              #  77    0x7e80d  1      OPC=nop             
  nop                                                              #  78    0x7e80e  1      OPC=nop             
  nop                                                              #  79    0x7e80f  1      OPC=nop             
  nop                                                              #  80    0x7e810  1      OPC=nop             
  nop                                                              #  81    0x7e811  1      OPC=nop             
  nop                                                              #  82    0x7e812  1      OPC=nop             
  nop                                                              #  83    0x7e813  1      OPC=nop             
  nop                                                              #  84    0x7e814  1      OPC=nop             
  nop                                                              #  85    0x7e815  1      OPC=nop             
  nop                                                              #  86    0x7e816  1      OPC=nop             
  nop                                                              #  87    0x7e817  1      OPC=nop             
  nop                                                              #  88    0x7e818  1      OPC=nop             
  nop                                                              #  89    0x7e819  1      OPC=nop             
  nop                                                              #  90    0x7e81a  1      OPC=nop             
  nop                                                              #  91    0x7e81b  1      OPC=nop             
  nop                                                              #  92    0x7e81c  1      OPC=nop             
  nop                                                              #  93    0x7e81d  1      OPC=nop             
  nop                                                              #  94    0x7e81e  1      OPC=nop             
  nop                                                              #  95    0x7e81f  1      OPC=nop             
  nop                                                              #  96    0x7e820  1      OPC=nop             
  nop                                                              #  97    0x7e821  1      OPC=nop             
  callq ._Unwind_Resume                                            #  98    0x7e822  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIcLb1EEC2EPiPKcj, .-_ZNSt10moneypunctIcLb1EEC2EPiPKcj

