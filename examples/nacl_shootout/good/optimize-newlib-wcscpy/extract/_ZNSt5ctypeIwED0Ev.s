  .text
  .globl _ZNSt5ctypeIwED0Ev
  .type _ZNSt5ctypeIwED0Ev, @function

#! file-offset 0x124cc0
#! rip-offset  0xe4cc0
#! capacity    160 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt5ctypeIwED0Ev:                                  #        0xe4cc0  0      OPC=<label>         
  pushq %rbx                                          #  1     0xe4cc0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0xe4cc1  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0xe4cc3  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0xe4cc6  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0xe4cc9  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0xe4ccc  2      OPC=movl_r32_r32    
  movl $0x1003d5c8, (%r15,%rbx,1)                     #  7     0xe4cce  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0xe4cd6  1      OPC=nop             
  nop                                                 #  9     0xe4cd7  1      OPC=nop             
  nop                                                 #  10    0xe4cd8  1      OPC=nop             
  nop                                                 #  11    0xe4cd9  1      OPC=nop             
  nop                                                 #  12    0xe4cda  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0xe4cdb  5      OPC=callq_label     
  movl %ebx, %edi                                     #  14    0xe4ce0  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                     #  15    0xe4ce2  2      OPC=movl_r32_r32    
  movl $0x1003c268, (%r15,%rbx,1)                     #  16    0xe4ce4  8      OPC=movl_m32_imm32  
  nop                                                 #  17    0xe4cec  1      OPC=nop             
  nop                                                 #  18    0xe4ced  1      OPC=nop             
  nop                                                 #  19    0xe4cee  1      OPC=nop             
  nop                                                 #  20    0xe4cef  1      OPC=nop             
  nop                                                 #  21    0xe4cf0  1      OPC=nop             
  nop                                                 #  22    0xe4cf1  1      OPC=nop             
  nop                                                 #  23    0xe4cf2  1      OPC=nop             
  nop                                                 #  24    0xe4cf3  1      OPC=nop             
  nop                                                 #  25    0xe4cf4  1      OPC=nop             
  nop                                                 #  26    0xe4cf5  1      OPC=nop             
  nop                                                 #  27    0xe4cf6  1      OPC=nop             
  nop                                                 #  28    0xe4cf7  1      OPC=nop             
  nop                                                 #  29    0xe4cf8  1      OPC=nop             
  nop                                                 #  30    0xe4cf9  1      OPC=nop             
  nop                                                 #  31    0xe4cfa  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  32    0xe4cfb  5      OPC=callq_label     
  movl %ebx, %edi                                     #  33    0xe4d00  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  34    0xe4d02  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  35    0xe4d05  3      OPC=addq_r64_r64    
  popq %rbx                                           #  36    0xe4d08  1      OPC=popq_r64_1      
  jmpq ._ZdlPv                                        #  37    0xe4d09  5      OPC=jmpq_label_1    
  nop                                                 #  38    0xe4d0e  1      OPC=nop             
  nop                                                 #  39    0xe4d0f  1      OPC=nop             
  nop                                                 #  40    0xe4d10  1      OPC=nop             
  nop                                                 #  41    0xe4d11  1      OPC=nop             
  nop                                                 #  42    0xe4d12  1      OPC=nop             
  nop                                                 #  43    0xe4d13  1      OPC=nop             
  nop                                                 #  44    0xe4d14  1      OPC=nop             
  nop                                                 #  45    0xe4d15  1      OPC=nop             
  nop                                                 #  46    0xe4d16  1      OPC=nop             
  nop                                                 #  47    0xe4d17  1      OPC=nop             
  nop                                                 #  48    0xe4d18  1      OPC=nop             
  nop                                                 #  49    0xe4d19  1      OPC=nop             
  nop                                                 #  50    0xe4d1a  1      OPC=nop             
  nop                                                 #  51    0xe4d1b  1      OPC=nop             
  nop                                                 #  52    0xe4d1c  1      OPC=nop             
  nop                                                 #  53    0xe4d1d  1      OPC=nop             
  nop                                                 #  54    0xe4d1e  1      OPC=nop             
  nop                                                 #  55    0xe4d1f  1      OPC=nop             
  movl %ebx, %edi                                     #  56    0xe4d20  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                     #  57    0xe4d22  2      OPC=movl_r32_r32    
  movl $0x1003c268, (%r15,%rbx,1)                     #  58    0xe4d24  8      OPC=movl_m32_imm32  
  movl %eax, 0x8(%rsp)                                #  59    0xe4d2c  4      OPC=movl_m32_r32    
  nop                                                 #  60    0xe4d30  1      OPC=nop             
  nop                                                 #  61    0xe4d31  1      OPC=nop             
  nop                                                 #  62    0xe4d32  1      OPC=nop             
  nop                                                 #  63    0xe4d33  1      OPC=nop             
  nop                                                 #  64    0xe4d34  1      OPC=nop             
  nop                                                 #  65    0xe4d35  1      OPC=nop             
  nop                                                 #  66    0xe4d36  1      OPC=nop             
  nop                                                 #  67    0xe4d37  1      OPC=nop             
  nop                                                 #  68    0xe4d38  1      OPC=nop             
  nop                                                 #  69    0xe4d39  1      OPC=nop             
  nop                                                 #  70    0xe4d3a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  71    0xe4d3b  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  72    0xe4d40  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  73    0xe4d44  2      OPC=movl_r32_r32    
  nop                                                 #  74    0xe4d46  1      OPC=nop             
  nop                                                 #  75    0xe4d47  1      OPC=nop             
  nop                                                 #  76    0xe4d48  1      OPC=nop             
  nop                                                 #  77    0xe4d49  1      OPC=nop             
  nop                                                 #  78    0xe4d4a  1      OPC=nop             
  nop                                                 #  79    0xe4d4b  1      OPC=nop             
  nop                                                 #  80    0xe4d4c  1      OPC=nop             
  nop                                                 #  81    0xe4d4d  1      OPC=nop             
  nop                                                 #  82    0xe4d4e  1      OPC=nop             
  nop                                                 #  83    0xe4d4f  1      OPC=nop             
  nop                                                 #  84    0xe4d50  1      OPC=nop             
  nop                                                 #  85    0xe4d51  1      OPC=nop             
  nop                                                 #  86    0xe4d52  1      OPC=nop             
  nop                                                 #  87    0xe4d53  1      OPC=nop             
  nop                                                 #  88    0xe4d54  1      OPC=nop             
  nop                                                 #  89    0xe4d55  1      OPC=nop             
  nop                                                 #  90    0xe4d56  1      OPC=nop             
  nop                                                 #  91    0xe4d57  1      OPC=nop             
  nop                                                 #  92    0xe4d58  1      OPC=nop             
  nop                                                 #  93    0xe4d59  1      OPC=nop             
  nop                                                 #  94    0xe4d5a  1      OPC=nop             
  callq ._Unwind_Resume                               #  95    0xe4d5b  5      OPC=callq_label     
                                                                                                   
.size _ZNSt5ctypeIwED0Ev, .-_ZNSt5ctypeIwED0Ev

