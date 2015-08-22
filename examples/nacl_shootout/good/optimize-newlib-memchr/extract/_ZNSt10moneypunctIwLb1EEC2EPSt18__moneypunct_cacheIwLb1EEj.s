  .text
  .globl _ZNSt10moneypunctIwLb1EEC2EPSt18__moneypunct_cacheIwLb1EEj
  .type _ZNSt10moneypunctIwLb1EEC2EPSt18__moneypunct_cacheIwLb1EEj, @function

#! file-offset 0xf7b00
#! rip-offset  0xb7b00
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIwLb1EEC2EPSt18__moneypunct_cacheIwLb1EEj:       #        0xb7b00  0      OPC=<label>         
  pushq %rbx                                                       #  1     0xb7b00  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0xb7b01  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0xb7b03  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  4     0xb7b05  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  5     0xb7b07  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  6     0xb7b0a  3      OPC=addq_r64_r64    
  testl %edx, %edx                                                 #  7     0xb7b0d  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  8     0xb7b0f  2      OPC=movl_r32_r32    
  movl %esi, 0x8(%r15,%rbx,1)                                      #  9     0xb7b11  5      OPC=movl_m32_r32    
  setne %al                                                        #  10    0xb7b16  3      OPC=setne_r8        
  nop                                                              #  11    0xb7b19  1      OPC=nop             
  nop                                                              #  12    0xb7b1a  1      OPC=nop             
  nop                                                              #  13    0xb7b1b  1      OPC=nop             
  nop                                                              #  14    0xb7b1c  1      OPC=nop             
  nop                                                              #  15    0xb7b1d  1      OPC=nop             
  nop                                                              #  16    0xb7b1e  1      OPC=nop             
  nop                                                              #  17    0xb7b1f  1      OPC=nop             
  movl %ebx, %ebx                                                  #  18    0xb7b20  2      OPC=movl_r32_r32    
  movl $0x1003c108, (%r15,%rbx,1)                                  #  19    0xb7b22  8      OPC=movl_m32_imm32  
  xorl %edx, %edx                                                  #  20    0xb7b2a  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                                  #  21    0xb7b2c  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  22    0xb7b2e  5      OPC=movl_m32_r32    
  xorl %esi, %esi                                                  #  23    0xb7b33  2      OPC=xorl_r32_r32    
  nop                                                              #  24    0xb7b35  1      OPC=nop             
  nop                                                              #  25    0xb7b36  1      OPC=nop             
  nop                                                              #  26    0xb7b37  1      OPC=nop             
  nop                                                              #  27    0xb7b38  1      OPC=nop             
  nop                                                              #  28    0xb7b39  1      OPC=nop             
  nop                                                              #  29    0xb7b3a  1      OPC=nop             
  callq ._ZNSt10moneypunctIwLb1EE24_M_initialize_moneypunctEPiPKc  #  30    0xb7b3b  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  31    0xb7b40  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  32    0xb7b43  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  33    0xb7b46  1      OPC=popq_r64_1      
  popq %r11                                                        #  34    0xb7b47  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  35    0xb7b49  7      OPC=andl_r32_imm32  
  nop                                                              #  36    0xb7b50  1      OPC=nop             
  nop                                                              #  37    0xb7b51  1      OPC=nop             
  nop                                                              #  38    0xb7b52  1      OPC=nop             
  nop                                                              #  39    0xb7b53  1      OPC=nop             
  addq %r15, %r11                                                  #  40    0xb7b54  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  41    0xb7b57  3      OPC=jmpq_r64        
  nop                                                              #  42    0xb7b5a  1      OPC=nop             
  nop                                                              #  43    0xb7b5b  1      OPC=nop             
  nop                                                              #  44    0xb7b5c  1      OPC=nop             
  nop                                                              #  45    0xb7b5d  1      OPC=nop             
  nop                                                              #  46    0xb7b5e  1      OPC=nop             
  nop                                                              #  47    0xb7b5f  1      OPC=nop             
  nop                                                              #  48    0xb7b60  1      OPC=nop             
  nop                                                              #  49    0xb7b61  1      OPC=nop             
  nop                                                              #  50    0xb7b62  1      OPC=nop             
  nop                                                              #  51    0xb7b63  1      OPC=nop             
  nop                                                              #  52    0xb7b64  1      OPC=nop             
  nop                                                              #  53    0xb7b65  1      OPC=nop             
  nop                                                              #  54    0xb7b66  1      OPC=nop             
  movl %ebx, %edi                                                  #  55    0xb7b67  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  56    0xb7b69  4      OPC=movl_m32_r32    
  nop                                                              #  57    0xb7b6d  1      OPC=nop             
  nop                                                              #  58    0xb7b6e  1      OPC=nop             
  nop                                                              #  59    0xb7b6f  1      OPC=nop             
  nop                                                              #  60    0xb7b70  1      OPC=nop             
  nop                                                              #  61    0xb7b71  1      OPC=nop             
  nop                                                              #  62    0xb7b72  1      OPC=nop             
  nop                                                              #  63    0xb7b73  1      OPC=nop             
  nop                                                              #  64    0xb7b74  1      OPC=nop             
  nop                                                              #  65    0xb7b75  1      OPC=nop             
  nop                                                              #  66    0xb7b76  1      OPC=nop             
  nop                                                              #  67    0xb7b77  1      OPC=nop             
  nop                                                              #  68    0xb7b78  1      OPC=nop             
  nop                                                              #  69    0xb7b79  1      OPC=nop             
  nop                                                              #  70    0xb7b7a  1      OPC=nop             
  nop                                                              #  71    0xb7b7b  1      OPC=nop             
  nop                                                              #  72    0xb7b7c  1      OPC=nop             
  nop                                                              #  73    0xb7b7d  1      OPC=nop             
  nop                                                              #  74    0xb7b7e  1      OPC=nop             
  nop                                                              #  75    0xb7b7f  1      OPC=nop             
  nop                                                              #  76    0xb7b80  1      OPC=nop             
  nop                                                              #  77    0xb7b81  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  78    0xb7b82  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  79    0xb7b87  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  80    0xb7b8b  2      OPC=movl_r32_r32    
  nop                                                              #  81    0xb7b8d  1      OPC=nop             
  nop                                                              #  82    0xb7b8e  1      OPC=nop             
  nop                                                              #  83    0xb7b8f  1      OPC=nop             
  nop                                                              #  84    0xb7b90  1      OPC=nop             
  nop                                                              #  85    0xb7b91  1      OPC=nop             
  nop                                                              #  86    0xb7b92  1      OPC=nop             
  nop                                                              #  87    0xb7b93  1      OPC=nop             
  nop                                                              #  88    0xb7b94  1      OPC=nop             
  nop                                                              #  89    0xb7b95  1      OPC=nop             
  nop                                                              #  90    0xb7b96  1      OPC=nop             
  nop                                                              #  91    0xb7b97  1      OPC=nop             
  nop                                                              #  92    0xb7b98  1      OPC=nop             
  nop                                                              #  93    0xb7b99  1      OPC=nop             
  nop                                                              #  94    0xb7b9a  1      OPC=nop             
  nop                                                              #  95    0xb7b9b  1      OPC=nop             
  nop                                                              #  96    0xb7b9c  1      OPC=nop             
  nop                                                              #  97    0xb7b9d  1      OPC=nop             
  nop                                                              #  98    0xb7b9e  1      OPC=nop             
  nop                                                              #  99    0xb7b9f  1      OPC=nop             
  nop                                                              #  100   0xb7ba0  1      OPC=nop             
  nop                                                              #  101   0xb7ba1  1      OPC=nop             
  callq ._Unwind_Resume                                            #  102   0xb7ba2  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIwLb1EEC2EPSt18__moneypunct_cacheIwLb1EEj, .-_ZNSt10moneypunctIwLb1EEC2EPSt18__moneypunct_cacheIwLb1EEj

