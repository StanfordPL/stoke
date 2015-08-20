  .text
  .globl _ZNSt7codecvtIcc10_mbstate_tED0Ev
  .type _ZNSt7codecvtIcc10_mbstate_tED0Ev, @function

#! file-offset 0x123ba0
#! rip-offset  0xe3ba0
#! capacity    160 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt7codecvtIcc10_mbstate_tED0Ev:                   #        0xe3ba0  0      OPC=<label>         
  pushq %rbx                                          #  1     0xe3ba0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0xe3ba1  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0xe3ba3  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0xe3ba6  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0xe3ba9  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0xe3bac  2      OPC=movl_r32_r32    
  movl $0x1003d4e8, (%r15,%rbx,1)                     #  7     0xe3bae  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0xe3bb6  1      OPC=nop             
  nop                                                 #  9     0xe3bb7  1      OPC=nop             
  nop                                                 #  10    0xe3bb8  1      OPC=nop             
  nop                                                 #  11    0xe3bb9  1      OPC=nop             
  nop                                                 #  12    0xe3bba  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0xe3bbb  5      OPC=callq_label     
  movl %ebx, %edi                                     #  14    0xe3bc0  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                     #  15    0xe3bc2  2      OPC=movl_r32_r32    
  movl $0x1003ade8, (%r15,%rbx,1)                     #  16    0xe3bc4  8      OPC=movl_m32_imm32  
  nop                                                 #  17    0xe3bcc  1      OPC=nop             
  nop                                                 #  18    0xe3bcd  1      OPC=nop             
  nop                                                 #  19    0xe3bce  1      OPC=nop             
  nop                                                 #  20    0xe3bcf  1      OPC=nop             
  nop                                                 #  21    0xe3bd0  1      OPC=nop             
  nop                                                 #  22    0xe3bd1  1      OPC=nop             
  nop                                                 #  23    0xe3bd2  1      OPC=nop             
  nop                                                 #  24    0xe3bd3  1      OPC=nop             
  nop                                                 #  25    0xe3bd4  1      OPC=nop             
  nop                                                 #  26    0xe3bd5  1      OPC=nop             
  nop                                                 #  27    0xe3bd6  1      OPC=nop             
  nop                                                 #  28    0xe3bd7  1      OPC=nop             
  nop                                                 #  29    0xe3bd8  1      OPC=nop             
  nop                                                 #  30    0xe3bd9  1      OPC=nop             
  nop                                                 #  31    0xe3bda  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  32    0xe3bdb  5      OPC=callq_label     
  movl %ebx, %edi                                     #  33    0xe3be0  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  34    0xe3be2  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  35    0xe3be5  3      OPC=addq_r64_r64    
  popq %rbx                                           #  36    0xe3be8  1      OPC=popq_r64_1      
  jmpq ._ZdlPv                                        #  37    0xe3be9  5      OPC=jmpq_label_1    
  nop                                                 #  38    0xe3bee  1      OPC=nop             
  nop                                                 #  39    0xe3bef  1      OPC=nop             
  nop                                                 #  40    0xe3bf0  1      OPC=nop             
  nop                                                 #  41    0xe3bf1  1      OPC=nop             
  nop                                                 #  42    0xe3bf2  1      OPC=nop             
  nop                                                 #  43    0xe3bf3  1      OPC=nop             
  nop                                                 #  44    0xe3bf4  1      OPC=nop             
  nop                                                 #  45    0xe3bf5  1      OPC=nop             
  nop                                                 #  46    0xe3bf6  1      OPC=nop             
  nop                                                 #  47    0xe3bf7  1      OPC=nop             
  nop                                                 #  48    0xe3bf8  1      OPC=nop             
  nop                                                 #  49    0xe3bf9  1      OPC=nop             
  nop                                                 #  50    0xe3bfa  1      OPC=nop             
  nop                                                 #  51    0xe3bfb  1      OPC=nop             
  nop                                                 #  52    0xe3bfc  1      OPC=nop             
  nop                                                 #  53    0xe3bfd  1      OPC=nop             
  nop                                                 #  54    0xe3bfe  1      OPC=nop             
  nop                                                 #  55    0xe3bff  1      OPC=nop             
  movl %ebx, %edi                                     #  56    0xe3c00  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                     #  57    0xe3c02  2      OPC=movl_r32_r32    
  movl $0x1003ade8, (%r15,%rbx,1)                     #  58    0xe3c04  8      OPC=movl_m32_imm32  
  movl %eax, 0x8(%rsp)                                #  59    0xe3c0c  4      OPC=movl_m32_r32    
  nop                                                 #  60    0xe3c10  1      OPC=nop             
  nop                                                 #  61    0xe3c11  1      OPC=nop             
  nop                                                 #  62    0xe3c12  1      OPC=nop             
  nop                                                 #  63    0xe3c13  1      OPC=nop             
  nop                                                 #  64    0xe3c14  1      OPC=nop             
  nop                                                 #  65    0xe3c15  1      OPC=nop             
  nop                                                 #  66    0xe3c16  1      OPC=nop             
  nop                                                 #  67    0xe3c17  1      OPC=nop             
  nop                                                 #  68    0xe3c18  1      OPC=nop             
  nop                                                 #  69    0xe3c19  1      OPC=nop             
  nop                                                 #  70    0xe3c1a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  71    0xe3c1b  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  72    0xe3c20  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  73    0xe3c24  2      OPC=movl_r32_r32    
  nop                                                 #  74    0xe3c26  1      OPC=nop             
  nop                                                 #  75    0xe3c27  1      OPC=nop             
  nop                                                 #  76    0xe3c28  1      OPC=nop             
  nop                                                 #  77    0xe3c29  1      OPC=nop             
  nop                                                 #  78    0xe3c2a  1      OPC=nop             
  nop                                                 #  79    0xe3c2b  1      OPC=nop             
  nop                                                 #  80    0xe3c2c  1      OPC=nop             
  nop                                                 #  81    0xe3c2d  1      OPC=nop             
  nop                                                 #  82    0xe3c2e  1      OPC=nop             
  nop                                                 #  83    0xe3c2f  1      OPC=nop             
  nop                                                 #  84    0xe3c30  1      OPC=nop             
  nop                                                 #  85    0xe3c31  1      OPC=nop             
  nop                                                 #  86    0xe3c32  1      OPC=nop             
  nop                                                 #  87    0xe3c33  1      OPC=nop             
  nop                                                 #  88    0xe3c34  1      OPC=nop             
  nop                                                 #  89    0xe3c35  1      OPC=nop             
  nop                                                 #  90    0xe3c36  1      OPC=nop             
  nop                                                 #  91    0xe3c37  1      OPC=nop             
  nop                                                 #  92    0xe3c38  1      OPC=nop             
  nop                                                 #  93    0xe3c39  1      OPC=nop             
  nop                                                 #  94    0xe3c3a  1      OPC=nop             
  callq ._Unwind_Resume                               #  95    0xe3c3b  5      OPC=callq_label     
                                                                                                   
.size _ZNSt7codecvtIcc10_mbstate_tED0Ev, .-_ZNSt7codecvtIcc10_mbstate_tED0Ev

