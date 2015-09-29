  .text
  .globl _ZNSt14collate_bynameIwED0Ev
  .type _ZNSt14collate_bynameIwED0Ev, @function

#! file-offset 0xf9d60
#! rip-offset  0xb9d60
#! capacity    160 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt14collate_bynameIwED0Ev:                        #        0xb9d60  0      OPC=<label>         
  pushq %rbx                                          #  1     0xb9d60  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0xb9d61  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0xb9d63  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0xb9d66  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0xb9d69  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0xb9d6c  2      OPC=movl_r32_r32    
  movl $0x1003c2c8, (%r15,%rbx,1)                     #  7     0xb9d6e  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0xb9d76  1      OPC=nop             
  nop                                                 #  9     0xb9d77  1      OPC=nop             
  nop                                                 #  10    0xb9d78  1      OPC=nop             
  nop                                                 #  11    0xb9d79  1      OPC=nop             
  nop                                                 #  12    0xb9d7a  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0xb9d7b  5      OPC=callq_label     
  movl %ebx, %edi                                     #  14    0xb9d80  2      OPC=movl_r32_r32    
  nop                                                 #  15    0xb9d82  1      OPC=nop             
  nop                                                 #  16    0xb9d83  1      OPC=nop             
  nop                                                 #  17    0xb9d84  1      OPC=nop             
  nop                                                 #  18    0xb9d85  1      OPC=nop             
  nop                                                 #  19    0xb9d86  1      OPC=nop             
  nop                                                 #  20    0xb9d87  1      OPC=nop             
  nop                                                 #  21    0xb9d88  1      OPC=nop             
  nop                                                 #  22    0xb9d89  1      OPC=nop             
  nop                                                 #  23    0xb9d8a  1      OPC=nop             
  nop                                                 #  24    0xb9d8b  1      OPC=nop             
  nop                                                 #  25    0xb9d8c  1      OPC=nop             
  nop                                                 #  26    0xb9d8d  1      OPC=nop             
  nop                                                 #  27    0xb9d8e  1      OPC=nop             
  nop                                                 #  28    0xb9d8f  1      OPC=nop             
  nop                                                 #  29    0xb9d90  1      OPC=nop             
  nop                                                 #  30    0xb9d91  1      OPC=nop             
  nop                                                 #  31    0xb9d92  1      OPC=nop             
  nop                                                 #  32    0xb9d93  1      OPC=nop             
  nop                                                 #  33    0xb9d94  1      OPC=nop             
  nop                                                 #  34    0xb9d95  1      OPC=nop             
  nop                                                 #  35    0xb9d96  1      OPC=nop             
  nop                                                 #  36    0xb9d97  1      OPC=nop             
  nop                                                 #  37    0xb9d98  1      OPC=nop             
  nop                                                 #  38    0xb9d99  1      OPC=nop             
  nop                                                 #  39    0xb9d9a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  40    0xb9d9b  5      OPC=callq_label     
  movl %ebx, %edi                                     #  41    0xb9da0  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  42    0xb9da2  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  43    0xb9da5  3      OPC=addq_r64_r64    
  popq %rbx                                           #  44    0xb9da8  1      OPC=popq_r64_1      
  jmpq ._ZdlPv                                        #  45    0xb9da9  5      OPC=jmpq_label_1    
  nop                                                 #  46    0xb9dae  1      OPC=nop             
  nop                                                 #  47    0xb9daf  1      OPC=nop             
  nop                                                 #  48    0xb9db0  1      OPC=nop             
  nop                                                 #  49    0xb9db1  1      OPC=nop             
  nop                                                 #  50    0xb9db2  1      OPC=nop             
  nop                                                 #  51    0xb9db3  1      OPC=nop             
  nop                                                 #  52    0xb9db4  1      OPC=nop             
  nop                                                 #  53    0xb9db5  1      OPC=nop             
  nop                                                 #  54    0xb9db6  1      OPC=nop             
  nop                                                 #  55    0xb9db7  1      OPC=nop             
  nop                                                 #  56    0xb9db8  1      OPC=nop             
  nop                                                 #  57    0xb9db9  1      OPC=nop             
  nop                                                 #  58    0xb9dba  1      OPC=nop             
  nop                                                 #  59    0xb9dbb  1      OPC=nop             
  nop                                                 #  60    0xb9dbc  1      OPC=nop             
  nop                                                 #  61    0xb9dbd  1      OPC=nop             
  nop                                                 #  62    0xb9dbe  1      OPC=nop             
  nop                                                 #  63    0xb9dbf  1      OPC=nop             
  movl %ebx, %edi                                     #  64    0xb9dc0  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                #  65    0xb9dc2  4      OPC=movl_m32_r32    
  nop                                                 #  66    0xb9dc6  1      OPC=nop             
  nop                                                 #  67    0xb9dc7  1      OPC=nop             
  nop                                                 #  68    0xb9dc8  1      OPC=nop             
  nop                                                 #  69    0xb9dc9  1      OPC=nop             
  nop                                                 #  70    0xb9dca  1      OPC=nop             
  nop                                                 #  71    0xb9dcb  1      OPC=nop             
  nop                                                 #  72    0xb9dcc  1      OPC=nop             
  nop                                                 #  73    0xb9dcd  1      OPC=nop             
  nop                                                 #  74    0xb9dce  1      OPC=nop             
  nop                                                 #  75    0xb9dcf  1      OPC=nop             
  nop                                                 #  76    0xb9dd0  1      OPC=nop             
  nop                                                 #  77    0xb9dd1  1      OPC=nop             
  nop                                                 #  78    0xb9dd2  1      OPC=nop             
  nop                                                 #  79    0xb9dd3  1      OPC=nop             
  nop                                                 #  80    0xb9dd4  1      OPC=nop             
  nop                                                 #  81    0xb9dd5  1      OPC=nop             
  nop                                                 #  82    0xb9dd6  1      OPC=nop             
  nop                                                 #  83    0xb9dd7  1      OPC=nop             
  nop                                                 #  84    0xb9dd8  1      OPC=nop             
  nop                                                 #  85    0xb9dd9  1      OPC=nop             
  nop                                                 #  86    0xb9dda  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  87    0xb9ddb  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  88    0xb9de0  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  89    0xb9de4  2      OPC=movl_r32_r32    
  nop                                                 #  90    0xb9de6  1      OPC=nop             
  nop                                                 #  91    0xb9de7  1      OPC=nop             
  nop                                                 #  92    0xb9de8  1      OPC=nop             
  nop                                                 #  93    0xb9de9  1      OPC=nop             
  nop                                                 #  94    0xb9dea  1      OPC=nop             
  nop                                                 #  95    0xb9deb  1      OPC=nop             
  nop                                                 #  96    0xb9dec  1      OPC=nop             
  nop                                                 #  97    0xb9ded  1      OPC=nop             
  nop                                                 #  98    0xb9dee  1      OPC=nop             
  nop                                                 #  99    0xb9def  1      OPC=nop             
  nop                                                 #  100   0xb9df0  1      OPC=nop             
  nop                                                 #  101   0xb9df1  1      OPC=nop             
  nop                                                 #  102   0xb9df2  1      OPC=nop             
  nop                                                 #  103   0xb9df3  1      OPC=nop             
  nop                                                 #  104   0xb9df4  1      OPC=nop             
  nop                                                 #  105   0xb9df5  1      OPC=nop             
  nop                                                 #  106   0xb9df6  1      OPC=nop             
  nop                                                 #  107   0xb9df7  1      OPC=nop             
  nop                                                 #  108   0xb9df8  1      OPC=nop             
  nop                                                 #  109   0xb9df9  1      OPC=nop             
  nop                                                 #  110   0xb9dfa  1      OPC=nop             
  callq ._Unwind_Resume                               #  111   0xb9dfb  5      OPC=callq_label     
                                                                                                   
.size _ZNSt14collate_bynameIwED0Ev, .-_ZNSt14collate_bynameIwED0Ev

