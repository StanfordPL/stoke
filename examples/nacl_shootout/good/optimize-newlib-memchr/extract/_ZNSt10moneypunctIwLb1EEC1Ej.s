  .text
  .globl _ZNSt10moneypunctIwLb1EEC1Ej
  .type _ZNSt10moneypunctIwLb1EEC1Ej, @function

#! file-offset 0xf7ba0
#! rip-offset  0xb7ba0
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIwLb1EEC1Ej:                                     #        0xb7ba0  0      OPC=<label>         
  pushq %rbx                                                       #  1     0xb7ba0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0xb7ba1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0xb7ba3  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  4     0xb7ba5  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  5     0xb7ba7  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  6     0xb7baa  3      OPC=addq_r64_r64    
  testl %esi, %esi                                                 #  7     0xb7bad  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  8     0xb7baf  2      OPC=movl_r32_r32    
  movl $0x1003c108, (%r15,%rbx,1)                                  #  9     0xb7bb1  8      OPC=movl_m32_imm32  
  setne %al                                                        #  10    0xb7bb9  3      OPC=setne_r8        
  nop                                                              #  11    0xb7bbc  1      OPC=nop             
  nop                                                              #  12    0xb7bbd  1      OPC=nop             
  nop                                                              #  13    0xb7bbe  1      OPC=nop             
  nop                                                              #  14    0xb7bbf  1      OPC=nop             
  movl %ebx, %ebx                                                  #  15    0xb7bc0  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                                      #  16    0xb7bc2  9      OPC=movl_m32_imm32  
  xorl %edx, %edx                                                  #  17    0xb7bcb  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                                  #  18    0xb7bcd  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  19    0xb7bcf  5      OPC=movl_m32_r32    
  xorl %esi, %esi                                                  #  20    0xb7bd4  2      OPC=xorl_r32_r32    
  nop                                                              #  21    0xb7bd6  1      OPC=nop             
  nop                                                              #  22    0xb7bd7  1      OPC=nop             
  nop                                                              #  23    0xb7bd8  1      OPC=nop             
  nop                                                              #  24    0xb7bd9  1      OPC=nop             
  nop                                                              #  25    0xb7bda  1      OPC=nop             
  callq ._ZNSt10moneypunctIwLb1EE24_M_initialize_moneypunctEPiPKc  #  26    0xb7bdb  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  27    0xb7be0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  28    0xb7be3  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  29    0xb7be6  1      OPC=popq_r64_1      
  popq %r11                                                        #  30    0xb7be7  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  31    0xb7be9  7      OPC=andl_r32_imm32  
  nop                                                              #  32    0xb7bf0  1      OPC=nop             
  nop                                                              #  33    0xb7bf1  1      OPC=nop             
  nop                                                              #  34    0xb7bf2  1      OPC=nop             
  nop                                                              #  35    0xb7bf3  1      OPC=nop             
  addq %r15, %r11                                                  #  36    0xb7bf4  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  37    0xb7bf7  3      OPC=jmpq_r64        
  nop                                                              #  38    0xb7bfa  1      OPC=nop             
  nop                                                              #  39    0xb7bfb  1      OPC=nop             
  nop                                                              #  40    0xb7bfc  1      OPC=nop             
  nop                                                              #  41    0xb7bfd  1      OPC=nop             
  nop                                                              #  42    0xb7bfe  1      OPC=nop             
  nop                                                              #  43    0xb7bff  1      OPC=nop             
  nop                                                              #  44    0xb7c00  1      OPC=nop             
  nop                                                              #  45    0xb7c01  1      OPC=nop             
  nop                                                              #  46    0xb7c02  1      OPC=nop             
  nop                                                              #  47    0xb7c03  1      OPC=nop             
  nop                                                              #  48    0xb7c04  1      OPC=nop             
  nop                                                              #  49    0xb7c05  1      OPC=nop             
  nop                                                              #  50    0xb7c06  1      OPC=nop             
  movl %ebx, %edi                                                  #  51    0xb7c07  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  52    0xb7c09  4      OPC=movl_m32_r32    
  nop                                                              #  53    0xb7c0d  1      OPC=nop             
  nop                                                              #  54    0xb7c0e  1      OPC=nop             
  nop                                                              #  55    0xb7c0f  1      OPC=nop             
  nop                                                              #  56    0xb7c10  1      OPC=nop             
  nop                                                              #  57    0xb7c11  1      OPC=nop             
  nop                                                              #  58    0xb7c12  1      OPC=nop             
  nop                                                              #  59    0xb7c13  1      OPC=nop             
  nop                                                              #  60    0xb7c14  1      OPC=nop             
  nop                                                              #  61    0xb7c15  1      OPC=nop             
  nop                                                              #  62    0xb7c16  1      OPC=nop             
  nop                                                              #  63    0xb7c17  1      OPC=nop             
  nop                                                              #  64    0xb7c18  1      OPC=nop             
  nop                                                              #  65    0xb7c19  1      OPC=nop             
  nop                                                              #  66    0xb7c1a  1      OPC=nop             
  nop                                                              #  67    0xb7c1b  1      OPC=nop             
  nop                                                              #  68    0xb7c1c  1      OPC=nop             
  nop                                                              #  69    0xb7c1d  1      OPC=nop             
  nop                                                              #  70    0xb7c1e  1      OPC=nop             
  nop                                                              #  71    0xb7c1f  1      OPC=nop             
  nop                                                              #  72    0xb7c20  1      OPC=nop             
  nop                                                              #  73    0xb7c21  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  74    0xb7c22  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  75    0xb7c27  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  76    0xb7c2b  2      OPC=movl_r32_r32    
  nop                                                              #  77    0xb7c2d  1      OPC=nop             
  nop                                                              #  78    0xb7c2e  1      OPC=nop             
  nop                                                              #  79    0xb7c2f  1      OPC=nop             
  nop                                                              #  80    0xb7c30  1      OPC=nop             
  nop                                                              #  81    0xb7c31  1      OPC=nop             
  nop                                                              #  82    0xb7c32  1      OPC=nop             
  nop                                                              #  83    0xb7c33  1      OPC=nop             
  nop                                                              #  84    0xb7c34  1      OPC=nop             
  nop                                                              #  85    0xb7c35  1      OPC=nop             
  nop                                                              #  86    0xb7c36  1      OPC=nop             
  nop                                                              #  87    0xb7c37  1      OPC=nop             
  nop                                                              #  88    0xb7c38  1      OPC=nop             
  nop                                                              #  89    0xb7c39  1      OPC=nop             
  nop                                                              #  90    0xb7c3a  1      OPC=nop             
  nop                                                              #  91    0xb7c3b  1      OPC=nop             
  nop                                                              #  92    0xb7c3c  1      OPC=nop             
  nop                                                              #  93    0xb7c3d  1      OPC=nop             
  nop                                                              #  94    0xb7c3e  1      OPC=nop             
  nop                                                              #  95    0xb7c3f  1      OPC=nop             
  nop                                                              #  96    0xb7c40  1      OPC=nop             
  nop                                                              #  97    0xb7c41  1      OPC=nop             
  callq ._Unwind_Resume                                            #  98    0xb7c42  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIwLb1EEC1Ej, .-_ZNSt10moneypunctIwLb1EEC1Ej

