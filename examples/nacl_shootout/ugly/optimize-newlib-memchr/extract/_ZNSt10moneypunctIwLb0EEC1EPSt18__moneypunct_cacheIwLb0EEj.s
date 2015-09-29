  .text
  .globl _ZNSt10moneypunctIwLb0EEC1EPSt18__moneypunct_cacheIwLb0EEj
  .type _ZNSt10moneypunctIwLb0EEC1EPSt18__moneypunct_cacheIwLb0EEj, @function

#! file-offset 0xf7ea0
#! rip-offset  0xb7ea0
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIwLb0EEC1EPSt18__moneypunct_cacheIwLb0EEj:       #        0xb7ea0  0      OPC=<label>         
  pushq %rbx                                                       #  1     0xb7ea0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0xb7ea1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0xb7ea3  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  4     0xb7ea5  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  5     0xb7ea7  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  6     0xb7eaa  3      OPC=addq_r64_r64    
  testl %edx, %edx                                                 #  7     0xb7ead  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  8     0xb7eaf  2      OPC=movl_r32_r32    
  movl %esi, 0x8(%r15,%rbx,1)                                      #  9     0xb7eb1  5      OPC=movl_m32_r32    
  setne %al                                                        #  10    0xb7eb6  3      OPC=setne_r8        
  nop                                                              #  11    0xb7eb9  1      OPC=nop             
  nop                                                              #  12    0xb7eba  1      OPC=nop             
  nop                                                              #  13    0xb7ebb  1      OPC=nop             
  nop                                                              #  14    0xb7ebc  1      OPC=nop             
  nop                                                              #  15    0xb7ebd  1      OPC=nop             
  nop                                                              #  16    0xb7ebe  1      OPC=nop             
  nop                                                              #  17    0xb7ebf  1      OPC=nop             
  movl %ebx, %ebx                                                  #  18    0xb7ec0  2      OPC=movl_r32_r32    
  movl $0x1003c0c8, (%r15,%rbx,1)                                  #  19    0xb7ec2  8      OPC=movl_m32_imm32  
  xorl %edx, %edx                                                  #  20    0xb7eca  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                                  #  21    0xb7ecc  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  22    0xb7ece  5      OPC=movl_m32_r32    
  xorl %esi, %esi                                                  #  23    0xb7ed3  2      OPC=xorl_r32_r32    
  nop                                                              #  24    0xb7ed5  1      OPC=nop             
  nop                                                              #  25    0xb7ed6  1      OPC=nop             
  nop                                                              #  26    0xb7ed7  1      OPC=nop             
  nop                                                              #  27    0xb7ed8  1      OPC=nop             
  nop                                                              #  28    0xb7ed9  1      OPC=nop             
  nop                                                              #  29    0xb7eda  1      OPC=nop             
  callq ._ZNSt10moneypunctIwLb0EE24_M_initialize_moneypunctEPiPKc  #  30    0xb7edb  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  31    0xb7ee0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  32    0xb7ee3  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  33    0xb7ee6  1      OPC=popq_r64_1      
  popq %r11                                                        #  34    0xb7ee7  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  35    0xb7ee9  7      OPC=andl_r32_imm32  
  nop                                                              #  36    0xb7ef0  1      OPC=nop             
  nop                                                              #  37    0xb7ef1  1      OPC=nop             
  nop                                                              #  38    0xb7ef2  1      OPC=nop             
  nop                                                              #  39    0xb7ef3  1      OPC=nop             
  addq %r15, %r11                                                  #  40    0xb7ef4  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  41    0xb7ef7  3      OPC=jmpq_r64        
  nop                                                              #  42    0xb7efa  1      OPC=nop             
  nop                                                              #  43    0xb7efb  1      OPC=nop             
  nop                                                              #  44    0xb7efc  1      OPC=nop             
  nop                                                              #  45    0xb7efd  1      OPC=nop             
  nop                                                              #  46    0xb7efe  1      OPC=nop             
  nop                                                              #  47    0xb7eff  1      OPC=nop             
  nop                                                              #  48    0xb7f00  1      OPC=nop             
  nop                                                              #  49    0xb7f01  1      OPC=nop             
  nop                                                              #  50    0xb7f02  1      OPC=nop             
  nop                                                              #  51    0xb7f03  1      OPC=nop             
  nop                                                              #  52    0xb7f04  1      OPC=nop             
  nop                                                              #  53    0xb7f05  1      OPC=nop             
  nop                                                              #  54    0xb7f06  1      OPC=nop             
  movl %ebx, %edi                                                  #  55    0xb7f07  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  56    0xb7f09  4      OPC=movl_m32_r32    
  nop                                                              #  57    0xb7f0d  1      OPC=nop             
  nop                                                              #  58    0xb7f0e  1      OPC=nop             
  nop                                                              #  59    0xb7f0f  1      OPC=nop             
  nop                                                              #  60    0xb7f10  1      OPC=nop             
  nop                                                              #  61    0xb7f11  1      OPC=nop             
  nop                                                              #  62    0xb7f12  1      OPC=nop             
  nop                                                              #  63    0xb7f13  1      OPC=nop             
  nop                                                              #  64    0xb7f14  1      OPC=nop             
  nop                                                              #  65    0xb7f15  1      OPC=nop             
  nop                                                              #  66    0xb7f16  1      OPC=nop             
  nop                                                              #  67    0xb7f17  1      OPC=nop             
  nop                                                              #  68    0xb7f18  1      OPC=nop             
  nop                                                              #  69    0xb7f19  1      OPC=nop             
  nop                                                              #  70    0xb7f1a  1      OPC=nop             
  nop                                                              #  71    0xb7f1b  1      OPC=nop             
  nop                                                              #  72    0xb7f1c  1      OPC=nop             
  nop                                                              #  73    0xb7f1d  1      OPC=nop             
  nop                                                              #  74    0xb7f1e  1      OPC=nop             
  nop                                                              #  75    0xb7f1f  1      OPC=nop             
  nop                                                              #  76    0xb7f20  1      OPC=nop             
  nop                                                              #  77    0xb7f21  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  78    0xb7f22  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  79    0xb7f27  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  80    0xb7f2b  2      OPC=movl_r32_r32    
  nop                                                              #  81    0xb7f2d  1      OPC=nop             
  nop                                                              #  82    0xb7f2e  1      OPC=nop             
  nop                                                              #  83    0xb7f2f  1      OPC=nop             
  nop                                                              #  84    0xb7f30  1      OPC=nop             
  nop                                                              #  85    0xb7f31  1      OPC=nop             
  nop                                                              #  86    0xb7f32  1      OPC=nop             
  nop                                                              #  87    0xb7f33  1      OPC=nop             
  nop                                                              #  88    0xb7f34  1      OPC=nop             
  nop                                                              #  89    0xb7f35  1      OPC=nop             
  nop                                                              #  90    0xb7f36  1      OPC=nop             
  nop                                                              #  91    0xb7f37  1      OPC=nop             
  nop                                                              #  92    0xb7f38  1      OPC=nop             
  nop                                                              #  93    0xb7f39  1      OPC=nop             
  nop                                                              #  94    0xb7f3a  1      OPC=nop             
  nop                                                              #  95    0xb7f3b  1      OPC=nop             
  nop                                                              #  96    0xb7f3c  1      OPC=nop             
  nop                                                              #  97    0xb7f3d  1      OPC=nop             
  nop                                                              #  98    0xb7f3e  1      OPC=nop             
  nop                                                              #  99    0xb7f3f  1      OPC=nop             
  nop                                                              #  100   0xb7f40  1      OPC=nop             
  nop                                                              #  101   0xb7f41  1      OPC=nop             
  callq ._Unwind_Resume                                            #  102   0xb7f42  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIwLb0EEC1EPSt18__moneypunct_cacheIwLb0EEj, .-_ZNSt10moneypunctIwLb0EEC1EPSt18__moneypunct_cacheIwLb0EEj

