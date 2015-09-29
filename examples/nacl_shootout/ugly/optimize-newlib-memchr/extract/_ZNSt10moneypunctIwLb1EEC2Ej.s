  .text
  .globl _ZNSt10moneypunctIwLb1EEC2Ej
  .type _ZNSt10moneypunctIwLb1EEC2Ej, @function

#! file-offset 0xf7c40
#! rip-offset  0xb7c40
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIwLb1EEC2Ej:                                     #        0xb7c40  0      OPC=<label>         
  pushq %rbx                                                       #  1     0xb7c40  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0xb7c41  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0xb7c43  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  4     0xb7c45  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  5     0xb7c47  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  6     0xb7c4a  3      OPC=addq_r64_r64    
  testl %esi, %esi                                                 #  7     0xb7c4d  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  8     0xb7c4f  2      OPC=movl_r32_r32    
  movl $0x1003c108, (%r15,%rbx,1)                                  #  9     0xb7c51  8      OPC=movl_m32_imm32  
  setne %al                                                        #  10    0xb7c59  3      OPC=setne_r8        
  nop                                                              #  11    0xb7c5c  1      OPC=nop             
  nop                                                              #  12    0xb7c5d  1      OPC=nop             
  nop                                                              #  13    0xb7c5e  1      OPC=nop             
  nop                                                              #  14    0xb7c5f  1      OPC=nop             
  movl %ebx, %ebx                                                  #  15    0xb7c60  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                                      #  16    0xb7c62  9      OPC=movl_m32_imm32  
  xorl %edx, %edx                                                  #  17    0xb7c6b  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                                  #  18    0xb7c6d  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  19    0xb7c6f  5      OPC=movl_m32_r32    
  xorl %esi, %esi                                                  #  20    0xb7c74  2      OPC=xorl_r32_r32    
  nop                                                              #  21    0xb7c76  1      OPC=nop             
  nop                                                              #  22    0xb7c77  1      OPC=nop             
  nop                                                              #  23    0xb7c78  1      OPC=nop             
  nop                                                              #  24    0xb7c79  1      OPC=nop             
  nop                                                              #  25    0xb7c7a  1      OPC=nop             
  callq ._ZNSt10moneypunctIwLb1EE24_M_initialize_moneypunctEPiPKc  #  26    0xb7c7b  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  27    0xb7c80  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  28    0xb7c83  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  29    0xb7c86  1      OPC=popq_r64_1      
  popq %r11                                                        #  30    0xb7c87  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  31    0xb7c89  7      OPC=andl_r32_imm32  
  nop                                                              #  32    0xb7c90  1      OPC=nop             
  nop                                                              #  33    0xb7c91  1      OPC=nop             
  nop                                                              #  34    0xb7c92  1      OPC=nop             
  nop                                                              #  35    0xb7c93  1      OPC=nop             
  addq %r15, %r11                                                  #  36    0xb7c94  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  37    0xb7c97  3      OPC=jmpq_r64        
  nop                                                              #  38    0xb7c9a  1      OPC=nop             
  nop                                                              #  39    0xb7c9b  1      OPC=nop             
  nop                                                              #  40    0xb7c9c  1      OPC=nop             
  nop                                                              #  41    0xb7c9d  1      OPC=nop             
  nop                                                              #  42    0xb7c9e  1      OPC=nop             
  nop                                                              #  43    0xb7c9f  1      OPC=nop             
  nop                                                              #  44    0xb7ca0  1      OPC=nop             
  nop                                                              #  45    0xb7ca1  1      OPC=nop             
  nop                                                              #  46    0xb7ca2  1      OPC=nop             
  nop                                                              #  47    0xb7ca3  1      OPC=nop             
  nop                                                              #  48    0xb7ca4  1      OPC=nop             
  nop                                                              #  49    0xb7ca5  1      OPC=nop             
  nop                                                              #  50    0xb7ca6  1      OPC=nop             
  movl %ebx, %edi                                                  #  51    0xb7ca7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  52    0xb7ca9  4      OPC=movl_m32_r32    
  nop                                                              #  53    0xb7cad  1      OPC=nop             
  nop                                                              #  54    0xb7cae  1      OPC=nop             
  nop                                                              #  55    0xb7caf  1      OPC=nop             
  nop                                                              #  56    0xb7cb0  1      OPC=nop             
  nop                                                              #  57    0xb7cb1  1      OPC=nop             
  nop                                                              #  58    0xb7cb2  1      OPC=nop             
  nop                                                              #  59    0xb7cb3  1      OPC=nop             
  nop                                                              #  60    0xb7cb4  1      OPC=nop             
  nop                                                              #  61    0xb7cb5  1      OPC=nop             
  nop                                                              #  62    0xb7cb6  1      OPC=nop             
  nop                                                              #  63    0xb7cb7  1      OPC=nop             
  nop                                                              #  64    0xb7cb8  1      OPC=nop             
  nop                                                              #  65    0xb7cb9  1      OPC=nop             
  nop                                                              #  66    0xb7cba  1      OPC=nop             
  nop                                                              #  67    0xb7cbb  1      OPC=nop             
  nop                                                              #  68    0xb7cbc  1      OPC=nop             
  nop                                                              #  69    0xb7cbd  1      OPC=nop             
  nop                                                              #  70    0xb7cbe  1      OPC=nop             
  nop                                                              #  71    0xb7cbf  1      OPC=nop             
  nop                                                              #  72    0xb7cc0  1      OPC=nop             
  nop                                                              #  73    0xb7cc1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  74    0xb7cc2  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  75    0xb7cc7  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  76    0xb7ccb  2      OPC=movl_r32_r32    
  nop                                                              #  77    0xb7ccd  1      OPC=nop             
  nop                                                              #  78    0xb7cce  1      OPC=nop             
  nop                                                              #  79    0xb7ccf  1      OPC=nop             
  nop                                                              #  80    0xb7cd0  1      OPC=nop             
  nop                                                              #  81    0xb7cd1  1      OPC=nop             
  nop                                                              #  82    0xb7cd2  1      OPC=nop             
  nop                                                              #  83    0xb7cd3  1      OPC=nop             
  nop                                                              #  84    0xb7cd4  1      OPC=nop             
  nop                                                              #  85    0xb7cd5  1      OPC=nop             
  nop                                                              #  86    0xb7cd6  1      OPC=nop             
  nop                                                              #  87    0xb7cd7  1      OPC=nop             
  nop                                                              #  88    0xb7cd8  1      OPC=nop             
  nop                                                              #  89    0xb7cd9  1      OPC=nop             
  nop                                                              #  90    0xb7cda  1      OPC=nop             
  nop                                                              #  91    0xb7cdb  1      OPC=nop             
  nop                                                              #  92    0xb7cdc  1      OPC=nop             
  nop                                                              #  93    0xb7cdd  1      OPC=nop             
  nop                                                              #  94    0xb7cde  1      OPC=nop             
  nop                                                              #  95    0xb7cdf  1      OPC=nop             
  nop                                                              #  96    0xb7ce0  1      OPC=nop             
  nop                                                              #  97    0xb7ce1  1      OPC=nop             
  callq ._Unwind_Resume                                            #  98    0xb7ce2  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIwLb1EEC2Ej, .-_ZNSt10moneypunctIwLb1EEC2Ej

