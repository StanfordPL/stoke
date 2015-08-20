  .text
  .globl _ZNSt8numpunctIwEC2Ej
  .type _ZNSt8numpunctIwEC2Ej, @function

#! file-offset 0xf6b60
#! rip-offset  0xb6b60
#! capacity    160 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt8numpunctIwEC2Ej:                                #        0xb6b60  0      OPC=<label>         
  pushq %rbx                                           #  1     0xb6b60  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                      #  2     0xb6b61  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                      #  3     0xb6b63  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                      #  4     0xb6b65  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                     #  5     0xb6b67  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                      #  6     0xb6b6a  3      OPC=addq_r64_r64    
  testl %esi, %esi                                     #  7     0xb6b6d  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                      #  8     0xb6b6f  2      OPC=movl_r32_r32    
  movl $0x1003c228, (%r15,%rbx,1)                      #  9     0xb6b71  8      OPC=movl_m32_imm32  
  setne %al                                            #  10    0xb6b79  3      OPC=setne_r8        
  nop                                                  #  11    0xb6b7c  1      OPC=nop             
  nop                                                  #  12    0xb6b7d  1      OPC=nop             
  nop                                                  #  13    0xb6b7e  1      OPC=nop             
  nop                                                  #  14    0xb6b7f  1      OPC=nop             
  movl %ebx, %ebx                                      #  15    0xb6b80  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                          #  16    0xb6b82  9      OPC=movl_m32_imm32  
  xorl %esi, %esi                                      #  17    0xb6b8b  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                      #  18    0xb6b8d  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                          #  19    0xb6b8f  5      OPC=movl_m32_r32    
  nop                                                  #  20    0xb6b94  1      OPC=nop             
  nop                                                  #  21    0xb6b95  1      OPC=nop             
  nop                                                  #  22    0xb6b96  1      OPC=nop             
  nop                                                  #  23    0xb6b97  1      OPC=nop             
  nop                                                  #  24    0xb6b98  1      OPC=nop             
  nop                                                  #  25    0xb6b99  1      OPC=nop             
  nop                                                  #  26    0xb6b9a  1      OPC=nop             
  callq ._ZNSt8numpunctIwE22_M_initialize_numpunctEPi  #  27    0xb6b9b  5      OPC=callq_label     
  addl $0x10, %esp                                     #  28    0xb6ba0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                      #  29    0xb6ba3  3      OPC=addq_r64_r64    
  popq %rbx                                            #  30    0xb6ba6  1      OPC=popq_r64_1      
  popq %r11                                            #  31    0xb6ba7  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                              #  32    0xb6ba9  7      OPC=andl_r32_imm32  
  nop                                                  #  33    0xb6bb0  1      OPC=nop             
  nop                                                  #  34    0xb6bb1  1      OPC=nop             
  nop                                                  #  35    0xb6bb2  1      OPC=nop             
  nop                                                  #  36    0xb6bb3  1      OPC=nop             
  addq %r15, %r11                                      #  37    0xb6bb4  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  38    0xb6bb7  3      OPC=jmpq_r64        
  nop                                                  #  39    0xb6bba  1      OPC=nop             
  nop                                                  #  40    0xb6bbb  1      OPC=nop             
  nop                                                  #  41    0xb6bbc  1      OPC=nop             
  nop                                                  #  42    0xb6bbd  1      OPC=nop             
  nop                                                  #  43    0xb6bbe  1      OPC=nop             
  nop                                                  #  44    0xb6bbf  1      OPC=nop             
  nop                                                  #  45    0xb6bc0  1      OPC=nop             
  nop                                                  #  46    0xb6bc1  1      OPC=nop             
  nop                                                  #  47    0xb6bc2  1      OPC=nop             
  nop                                                  #  48    0xb6bc3  1      OPC=nop             
  nop                                                  #  49    0xb6bc4  1      OPC=nop             
  nop                                                  #  50    0xb6bc5  1      OPC=nop             
  nop                                                  #  51    0xb6bc6  1      OPC=nop             
  movl %ebx, %edi                                      #  52    0xb6bc7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                 #  53    0xb6bc9  4      OPC=movl_m32_r32    
  nop                                                  #  54    0xb6bcd  1      OPC=nop             
  nop                                                  #  55    0xb6bce  1      OPC=nop             
  nop                                                  #  56    0xb6bcf  1      OPC=nop             
  nop                                                  #  57    0xb6bd0  1      OPC=nop             
  nop                                                  #  58    0xb6bd1  1      OPC=nop             
  nop                                                  #  59    0xb6bd2  1      OPC=nop             
  nop                                                  #  60    0xb6bd3  1      OPC=nop             
  nop                                                  #  61    0xb6bd4  1      OPC=nop             
  nop                                                  #  62    0xb6bd5  1      OPC=nop             
  nop                                                  #  63    0xb6bd6  1      OPC=nop             
  nop                                                  #  64    0xb6bd7  1      OPC=nop             
  nop                                                  #  65    0xb6bd8  1      OPC=nop             
  nop                                                  #  66    0xb6bd9  1      OPC=nop             
  nop                                                  #  67    0xb6bda  1      OPC=nop             
  nop                                                  #  68    0xb6bdb  1      OPC=nop             
  nop                                                  #  69    0xb6bdc  1      OPC=nop             
  nop                                                  #  70    0xb6bdd  1      OPC=nop             
  nop                                                  #  71    0xb6bde  1      OPC=nop             
  nop                                                  #  72    0xb6bdf  1      OPC=nop             
  nop                                                  #  73    0xb6be0  1      OPC=nop             
  nop                                                  #  74    0xb6be1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                        #  75    0xb6be2  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                 #  76    0xb6be7  4      OPC=movl_r32_m32    
  movl %eax, %edi                                      #  77    0xb6beb  2      OPC=movl_r32_r32    
  nop                                                  #  78    0xb6bed  1      OPC=nop             
  nop                                                  #  79    0xb6bee  1      OPC=nop             
  nop                                                  #  80    0xb6bef  1      OPC=nop             
  nop                                                  #  81    0xb6bf0  1      OPC=nop             
  nop                                                  #  82    0xb6bf1  1      OPC=nop             
  nop                                                  #  83    0xb6bf2  1      OPC=nop             
  nop                                                  #  84    0xb6bf3  1      OPC=nop             
  nop                                                  #  85    0xb6bf4  1      OPC=nop             
  nop                                                  #  86    0xb6bf5  1      OPC=nop             
  nop                                                  #  87    0xb6bf6  1      OPC=nop             
  nop                                                  #  88    0xb6bf7  1      OPC=nop             
  nop                                                  #  89    0xb6bf8  1      OPC=nop             
  nop                                                  #  90    0xb6bf9  1      OPC=nop             
  nop                                                  #  91    0xb6bfa  1      OPC=nop             
  nop                                                  #  92    0xb6bfb  1      OPC=nop             
  nop                                                  #  93    0xb6bfc  1      OPC=nop             
  nop                                                  #  94    0xb6bfd  1      OPC=nop             
  nop                                                  #  95    0xb6bfe  1      OPC=nop             
  nop                                                  #  96    0xb6bff  1      OPC=nop             
  nop                                                  #  97    0xb6c00  1      OPC=nop             
  nop                                                  #  98    0xb6c01  1      OPC=nop             
  callq ._Unwind_Resume                                #  99    0xb6c02  5      OPC=callq_label     
                                                                                                    
.size _ZNSt8numpunctIwEC2Ej, .-_ZNSt8numpunctIwEC2Ej

