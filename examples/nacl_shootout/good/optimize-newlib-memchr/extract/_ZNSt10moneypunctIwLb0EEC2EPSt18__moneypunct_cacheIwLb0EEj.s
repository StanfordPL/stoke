  .text
  .globl _ZNSt10moneypunctIwLb0EEC2EPSt18__moneypunct_cacheIwLb0EEj
  .type _ZNSt10moneypunctIwLb0EEC2EPSt18__moneypunct_cacheIwLb0EEj, @function

#! file-offset 0xf7f40
#! rip-offset  0xb7f40
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIwLb0EEC2EPSt18__moneypunct_cacheIwLb0EEj:       #        0xb7f40  0      OPC=<label>         
  pushq %rbx                                                       #  1     0xb7f40  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0xb7f41  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0xb7f43  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  4     0xb7f45  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  5     0xb7f47  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  6     0xb7f4a  3      OPC=addq_r64_r64    
  testl %edx, %edx                                                 #  7     0xb7f4d  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  8     0xb7f4f  2      OPC=movl_r32_r32    
  movl %esi, 0x8(%r15,%rbx,1)                                      #  9     0xb7f51  5      OPC=movl_m32_r32    
  setne %al                                                        #  10    0xb7f56  3      OPC=setne_r8        
  nop                                                              #  11    0xb7f59  1      OPC=nop             
  nop                                                              #  12    0xb7f5a  1      OPC=nop             
  nop                                                              #  13    0xb7f5b  1      OPC=nop             
  nop                                                              #  14    0xb7f5c  1      OPC=nop             
  nop                                                              #  15    0xb7f5d  1      OPC=nop             
  nop                                                              #  16    0xb7f5e  1      OPC=nop             
  nop                                                              #  17    0xb7f5f  1      OPC=nop             
  movl %ebx, %ebx                                                  #  18    0xb7f60  2      OPC=movl_r32_r32    
  movl $0x1003c0c8, (%r15,%rbx,1)                                  #  19    0xb7f62  8      OPC=movl_m32_imm32  
  xorl %edx, %edx                                                  #  20    0xb7f6a  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                                  #  21    0xb7f6c  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  22    0xb7f6e  5      OPC=movl_m32_r32    
  xorl %esi, %esi                                                  #  23    0xb7f73  2      OPC=xorl_r32_r32    
  nop                                                              #  24    0xb7f75  1      OPC=nop             
  nop                                                              #  25    0xb7f76  1      OPC=nop             
  nop                                                              #  26    0xb7f77  1      OPC=nop             
  nop                                                              #  27    0xb7f78  1      OPC=nop             
  nop                                                              #  28    0xb7f79  1      OPC=nop             
  nop                                                              #  29    0xb7f7a  1      OPC=nop             
  callq ._ZNSt10moneypunctIwLb0EE24_M_initialize_moneypunctEPiPKc  #  30    0xb7f7b  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  31    0xb7f80  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  32    0xb7f83  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  33    0xb7f86  1      OPC=popq_r64_1      
  popq %r11                                                        #  34    0xb7f87  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  35    0xb7f89  7      OPC=andl_r32_imm32  
  nop                                                              #  36    0xb7f90  1      OPC=nop             
  nop                                                              #  37    0xb7f91  1      OPC=nop             
  nop                                                              #  38    0xb7f92  1      OPC=nop             
  nop                                                              #  39    0xb7f93  1      OPC=nop             
  addq %r15, %r11                                                  #  40    0xb7f94  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  41    0xb7f97  3      OPC=jmpq_r64        
  nop                                                              #  42    0xb7f9a  1      OPC=nop             
  nop                                                              #  43    0xb7f9b  1      OPC=nop             
  nop                                                              #  44    0xb7f9c  1      OPC=nop             
  nop                                                              #  45    0xb7f9d  1      OPC=nop             
  nop                                                              #  46    0xb7f9e  1      OPC=nop             
  nop                                                              #  47    0xb7f9f  1      OPC=nop             
  nop                                                              #  48    0xb7fa0  1      OPC=nop             
  nop                                                              #  49    0xb7fa1  1      OPC=nop             
  nop                                                              #  50    0xb7fa2  1      OPC=nop             
  nop                                                              #  51    0xb7fa3  1      OPC=nop             
  nop                                                              #  52    0xb7fa4  1      OPC=nop             
  nop                                                              #  53    0xb7fa5  1      OPC=nop             
  nop                                                              #  54    0xb7fa6  1      OPC=nop             
  movl %ebx, %edi                                                  #  55    0xb7fa7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  56    0xb7fa9  4      OPC=movl_m32_r32    
  nop                                                              #  57    0xb7fad  1      OPC=nop             
  nop                                                              #  58    0xb7fae  1      OPC=nop             
  nop                                                              #  59    0xb7faf  1      OPC=nop             
  nop                                                              #  60    0xb7fb0  1      OPC=nop             
  nop                                                              #  61    0xb7fb1  1      OPC=nop             
  nop                                                              #  62    0xb7fb2  1      OPC=nop             
  nop                                                              #  63    0xb7fb3  1      OPC=nop             
  nop                                                              #  64    0xb7fb4  1      OPC=nop             
  nop                                                              #  65    0xb7fb5  1      OPC=nop             
  nop                                                              #  66    0xb7fb6  1      OPC=nop             
  nop                                                              #  67    0xb7fb7  1      OPC=nop             
  nop                                                              #  68    0xb7fb8  1      OPC=nop             
  nop                                                              #  69    0xb7fb9  1      OPC=nop             
  nop                                                              #  70    0xb7fba  1      OPC=nop             
  nop                                                              #  71    0xb7fbb  1      OPC=nop             
  nop                                                              #  72    0xb7fbc  1      OPC=nop             
  nop                                                              #  73    0xb7fbd  1      OPC=nop             
  nop                                                              #  74    0xb7fbe  1      OPC=nop             
  nop                                                              #  75    0xb7fbf  1      OPC=nop             
  nop                                                              #  76    0xb7fc0  1      OPC=nop             
  nop                                                              #  77    0xb7fc1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  78    0xb7fc2  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  79    0xb7fc7  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  80    0xb7fcb  2      OPC=movl_r32_r32    
  nop                                                              #  81    0xb7fcd  1      OPC=nop             
  nop                                                              #  82    0xb7fce  1      OPC=nop             
  nop                                                              #  83    0xb7fcf  1      OPC=nop             
  nop                                                              #  84    0xb7fd0  1      OPC=nop             
  nop                                                              #  85    0xb7fd1  1      OPC=nop             
  nop                                                              #  86    0xb7fd2  1      OPC=nop             
  nop                                                              #  87    0xb7fd3  1      OPC=nop             
  nop                                                              #  88    0xb7fd4  1      OPC=nop             
  nop                                                              #  89    0xb7fd5  1      OPC=nop             
  nop                                                              #  90    0xb7fd6  1      OPC=nop             
  nop                                                              #  91    0xb7fd7  1      OPC=nop             
  nop                                                              #  92    0xb7fd8  1      OPC=nop             
  nop                                                              #  93    0xb7fd9  1      OPC=nop             
  nop                                                              #  94    0xb7fda  1      OPC=nop             
  nop                                                              #  95    0xb7fdb  1      OPC=nop             
  nop                                                              #  96    0xb7fdc  1      OPC=nop             
  nop                                                              #  97    0xb7fdd  1      OPC=nop             
  nop                                                              #  98    0xb7fde  1      OPC=nop             
  nop                                                              #  99    0xb7fdf  1      OPC=nop             
  nop                                                              #  100   0xb7fe0  1      OPC=nop             
  nop                                                              #  101   0xb7fe1  1      OPC=nop             
  callq ._Unwind_Resume                                            #  102   0xb7fe2  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIwLb0EEC2EPSt18__moneypunct_cacheIwLb0EEj, .-_ZNSt10moneypunctIwLb0EEC2EPSt18__moneypunct_cacheIwLb0EEj

