  .text
  .globl _ZNSt8numpunctIwEC1Ej
  .type _ZNSt8numpunctIwEC1Ej, @function

#! file-offset 0xf6ac0
#! rip-offset  0xb6ac0
#! capacity    160 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt8numpunctIwEC1Ej:                                #        0xb6ac0  0      OPC=<label>         
  pushq %rbx                                           #  1     0xb6ac0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                      #  2     0xb6ac1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                      #  3     0xb6ac3  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                      #  4     0xb6ac5  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                     #  5     0xb6ac7  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                      #  6     0xb6aca  3      OPC=addq_r64_r64    
  testl %esi, %esi                                     #  7     0xb6acd  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                      #  8     0xb6acf  2      OPC=movl_r32_r32    
  movl $0x1003c228, (%r15,%rbx,1)                      #  9     0xb6ad1  8      OPC=movl_m32_imm32  
  setne %al                                            #  10    0xb6ad9  3      OPC=setne_r8        
  nop                                                  #  11    0xb6adc  1      OPC=nop             
  nop                                                  #  12    0xb6add  1      OPC=nop             
  nop                                                  #  13    0xb6ade  1      OPC=nop             
  nop                                                  #  14    0xb6adf  1      OPC=nop             
  movl %ebx, %ebx                                      #  15    0xb6ae0  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                          #  16    0xb6ae2  9      OPC=movl_m32_imm32  
  xorl %esi, %esi                                      #  17    0xb6aeb  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                      #  18    0xb6aed  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                          #  19    0xb6aef  5      OPC=movl_m32_r32    
  nop                                                  #  20    0xb6af4  1      OPC=nop             
  nop                                                  #  21    0xb6af5  1      OPC=nop             
  nop                                                  #  22    0xb6af6  1      OPC=nop             
  nop                                                  #  23    0xb6af7  1      OPC=nop             
  nop                                                  #  24    0xb6af8  1      OPC=nop             
  nop                                                  #  25    0xb6af9  1      OPC=nop             
  nop                                                  #  26    0xb6afa  1      OPC=nop             
  callq ._ZNSt8numpunctIwE22_M_initialize_numpunctEPi  #  27    0xb6afb  5      OPC=callq_label     
  addl $0x10, %esp                                     #  28    0xb6b00  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                      #  29    0xb6b03  3      OPC=addq_r64_r64    
  popq %rbx                                            #  30    0xb6b06  1      OPC=popq_r64_1      
  popq %r11                                            #  31    0xb6b07  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                              #  32    0xb6b09  7      OPC=andl_r32_imm32  
  nop                                                  #  33    0xb6b10  1      OPC=nop             
  nop                                                  #  34    0xb6b11  1      OPC=nop             
  nop                                                  #  35    0xb6b12  1      OPC=nop             
  nop                                                  #  36    0xb6b13  1      OPC=nop             
  addq %r15, %r11                                      #  37    0xb6b14  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  38    0xb6b17  3      OPC=jmpq_r64        
  nop                                                  #  39    0xb6b1a  1      OPC=nop             
  nop                                                  #  40    0xb6b1b  1      OPC=nop             
  nop                                                  #  41    0xb6b1c  1      OPC=nop             
  nop                                                  #  42    0xb6b1d  1      OPC=nop             
  nop                                                  #  43    0xb6b1e  1      OPC=nop             
  nop                                                  #  44    0xb6b1f  1      OPC=nop             
  nop                                                  #  45    0xb6b20  1      OPC=nop             
  nop                                                  #  46    0xb6b21  1      OPC=nop             
  nop                                                  #  47    0xb6b22  1      OPC=nop             
  nop                                                  #  48    0xb6b23  1      OPC=nop             
  nop                                                  #  49    0xb6b24  1      OPC=nop             
  nop                                                  #  50    0xb6b25  1      OPC=nop             
  nop                                                  #  51    0xb6b26  1      OPC=nop             
  movl %ebx, %edi                                      #  52    0xb6b27  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                 #  53    0xb6b29  4      OPC=movl_m32_r32    
  nop                                                  #  54    0xb6b2d  1      OPC=nop             
  nop                                                  #  55    0xb6b2e  1      OPC=nop             
  nop                                                  #  56    0xb6b2f  1      OPC=nop             
  nop                                                  #  57    0xb6b30  1      OPC=nop             
  nop                                                  #  58    0xb6b31  1      OPC=nop             
  nop                                                  #  59    0xb6b32  1      OPC=nop             
  nop                                                  #  60    0xb6b33  1      OPC=nop             
  nop                                                  #  61    0xb6b34  1      OPC=nop             
  nop                                                  #  62    0xb6b35  1      OPC=nop             
  nop                                                  #  63    0xb6b36  1      OPC=nop             
  nop                                                  #  64    0xb6b37  1      OPC=nop             
  nop                                                  #  65    0xb6b38  1      OPC=nop             
  nop                                                  #  66    0xb6b39  1      OPC=nop             
  nop                                                  #  67    0xb6b3a  1      OPC=nop             
  nop                                                  #  68    0xb6b3b  1      OPC=nop             
  nop                                                  #  69    0xb6b3c  1      OPC=nop             
  nop                                                  #  70    0xb6b3d  1      OPC=nop             
  nop                                                  #  71    0xb6b3e  1      OPC=nop             
  nop                                                  #  72    0xb6b3f  1      OPC=nop             
  nop                                                  #  73    0xb6b40  1      OPC=nop             
  nop                                                  #  74    0xb6b41  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                        #  75    0xb6b42  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                 #  76    0xb6b47  4      OPC=movl_r32_m32    
  movl %eax, %edi                                      #  77    0xb6b4b  2      OPC=movl_r32_r32    
  nop                                                  #  78    0xb6b4d  1      OPC=nop             
  nop                                                  #  79    0xb6b4e  1      OPC=nop             
  nop                                                  #  80    0xb6b4f  1      OPC=nop             
  nop                                                  #  81    0xb6b50  1      OPC=nop             
  nop                                                  #  82    0xb6b51  1      OPC=nop             
  nop                                                  #  83    0xb6b52  1      OPC=nop             
  nop                                                  #  84    0xb6b53  1      OPC=nop             
  nop                                                  #  85    0xb6b54  1      OPC=nop             
  nop                                                  #  86    0xb6b55  1      OPC=nop             
  nop                                                  #  87    0xb6b56  1      OPC=nop             
  nop                                                  #  88    0xb6b57  1      OPC=nop             
  nop                                                  #  89    0xb6b58  1      OPC=nop             
  nop                                                  #  90    0xb6b59  1      OPC=nop             
  nop                                                  #  91    0xb6b5a  1      OPC=nop             
  nop                                                  #  92    0xb6b5b  1      OPC=nop             
  nop                                                  #  93    0xb6b5c  1      OPC=nop             
  nop                                                  #  94    0xb6b5d  1      OPC=nop             
  nop                                                  #  95    0xb6b5e  1      OPC=nop             
  nop                                                  #  96    0xb6b5f  1      OPC=nop             
  nop                                                  #  97    0xb6b60  1      OPC=nop             
  nop                                                  #  98    0xb6b61  1      OPC=nop             
  callq ._Unwind_Resume                                #  99    0xb6b62  5      OPC=callq_label     
                                                                                                    
.size _ZNSt8numpunctIwEC1Ej, .-_ZNSt8numpunctIwEC1Ej

