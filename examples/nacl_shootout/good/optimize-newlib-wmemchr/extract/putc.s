  .text
  .globl putc
  .type putc, @function

#! file-offset 0x163920
#! rip-offset  0x123920
#! capacity    672 bytes

# Text                                   #  Line  RIP       Bytes  Opcode              
.putc:                                   #        0x123920  0      OPC=<label>         
  movq %rbx, -0x18(%rsp)                 #  1     0x123920  5      OPC=movq_m64_r64    
  movq %r12, -0x10(%rsp)                 #  2     0x123925  5      OPC=movq_m64_r64    
  movl %esi, %ebx                        #  3     0x12392a  2      OPC=movl_r32_r32    
  movq %r13, -0x8(%rsp)                  #  4     0x12392c  5      OPC=movq_m64_r64    
  subl $0x28, %esp                       #  5     0x123931  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                        #  6     0x123934  3      OPC=addq_r64_r64    
  movl %edi, %r12d                       #  7     0x123937  3      OPC=movl_r32_r32    
  nop                                    #  8     0x12393a  1      OPC=nop             
  callq .__nacl_read_tp                  #  9     0x12393b  5      OPC=callq_label     
  leaq -0x480(%rax), %rax                #  10    0x123940  7      OPC=leaq_r64_m16    
  movl %eax, %eax                        #  11    0x123947  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %r13d              #  12    0x123949  4      OPC=movl_r32_m32    
  testq %r13, %r13                       #  13    0x12394d  3      OPC=testq_r64_r64   
  je .L_123980                           #  14    0x123950  2      OPC=je_label        
  movl %r13d, %r13d                      #  15    0x123952  3      OPC=movl_r32_r32    
  movl 0x38(%r15,%r13,1), %eax           #  16    0x123955  5      OPC=movl_r32_m32    
  testl %eax, %eax                       #  17    0x12395a  2      OPC=testl_r32_r32   
  nop                                    #  18    0x12395c  1      OPC=nop             
  nop                                    #  19    0x12395d  1      OPC=nop             
  nop                                    #  20    0x12395e  1      OPC=nop             
  nop                                    #  21    0x12395f  1      OPC=nop             
  je .L_123b00                           #  22    0x123960  6      OPC=je_label_1      
  nop                                    #  23    0x123966  1      OPC=nop             
  nop                                    #  24    0x123967  1      OPC=nop             
  nop                                    #  25    0x123968  1      OPC=nop             
  nop                                    #  26    0x123969  1      OPC=nop             
  nop                                    #  27    0x12396a  1      OPC=nop             
  nop                                    #  28    0x12396b  1      OPC=nop             
  nop                                    #  29    0x12396c  1      OPC=nop             
  nop                                    #  30    0x12396d  1      OPC=nop             
  nop                                    #  31    0x12396e  1      OPC=nop             
  nop                                    #  32    0x12396f  1      OPC=nop             
  nop                                    #  33    0x123970  1      OPC=nop             
  nop                                    #  34    0x123971  1      OPC=nop             
  nop                                    #  35    0x123972  1      OPC=nop             
  nop                                    #  36    0x123973  1      OPC=nop             
  nop                                    #  37    0x123974  1      OPC=nop             
  nop                                    #  38    0x123975  1      OPC=nop             
  nop                                    #  39    0x123976  1      OPC=nop             
  nop                                    #  40    0x123977  1      OPC=nop             
  nop                                    #  41    0x123978  1      OPC=nop             
  nop                                    #  42    0x123979  1      OPC=nop             
  nop                                    #  43    0x12397a  1      OPC=nop             
  nop                                    #  44    0x12397b  1      OPC=nop             
  nop                                    #  45    0x12397c  1      OPC=nop             
  nop                                    #  46    0x12397d  1      OPC=nop             
  nop                                    #  47    0x12397e  1      OPC=nop             
  nop                                    #  48    0x12397f  1      OPC=nop             
.L_123980:                               #        0x123980  0      OPC=<label>         
  movl %ebx, %ebx                        #  49    0x123980  2      OPC=movl_r32_r32    
  testb $0x2, 0xd(%r15,%rbx,1)           #  50    0x123982  6      OPC=testb_m8_imm8   
  je .L_123a80                           #  51    0x123988  6      OPC=je_label_1      
  movl %ebx, %ebx                        #  52    0x12398e  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rbx,1), %eax            #  53    0x123990  5      OPC=movl_r32_m32    
  subl $0x1, %eax                        #  54    0x123995  3      OPC=subl_r32_imm8   
  testl %eax, %eax                       #  55    0x123998  2      OPC=testl_r32_r32   
  nop                                    #  56    0x12399a  1      OPC=nop             
  nop                                    #  57    0x12399b  1      OPC=nop             
  nop                                    #  58    0x12399c  1      OPC=nop             
  nop                                    #  59    0x12399d  1      OPC=nop             
  nop                                    #  60    0x12399e  1      OPC=nop             
  nop                                    #  61    0x12399f  1      OPC=nop             
  movl %ebx, %ebx                        #  62    0x1239a0  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)            #  63    0x1239a2  5      OPC=movl_m32_r32    
  js .L_123ac0                           #  64    0x1239a7  6      OPC=js_label_1      
  nop                                    #  65    0x1239ad  1      OPC=nop             
  nop                                    #  66    0x1239ae  1      OPC=nop             
  nop                                    #  67    0x1239af  1      OPC=nop             
  nop                                    #  68    0x1239b0  1      OPC=nop             
  nop                                    #  69    0x1239b1  1      OPC=nop             
  nop                                    #  70    0x1239b2  1      OPC=nop             
  nop                                    #  71    0x1239b3  1      OPC=nop             
  nop                                    #  72    0x1239b4  1      OPC=nop             
  nop                                    #  73    0x1239b5  1      OPC=nop             
  nop                                    #  74    0x1239b6  1      OPC=nop             
  nop                                    #  75    0x1239b7  1      OPC=nop             
  nop                                    #  76    0x1239b8  1      OPC=nop             
  nop                                    #  77    0x1239b9  1      OPC=nop             
  nop                                    #  78    0x1239ba  1      OPC=nop             
  nop                                    #  79    0x1239bb  1      OPC=nop             
  nop                                    #  80    0x1239bc  1      OPC=nop             
  nop                                    #  81    0x1239bd  1      OPC=nop             
  nop                                    #  82    0x1239be  1      OPC=nop             
  nop                                    #  83    0x1239bf  1      OPC=nop             
.L_1239c0:                               #        0x1239c0  0      OPC=<label>         
  movl %ebx, %ebx                        #  84    0x1239c0  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax               #  85    0x1239c2  4      OPC=movl_r32_m32    
  movl %eax, %eax                        #  86    0x1239c6  2      OPC=movl_r32_r32    
  movb %r12b, (%r15,%rax,1)              #  87    0x1239c8  4      OPC=movb_m8_r8      
  movl %ebx, %ebx                        #  88    0x1239cc  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %edx               #  89    0x1239ce  4      OPC=movl_r32_m32    
  movl %edx, %edx                        #  90    0x1239d2  2      OPC=movl_r32_r32    
  movzbl (%r15,%rdx,1), %eax             #  91    0x1239d4  5      OPC=movzbl_r32_m8   
  addl $0x1, %edx                        #  92    0x1239d9  3      OPC=addl_r32_imm8   
  nop                                    #  93    0x1239dc  1      OPC=nop             
  nop                                    #  94    0x1239dd  1      OPC=nop             
  nop                                    #  95    0x1239de  1      OPC=nop             
  nop                                    #  96    0x1239df  1      OPC=nop             
  movl %ebx, %ebx                        #  97    0x1239e0  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rbx,1)               #  98    0x1239e2  4      OPC=movl_m32_r32    
  nop                                    #  99    0x1239e6  1      OPC=nop             
  nop                                    #  100   0x1239e7  1      OPC=nop             
  nop                                    #  101   0x1239e8  1      OPC=nop             
  nop                                    #  102   0x1239e9  1      OPC=nop             
  nop                                    #  103   0x1239ea  1      OPC=nop             
  nop                                    #  104   0x1239eb  1      OPC=nop             
  nop                                    #  105   0x1239ec  1      OPC=nop             
  nop                                    #  106   0x1239ed  1      OPC=nop             
  nop                                    #  107   0x1239ee  1      OPC=nop             
  nop                                    #  108   0x1239ef  1      OPC=nop             
  nop                                    #  109   0x1239f0  1      OPC=nop             
  nop                                    #  110   0x1239f1  1      OPC=nop             
  nop                                    #  111   0x1239f2  1      OPC=nop             
  nop                                    #  112   0x1239f3  1      OPC=nop             
  nop                                    #  113   0x1239f4  1      OPC=nop             
  nop                                    #  114   0x1239f5  1      OPC=nop             
  nop                                    #  115   0x1239f6  1      OPC=nop             
  nop                                    #  116   0x1239f7  1      OPC=nop             
  nop                                    #  117   0x1239f8  1      OPC=nop             
  nop                                    #  118   0x1239f9  1      OPC=nop             
  nop                                    #  119   0x1239fa  1      OPC=nop             
  nop                                    #  120   0x1239fb  1      OPC=nop             
  nop                                    #  121   0x1239fc  1      OPC=nop             
  nop                                    #  122   0x1239fd  1      OPC=nop             
  nop                                    #  123   0x1239fe  1      OPC=nop             
  nop                                    #  124   0x1239ff  1      OPC=nop             
.L_123a00:                               #        0x123a00  0      OPC=<label>         
  movl %ebx, %ebx                        #  125   0x123a00  2      OPC=movl_r32_r32    
  testb $0x2, 0xd(%r15,%rbx,1)           #  126   0x123a02  6      OPC=testb_m8_imm8   
  jne .L_123a40                          #  127   0x123a08  2      OPC=jne_label       
  leal 0x5c(%rbx), %edi                  #  128   0x123a0a  3      OPC=leal_r32_m16    
  movl %eax, 0x8(%rsp)                   #  129   0x123a0d  4      OPC=movl_m32_r32    
  nop                                    #  130   0x123a11  1      OPC=nop             
  nop                                    #  131   0x123a12  1      OPC=nop             
  nop                                    #  132   0x123a13  1      OPC=nop             
  nop                                    #  133   0x123a14  1      OPC=nop             
  nop                                    #  134   0x123a15  1      OPC=nop             
  nop                                    #  135   0x123a16  1      OPC=nop             
  nop                                    #  136   0x123a17  1      OPC=nop             
  nop                                    #  137   0x123a18  1      OPC=nop             
  nop                                    #  138   0x123a19  1      OPC=nop             
  nop                                    #  139   0x123a1a  1      OPC=nop             
  callq .__local_lock_release_recursive  #  140   0x123a1b  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                   #  141   0x123a20  4      OPC=movl_r32_m32    
  nop                                    #  142   0x123a24  1      OPC=nop             
  nop                                    #  143   0x123a25  1      OPC=nop             
  nop                                    #  144   0x123a26  1      OPC=nop             
  nop                                    #  145   0x123a27  1      OPC=nop             
  nop                                    #  146   0x123a28  1      OPC=nop             
  nop                                    #  147   0x123a29  1      OPC=nop             
  nop                                    #  148   0x123a2a  1      OPC=nop             
  nop                                    #  149   0x123a2b  1      OPC=nop             
  nop                                    #  150   0x123a2c  1      OPC=nop             
  nop                                    #  151   0x123a2d  1      OPC=nop             
  nop                                    #  152   0x123a2e  1      OPC=nop             
  nop                                    #  153   0x123a2f  1      OPC=nop             
  nop                                    #  154   0x123a30  1      OPC=nop             
  nop                                    #  155   0x123a31  1      OPC=nop             
  nop                                    #  156   0x123a32  1      OPC=nop             
  nop                                    #  157   0x123a33  1      OPC=nop             
  nop                                    #  158   0x123a34  1      OPC=nop             
  nop                                    #  159   0x123a35  1      OPC=nop             
  nop                                    #  160   0x123a36  1      OPC=nop             
  nop                                    #  161   0x123a37  1      OPC=nop             
  nop                                    #  162   0x123a38  1      OPC=nop             
  nop                                    #  163   0x123a39  1      OPC=nop             
  nop                                    #  164   0x123a3a  1      OPC=nop             
  nop                                    #  165   0x123a3b  1      OPC=nop             
  nop                                    #  166   0x123a3c  1      OPC=nop             
  nop                                    #  167   0x123a3d  1      OPC=nop             
  nop                                    #  168   0x123a3e  1      OPC=nop             
  nop                                    #  169   0x123a3f  1      OPC=nop             
.L_123a40:                               #        0x123a40  0      OPC=<label>         
  movq 0x10(%rsp), %rbx                  #  170   0x123a40  5      OPC=movq_r64_m64    
  movq 0x18(%rsp), %r12                  #  171   0x123a45  5      OPC=movq_r64_m64    
  movq 0x20(%rsp), %r13                  #  172   0x123a4a  5      OPC=movq_r64_m64    
  addl $0x28, %esp                       #  173   0x123a4f  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                        #  174   0x123a52  3      OPC=addq_r64_r64    
  popq %r11                              #  175   0x123a55  2      OPC=popq_r64_1      
  nop                                    #  176   0x123a57  1      OPC=nop             
  nop                                    #  177   0x123a58  1      OPC=nop             
  nop                                    #  178   0x123a59  1      OPC=nop             
  nop                                    #  179   0x123a5a  1      OPC=nop             
  nop                                    #  180   0x123a5b  1      OPC=nop             
  nop                                    #  181   0x123a5c  1      OPC=nop             
  nop                                    #  182   0x123a5d  1      OPC=nop             
  nop                                    #  183   0x123a5e  1      OPC=nop             
  nop                                    #  184   0x123a5f  1      OPC=nop             
  andl $0xffffffe0, %r11d                #  185   0x123a60  7      OPC=andl_r32_imm32  
  nop                                    #  186   0x123a67  1      OPC=nop             
  nop                                    #  187   0x123a68  1      OPC=nop             
  nop                                    #  188   0x123a69  1      OPC=nop             
  nop                                    #  189   0x123a6a  1      OPC=nop             
  addq %r15, %r11                        #  190   0x123a6b  3      OPC=addq_r64_r64    
  jmpq %r11                              #  191   0x123a6e  3      OPC=jmpq_r64        
  nop                                    #  192   0x123a71  1      OPC=nop             
  nop                                    #  193   0x123a72  1      OPC=nop             
  nop                                    #  194   0x123a73  1      OPC=nop             
  nop                                    #  195   0x123a74  1      OPC=nop             
  nop                                    #  196   0x123a75  1      OPC=nop             
  nop                                    #  197   0x123a76  1      OPC=nop             
  nop                                    #  198   0x123a77  1      OPC=nop             
  nop                                    #  199   0x123a78  1      OPC=nop             
  nop                                    #  200   0x123a79  1      OPC=nop             
  nop                                    #  201   0x123a7a  1      OPC=nop             
  nop                                    #  202   0x123a7b  1      OPC=nop             
  nop                                    #  203   0x123a7c  1      OPC=nop             
  nop                                    #  204   0x123a7d  1      OPC=nop             
  nop                                    #  205   0x123a7e  1      OPC=nop             
  nop                                    #  206   0x123a7f  1      OPC=nop             
  nop                                    #  207   0x123a80  1      OPC=nop             
  nop                                    #  208   0x123a81  1      OPC=nop             
  nop                                    #  209   0x123a82  1      OPC=nop             
  nop                                    #  210   0x123a83  1      OPC=nop             
  nop                                    #  211   0x123a84  1      OPC=nop             
  nop                                    #  212   0x123a85  1      OPC=nop             
  nop                                    #  213   0x123a86  1      OPC=nop             
.L_123a80:                               #        0x123a87  0      OPC=<label>         
  leal 0x5c(%rbx), %edi                  #  214   0x123a87  3      OPC=leal_r32_m16    
  nop                                    #  215   0x123a8a  1      OPC=nop             
  nop                                    #  216   0x123a8b  1      OPC=nop             
  nop                                    #  217   0x123a8c  1      OPC=nop             
  nop                                    #  218   0x123a8d  1      OPC=nop             
  nop                                    #  219   0x123a8e  1      OPC=nop             
  nop                                    #  220   0x123a8f  1      OPC=nop             
  nop                                    #  221   0x123a90  1      OPC=nop             
  nop                                    #  222   0x123a91  1      OPC=nop             
  nop                                    #  223   0x123a92  1      OPC=nop             
  nop                                    #  224   0x123a93  1      OPC=nop             
  nop                                    #  225   0x123a94  1      OPC=nop             
  nop                                    #  226   0x123a95  1      OPC=nop             
  nop                                    #  227   0x123a96  1      OPC=nop             
  nop                                    #  228   0x123a97  1      OPC=nop             
  nop                                    #  229   0x123a98  1      OPC=nop             
  nop                                    #  230   0x123a99  1      OPC=nop             
  nop                                    #  231   0x123a9a  1      OPC=nop             
  nop                                    #  232   0x123a9b  1      OPC=nop             
  nop                                    #  233   0x123a9c  1      OPC=nop             
  nop                                    #  234   0x123a9d  1      OPC=nop             
  nop                                    #  235   0x123a9e  1      OPC=nop             
  nop                                    #  236   0x123a9f  1      OPC=nop             
  nop                                    #  237   0x123aa0  1      OPC=nop             
  nop                                    #  238   0x123aa1  1      OPC=nop             
  callq .__local_lock_acquire_recursive  #  239   0x123aa2  5      OPC=callq_label     
  movl %ebx, %ebx                        #  240   0x123aa7  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rbx,1), %eax            #  241   0x123aa9  5      OPC=movl_r32_m32    
  subl $0x1, %eax                        #  242   0x123aae  3      OPC=subl_r32_imm8   
  testl %eax, %eax                       #  243   0x123ab1  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                        #  244   0x123ab3  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)            #  245   0x123ab5  5      OPC=movl_m32_r32    
  jns .L_1239c0                          #  246   0x123aba  6      OPC=jns_label_1     
  nop                                    #  247   0x123ac0  1      OPC=nop             
  nop                                    #  248   0x123ac1  1      OPC=nop             
  nop                                    #  249   0x123ac2  1      OPC=nop             
  nop                                    #  250   0x123ac3  1      OPC=nop             
  nop                                    #  251   0x123ac4  1      OPC=nop             
  nop                                    #  252   0x123ac5  1      OPC=nop             
  nop                                    #  253   0x123ac6  1      OPC=nop             
.L_123ac0:                               #        0x123ac7  0      OPC=<label>         
  movl %ebx, %ebx                        #  254   0x123ac7  2      OPC=movl_r32_r32    
  cmpl 0x18(%r15,%rbx,1), %eax           #  255   0x123ac9  5      OPC=cmpl_r32_m32    
  jl .L_123b40                           #  256   0x123ace  2      OPC=jl_label        
  movl %ebx, %ebx                        #  257   0x123ad0  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax               #  258   0x123ad2  4      OPC=movl_r32_m32    
  movl %eax, %eax                        #  259   0x123ad6  2      OPC=movl_r32_r32    
  movb %r12b, (%r15,%rax,1)              #  260   0x123ad8  4      OPC=movb_m8_r8      
  movl %ebx, %ebx                        #  261   0x123adc  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %edx               #  262   0x123ade  4      OPC=movl_r32_m32    
  nop                                    #  263   0x123ae2  1      OPC=nop             
  nop                                    #  264   0x123ae3  1      OPC=nop             
  nop                                    #  265   0x123ae4  1      OPC=nop             
  nop                                    #  266   0x123ae5  1      OPC=nop             
  nop                                    #  267   0x123ae6  1      OPC=nop             
  movl %edx, %edx                        #  268   0x123ae7  2      OPC=movl_r32_r32    
  movzbl (%r15,%rdx,1), %eax             #  269   0x123ae9  5      OPC=movzbl_r32_m8   
  cmpb $0xa, %al                         #  270   0x123aee  2      OPC=cmpb_al_imm8    
  je .L_123b80                           #  271   0x123af0  6      OPC=je_label_1      
  addl $0x1, %edx                        #  272   0x123af6  3      OPC=addl_r32_imm8   
  movzbl %al, %eax                       #  273   0x123af9  3      OPC=movzbl_r32_r8   
  movl %ebx, %ebx                        #  274   0x123afc  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rbx,1)               #  275   0x123afe  4      OPC=movl_m32_r32    
  jmpq .L_123a00                         #  276   0x123b02  5      OPC=jmpq_label_1    
.L_123b00:                               #        0x123b07  0      OPC=<label>         
  movl %r13d, %edi                       #  277   0x123b07  3      OPC=movl_r32_r32    
  nop                                    #  278   0x123b0a  1      OPC=nop             
  nop                                    #  279   0x123b0b  1      OPC=nop             
  nop                                    #  280   0x123b0c  1      OPC=nop             
  nop                                    #  281   0x123b0d  1      OPC=nop             
  nop                                    #  282   0x123b0e  1      OPC=nop             
  nop                                    #  283   0x123b0f  1      OPC=nop             
  nop                                    #  284   0x123b10  1      OPC=nop             
  nop                                    #  285   0x123b11  1      OPC=nop             
  nop                                    #  286   0x123b12  1      OPC=nop             
  nop                                    #  287   0x123b13  1      OPC=nop             
  nop                                    #  288   0x123b14  1      OPC=nop             
  nop                                    #  289   0x123b15  1      OPC=nop             
  nop                                    #  290   0x123b16  1      OPC=nop             
  nop                                    #  291   0x123b17  1      OPC=nop             
  nop                                    #  292   0x123b18  1      OPC=nop             
  nop                                    #  293   0x123b19  1      OPC=nop             
  nop                                    #  294   0x123b1a  1      OPC=nop             
  nop                                    #  295   0x123b1b  1      OPC=nop             
  nop                                    #  296   0x123b1c  1      OPC=nop             
  nop                                    #  297   0x123b1d  1      OPC=nop             
  nop                                    #  298   0x123b1e  1      OPC=nop             
  nop                                    #  299   0x123b1f  1      OPC=nop             
  nop                                    #  300   0x123b20  1      OPC=nop             
  nop                                    #  301   0x123b21  1      OPC=nop             
  callq .__sinit                         #  302   0x123b22  5      OPC=callq_label     
  jmpq .L_123980                         #  303   0x123b27  5      OPC=jmpq_label_1    
  nop                                    #  304   0x123b2c  1      OPC=nop             
  nop                                    #  305   0x123b2d  1      OPC=nop             
  nop                                    #  306   0x123b2e  1      OPC=nop             
  nop                                    #  307   0x123b2f  1      OPC=nop             
  nop                                    #  308   0x123b30  1      OPC=nop             
  nop                                    #  309   0x123b31  1      OPC=nop             
  nop                                    #  310   0x123b32  1      OPC=nop             
  nop                                    #  311   0x123b33  1      OPC=nop             
  nop                                    #  312   0x123b34  1      OPC=nop             
  nop                                    #  313   0x123b35  1      OPC=nop             
  nop                                    #  314   0x123b36  1      OPC=nop             
  nop                                    #  315   0x123b37  1      OPC=nop             
  nop                                    #  316   0x123b38  1      OPC=nop             
  nop                                    #  317   0x123b39  1      OPC=nop             
  nop                                    #  318   0x123b3a  1      OPC=nop             
  nop                                    #  319   0x123b3b  1      OPC=nop             
  nop                                    #  320   0x123b3c  1      OPC=nop             
  nop                                    #  321   0x123b3d  1      OPC=nop             
  nop                                    #  322   0x123b3e  1      OPC=nop             
  nop                                    #  323   0x123b3f  1      OPC=nop             
  nop                                    #  324   0x123b40  1      OPC=nop             
  nop                                    #  325   0x123b41  1      OPC=nop             
  nop                                    #  326   0x123b42  1      OPC=nop             
  nop                                    #  327   0x123b43  1      OPC=nop             
  nop                                    #  328   0x123b44  1      OPC=nop             
  nop                                    #  329   0x123b45  1      OPC=nop             
  nop                                    #  330   0x123b46  1      OPC=nop             
.L_123b40:                               #        0x123b47  0      OPC=<label>         
  movl %ebx, %edx                        #  331   0x123b47  2      OPC=movl_r32_r32    
  movl %r12d, %esi                       #  332   0x123b49  3      OPC=movl_r32_r32    
  movl %r13d, %edi                       #  333   0x123b4c  3      OPC=movl_r32_r32    
  nop                                    #  334   0x123b4f  1      OPC=nop             
  nop                                    #  335   0x123b50  1      OPC=nop             
  nop                                    #  336   0x123b51  1      OPC=nop             
  nop                                    #  337   0x123b52  1      OPC=nop             
  nop                                    #  338   0x123b53  1      OPC=nop             
  nop                                    #  339   0x123b54  1      OPC=nop             
  nop                                    #  340   0x123b55  1      OPC=nop             
  nop                                    #  341   0x123b56  1      OPC=nop             
  nop                                    #  342   0x123b57  1      OPC=nop             
  nop                                    #  343   0x123b58  1      OPC=nop             
  nop                                    #  344   0x123b59  1      OPC=nop             
  nop                                    #  345   0x123b5a  1      OPC=nop             
  nop                                    #  346   0x123b5b  1      OPC=nop             
  nop                                    #  347   0x123b5c  1      OPC=nop             
  nop                                    #  348   0x123b5d  1      OPC=nop             
  nop                                    #  349   0x123b5e  1      OPC=nop             
  nop                                    #  350   0x123b5f  1      OPC=nop             
  nop                                    #  351   0x123b60  1      OPC=nop             
  nop                                    #  352   0x123b61  1      OPC=nop             
  callq .__swbuf_r                       #  353   0x123b62  5      OPC=callq_label     
  jmpq .L_123a00                         #  354   0x123b67  5      OPC=jmpq_label_1    
  nop                                    #  355   0x123b6c  1      OPC=nop             
  nop                                    #  356   0x123b6d  1      OPC=nop             
  nop                                    #  357   0x123b6e  1      OPC=nop             
  nop                                    #  358   0x123b6f  1      OPC=nop             
  nop                                    #  359   0x123b70  1      OPC=nop             
  nop                                    #  360   0x123b71  1      OPC=nop             
  nop                                    #  361   0x123b72  1      OPC=nop             
  nop                                    #  362   0x123b73  1      OPC=nop             
  nop                                    #  363   0x123b74  1      OPC=nop             
  nop                                    #  364   0x123b75  1      OPC=nop             
  nop                                    #  365   0x123b76  1      OPC=nop             
  nop                                    #  366   0x123b77  1      OPC=nop             
  nop                                    #  367   0x123b78  1      OPC=nop             
  nop                                    #  368   0x123b79  1      OPC=nop             
  nop                                    #  369   0x123b7a  1      OPC=nop             
  nop                                    #  370   0x123b7b  1      OPC=nop             
  nop                                    #  371   0x123b7c  1      OPC=nop             
  nop                                    #  372   0x123b7d  1      OPC=nop             
  nop                                    #  373   0x123b7e  1      OPC=nop             
  nop                                    #  374   0x123b7f  1      OPC=nop             
  nop                                    #  375   0x123b80  1      OPC=nop             
  nop                                    #  376   0x123b81  1      OPC=nop             
  nop                                    #  377   0x123b82  1      OPC=nop             
  nop                                    #  378   0x123b83  1      OPC=nop             
  nop                                    #  379   0x123b84  1      OPC=nop             
  nop                                    #  380   0x123b85  1      OPC=nop             
  nop                                    #  381   0x123b86  1      OPC=nop             
.L_123b80:                               #        0x123b87  0      OPC=<label>         
  movl %ebx, %edx                        #  382   0x123b87  2      OPC=movl_r32_r32    
  movl $0xa, %esi                        #  383   0x123b89  5      OPC=movl_r32_imm32  
  movl %r13d, %edi                       #  384   0x123b8e  3      OPC=movl_r32_r32    
  xchgw %ax, %ax                         #  385   0x123b91  2      OPC=xchgw_ax_r16    
  nop                                    #  386   0x123b93  1      OPC=nop             
  nop                                    #  387   0x123b94  1      OPC=nop             
  nop                                    #  388   0x123b95  1      OPC=nop             
  nop                                    #  389   0x123b96  1      OPC=nop             
  nop                                    #  390   0x123b97  1      OPC=nop             
  nop                                    #  391   0x123b98  1      OPC=nop             
  nop                                    #  392   0x123b99  1      OPC=nop             
  nop                                    #  393   0x123b9a  1      OPC=nop             
  nop                                    #  394   0x123b9b  1      OPC=nop             
  nop                                    #  395   0x123b9c  1      OPC=nop             
  nop                                    #  396   0x123b9d  1      OPC=nop             
  nop                                    #  397   0x123b9e  1      OPC=nop             
  nop                                    #  398   0x123b9f  1      OPC=nop             
  nop                                    #  399   0x123ba0  1      OPC=nop             
  nop                                    #  400   0x123ba1  1      OPC=nop             
  callq .__swbuf_r                       #  401   0x123ba2  5      OPC=callq_label     
  jmpq .L_123a00                         #  402   0x123ba7  5      OPC=jmpq_label_1    
  nop                                    #  403   0x123bac  1      OPC=nop             
  nop                                    #  404   0x123bad  1      OPC=nop             
  nop                                    #  405   0x123bae  1      OPC=nop             
  nop                                    #  406   0x123baf  1      OPC=nop             
  nop                                    #  407   0x123bb0  1      OPC=nop             
  nop                                    #  408   0x123bb1  1      OPC=nop             
  nop                                    #  409   0x123bb2  1      OPC=nop             
  nop                                    #  410   0x123bb3  1      OPC=nop             
  nop                                    #  411   0x123bb4  1      OPC=nop             
  nop                                    #  412   0x123bb5  1      OPC=nop             
  nop                                    #  413   0x123bb6  1      OPC=nop             
  nop                                    #  414   0x123bb7  1      OPC=nop             
  nop                                    #  415   0x123bb8  1      OPC=nop             
  nop                                    #  416   0x123bb9  1      OPC=nop             
  nop                                    #  417   0x123bba  1      OPC=nop             
  nop                                    #  418   0x123bbb  1      OPC=nop             
  nop                                    #  419   0x123bbc  1      OPC=nop             
  nop                                    #  420   0x123bbd  1      OPC=nop             
  nop                                    #  421   0x123bbe  1      OPC=nop             
  nop                                    #  422   0x123bbf  1      OPC=nop             
  nop                                    #  423   0x123bc0  1      OPC=nop             
  nop                                    #  424   0x123bc1  1      OPC=nop             
  nop                                    #  425   0x123bc2  1      OPC=nop             
  nop                                    #  426   0x123bc3  1      OPC=nop             
  nop                                    #  427   0x123bc4  1      OPC=nop             
  nop                                    #  428   0x123bc5  1      OPC=nop             
  nop                                    #  429   0x123bc6  1      OPC=nop             
                                                                                       
.size putc, .-putc
