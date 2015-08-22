  .text
  .globl _ZNSt10moneypunctIcLb1EEC2Ej
  .type _ZNSt10moneypunctIcLb1EEC2Ej, @function

#! file-offset 0xbf120
#! rip-offset  0x7f120
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIcLb1EEC2Ej:                                     #        0x7f120  0      OPC=<label>         
  pushq %rbx                                                       #  1     0x7f120  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0x7f121  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0x7f123  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  4     0x7f125  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  5     0x7f127  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  6     0x7f12a  3      OPC=addq_r64_r64    
  testl %esi, %esi                                                 #  7     0x7f12d  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  8     0x7f12f  2      OPC=movl_r32_r32    
  movl $0x1003ae88, (%r15,%rbx,1)                                  #  9     0x7f131  8      OPC=movl_m32_imm32  
  setne %al                                                        #  10    0x7f139  3      OPC=setne_r8        
  nop                                                              #  11    0x7f13c  1      OPC=nop             
  nop                                                              #  12    0x7f13d  1      OPC=nop             
  nop                                                              #  13    0x7f13e  1      OPC=nop             
  nop                                                              #  14    0x7f13f  1      OPC=nop             
  movl %ebx, %ebx                                                  #  15    0x7f140  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                                      #  16    0x7f142  9      OPC=movl_m32_imm32  
  xorl %edx, %edx                                                  #  17    0x7f14b  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                                  #  18    0x7f14d  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  19    0x7f14f  5      OPC=movl_m32_r32    
  xorl %esi, %esi                                                  #  20    0x7f154  2      OPC=xorl_r32_r32    
  nop                                                              #  21    0x7f156  1      OPC=nop             
  nop                                                              #  22    0x7f157  1      OPC=nop             
  nop                                                              #  23    0x7f158  1      OPC=nop             
  nop                                                              #  24    0x7f159  1      OPC=nop             
  nop                                                              #  25    0x7f15a  1      OPC=nop             
  callq ._ZNSt10moneypunctIcLb1EE24_M_initialize_moneypunctEPiPKc  #  26    0x7f15b  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  27    0x7f160  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  28    0x7f163  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  29    0x7f166  1      OPC=popq_r64_1      
  popq %r11                                                        #  30    0x7f167  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  31    0x7f169  7      OPC=andl_r32_imm32  
  nop                                                              #  32    0x7f170  1      OPC=nop             
  nop                                                              #  33    0x7f171  1      OPC=nop             
  nop                                                              #  34    0x7f172  1      OPC=nop             
  nop                                                              #  35    0x7f173  1      OPC=nop             
  addq %r15, %r11                                                  #  36    0x7f174  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  37    0x7f177  3      OPC=jmpq_r64        
  nop                                                              #  38    0x7f17a  1      OPC=nop             
  nop                                                              #  39    0x7f17b  1      OPC=nop             
  nop                                                              #  40    0x7f17c  1      OPC=nop             
  nop                                                              #  41    0x7f17d  1      OPC=nop             
  nop                                                              #  42    0x7f17e  1      OPC=nop             
  nop                                                              #  43    0x7f17f  1      OPC=nop             
  nop                                                              #  44    0x7f180  1      OPC=nop             
  nop                                                              #  45    0x7f181  1      OPC=nop             
  nop                                                              #  46    0x7f182  1      OPC=nop             
  nop                                                              #  47    0x7f183  1      OPC=nop             
  nop                                                              #  48    0x7f184  1      OPC=nop             
  nop                                                              #  49    0x7f185  1      OPC=nop             
  nop                                                              #  50    0x7f186  1      OPC=nop             
  movl %ebx, %edi                                                  #  51    0x7f187  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  52    0x7f189  4      OPC=movl_m32_r32    
  nop                                                              #  53    0x7f18d  1      OPC=nop             
  nop                                                              #  54    0x7f18e  1      OPC=nop             
  nop                                                              #  55    0x7f18f  1      OPC=nop             
  nop                                                              #  56    0x7f190  1      OPC=nop             
  nop                                                              #  57    0x7f191  1      OPC=nop             
  nop                                                              #  58    0x7f192  1      OPC=nop             
  nop                                                              #  59    0x7f193  1      OPC=nop             
  nop                                                              #  60    0x7f194  1      OPC=nop             
  nop                                                              #  61    0x7f195  1      OPC=nop             
  nop                                                              #  62    0x7f196  1      OPC=nop             
  nop                                                              #  63    0x7f197  1      OPC=nop             
  nop                                                              #  64    0x7f198  1      OPC=nop             
  nop                                                              #  65    0x7f199  1      OPC=nop             
  nop                                                              #  66    0x7f19a  1      OPC=nop             
  nop                                                              #  67    0x7f19b  1      OPC=nop             
  nop                                                              #  68    0x7f19c  1      OPC=nop             
  nop                                                              #  69    0x7f19d  1      OPC=nop             
  nop                                                              #  70    0x7f19e  1      OPC=nop             
  nop                                                              #  71    0x7f19f  1      OPC=nop             
  nop                                                              #  72    0x7f1a0  1      OPC=nop             
  nop                                                              #  73    0x7f1a1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  74    0x7f1a2  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  75    0x7f1a7  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  76    0x7f1ab  2      OPC=movl_r32_r32    
  nop                                                              #  77    0x7f1ad  1      OPC=nop             
  nop                                                              #  78    0x7f1ae  1      OPC=nop             
  nop                                                              #  79    0x7f1af  1      OPC=nop             
  nop                                                              #  80    0x7f1b0  1      OPC=nop             
  nop                                                              #  81    0x7f1b1  1      OPC=nop             
  nop                                                              #  82    0x7f1b2  1      OPC=nop             
  nop                                                              #  83    0x7f1b3  1      OPC=nop             
  nop                                                              #  84    0x7f1b4  1      OPC=nop             
  nop                                                              #  85    0x7f1b5  1      OPC=nop             
  nop                                                              #  86    0x7f1b6  1      OPC=nop             
  nop                                                              #  87    0x7f1b7  1      OPC=nop             
  nop                                                              #  88    0x7f1b8  1      OPC=nop             
  nop                                                              #  89    0x7f1b9  1      OPC=nop             
  nop                                                              #  90    0x7f1ba  1      OPC=nop             
  nop                                                              #  91    0x7f1bb  1      OPC=nop             
  nop                                                              #  92    0x7f1bc  1      OPC=nop             
  nop                                                              #  93    0x7f1bd  1      OPC=nop             
  nop                                                              #  94    0x7f1be  1      OPC=nop             
  nop                                                              #  95    0x7f1bf  1      OPC=nop             
  nop                                                              #  96    0x7f1c0  1      OPC=nop             
  nop                                                              #  97    0x7f1c1  1      OPC=nop             
  callq ._Unwind_Resume                                            #  98    0x7f1c2  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIcLb1EEC2Ej, .-_ZNSt10moneypunctIcLb1EEC2Ej

