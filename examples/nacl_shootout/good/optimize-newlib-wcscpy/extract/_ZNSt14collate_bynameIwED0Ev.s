  .text
  .globl _ZNSt14collate_bynameIwED0Ev
  .type _ZNSt14collate_bynameIwED0Ev, @function

#! file-offset 0xf9340
#! rip-offset  0xb9340
#! capacity    160 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt14collate_bynameIwED0Ev:                        #        0xb9340  0      OPC=<label>         
  pushq %rbx                                          #  1     0xb9340  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0xb9341  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0xb9343  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0xb9346  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0xb9349  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0xb934c  2      OPC=movl_r32_r32    
  movl $0x1003c2c8, (%r15,%rbx,1)                     #  7     0xb934e  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0xb9356  1      OPC=nop             
  nop                                                 #  9     0xb9357  1      OPC=nop             
  nop                                                 #  10    0xb9358  1      OPC=nop             
  nop                                                 #  11    0xb9359  1      OPC=nop             
  nop                                                 #  12    0xb935a  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0xb935b  5      OPC=callq_label     
  movl %ebx, %edi                                     #  14    0xb9360  2      OPC=movl_r32_r32    
  nop                                                 #  15    0xb9362  1      OPC=nop             
  nop                                                 #  16    0xb9363  1      OPC=nop             
  nop                                                 #  17    0xb9364  1      OPC=nop             
  nop                                                 #  18    0xb9365  1      OPC=nop             
  nop                                                 #  19    0xb9366  1      OPC=nop             
  nop                                                 #  20    0xb9367  1      OPC=nop             
  nop                                                 #  21    0xb9368  1      OPC=nop             
  nop                                                 #  22    0xb9369  1      OPC=nop             
  nop                                                 #  23    0xb936a  1      OPC=nop             
  nop                                                 #  24    0xb936b  1      OPC=nop             
  nop                                                 #  25    0xb936c  1      OPC=nop             
  nop                                                 #  26    0xb936d  1      OPC=nop             
  nop                                                 #  27    0xb936e  1      OPC=nop             
  nop                                                 #  28    0xb936f  1      OPC=nop             
  nop                                                 #  29    0xb9370  1      OPC=nop             
  nop                                                 #  30    0xb9371  1      OPC=nop             
  nop                                                 #  31    0xb9372  1      OPC=nop             
  nop                                                 #  32    0xb9373  1      OPC=nop             
  nop                                                 #  33    0xb9374  1      OPC=nop             
  nop                                                 #  34    0xb9375  1      OPC=nop             
  nop                                                 #  35    0xb9376  1      OPC=nop             
  nop                                                 #  36    0xb9377  1      OPC=nop             
  nop                                                 #  37    0xb9378  1      OPC=nop             
  nop                                                 #  38    0xb9379  1      OPC=nop             
  nop                                                 #  39    0xb937a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  40    0xb937b  5      OPC=callq_label     
  movl %ebx, %edi                                     #  41    0xb9380  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  42    0xb9382  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  43    0xb9385  3      OPC=addq_r64_r64    
  popq %rbx                                           #  44    0xb9388  1      OPC=popq_r64_1      
  jmpq ._ZdlPv                                        #  45    0xb9389  5      OPC=jmpq_label_1    
  nop                                                 #  46    0xb938e  1      OPC=nop             
  nop                                                 #  47    0xb938f  1      OPC=nop             
  nop                                                 #  48    0xb9390  1      OPC=nop             
  nop                                                 #  49    0xb9391  1      OPC=nop             
  nop                                                 #  50    0xb9392  1      OPC=nop             
  nop                                                 #  51    0xb9393  1      OPC=nop             
  nop                                                 #  52    0xb9394  1      OPC=nop             
  nop                                                 #  53    0xb9395  1      OPC=nop             
  nop                                                 #  54    0xb9396  1      OPC=nop             
  nop                                                 #  55    0xb9397  1      OPC=nop             
  nop                                                 #  56    0xb9398  1      OPC=nop             
  nop                                                 #  57    0xb9399  1      OPC=nop             
  nop                                                 #  58    0xb939a  1      OPC=nop             
  nop                                                 #  59    0xb939b  1      OPC=nop             
  nop                                                 #  60    0xb939c  1      OPC=nop             
  nop                                                 #  61    0xb939d  1      OPC=nop             
  nop                                                 #  62    0xb939e  1      OPC=nop             
  nop                                                 #  63    0xb939f  1      OPC=nop             
  movl %ebx, %edi                                     #  64    0xb93a0  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                #  65    0xb93a2  4      OPC=movl_m32_r32    
  nop                                                 #  66    0xb93a6  1      OPC=nop             
  nop                                                 #  67    0xb93a7  1      OPC=nop             
  nop                                                 #  68    0xb93a8  1      OPC=nop             
  nop                                                 #  69    0xb93a9  1      OPC=nop             
  nop                                                 #  70    0xb93aa  1      OPC=nop             
  nop                                                 #  71    0xb93ab  1      OPC=nop             
  nop                                                 #  72    0xb93ac  1      OPC=nop             
  nop                                                 #  73    0xb93ad  1      OPC=nop             
  nop                                                 #  74    0xb93ae  1      OPC=nop             
  nop                                                 #  75    0xb93af  1      OPC=nop             
  nop                                                 #  76    0xb93b0  1      OPC=nop             
  nop                                                 #  77    0xb93b1  1      OPC=nop             
  nop                                                 #  78    0xb93b2  1      OPC=nop             
  nop                                                 #  79    0xb93b3  1      OPC=nop             
  nop                                                 #  80    0xb93b4  1      OPC=nop             
  nop                                                 #  81    0xb93b5  1      OPC=nop             
  nop                                                 #  82    0xb93b6  1      OPC=nop             
  nop                                                 #  83    0xb93b7  1      OPC=nop             
  nop                                                 #  84    0xb93b8  1      OPC=nop             
  nop                                                 #  85    0xb93b9  1      OPC=nop             
  nop                                                 #  86    0xb93ba  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  87    0xb93bb  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  88    0xb93c0  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  89    0xb93c4  2      OPC=movl_r32_r32    
  nop                                                 #  90    0xb93c6  1      OPC=nop             
  nop                                                 #  91    0xb93c7  1      OPC=nop             
  nop                                                 #  92    0xb93c8  1      OPC=nop             
  nop                                                 #  93    0xb93c9  1      OPC=nop             
  nop                                                 #  94    0xb93ca  1      OPC=nop             
  nop                                                 #  95    0xb93cb  1      OPC=nop             
  nop                                                 #  96    0xb93cc  1      OPC=nop             
  nop                                                 #  97    0xb93cd  1      OPC=nop             
  nop                                                 #  98    0xb93ce  1      OPC=nop             
  nop                                                 #  99    0xb93cf  1      OPC=nop             
  nop                                                 #  100   0xb93d0  1      OPC=nop             
  nop                                                 #  101   0xb93d1  1      OPC=nop             
  nop                                                 #  102   0xb93d2  1      OPC=nop             
  nop                                                 #  103   0xb93d3  1      OPC=nop             
  nop                                                 #  104   0xb93d4  1      OPC=nop             
  nop                                                 #  105   0xb93d5  1      OPC=nop             
  nop                                                 #  106   0xb93d6  1      OPC=nop             
  nop                                                 #  107   0xb93d7  1      OPC=nop             
  nop                                                 #  108   0xb93d8  1      OPC=nop             
  nop                                                 #  109   0xb93d9  1      OPC=nop             
  nop                                                 #  110   0xb93da  1      OPC=nop             
  callq ._Unwind_Resume                               #  111   0xb93db  5      OPC=callq_label     
                                                                                                   
.size _ZNSt14collate_bynameIwED0Ev, .-_ZNSt14collate_bynameIwED0Ev

