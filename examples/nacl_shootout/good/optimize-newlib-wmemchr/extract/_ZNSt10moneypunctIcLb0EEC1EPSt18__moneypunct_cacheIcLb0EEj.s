  .text
  .globl _ZNSt10moneypunctIcLb0EEC1EPSt18__moneypunct_cacheIcLb0EEj
  .type _ZNSt10moneypunctIcLb0EEC1EPSt18__moneypunct_cacheIcLb0EEj, @function

#! file-offset 0xbec60
#! rip-offset  0x7ec60
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIcLb0EEC1EPSt18__moneypunct_cacheIcLb0EEj:       #        0x7ec60  0      OPC=<label>         
  pushq %rbx                                                       #  1     0x7ec60  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0x7ec61  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0x7ec63  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  4     0x7ec65  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  5     0x7ec67  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  6     0x7ec6a  3      OPC=addq_r64_r64    
  testl %edx, %edx                                                 #  7     0x7ec6d  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  8     0x7ec6f  2      OPC=movl_r32_r32    
  movl %esi, 0x8(%r15,%rbx,1)                                      #  9     0x7ec71  5      OPC=movl_m32_r32    
  setne %al                                                        #  10    0x7ec76  3      OPC=setne_r8        
  nop                                                              #  11    0x7ec79  1      OPC=nop             
  nop                                                              #  12    0x7ec7a  1      OPC=nop             
  nop                                                              #  13    0x7ec7b  1      OPC=nop             
  nop                                                              #  14    0x7ec7c  1      OPC=nop             
  nop                                                              #  15    0x7ec7d  1      OPC=nop             
  nop                                                              #  16    0x7ec7e  1      OPC=nop             
  nop                                                              #  17    0x7ec7f  1      OPC=nop             
  movl %ebx, %ebx                                                  #  18    0x7ec80  2      OPC=movl_r32_r32    
  movl $0x1003ae48, (%r15,%rbx,1)                                  #  19    0x7ec82  8      OPC=movl_m32_imm32  
  xorl %edx, %edx                                                  #  20    0x7ec8a  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                                  #  21    0x7ec8c  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  22    0x7ec8e  5      OPC=movl_m32_r32    
  xorl %esi, %esi                                                  #  23    0x7ec93  2      OPC=xorl_r32_r32    
  nop                                                              #  24    0x7ec95  1      OPC=nop             
  nop                                                              #  25    0x7ec96  1      OPC=nop             
  nop                                                              #  26    0x7ec97  1      OPC=nop             
  nop                                                              #  27    0x7ec98  1      OPC=nop             
  nop                                                              #  28    0x7ec99  1      OPC=nop             
  nop                                                              #  29    0x7ec9a  1      OPC=nop             
  callq ._ZNSt10moneypunctIcLb0EE24_M_initialize_moneypunctEPiPKc  #  30    0x7ec9b  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  31    0x7eca0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  32    0x7eca3  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  33    0x7eca6  1      OPC=popq_r64_1      
  popq %r11                                                        #  34    0x7eca7  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  35    0x7eca9  7      OPC=andl_r32_imm32  
  nop                                                              #  36    0x7ecb0  1      OPC=nop             
  nop                                                              #  37    0x7ecb1  1      OPC=nop             
  nop                                                              #  38    0x7ecb2  1      OPC=nop             
  nop                                                              #  39    0x7ecb3  1      OPC=nop             
  addq %r15, %r11                                                  #  40    0x7ecb4  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  41    0x7ecb7  3      OPC=jmpq_r64        
  nop                                                              #  42    0x7ecba  1      OPC=nop             
  nop                                                              #  43    0x7ecbb  1      OPC=nop             
  nop                                                              #  44    0x7ecbc  1      OPC=nop             
  nop                                                              #  45    0x7ecbd  1      OPC=nop             
  nop                                                              #  46    0x7ecbe  1      OPC=nop             
  nop                                                              #  47    0x7ecbf  1      OPC=nop             
  nop                                                              #  48    0x7ecc0  1      OPC=nop             
  nop                                                              #  49    0x7ecc1  1      OPC=nop             
  nop                                                              #  50    0x7ecc2  1      OPC=nop             
  nop                                                              #  51    0x7ecc3  1      OPC=nop             
  nop                                                              #  52    0x7ecc4  1      OPC=nop             
  nop                                                              #  53    0x7ecc5  1      OPC=nop             
  nop                                                              #  54    0x7ecc6  1      OPC=nop             
  movl %ebx, %edi                                                  #  55    0x7ecc7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  56    0x7ecc9  4      OPC=movl_m32_r32    
  nop                                                              #  57    0x7eccd  1      OPC=nop             
  nop                                                              #  58    0x7ecce  1      OPC=nop             
  nop                                                              #  59    0x7eccf  1      OPC=nop             
  nop                                                              #  60    0x7ecd0  1      OPC=nop             
  nop                                                              #  61    0x7ecd1  1      OPC=nop             
  nop                                                              #  62    0x7ecd2  1      OPC=nop             
  nop                                                              #  63    0x7ecd3  1      OPC=nop             
  nop                                                              #  64    0x7ecd4  1      OPC=nop             
  nop                                                              #  65    0x7ecd5  1      OPC=nop             
  nop                                                              #  66    0x7ecd6  1      OPC=nop             
  nop                                                              #  67    0x7ecd7  1      OPC=nop             
  nop                                                              #  68    0x7ecd8  1      OPC=nop             
  nop                                                              #  69    0x7ecd9  1      OPC=nop             
  nop                                                              #  70    0x7ecda  1      OPC=nop             
  nop                                                              #  71    0x7ecdb  1      OPC=nop             
  nop                                                              #  72    0x7ecdc  1      OPC=nop             
  nop                                                              #  73    0x7ecdd  1      OPC=nop             
  nop                                                              #  74    0x7ecde  1      OPC=nop             
  nop                                                              #  75    0x7ecdf  1      OPC=nop             
  nop                                                              #  76    0x7ece0  1      OPC=nop             
  nop                                                              #  77    0x7ece1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  78    0x7ece2  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  79    0x7ece7  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  80    0x7eceb  2      OPC=movl_r32_r32    
  nop                                                              #  81    0x7eced  1      OPC=nop             
  nop                                                              #  82    0x7ecee  1      OPC=nop             
  nop                                                              #  83    0x7ecef  1      OPC=nop             
  nop                                                              #  84    0x7ecf0  1      OPC=nop             
  nop                                                              #  85    0x7ecf1  1      OPC=nop             
  nop                                                              #  86    0x7ecf2  1      OPC=nop             
  nop                                                              #  87    0x7ecf3  1      OPC=nop             
  nop                                                              #  88    0x7ecf4  1      OPC=nop             
  nop                                                              #  89    0x7ecf5  1      OPC=nop             
  nop                                                              #  90    0x7ecf6  1      OPC=nop             
  nop                                                              #  91    0x7ecf7  1      OPC=nop             
  nop                                                              #  92    0x7ecf8  1      OPC=nop             
  nop                                                              #  93    0x7ecf9  1      OPC=nop             
  nop                                                              #  94    0x7ecfa  1      OPC=nop             
  nop                                                              #  95    0x7ecfb  1      OPC=nop             
  nop                                                              #  96    0x7ecfc  1      OPC=nop             
  nop                                                              #  97    0x7ecfd  1      OPC=nop             
  nop                                                              #  98    0x7ecfe  1      OPC=nop             
  nop                                                              #  99    0x7ecff  1      OPC=nop             
  nop                                                              #  100   0x7ed00  1      OPC=nop             
  nop                                                              #  101   0x7ed01  1      OPC=nop             
  callq ._Unwind_Resume                                            #  102   0x7ed02  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIcLb0EEC1EPSt18__moneypunct_cacheIcLb0EEj, .-_ZNSt10moneypunctIcLb0EEC1EPSt18__moneypunct_cacheIcLb0EEj

