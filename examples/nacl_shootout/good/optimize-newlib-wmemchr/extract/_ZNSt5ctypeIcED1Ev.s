  .text
  .globl _ZNSt5ctypeIcED1Ev
  .type _ZNSt5ctypeIcED1Ev, @function

#! file-offset 0x125ac0
#! rip-offset  0xe5ac0
#! capacity    160 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt5ctypeIcED1Ev:                                  #        0xe5ac0  0      OPC=<label>         
  pushq %rbx                                          #  1     0xe5ac0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0xe5ac1  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0xe5ac3  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0xe5ac6  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0xe5ac9  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0xe5acc  2      OPC=movl_r32_r32    
  movl $0x1003d608, (%r15,%rbx,1)                     #  7     0xe5ace  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0xe5ad6  1      OPC=nop             
  nop                                                 #  9     0xe5ad7  1      OPC=nop             
  nop                                                 #  10    0xe5ad8  1      OPC=nop             
  nop                                                 #  11    0xe5ad9  1      OPC=nop             
  nop                                                 #  12    0xe5ada  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0xe5adb  5      OPC=callq_label     
  movl %ebx, %ebx                                     #  14    0xe5ae0  2      OPC=movl_r32_r32    
  cmpb $0x0, 0xc(%r15,%rbx,1)                         #  15    0xe5ae2  6      OPC=cmpb_m8_imm8    
  je .L_e5b00                                         #  16    0xe5ae8  2      OPC=je_label        
  movl %ebx, %ebx                                     #  17    0xe5aea  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rbx,1), %edi                        #  18    0xe5aec  5      OPC=movl_r32_m32    
  testq %rdi, %rdi                                    #  19    0xe5af1  3      OPC=testq_r64_r64   
  je .L_e5b00                                         #  20    0xe5af4  2      OPC=je_label        
  nop                                                 #  21    0xe5af6  1      OPC=nop             
  nop                                                 #  22    0xe5af7  1      OPC=nop             
  nop                                                 #  23    0xe5af8  1      OPC=nop             
  nop                                                 #  24    0xe5af9  1      OPC=nop             
  nop                                                 #  25    0xe5afa  1      OPC=nop             
  callq ._ZdaPv                                       #  26    0xe5afb  5      OPC=callq_label     
.L_e5b00:                                             #        0xe5b00  0      OPC=<label>         
  movl %ebx, %edi                                     #  27    0xe5b00  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  28    0xe5b02  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  29    0xe5b05  3      OPC=addq_r64_r64    
  popq %rbx                                           #  30    0xe5b08  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev                        #  31    0xe5b09  5      OPC=jmpq_label_1    
  nop                                                 #  32    0xe5b0e  1      OPC=nop             
  nop                                                 #  33    0xe5b0f  1      OPC=nop             
  nop                                                 #  34    0xe5b10  1      OPC=nop             
  nop                                                 #  35    0xe5b11  1      OPC=nop             
  nop                                                 #  36    0xe5b12  1      OPC=nop             
  nop                                                 #  37    0xe5b13  1      OPC=nop             
  nop                                                 #  38    0xe5b14  1      OPC=nop             
  nop                                                 #  39    0xe5b15  1      OPC=nop             
  nop                                                 #  40    0xe5b16  1      OPC=nop             
  nop                                                 #  41    0xe5b17  1      OPC=nop             
  nop                                                 #  42    0xe5b18  1      OPC=nop             
  nop                                                 #  43    0xe5b19  1      OPC=nop             
  nop                                                 #  44    0xe5b1a  1      OPC=nop             
  nop                                                 #  45    0xe5b1b  1      OPC=nop             
  nop                                                 #  46    0xe5b1c  1      OPC=nop             
  nop                                                 #  47    0xe5b1d  1      OPC=nop             
  nop                                                 #  48    0xe5b1e  1      OPC=nop             
  nop                                                 #  49    0xe5b1f  1      OPC=nop             
  movl %ebx, %edi                                     #  50    0xe5b20  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                #  51    0xe5b22  4      OPC=movl_m32_r32    
  nop                                                 #  52    0xe5b26  1      OPC=nop             
  nop                                                 #  53    0xe5b27  1      OPC=nop             
  nop                                                 #  54    0xe5b28  1      OPC=nop             
  nop                                                 #  55    0xe5b29  1      OPC=nop             
  nop                                                 #  56    0xe5b2a  1      OPC=nop             
  nop                                                 #  57    0xe5b2b  1      OPC=nop             
  nop                                                 #  58    0xe5b2c  1      OPC=nop             
  nop                                                 #  59    0xe5b2d  1      OPC=nop             
  nop                                                 #  60    0xe5b2e  1      OPC=nop             
  nop                                                 #  61    0xe5b2f  1      OPC=nop             
  nop                                                 #  62    0xe5b30  1      OPC=nop             
  nop                                                 #  63    0xe5b31  1      OPC=nop             
  nop                                                 #  64    0xe5b32  1      OPC=nop             
  nop                                                 #  65    0xe5b33  1      OPC=nop             
  nop                                                 #  66    0xe5b34  1      OPC=nop             
  nop                                                 #  67    0xe5b35  1      OPC=nop             
  nop                                                 #  68    0xe5b36  1      OPC=nop             
  nop                                                 #  69    0xe5b37  1      OPC=nop             
  nop                                                 #  70    0xe5b38  1      OPC=nop             
  nop                                                 #  71    0xe5b39  1      OPC=nop             
  nop                                                 #  72    0xe5b3a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  73    0xe5b3b  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  74    0xe5b40  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  75    0xe5b44  2      OPC=movl_r32_r32    
  nop                                                 #  76    0xe5b46  1      OPC=nop             
  nop                                                 #  77    0xe5b47  1      OPC=nop             
  nop                                                 #  78    0xe5b48  1      OPC=nop             
  nop                                                 #  79    0xe5b49  1      OPC=nop             
  nop                                                 #  80    0xe5b4a  1      OPC=nop             
  nop                                                 #  81    0xe5b4b  1      OPC=nop             
  nop                                                 #  82    0xe5b4c  1      OPC=nop             
  nop                                                 #  83    0xe5b4d  1      OPC=nop             
  nop                                                 #  84    0xe5b4e  1      OPC=nop             
  nop                                                 #  85    0xe5b4f  1      OPC=nop             
  nop                                                 #  86    0xe5b50  1      OPC=nop             
  nop                                                 #  87    0xe5b51  1      OPC=nop             
  nop                                                 #  88    0xe5b52  1      OPC=nop             
  nop                                                 #  89    0xe5b53  1      OPC=nop             
  nop                                                 #  90    0xe5b54  1      OPC=nop             
  nop                                                 #  91    0xe5b55  1      OPC=nop             
  nop                                                 #  92    0xe5b56  1      OPC=nop             
  nop                                                 #  93    0xe5b57  1      OPC=nop             
  nop                                                 #  94    0xe5b58  1      OPC=nop             
  nop                                                 #  95    0xe5b59  1      OPC=nop             
  nop                                                 #  96    0xe5b5a  1      OPC=nop             
  callq ._Unwind_Resume                               #  97    0xe5b5b  5      OPC=callq_label     
                                                                                                   
.size _ZNSt5ctypeIcED1Ev, .-_ZNSt5ctypeIcED1Ev

