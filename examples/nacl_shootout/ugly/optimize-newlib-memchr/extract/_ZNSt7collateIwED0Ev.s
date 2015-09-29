  .text
  .globl _ZNSt7collateIwED0Ev
  .type _ZNSt7collateIwED0Ev, @function

#! file-offset 0xf4d60
#! rip-offset  0xb4d60
#! capacity    160 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt7collateIwED0Ev:                                #        0xb4d60  0      OPC=<label>         
  pushq %rbx                                          #  1     0xb4d60  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0xb4d61  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0xb4d63  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0xb4d66  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0xb4d69  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0xb4d6c  2      OPC=movl_r32_r32    
  movl $0x1003c2c8, (%r15,%rbx,1)                     #  7     0xb4d6e  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0xb4d76  1      OPC=nop             
  nop                                                 #  9     0xb4d77  1      OPC=nop             
  nop                                                 #  10    0xb4d78  1      OPC=nop             
  nop                                                 #  11    0xb4d79  1      OPC=nop             
  nop                                                 #  12    0xb4d7a  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0xb4d7b  5      OPC=callq_label     
  movl %ebx, %edi                                     #  14    0xb4d80  2      OPC=movl_r32_r32    
  nop                                                 #  15    0xb4d82  1      OPC=nop             
  nop                                                 #  16    0xb4d83  1      OPC=nop             
  nop                                                 #  17    0xb4d84  1      OPC=nop             
  nop                                                 #  18    0xb4d85  1      OPC=nop             
  nop                                                 #  19    0xb4d86  1      OPC=nop             
  nop                                                 #  20    0xb4d87  1      OPC=nop             
  nop                                                 #  21    0xb4d88  1      OPC=nop             
  nop                                                 #  22    0xb4d89  1      OPC=nop             
  nop                                                 #  23    0xb4d8a  1      OPC=nop             
  nop                                                 #  24    0xb4d8b  1      OPC=nop             
  nop                                                 #  25    0xb4d8c  1      OPC=nop             
  nop                                                 #  26    0xb4d8d  1      OPC=nop             
  nop                                                 #  27    0xb4d8e  1      OPC=nop             
  nop                                                 #  28    0xb4d8f  1      OPC=nop             
  nop                                                 #  29    0xb4d90  1      OPC=nop             
  nop                                                 #  30    0xb4d91  1      OPC=nop             
  nop                                                 #  31    0xb4d92  1      OPC=nop             
  nop                                                 #  32    0xb4d93  1      OPC=nop             
  nop                                                 #  33    0xb4d94  1      OPC=nop             
  nop                                                 #  34    0xb4d95  1      OPC=nop             
  nop                                                 #  35    0xb4d96  1      OPC=nop             
  nop                                                 #  36    0xb4d97  1      OPC=nop             
  nop                                                 #  37    0xb4d98  1      OPC=nop             
  nop                                                 #  38    0xb4d99  1      OPC=nop             
  nop                                                 #  39    0xb4d9a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  40    0xb4d9b  5      OPC=callq_label     
  movl %ebx, %edi                                     #  41    0xb4da0  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  42    0xb4da2  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  43    0xb4da5  3      OPC=addq_r64_r64    
  popq %rbx                                           #  44    0xb4da8  1      OPC=popq_r64_1      
  jmpq ._ZdlPv                                        #  45    0xb4da9  5      OPC=jmpq_label_1    
  nop                                                 #  46    0xb4dae  1      OPC=nop             
  nop                                                 #  47    0xb4daf  1      OPC=nop             
  nop                                                 #  48    0xb4db0  1      OPC=nop             
  nop                                                 #  49    0xb4db1  1      OPC=nop             
  nop                                                 #  50    0xb4db2  1      OPC=nop             
  nop                                                 #  51    0xb4db3  1      OPC=nop             
  nop                                                 #  52    0xb4db4  1      OPC=nop             
  nop                                                 #  53    0xb4db5  1      OPC=nop             
  nop                                                 #  54    0xb4db6  1      OPC=nop             
  nop                                                 #  55    0xb4db7  1      OPC=nop             
  nop                                                 #  56    0xb4db8  1      OPC=nop             
  nop                                                 #  57    0xb4db9  1      OPC=nop             
  nop                                                 #  58    0xb4dba  1      OPC=nop             
  nop                                                 #  59    0xb4dbb  1      OPC=nop             
  nop                                                 #  60    0xb4dbc  1      OPC=nop             
  nop                                                 #  61    0xb4dbd  1      OPC=nop             
  nop                                                 #  62    0xb4dbe  1      OPC=nop             
  nop                                                 #  63    0xb4dbf  1      OPC=nop             
  movl %ebx, %edi                                     #  64    0xb4dc0  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                #  65    0xb4dc2  4      OPC=movl_m32_r32    
  nop                                                 #  66    0xb4dc6  1      OPC=nop             
  nop                                                 #  67    0xb4dc7  1      OPC=nop             
  nop                                                 #  68    0xb4dc8  1      OPC=nop             
  nop                                                 #  69    0xb4dc9  1      OPC=nop             
  nop                                                 #  70    0xb4dca  1      OPC=nop             
  nop                                                 #  71    0xb4dcb  1      OPC=nop             
  nop                                                 #  72    0xb4dcc  1      OPC=nop             
  nop                                                 #  73    0xb4dcd  1      OPC=nop             
  nop                                                 #  74    0xb4dce  1      OPC=nop             
  nop                                                 #  75    0xb4dcf  1      OPC=nop             
  nop                                                 #  76    0xb4dd0  1      OPC=nop             
  nop                                                 #  77    0xb4dd1  1      OPC=nop             
  nop                                                 #  78    0xb4dd2  1      OPC=nop             
  nop                                                 #  79    0xb4dd3  1      OPC=nop             
  nop                                                 #  80    0xb4dd4  1      OPC=nop             
  nop                                                 #  81    0xb4dd5  1      OPC=nop             
  nop                                                 #  82    0xb4dd6  1      OPC=nop             
  nop                                                 #  83    0xb4dd7  1      OPC=nop             
  nop                                                 #  84    0xb4dd8  1      OPC=nop             
  nop                                                 #  85    0xb4dd9  1      OPC=nop             
  nop                                                 #  86    0xb4dda  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  87    0xb4ddb  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  88    0xb4de0  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  89    0xb4de4  2      OPC=movl_r32_r32    
  nop                                                 #  90    0xb4de6  1      OPC=nop             
  nop                                                 #  91    0xb4de7  1      OPC=nop             
  nop                                                 #  92    0xb4de8  1      OPC=nop             
  nop                                                 #  93    0xb4de9  1      OPC=nop             
  nop                                                 #  94    0xb4dea  1      OPC=nop             
  nop                                                 #  95    0xb4deb  1      OPC=nop             
  nop                                                 #  96    0xb4dec  1      OPC=nop             
  nop                                                 #  97    0xb4ded  1      OPC=nop             
  nop                                                 #  98    0xb4dee  1      OPC=nop             
  nop                                                 #  99    0xb4def  1      OPC=nop             
  nop                                                 #  100   0xb4df0  1      OPC=nop             
  nop                                                 #  101   0xb4df1  1      OPC=nop             
  nop                                                 #  102   0xb4df2  1      OPC=nop             
  nop                                                 #  103   0xb4df3  1      OPC=nop             
  nop                                                 #  104   0xb4df4  1      OPC=nop             
  nop                                                 #  105   0xb4df5  1      OPC=nop             
  nop                                                 #  106   0xb4df6  1      OPC=nop             
  nop                                                 #  107   0xb4df7  1      OPC=nop             
  nop                                                 #  108   0xb4df8  1      OPC=nop             
  nop                                                 #  109   0xb4df9  1      OPC=nop             
  nop                                                 #  110   0xb4dfa  1      OPC=nop             
  callq ._Unwind_Resume                               #  111   0xb4dfb  5      OPC=callq_label     
                                                                                                   
.size _ZNSt7collateIwED0Ev, .-_ZNSt7collateIwED0Ev

