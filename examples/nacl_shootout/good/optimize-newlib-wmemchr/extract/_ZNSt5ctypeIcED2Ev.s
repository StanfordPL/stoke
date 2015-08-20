  .text
  .globl _ZNSt5ctypeIcED2Ev
  .type _ZNSt5ctypeIcED2Ev, @function

#! file-offset 0x125b60
#! rip-offset  0xe5b60
#! capacity    160 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt5ctypeIcED2Ev:                                  #        0xe5b60  0      OPC=<label>         
  pushq %rbx                                          #  1     0xe5b60  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0xe5b61  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0xe5b63  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0xe5b66  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0xe5b69  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0xe5b6c  2      OPC=movl_r32_r32    
  movl $0x1003d608, (%r15,%rbx,1)                     #  7     0xe5b6e  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0xe5b76  1      OPC=nop             
  nop                                                 #  9     0xe5b77  1      OPC=nop             
  nop                                                 #  10    0xe5b78  1      OPC=nop             
  nop                                                 #  11    0xe5b79  1      OPC=nop             
  nop                                                 #  12    0xe5b7a  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0xe5b7b  5      OPC=callq_label     
  movl %ebx, %ebx                                     #  14    0xe5b80  2      OPC=movl_r32_r32    
  cmpb $0x0, 0xc(%r15,%rbx,1)                         #  15    0xe5b82  6      OPC=cmpb_m8_imm8    
  je .L_e5ba0                                         #  16    0xe5b88  2      OPC=je_label        
  movl %ebx, %ebx                                     #  17    0xe5b8a  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rbx,1), %edi                        #  18    0xe5b8c  5      OPC=movl_r32_m32    
  testq %rdi, %rdi                                    #  19    0xe5b91  3      OPC=testq_r64_r64   
  je .L_e5ba0                                         #  20    0xe5b94  2      OPC=je_label        
  nop                                                 #  21    0xe5b96  1      OPC=nop             
  nop                                                 #  22    0xe5b97  1      OPC=nop             
  nop                                                 #  23    0xe5b98  1      OPC=nop             
  nop                                                 #  24    0xe5b99  1      OPC=nop             
  nop                                                 #  25    0xe5b9a  1      OPC=nop             
  callq ._ZdaPv                                       #  26    0xe5b9b  5      OPC=callq_label     
.L_e5ba0:                                             #        0xe5ba0  0      OPC=<label>         
  movl %ebx, %edi                                     #  27    0xe5ba0  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  28    0xe5ba2  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  29    0xe5ba5  3      OPC=addq_r64_r64    
  popq %rbx                                           #  30    0xe5ba8  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev                        #  31    0xe5ba9  5      OPC=jmpq_label_1    
  nop                                                 #  32    0xe5bae  1      OPC=nop             
  nop                                                 #  33    0xe5baf  1      OPC=nop             
  nop                                                 #  34    0xe5bb0  1      OPC=nop             
  nop                                                 #  35    0xe5bb1  1      OPC=nop             
  nop                                                 #  36    0xe5bb2  1      OPC=nop             
  nop                                                 #  37    0xe5bb3  1      OPC=nop             
  nop                                                 #  38    0xe5bb4  1      OPC=nop             
  nop                                                 #  39    0xe5bb5  1      OPC=nop             
  nop                                                 #  40    0xe5bb6  1      OPC=nop             
  nop                                                 #  41    0xe5bb7  1      OPC=nop             
  nop                                                 #  42    0xe5bb8  1      OPC=nop             
  nop                                                 #  43    0xe5bb9  1      OPC=nop             
  nop                                                 #  44    0xe5bba  1      OPC=nop             
  nop                                                 #  45    0xe5bbb  1      OPC=nop             
  nop                                                 #  46    0xe5bbc  1      OPC=nop             
  nop                                                 #  47    0xe5bbd  1      OPC=nop             
  nop                                                 #  48    0xe5bbe  1      OPC=nop             
  nop                                                 #  49    0xe5bbf  1      OPC=nop             
  movl %ebx, %edi                                     #  50    0xe5bc0  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                #  51    0xe5bc2  4      OPC=movl_m32_r32    
  nop                                                 #  52    0xe5bc6  1      OPC=nop             
  nop                                                 #  53    0xe5bc7  1      OPC=nop             
  nop                                                 #  54    0xe5bc8  1      OPC=nop             
  nop                                                 #  55    0xe5bc9  1      OPC=nop             
  nop                                                 #  56    0xe5bca  1      OPC=nop             
  nop                                                 #  57    0xe5bcb  1      OPC=nop             
  nop                                                 #  58    0xe5bcc  1      OPC=nop             
  nop                                                 #  59    0xe5bcd  1      OPC=nop             
  nop                                                 #  60    0xe5bce  1      OPC=nop             
  nop                                                 #  61    0xe5bcf  1      OPC=nop             
  nop                                                 #  62    0xe5bd0  1      OPC=nop             
  nop                                                 #  63    0xe5bd1  1      OPC=nop             
  nop                                                 #  64    0xe5bd2  1      OPC=nop             
  nop                                                 #  65    0xe5bd3  1      OPC=nop             
  nop                                                 #  66    0xe5bd4  1      OPC=nop             
  nop                                                 #  67    0xe5bd5  1      OPC=nop             
  nop                                                 #  68    0xe5bd6  1      OPC=nop             
  nop                                                 #  69    0xe5bd7  1      OPC=nop             
  nop                                                 #  70    0xe5bd8  1      OPC=nop             
  nop                                                 #  71    0xe5bd9  1      OPC=nop             
  nop                                                 #  72    0xe5bda  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  73    0xe5bdb  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  74    0xe5be0  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  75    0xe5be4  2      OPC=movl_r32_r32    
  nop                                                 #  76    0xe5be6  1      OPC=nop             
  nop                                                 #  77    0xe5be7  1      OPC=nop             
  nop                                                 #  78    0xe5be8  1      OPC=nop             
  nop                                                 #  79    0xe5be9  1      OPC=nop             
  nop                                                 #  80    0xe5bea  1      OPC=nop             
  nop                                                 #  81    0xe5beb  1      OPC=nop             
  nop                                                 #  82    0xe5bec  1      OPC=nop             
  nop                                                 #  83    0xe5bed  1      OPC=nop             
  nop                                                 #  84    0xe5bee  1      OPC=nop             
  nop                                                 #  85    0xe5bef  1      OPC=nop             
  nop                                                 #  86    0xe5bf0  1      OPC=nop             
  nop                                                 #  87    0xe5bf1  1      OPC=nop             
  nop                                                 #  88    0xe5bf2  1      OPC=nop             
  nop                                                 #  89    0xe5bf3  1      OPC=nop             
  nop                                                 #  90    0xe5bf4  1      OPC=nop             
  nop                                                 #  91    0xe5bf5  1      OPC=nop             
  nop                                                 #  92    0xe5bf6  1      OPC=nop             
  nop                                                 #  93    0xe5bf7  1      OPC=nop             
  nop                                                 #  94    0xe5bf8  1      OPC=nop             
  nop                                                 #  95    0xe5bf9  1      OPC=nop             
  nop                                                 #  96    0xe5bfa  1      OPC=nop             
  callq ._Unwind_Resume                               #  97    0xe5bfb  5      OPC=callq_label     
                                                                                                   
.size _ZNSt5ctypeIcED2Ev, .-_ZNSt5ctypeIcED2Ev

