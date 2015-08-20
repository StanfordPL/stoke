  .text
  .globl _ZNSt10moneypunctIcLb0EEC2EPSt18__moneypunct_cacheIcLb0EEj
  .type _ZNSt10moneypunctIcLb0EEC2EPSt18__moneypunct_cacheIcLb0EEj, @function

#! file-offset 0xbed00
#! rip-offset  0x7ed00
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIcLb0EEC2EPSt18__moneypunct_cacheIcLb0EEj:       #        0x7ed00  0      OPC=<label>         
  pushq %rbx                                                       #  1     0x7ed00  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0x7ed01  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0x7ed03  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  4     0x7ed05  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  5     0x7ed07  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  6     0x7ed0a  3      OPC=addq_r64_r64    
  testl %edx, %edx                                                 #  7     0x7ed0d  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  8     0x7ed0f  2      OPC=movl_r32_r32    
  movl %esi, 0x8(%r15,%rbx,1)                                      #  9     0x7ed11  5      OPC=movl_m32_r32    
  setne %al                                                        #  10    0x7ed16  3      OPC=setne_r8        
  nop                                                              #  11    0x7ed19  1      OPC=nop             
  nop                                                              #  12    0x7ed1a  1      OPC=nop             
  nop                                                              #  13    0x7ed1b  1      OPC=nop             
  nop                                                              #  14    0x7ed1c  1      OPC=nop             
  nop                                                              #  15    0x7ed1d  1      OPC=nop             
  nop                                                              #  16    0x7ed1e  1      OPC=nop             
  nop                                                              #  17    0x7ed1f  1      OPC=nop             
  movl %ebx, %ebx                                                  #  18    0x7ed20  2      OPC=movl_r32_r32    
  movl $0x1003ae48, (%r15,%rbx,1)                                  #  19    0x7ed22  8      OPC=movl_m32_imm32  
  xorl %edx, %edx                                                  #  20    0x7ed2a  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                                  #  21    0x7ed2c  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  22    0x7ed2e  5      OPC=movl_m32_r32    
  xorl %esi, %esi                                                  #  23    0x7ed33  2      OPC=xorl_r32_r32    
  nop                                                              #  24    0x7ed35  1      OPC=nop             
  nop                                                              #  25    0x7ed36  1      OPC=nop             
  nop                                                              #  26    0x7ed37  1      OPC=nop             
  nop                                                              #  27    0x7ed38  1      OPC=nop             
  nop                                                              #  28    0x7ed39  1      OPC=nop             
  nop                                                              #  29    0x7ed3a  1      OPC=nop             
  callq ._ZNSt10moneypunctIcLb0EE24_M_initialize_moneypunctEPiPKc  #  30    0x7ed3b  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  31    0x7ed40  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  32    0x7ed43  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  33    0x7ed46  1      OPC=popq_r64_1      
  popq %r11                                                        #  34    0x7ed47  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  35    0x7ed49  7      OPC=andl_r32_imm32  
  nop                                                              #  36    0x7ed50  1      OPC=nop             
  nop                                                              #  37    0x7ed51  1      OPC=nop             
  nop                                                              #  38    0x7ed52  1      OPC=nop             
  nop                                                              #  39    0x7ed53  1      OPC=nop             
  addq %r15, %r11                                                  #  40    0x7ed54  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  41    0x7ed57  3      OPC=jmpq_r64        
  nop                                                              #  42    0x7ed5a  1      OPC=nop             
  nop                                                              #  43    0x7ed5b  1      OPC=nop             
  nop                                                              #  44    0x7ed5c  1      OPC=nop             
  nop                                                              #  45    0x7ed5d  1      OPC=nop             
  nop                                                              #  46    0x7ed5e  1      OPC=nop             
  nop                                                              #  47    0x7ed5f  1      OPC=nop             
  nop                                                              #  48    0x7ed60  1      OPC=nop             
  nop                                                              #  49    0x7ed61  1      OPC=nop             
  nop                                                              #  50    0x7ed62  1      OPC=nop             
  nop                                                              #  51    0x7ed63  1      OPC=nop             
  nop                                                              #  52    0x7ed64  1      OPC=nop             
  nop                                                              #  53    0x7ed65  1      OPC=nop             
  nop                                                              #  54    0x7ed66  1      OPC=nop             
  movl %ebx, %edi                                                  #  55    0x7ed67  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  56    0x7ed69  4      OPC=movl_m32_r32    
  nop                                                              #  57    0x7ed6d  1      OPC=nop             
  nop                                                              #  58    0x7ed6e  1      OPC=nop             
  nop                                                              #  59    0x7ed6f  1      OPC=nop             
  nop                                                              #  60    0x7ed70  1      OPC=nop             
  nop                                                              #  61    0x7ed71  1      OPC=nop             
  nop                                                              #  62    0x7ed72  1      OPC=nop             
  nop                                                              #  63    0x7ed73  1      OPC=nop             
  nop                                                              #  64    0x7ed74  1      OPC=nop             
  nop                                                              #  65    0x7ed75  1      OPC=nop             
  nop                                                              #  66    0x7ed76  1      OPC=nop             
  nop                                                              #  67    0x7ed77  1      OPC=nop             
  nop                                                              #  68    0x7ed78  1      OPC=nop             
  nop                                                              #  69    0x7ed79  1      OPC=nop             
  nop                                                              #  70    0x7ed7a  1      OPC=nop             
  nop                                                              #  71    0x7ed7b  1      OPC=nop             
  nop                                                              #  72    0x7ed7c  1      OPC=nop             
  nop                                                              #  73    0x7ed7d  1      OPC=nop             
  nop                                                              #  74    0x7ed7e  1      OPC=nop             
  nop                                                              #  75    0x7ed7f  1      OPC=nop             
  nop                                                              #  76    0x7ed80  1      OPC=nop             
  nop                                                              #  77    0x7ed81  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  78    0x7ed82  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  79    0x7ed87  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  80    0x7ed8b  2      OPC=movl_r32_r32    
  nop                                                              #  81    0x7ed8d  1      OPC=nop             
  nop                                                              #  82    0x7ed8e  1      OPC=nop             
  nop                                                              #  83    0x7ed8f  1      OPC=nop             
  nop                                                              #  84    0x7ed90  1      OPC=nop             
  nop                                                              #  85    0x7ed91  1      OPC=nop             
  nop                                                              #  86    0x7ed92  1      OPC=nop             
  nop                                                              #  87    0x7ed93  1      OPC=nop             
  nop                                                              #  88    0x7ed94  1      OPC=nop             
  nop                                                              #  89    0x7ed95  1      OPC=nop             
  nop                                                              #  90    0x7ed96  1      OPC=nop             
  nop                                                              #  91    0x7ed97  1      OPC=nop             
  nop                                                              #  92    0x7ed98  1      OPC=nop             
  nop                                                              #  93    0x7ed99  1      OPC=nop             
  nop                                                              #  94    0x7ed9a  1      OPC=nop             
  nop                                                              #  95    0x7ed9b  1      OPC=nop             
  nop                                                              #  96    0x7ed9c  1      OPC=nop             
  nop                                                              #  97    0x7ed9d  1      OPC=nop             
  nop                                                              #  98    0x7ed9e  1      OPC=nop             
  nop                                                              #  99    0x7ed9f  1      OPC=nop             
  nop                                                              #  100   0x7eda0  1      OPC=nop             
  nop                                                              #  101   0x7eda1  1      OPC=nop             
  callq ._Unwind_Resume                                            #  102   0x7eda2  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIcLb0EEC2EPSt18__moneypunct_cacheIcLb0EEj, .-_ZNSt10moneypunctIcLb0EEC2EPSt18__moneypunct_cacheIcLb0EEj

