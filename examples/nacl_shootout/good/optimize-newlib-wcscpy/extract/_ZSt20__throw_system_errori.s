  .text
  .globl _ZSt20__throw_system_errori
  .type _ZSt20__throw_system_errori, @function

#! file-offset 0x126ae0
#! rip-offset  0xe6ae0
#! capacity    416 bytes

# Text                                   #  Line  RIP      Bytes  Opcode              
._ZSt20__throw_system_errori:            #        0xe6ae0  0      OPC=<label>         
  movq %rbx, -0x18(%rsp)                 #  1     0xe6ae0  5      OPC=movq_m64_r64    
  movq %r12, -0x10(%rsp)                 #  2     0xe6ae5  5      OPC=movq_m64_r64    
  movq %r13, -0x8(%rsp)                  #  3     0xe6aea  5      OPC=movq_m64_r64    
  subl $0x28, %esp                       #  4     0xe6aef  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                        #  5     0xe6af2  3      OPC=addq_r64_r64    
  movl %edi, %r13d                       #  6     0xe6af5  3      OPC=movl_r32_r32    
  nop                                    #  7     0xe6af8  1      OPC=nop             
  nop                                    #  8     0xe6af9  1      OPC=nop             
  nop                                    #  9     0xe6afa  1      OPC=nop             
  callq ._ZSt16generic_categoryv         #  10    0xe6afb  5      OPC=callq_label     
  movl $0x10, %edi                       #  11    0xe6b00  5      OPC=movl_r32_imm32  
  movl %eax, %ebx                        #  12    0xe6b05  2      OPC=movl_r32_r32    
  movl %r13d, %r13d                      #  13    0xe6b07  3      OPC=movl_r32_r32    
  xchgw %ax, %ax                         #  14    0xe6b0a  2      OPC=xchgw_ax_r16    
  nop                                    #  15    0xe6b0c  1      OPC=nop             
  nop                                    #  16    0xe6b0d  1      OPC=nop             
  nop                                    #  17    0xe6b0e  1      OPC=nop             
  nop                                    #  18    0xe6b0f  1      OPC=nop             
  nop                                    #  19    0xe6b10  1      OPC=nop             
  nop                                    #  20    0xe6b11  1      OPC=nop             
  nop                                    #  21    0xe6b12  1      OPC=nop             
  nop                                    #  22    0xe6b13  1      OPC=nop             
  nop                                    #  23    0xe6b14  1      OPC=nop             
  nop                                    #  24    0xe6b15  1      OPC=nop             
  nop                                    #  25    0xe6b16  1      OPC=nop             
  nop                                    #  26    0xe6b17  1      OPC=nop             
  nop                                    #  27    0xe6b18  1      OPC=nop             
  nop                                    #  28    0xe6b19  1      OPC=nop             
  nop                                    #  29    0xe6b1a  1      OPC=nop             
  callq .__cxa_allocate_exception        #  30    0xe6b1b  5      OPC=callq_label     
  leal 0xf(%rsp), %edx                   #  31    0xe6b20  4      OPC=leal_r32_m16    
  shlq $0x20, %rbx                       #  32    0xe6b24  4      OPC=shlq_r64_imm8   
  movl $0x1003e92c, %esi                 #  33    0xe6b28  5      OPC=movl_r32_imm32  
  movl %esp, %edi                        #  34    0xe6b2d  2      OPC=movl_r32_r32    
  orq %r13, %rbx                         #  35    0xe6b2f  3      OPC=orq_r64_r64     
  movl %eax, %r12d                       #  36    0xe6b32  3      OPC=movl_r32_r32    
  movl %esp, %r13d                       #  37    0xe6b35  3      OPC=movl_r32_r32    
  nop                                    #  38    0xe6b38  1      OPC=nop             
  nop                                    #  39    0xe6b39  1      OPC=nop             
  nop                                    #  40    0xe6b3a  1      OPC=nop             
  callq ._ZNSsC1EPKcRKSaIcE              #  41    0xe6b3b  5      OPC=callq_label     
  movl %esp, %esi                        #  42    0xe6b40  2      OPC=movl_r32_r32    
  movl %r12d, %edi                       #  43    0xe6b42  3      OPC=movl_r32_r32    
  nop                                    #  44    0xe6b45  1      OPC=nop             
  nop                                    #  45    0xe6b46  1      OPC=nop             
  nop                                    #  46    0xe6b47  1      OPC=nop             
  nop                                    #  47    0xe6b48  1      OPC=nop             
  nop                                    #  48    0xe6b49  1      OPC=nop             
  nop                                    #  49    0xe6b4a  1      OPC=nop             
  nop                                    #  50    0xe6b4b  1      OPC=nop             
  nop                                    #  51    0xe6b4c  1      OPC=nop             
  nop                                    #  52    0xe6b4d  1      OPC=nop             
  nop                                    #  53    0xe6b4e  1      OPC=nop             
  nop                                    #  54    0xe6b4f  1      OPC=nop             
  nop                                    #  55    0xe6b50  1      OPC=nop             
  nop                                    #  56    0xe6b51  1      OPC=nop             
  nop                                    #  57    0xe6b52  1      OPC=nop             
  nop                                    #  58    0xe6b53  1      OPC=nop             
  nop                                    #  59    0xe6b54  1      OPC=nop             
  nop                                    #  60    0xe6b55  1      OPC=nop             
  nop                                    #  61    0xe6b56  1      OPC=nop             
  nop                                    #  62    0xe6b57  1      OPC=nop             
  nop                                    #  63    0xe6b58  1      OPC=nop             
  nop                                    #  64    0xe6b59  1      OPC=nop             
  nop                                    #  65    0xe6b5a  1      OPC=nop             
  callq ._ZNSt13runtime_errorC2ERKSs     #  66    0xe6b5b  5      OPC=callq_label     
  movl (%rsp), %edi                      #  67    0xe6b60  3      OPC=movl_r32_m32    
  subl $0xc, %edi                        #  68    0xe6b63  3      OPC=subl_r32_imm8   
  cmpl $0x10073580, %edi                 #  69    0xe6b66  6      OPC=cmpl_r32_imm32  
  jne .L_e6bc0                           #  70    0xe6b6c  2      OPC=jne_label       
  nop                                    #  71    0xe6b6e  1      OPC=nop             
  nop                                    #  72    0xe6b6f  1      OPC=nop             
  nop                                    #  73    0xe6b70  1      OPC=nop             
  nop                                    #  74    0xe6b71  1      OPC=nop             
  nop                                    #  75    0xe6b72  1      OPC=nop             
  nop                                    #  76    0xe6b73  1      OPC=nop             
  nop                                    #  77    0xe6b74  1      OPC=nop             
  nop                                    #  78    0xe6b75  1      OPC=nop             
  nop                                    #  79    0xe6b76  1      OPC=nop             
  nop                                    #  80    0xe6b77  1      OPC=nop             
  nop                                    #  81    0xe6b78  1      OPC=nop             
  nop                                    #  82    0xe6b79  1      OPC=nop             
  nop                                    #  83    0xe6b7a  1      OPC=nop             
  nop                                    #  84    0xe6b7b  1      OPC=nop             
  nop                                    #  85    0xe6b7c  1      OPC=nop             
  nop                                    #  86    0xe6b7d  1      OPC=nop             
  nop                                    #  87    0xe6b7e  1      OPC=nop             
  nop                                    #  88    0xe6b7f  1      OPC=nop             
.L_e6b80:                                #        0xe6b80  0      OPC=<label>         
  movl %r12d, %r12d                      #  89    0xe6b80  3      OPC=movl_r32_r32    
  movl $0x1003dbd8, (%r15,%r12,1)        #  90    0xe6b83  8      OPC=movl_m32_imm32  
  movl %r12d, %r12d                      #  91    0xe6b8b  3      OPC=movl_r32_r32    
  movq %rbx, 0x8(%r15,%r12,1)            #  92    0xe6b8e  5      OPC=movq_m64_r64    
  movl $0xe9cc0, %edx                    #  93    0xe6b93  5      OPC=movl_r32_imm32  
  movl $0x1003dc04, %esi                 #  94    0xe6b98  5      OPC=movl_r32_imm32  
  movl %r12d, %edi                       #  95    0xe6b9d  3      OPC=movl_r32_r32    
  nop                                    #  96    0xe6ba0  1      OPC=nop             
  nop                                    #  97    0xe6ba1  1      OPC=nop             
  nop                                    #  98    0xe6ba2  1      OPC=nop             
  nop                                    #  99    0xe6ba3  1      OPC=nop             
  nop                                    #  100   0xe6ba4  1      OPC=nop             
  nop                                    #  101   0xe6ba5  1      OPC=nop             
  nop                                    #  102   0xe6ba6  1      OPC=nop             
  nop                                    #  103   0xe6ba7  1      OPC=nop             
  nop                                    #  104   0xe6ba8  1      OPC=nop             
  nop                                    #  105   0xe6ba9  1      OPC=nop             
  nop                                    #  106   0xe6baa  1      OPC=nop             
  nop                                    #  107   0xe6bab  1      OPC=nop             
  nop                                    #  108   0xe6bac  1      OPC=nop             
  nop                                    #  109   0xe6bad  1      OPC=nop             
  nop                                    #  110   0xe6bae  1      OPC=nop             
  nop                                    #  111   0xe6baf  1      OPC=nop             
  nop                                    #  112   0xe6bb0  1      OPC=nop             
  nop                                    #  113   0xe6bb1  1      OPC=nop             
  nop                                    #  114   0xe6bb2  1      OPC=nop             
  nop                                    #  115   0xe6bb3  1      OPC=nop             
  nop                                    #  116   0xe6bb4  1      OPC=nop             
  nop                                    #  117   0xe6bb5  1      OPC=nop             
  nop                                    #  118   0xe6bb6  1      OPC=nop             
  nop                                    #  119   0xe6bb7  1      OPC=nop             
  nop                                    #  120   0xe6bb8  1      OPC=nop             
  nop                                    #  121   0xe6bb9  1      OPC=nop             
  nop                                    #  122   0xe6bba  1      OPC=nop             
  callq .__cxa_throw                     #  123   0xe6bbb  5      OPC=callq_label     
.L_e6bc0:                                #        0xe6bc0  0      OPC=<label>         
  movl %edi, %edi                        #  124   0xe6bc0  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax            #  125   0xe6bc2  5      OPC=movl_r32_m32    
  leal -0x1(%rax), %edx                  #  126   0xe6bc7  3      OPC=leal_r32_m16    
  testl %eax, %eax                       #  127   0xe6bca  2      OPC=testl_r32_r32   
  movl %edi, %edi                        #  128   0xe6bcc  2      OPC=movl_r32_r32    
  movl %edx, 0x8(%r15,%rdi,1)            #  129   0xe6bce  5      OPC=movl_m32_r32    
  jg .L_e6b80                            #  130   0xe6bd3  2      OPC=jg_label        
  leal 0xe(%rsp), %esi                   #  131   0xe6bd5  4      OPC=leal_r32_m16    
  xchgw %ax, %ax                         #  132   0xe6bd9  2      OPC=xchgw_ax_r16    
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  133   0xe6bdb  5      OPC=callq_label     
  jmpq .L_e6b80                          #  134   0xe6be0  2      OPC=jmpq_label      
  nop                                    #  135   0xe6be2  1      OPC=nop             
  nop                                    #  136   0xe6be3  1      OPC=nop             
  nop                                    #  137   0xe6be4  1      OPC=nop             
  nop                                    #  138   0xe6be5  1      OPC=nop             
  nop                                    #  139   0xe6be6  1      OPC=nop             
  nop                                    #  140   0xe6be7  1      OPC=nop             
  nop                                    #  141   0xe6be8  1      OPC=nop             
  nop                                    #  142   0xe6be9  1      OPC=nop             
  nop                                    #  143   0xe6bea  1      OPC=nop             
  nop                                    #  144   0xe6beb  1      OPC=nop             
  nop                                    #  145   0xe6bec  1      OPC=nop             
  nop                                    #  146   0xe6bed  1      OPC=nop             
  nop                                    #  147   0xe6bee  1      OPC=nop             
  nop                                    #  148   0xe6bef  1      OPC=nop             
  nop                                    #  149   0xe6bf0  1      OPC=nop             
  nop                                    #  150   0xe6bf1  1      OPC=nop             
  nop                                    #  151   0xe6bf2  1      OPC=nop             
  nop                                    #  152   0xe6bf3  1      OPC=nop             
  nop                                    #  153   0xe6bf4  1      OPC=nop             
  nop                                    #  154   0xe6bf5  1      OPC=nop             
  nop                                    #  155   0xe6bf6  1      OPC=nop             
  nop                                    #  156   0xe6bf7  1      OPC=nop             
  nop                                    #  157   0xe6bf8  1      OPC=nop             
  nop                                    #  158   0xe6bf9  1      OPC=nop             
  nop                                    #  159   0xe6bfa  1      OPC=nop             
  nop                                    #  160   0xe6bfb  1      OPC=nop             
  nop                                    #  161   0xe6bfc  1      OPC=nop             
  nop                                    #  162   0xe6bfd  1      OPC=nop             
  nop                                    #  163   0xe6bfe  1      OPC=nop             
  nop                                    #  164   0xe6bff  1      OPC=nop             
  movl %r13d, %edi                       #  165   0xe6c00  3      OPC=movl_r32_r32    
  movl %eax, %ebx                        #  166   0xe6c03  2      OPC=movl_r32_r32    
  nop                                    #  167   0xe6c05  1      OPC=nop             
  nop                                    #  168   0xe6c06  1      OPC=nop             
  nop                                    #  169   0xe6c07  1      OPC=nop             
  nop                                    #  170   0xe6c08  1      OPC=nop             
  nop                                    #  171   0xe6c09  1      OPC=nop             
  nop                                    #  172   0xe6c0a  1      OPC=nop             
  nop                                    #  173   0xe6c0b  1      OPC=nop             
  nop                                    #  174   0xe6c0c  1      OPC=nop             
  nop                                    #  175   0xe6c0d  1      OPC=nop             
  nop                                    #  176   0xe6c0e  1      OPC=nop             
  nop                                    #  177   0xe6c0f  1      OPC=nop             
  nop                                    #  178   0xe6c10  1      OPC=nop             
  nop                                    #  179   0xe6c11  1      OPC=nop             
  nop                                    #  180   0xe6c12  1      OPC=nop             
  nop                                    #  181   0xe6c13  1      OPC=nop             
  nop                                    #  182   0xe6c14  1      OPC=nop             
  nop                                    #  183   0xe6c15  1      OPC=nop             
  nop                                    #  184   0xe6c16  1      OPC=nop             
  nop                                    #  185   0xe6c17  1      OPC=nop             
  nop                                    #  186   0xe6c18  1      OPC=nop             
  nop                                    #  187   0xe6c19  1      OPC=nop             
  nop                                    #  188   0xe6c1a  1      OPC=nop             
  callq ._ZNSsD1Ev                       #  189   0xe6c1b  5      OPC=callq_label     
.L_e6c20:                                #        0xe6c20  0      OPC=<label>         
  movl %r12d, %edi                       #  190   0xe6c20  3      OPC=movl_r32_r32    
  nop                                    #  191   0xe6c23  1      OPC=nop             
  nop                                    #  192   0xe6c24  1      OPC=nop             
  nop                                    #  193   0xe6c25  1      OPC=nop             
  nop                                    #  194   0xe6c26  1      OPC=nop             
  nop                                    #  195   0xe6c27  1      OPC=nop             
  nop                                    #  196   0xe6c28  1      OPC=nop             
  nop                                    #  197   0xe6c29  1      OPC=nop             
  nop                                    #  198   0xe6c2a  1      OPC=nop             
  nop                                    #  199   0xe6c2b  1      OPC=nop             
  nop                                    #  200   0xe6c2c  1      OPC=nop             
  nop                                    #  201   0xe6c2d  1      OPC=nop             
  nop                                    #  202   0xe6c2e  1      OPC=nop             
  nop                                    #  203   0xe6c2f  1      OPC=nop             
  nop                                    #  204   0xe6c30  1      OPC=nop             
  nop                                    #  205   0xe6c31  1      OPC=nop             
  nop                                    #  206   0xe6c32  1      OPC=nop             
  nop                                    #  207   0xe6c33  1      OPC=nop             
  nop                                    #  208   0xe6c34  1      OPC=nop             
  nop                                    #  209   0xe6c35  1      OPC=nop             
  nop                                    #  210   0xe6c36  1      OPC=nop             
  nop                                    #  211   0xe6c37  1      OPC=nop             
  nop                                    #  212   0xe6c38  1      OPC=nop             
  nop                                    #  213   0xe6c39  1      OPC=nop             
  nop                                    #  214   0xe6c3a  1      OPC=nop             
  callq .__cxa_free_exception            #  215   0xe6c3b  5      OPC=callq_label     
  movl %ebx, %edi                        #  216   0xe6c40  2      OPC=movl_r32_r32    
  nop                                    #  217   0xe6c42  1      OPC=nop             
  nop                                    #  218   0xe6c43  1      OPC=nop             
  nop                                    #  219   0xe6c44  1      OPC=nop             
  nop                                    #  220   0xe6c45  1      OPC=nop             
  nop                                    #  221   0xe6c46  1      OPC=nop             
  nop                                    #  222   0xe6c47  1      OPC=nop             
  nop                                    #  223   0xe6c48  1      OPC=nop             
  nop                                    #  224   0xe6c49  1      OPC=nop             
  nop                                    #  225   0xe6c4a  1      OPC=nop             
  nop                                    #  226   0xe6c4b  1      OPC=nop             
  nop                                    #  227   0xe6c4c  1      OPC=nop             
  nop                                    #  228   0xe6c4d  1      OPC=nop             
  nop                                    #  229   0xe6c4e  1      OPC=nop             
  nop                                    #  230   0xe6c4f  1      OPC=nop             
  nop                                    #  231   0xe6c50  1      OPC=nop             
  nop                                    #  232   0xe6c51  1      OPC=nop             
  nop                                    #  233   0xe6c52  1      OPC=nop             
  nop                                    #  234   0xe6c53  1      OPC=nop             
  nop                                    #  235   0xe6c54  1      OPC=nop             
  nop                                    #  236   0xe6c55  1      OPC=nop             
  nop                                    #  237   0xe6c56  1      OPC=nop             
  nop                                    #  238   0xe6c57  1      OPC=nop             
  nop                                    #  239   0xe6c58  1      OPC=nop             
  nop                                    #  240   0xe6c59  1      OPC=nop             
  nop                                    #  241   0xe6c5a  1      OPC=nop             
  callq ._Unwind_Resume                  #  242   0xe6c5b  5      OPC=callq_label     
  movl %eax, %ebx                        #  243   0xe6c60  2      OPC=movl_r32_r32    
  jmpq .L_e6c20                          #  244   0xe6c62  2      OPC=jmpq_label      
  nop                                    #  245   0xe6c64  1      OPC=nop             
  nop                                    #  246   0xe6c65  1      OPC=nop             
  nop                                    #  247   0xe6c66  1      OPC=nop             
  nop                                    #  248   0xe6c67  1      OPC=nop             
  nop                                    #  249   0xe6c68  1      OPC=nop             
  nop                                    #  250   0xe6c69  1      OPC=nop             
  nop                                    #  251   0xe6c6a  1      OPC=nop             
  nop                                    #  252   0xe6c6b  1      OPC=nop             
  nop                                    #  253   0xe6c6c  1      OPC=nop             
  nop                                    #  254   0xe6c6d  1      OPC=nop             
  nop                                    #  255   0xe6c6e  1      OPC=nop             
  nop                                    #  256   0xe6c6f  1      OPC=nop             
  nop                                    #  257   0xe6c70  1      OPC=nop             
  nop                                    #  258   0xe6c71  1      OPC=nop             
  nop                                    #  259   0xe6c72  1      OPC=nop             
  nop                                    #  260   0xe6c73  1      OPC=nop             
  nop                                    #  261   0xe6c74  1      OPC=nop             
  nop                                    #  262   0xe6c75  1      OPC=nop             
  nop                                    #  263   0xe6c76  1      OPC=nop             
  nop                                    #  264   0xe6c77  1      OPC=nop             
  nop                                    #  265   0xe6c78  1      OPC=nop             
  nop                                    #  266   0xe6c79  1      OPC=nop             
  nop                                    #  267   0xe6c7a  1      OPC=nop             
  nop                                    #  268   0xe6c7b  1      OPC=nop             
  nop                                    #  269   0xe6c7c  1      OPC=nop             
  nop                                    #  270   0xe6c7d  1      OPC=nop             
  nop                                    #  271   0xe6c7e  1      OPC=nop             
  nop                                    #  272   0xe6c7f  1      OPC=nop             
                                                                                      
.size _ZSt20__throw_system_errori, .-_ZSt20__throw_system_errori
