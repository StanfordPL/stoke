  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE6appendEPKwj
  .type _ZNSbIwSt11char_traitsIwESaIwEE6appendEPKwj, @function

#! file-offset 0x118ec0
#! rip-offset  0xd8ec0
#! capacity    576 bytes

# Text                                              #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE6appendEPKwj:       #        0xd8ec0  0      OPC=<label>         
  movq %rbx, -0x18(%rsp)                            #  1     0xd8ec0  5      OPC=movq_m64_r64    
  movq %r13, -0x8(%rsp)                             #  2     0xd8ec5  5      OPC=movq_m64_r64    
  movl %edi, %ebx                                   #  3     0xd8eca  2      OPC=movl_r32_r32    
  movq %r12, -0x10(%rsp)                            #  4     0xd8ecc  5      OPC=movq_m64_r64    
  subl $0x28, %esp                                  #  5     0xd8ed1  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                   #  6     0xd8ed4  3      OPC=addq_r64_r64    
  testl %edx, %edx                                  #  7     0xd8ed7  2      OPC=testl_r32_r32   
  movl %esi, %r13d                                  #  8     0xd8ed9  3      OPC=movl_r32_r32    
  nop                                               #  9     0xd8edc  1      OPC=nop             
  nop                                               #  10    0xd8edd  1      OPC=nop             
  nop                                               #  11    0xd8ede  1      OPC=nop             
  nop                                               #  12    0xd8edf  1      OPC=nop             
  jne .L_d8f40                                      #  13    0xd8ee0  2      OPC=jne_label       
  nop                                               #  14    0xd8ee2  1      OPC=nop             
  nop                                               #  15    0xd8ee3  1      OPC=nop             
  nop                                               #  16    0xd8ee4  1      OPC=nop             
  nop                                               #  17    0xd8ee5  1      OPC=nop             
  nop                                               #  18    0xd8ee6  1      OPC=nop             
  nop                                               #  19    0xd8ee7  1      OPC=nop             
  nop                                               #  20    0xd8ee8  1      OPC=nop             
  nop                                               #  21    0xd8ee9  1      OPC=nop             
  nop                                               #  22    0xd8eea  1      OPC=nop             
  nop                                               #  23    0xd8eeb  1      OPC=nop             
  nop                                               #  24    0xd8eec  1      OPC=nop             
  nop                                               #  25    0xd8eed  1      OPC=nop             
  nop                                               #  26    0xd8eee  1      OPC=nop             
  nop                                               #  27    0xd8eef  1      OPC=nop             
  nop                                               #  28    0xd8ef0  1      OPC=nop             
  nop                                               #  29    0xd8ef1  1      OPC=nop             
  nop                                               #  30    0xd8ef2  1      OPC=nop             
  nop                                               #  31    0xd8ef3  1      OPC=nop             
  nop                                               #  32    0xd8ef4  1      OPC=nop             
  nop                                               #  33    0xd8ef5  1      OPC=nop             
  nop                                               #  34    0xd8ef6  1      OPC=nop             
  nop                                               #  35    0xd8ef7  1      OPC=nop             
  nop                                               #  36    0xd8ef8  1      OPC=nop             
  nop                                               #  37    0xd8ef9  1      OPC=nop             
  nop                                               #  38    0xd8efa  1      OPC=nop             
  nop                                               #  39    0xd8efb  1      OPC=nop             
  nop                                               #  40    0xd8efc  1      OPC=nop             
  nop                                               #  41    0xd8efd  1      OPC=nop             
  nop                                               #  42    0xd8efe  1      OPC=nop             
  nop                                               #  43    0xd8eff  1      OPC=nop             
.L_d8f00:                                           #        0xd8f00  0      OPC=<label>         
  movl %ebx, %eax                                   #  44    0xd8f00  2      OPC=movl_r32_r32    
  movq 0x18(%rsp), %r12                             #  45    0xd8f02  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %rbx                             #  46    0xd8f07  5      OPC=movq_r64_m64    
  movq 0x20(%rsp), %r13                             #  47    0xd8f0c  5      OPC=movq_r64_m64    
  addl $0x28, %esp                                  #  48    0xd8f11  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                   #  49    0xd8f14  3      OPC=addq_r64_r64    
  popq %r11                                         #  50    0xd8f17  2      OPC=popq_r64_1      
  nop                                               #  51    0xd8f19  1      OPC=nop             
  nop                                               #  52    0xd8f1a  1      OPC=nop             
  nop                                               #  53    0xd8f1b  1      OPC=nop             
  nop                                               #  54    0xd8f1c  1      OPC=nop             
  nop                                               #  55    0xd8f1d  1      OPC=nop             
  nop                                               #  56    0xd8f1e  1      OPC=nop             
  nop                                               #  57    0xd8f1f  1      OPC=nop             
  andl $0xffffffe0, %r11d                           #  58    0xd8f20  7      OPC=andl_r32_imm32  
  nop                                               #  59    0xd8f27  1      OPC=nop             
  nop                                               #  60    0xd8f28  1      OPC=nop             
  nop                                               #  61    0xd8f29  1      OPC=nop             
  nop                                               #  62    0xd8f2a  1      OPC=nop             
  addq %r15, %r11                                   #  63    0xd8f2b  3      OPC=addq_r64_r64    
  jmpq %r11                                         #  64    0xd8f2e  3      OPC=jmpq_r64        
  nop                                               #  65    0xd8f31  1      OPC=nop             
  nop                                               #  66    0xd8f32  1      OPC=nop             
  nop                                               #  67    0xd8f33  1      OPC=nop             
  nop                                               #  68    0xd8f34  1      OPC=nop             
  nop                                               #  69    0xd8f35  1      OPC=nop             
  nop                                               #  70    0xd8f36  1      OPC=nop             
  nop                                               #  71    0xd8f37  1      OPC=nop             
  nop                                               #  72    0xd8f38  1      OPC=nop             
  nop                                               #  73    0xd8f39  1      OPC=nop             
  nop                                               #  74    0xd8f3a  1      OPC=nop             
  nop                                               #  75    0xd8f3b  1      OPC=nop             
  nop                                               #  76    0xd8f3c  1      OPC=nop             
  nop                                               #  77    0xd8f3d  1      OPC=nop             
  nop                                               #  78    0xd8f3e  1      OPC=nop             
  nop                                               #  79    0xd8f3f  1      OPC=nop             
  nop                                               #  80    0xd8f40  1      OPC=nop             
  nop                                               #  81    0xd8f41  1      OPC=nop             
  nop                                               #  82    0xd8f42  1      OPC=nop             
  nop                                               #  83    0xd8f43  1      OPC=nop             
  nop                                               #  84    0xd8f44  1      OPC=nop             
  nop                                               #  85    0xd8f45  1      OPC=nop             
  nop                                               #  86    0xd8f46  1      OPC=nop             
.L_d8f40:                                           #        0xd8f47  0      OPC=<label>         
  movl %ebx, %ebx                                   #  87    0xd8f47  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %ecx                          #  88    0xd8f49  4      OPC=movl_r32_m32    
  leal -0xc(%rcx), %eax                             #  89    0xd8f4d  3      OPC=leal_r32_m16    
  movl %eax, %eax                                   #  90    0xd8f50  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi                          #  91    0xd8f52  4      OPC=movl_r32_m32    
  movl %edi, %esi                                   #  92    0xd8f56  2      OPC=movl_r32_r32    
  negl %esi                                         #  93    0xd8f58  2      OPC=negl_r32        
  addl $0xffffffe, %esi                             #  94    0xd8f5a  6      OPC=addl_r32_imm32  
  cmpl %esi, %edx                                   #  95    0xd8f60  2      OPC=cmpl_r32_r32    
  nop                                               #  96    0xd8f62  1      OPC=nop             
  nop                                               #  97    0xd8f63  1      OPC=nop             
  nop                                               #  98    0xd8f64  1      OPC=nop             
  nop                                               #  99    0xd8f65  1      OPC=nop             
  nop                                               #  100   0xd8f66  1      OPC=nop             
  ja .L_d90e0                                       #  101   0xd8f67  6      OPC=ja_label_1      
  leal (%rdx,%rdi,1), %r12d                         #  102   0xd8f6d  4      OPC=leal_r32_m16    
  movl %eax, %eax                                   #  103   0xd8f71  2      OPC=movl_r32_r32    
  cmpl 0x4(%r15,%rax,1), %r12d                      #  104   0xd8f73  5      OPC=cmpl_r32_m32    
  ja .L_d8fa0                                       #  105   0xd8f78  2      OPC=ja_label        
  movl %eax, %eax                                   #  106   0xd8f7a  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %r9d                       #  107   0xd8f7c  5      OPC=movl_r32_m32    
  testl %r9d, %r9d                                  #  108   0xd8f81  3      OPC=testl_r32_r32   
  nop                                               #  109   0xd8f84  1      OPC=nop             
  nop                                               #  110   0xd8f85  1      OPC=nop             
  nop                                               #  111   0xd8f86  1      OPC=nop             
  jle .L_d9000                                      #  112   0xd8f87  2      OPC=jle_label       
  nop                                               #  113   0xd8f89  1      OPC=nop             
  nop                                               #  114   0xd8f8a  1      OPC=nop             
  nop                                               #  115   0xd8f8b  1      OPC=nop             
  nop                                               #  116   0xd8f8c  1      OPC=nop             
  nop                                               #  117   0xd8f8d  1      OPC=nop             
  nop                                               #  118   0xd8f8e  1      OPC=nop             
  nop                                               #  119   0xd8f8f  1      OPC=nop             
  nop                                               #  120   0xd8f90  1      OPC=nop             
  nop                                               #  121   0xd8f91  1      OPC=nop             
  nop                                               #  122   0xd8f92  1      OPC=nop             
  nop                                               #  123   0xd8f93  1      OPC=nop             
  nop                                               #  124   0xd8f94  1      OPC=nop             
  nop                                               #  125   0xd8f95  1      OPC=nop             
  nop                                               #  126   0xd8f96  1      OPC=nop             
  nop                                               #  127   0xd8f97  1      OPC=nop             
  nop                                               #  128   0xd8f98  1      OPC=nop             
  nop                                               #  129   0xd8f99  1      OPC=nop             
  nop                                               #  130   0xd8f9a  1      OPC=nop             
  nop                                               #  131   0xd8f9b  1      OPC=nop             
  nop                                               #  132   0xd8f9c  1      OPC=nop             
  nop                                               #  133   0xd8f9d  1      OPC=nop             
  nop                                               #  134   0xd8f9e  1      OPC=nop             
  nop                                               #  135   0xd8f9f  1      OPC=nop             
  nop                                               #  136   0xd8fa0  1      OPC=nop             
  nop                                               #  137   0xd8fa1  1      OPC=nop             
  nop                                               #  138   0xd8fa2  1      OPC=nop             
  nop                                               #  139   0xd8fa3  1      OPC=nop             
  nop                                               #  140   0xd8fa4  1      OPC=nop             
  nop                                               #  141   0xd8fa5  1      OPC=nop             
  nop                                               #  142   0xd8fa6  1      OPC=nop             
.L_d8fa0:                                           #        0xd8fa7  0      OPC=<label>         
  cmpl %ecx, %r13d                                  #  143   0xd8fa7  3      OPC=cmpl_r32_r32    
  jb .L_d8fc0                                       #  144   0xd8faa  2      OPC=jb_label        
  leal (%rcx,%rdi,4), %edi                          #  145   0xd8fac  3      OPC=leal_r32_m16    
  cmpl %r13d, %edi                                  #  146   0xd8faf  3      OPC=cmpl_r32_r32    
  jae .L_d90a0                                      #  147   0xd8fb2  6      OPC=jae_label_1     
  nop                                               #  148   0xd8fb8  1      OPC=nop             
  nop                                               #  149   0xd8fb9  1      OPC=nop             
  nop                                               #  150   0xd8fba  1      OPC=nop             
  nop                                               #  151   0xd8fbb  1      OPC=nop             
  nop                                               #  152   0xd8fbc  1      OPC=nop             
  nop                                               #  153   0xd8fbd  1      OPC=nop             
  nop                                               #  154   0xd8fbe  1      OPC=nop             
  nop                                               #  155   0xd8fbf  1      OPC=nop             
  nop                                               #  156   0xd8fc0  1      OPC=nop             
  nop                                               #  157   0xd8fc1  1      OPC=nop             
  nop                                               #  158   0xd8fc2  1      OPC=nop             
  nop                                               #  159   0xd8fc3  1      OPC=nop             
  nop                                               #  160   0xd8fc4  1      OPC=nop             
  nop                                               #  161   0xd8fc5  1      OPC=nop             
  nop                                               #  162   0xd8fc6  1      OPC=nop             
.L_d8fc0:                                           #        0xd8fc7  0      OPC=<label>         
  movl %ebx, %edi                                   #  163   0xd8fc7  2      OPC=movl_r32_r32    
  movl %r12d, %esi                                  #  164   0xd8fc9  3      OPC=movl_r32_r32    
  movl %edx, 0x8(%rsp)                              #  165   0xd8fcc  4      OPC=movl_m32_r32    
  nop                                               #  166   0xd8fd0  1      OPC=nop             
  nop                                               #  167   0xd8fd1  1      OPC=nop             
  nop                                               #  168   0xd8fd2  1      OPC=nop             
  nop                                               #  169   0xd8fd3  1      OPC=nop             
  nop                                               #  170   0xd8fd4  1      OPC=nop             
  nop                                               #  171   0xd8fd5  1      OPC=nop             
  nop                                               #  172   0xd8fd6  1      OPC=nop             
  nop                                               #  173   0xd8fd7  1      OPC=nop             
  nop                                               #  174   0xd8fd8  1      OPC=nop             
  nop                                               #  175   0xd8fd9  1      OPC=nop             
  nop                                               #  176   0xd8fda  1      OPC=nop             
  nop                                               #  177   0xd8fdb  1      OPC=nop             
  nop                                               #  178   0xd8fdc  1      OPC=nop             
  nop                                               #  179   0xd8fdd  1      OPC=nop             
  nop                                               #  180   0xd8fde  1      OPC=nop             
  nop                                               #  181   0xd8fdf  1      OPC=nop             
  nop                                               #  182   0xd8fe0  1      OPC=nop             
  nop                                               #  183   0xd8fe1  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEE7reserveEj  #  184   0xd8fe2  5      OPC=callq_label     
  movl %ebx, %ebx                                   #  185   0xd8fe7  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %ecx                          #  186   0xd8fe9  4      OPC=movl_r32_m32    
  movl 0x8(%rsp), %edx                              #  187   0xd8fed  4      OPC=movl_r32_m32    
  leal -0xc(%rcx), %eax                             #  188   0xd8ff1  3      OPC=leal_r32_m16    
  movl %eax, %eax                                   #  189   0xd8ff4  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi                          #  190   0xd8ff6  4      OPC=movl_r32_m32    
  nop                                               #  191   0xd8ffa  1      OPC=nop             
  nop                                               #  192   0xd8ffb  1      OPC=nop             
  nop                                               #  193   0xd8ffc  1      OPC=nop             
  nop                                               #  194   0xd8ffd  1      OPC=nop             
  nop                                               #  195   0xd8ffe  1      OPC=nop             
  nop                                               #  196   0xd8fff  1      OPC=nop             
  nop                                               #  197   0xd9000  1      OPC=nop             
  nop                                               #  198   0xd9001  1      OPC=nop             
  nop                                               #  199   0xd9002  1      OPC=nop             
  nop                                               #  200   0xd9003  1      OPC=nop             
  nop                                               #  201   0xd9004  1      OPC=nop             
  nop                                               #  202   0xd9005  1      OPC=nop             
  nop                                               #  203   0xd9006  1      OPC=nop             
.L_d9000:                                           #        0xd9007  0      OPC=<label>         
  cmpl $0x1, %edx                                   #  204   0xd9007  3      OPC=cmpl_r32_imm8   
  leal (%rcx,%rdi,4), %edi                          #  205   0xd900a  3      OPC=leal_r32_m16    
  je .L_d9080                                       #  206   0xd900d  2      OPC=je_label        
  movl %r13d, %esi                                  #  207   0xd900f  3      OPC=movl_r32_r32    
  nop                                               #  208   0xd9012  1      OPC=nop             
  nop                                               #  209   0xd9013  1      OPC=nop             
  nop                                               #  210   0xd9014  1      OPC=nop             
  nop                                               #  211   0xd9015  1      OPC=nop             
  nop                                               #  212   0xd9016  1      OPC=nop             
  nop                                               #  213   0xd9017  1      OPC=nop             
  nop                                               #  214   0xd9018  1      OPC=nop             
  nop                                               #  215   0xd9019  1      OPC=nop             
  nop                                               #  216   0xd901a  1      OPC=nop             
  nop                                               #  217   0xd901b  1      OPC=nop             
  nop                                               #  218   0xd901c  1      OPC=nop             
  nop                                               #  219   0xd901d  1      OPC=nop             
  nop                                               #  220   0xd901e  1      OPC=nop             
  nop                                               #  221   0xd901f  1      OPC=nop             
  nop                                               #  222   0xd9020  1      OPC=nop             
  nop                                               #  223   0xd9021  1      OPC=nop             
  callq .wmemcpy                                    #  224   0xd9022  5      OPC=callq_label     
  movl %ebx, %ebx                                   #  225   0xd9027  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                          #  226   0xd9029  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                   #  227   0xd902d  3      OPC=subl_r32_imm8   
  nop                                               #  228   0xd9030  1      OPC=nop             
  nop                                               #  229   0xd9031  1      OPC=nop             
  nop                                               #  230   0xd9032  1      OPC=nop             
  nop                                               #  231   0xd9033  1      OPC=nop             
  nop                                               #  232   0xd9034  1      OPC=nop             
  nop                                               #  233   0xd9035  1      OPC=nop             
  nop                                               #  234   0xd9036  1      OPC=nop             
  nop                                               #  235   0xd9037  1      OPC=nop             
  nop                                               #  236   0xd9038  1      OPC=nop             
  nop                                               #  237   0xd9039  1      OPC=nop             
  nop                                               #  238   0xd903a  1      OPC=nop             
  nop                                               #  239   0xd903b  1      OPC=nop             
  nop                                               #  240   0xd903c  1      OPC=nop             
  nop                                               #  241   0xd903d  1      OPC=nop             
  nop                                               #  242   0xd903e  1      OPC=nop             
  nop                                               #  243   0xd903f  1      OPC=nop             
  nop                                               #  244   0xd9040  1      OPC=nop             
  nop                                               #  245   0xd9041  1      OPC=nop             
  nop                                               #  246   0xd9042  1      OPC=nop             
  nop                                               #  247   0xd9043  1      OPC=nop             
  nop                                               #  248   0xd9044  1      OPC=nop             
  nop                                               #  249   0xd9045  1      OPC=nop             
  nop                                               #  250   0xd9046  1      OPC=nop             
.L_d9040:                                           #        0xd9047  0      OPC=<label>         
  movl %eax, %eax                                   #  251   0xd9047  2      OPC=movl_r32_r32    
  movl %r12d, (%r15,%rax,1)                         #  252   0xd9049  4      OPC=movl_m32_r32    
  leal (%rax,%r12,4), %r12d                         #  253   0xd904d  4      OPC=leal_r32_m16    
  movl %eax, %eax                                   #  254   0xd9051  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rax,1)                       #  255   0xd9053  9      OPC=movl_m32_imm32  
  nop                                               #  256   0xd905c  1      OPC=nop             
  nop                                               #  257   0xd905d  1      OPC=nop             
  nop                                               #  258   0xd905e  1      OPC=nop             
  nop                                               #  259   0xd905f  1      OPC=nop             
  nop                                               #  260   0xd9060  1      OPC=nop             
  nop                                               #  261   0xd9061  1      OPC=nop             
  nop                                               #  262   0xd9062  1      OPC=nop             
  nop                                               #  263   0xd9063  1      OPC=nop             
  nop                                               #  264   0xd9064  1      OPC=nop             
  nop                                               #  265   0xd9065  1      OPC=nop             
  nop                                               #  266   0xd9066  1      OPC=nop             
  movl %r12d, %r12d                                 #  267   0xd9067  3      OPC=movl_r32_r32    
  movl $0x0, 0xc(%r15,%r12,1)                       #  268   0xd906a  9      OPC=movl_m32_imm32  
  jmpq .L_d8f00                                     #  269   0xd9073  5      OPC=jmpq_label_1    
  nop                                               #  270   0xd9078  1      OPC=nop             
  nop                                               #  271   0xd9079  1      OPC=nop             
  nop                                               #  272   0xd907a  1      OPC=nop             
  nop                                               #  273   0xd907b  1      OPC=nop             
  nop                                               #  274   0xd907c  1      OPC=nop             
  nop                                               #  275   0xd907d  1      OPC=nop             
  nop                                               #  276   0xd907e  1      OPC=nop             
  nop                                               #  277   0xd907f  1      OPC=nop             
  nop                                               #  278   0xd9080  1      OPC=nop             
  nop                                               #  279   0xd9081  1      OPC=nop             
  nop                                               #  280   0xd9082  1      OPC=nop             
  nop                                               #  281   0xd9083  1      OPC=nop             
  nop                                               #  282   0xd9084  1      OPC=nop             
  nop                                               #  283   0xd9085  1      OPC=nop             
  nop                                               #  284   0xd9086  1      OPC=nop             
.L_d9080:                                           #        0xd9087  0      OPC=<label>         
  movl %r13d, %r13d                                 #  285   0xd9087  3      OPC=movl_r32_r32    
  movl (%r15,%r13,1), %edx                          #  286   0xd908a  4      OPC=movl_r32_m32    
  movl %edi, %edi                                   #  287   0xd908e  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rdi,1)                          #  288   0xd9090  4      OPC=movl_m32_r32    
  jmpq .L_d9040                                     #  289   0xd9094  2      OPC=jmpq_label      
  xchgw %ax, %ax                                    #  290   0xd9096  2      OPC=xchgw_ax_r16    
  nop                                               #  291   0xd9098  1      OPC=nop             
  nop                                               #  292   0xd9099  1      OPC=nop             
  nop                                               #  293   0xd909a  1      OPC=nop             
  nop                                               #  294   0xd909b  1      OPC=nop             
  nop                                               #  295   0xd909c  1      OPC=nop             
  nop                                               #  296   0xd909d  1      OPC=nop             
  nop                                               #  297   0xd909e  1      OPC=nop             
  nop                                               #  298   0xd909f  1      OPC=nop             
  nop                                               #  299   0xd90a0  1      OPC=nop             
  nop                                               #  300   0xd90a1  1      OPC=nop             
  nop                                               #  301   0xd90a2  1      OPC=nop             
  nop                                               #  302   0xd90a3  1      OPC=nop             
  nop                                               #  303   0xd90a4  1      OPC=nop             
  nop                                               #  304   0xd90a5  1      OPC=nop             
  nop                                               #  305   0xd90a6  1      OPC=nop             
.L_d90a0:                                           #        0xd90a7  0      OPC=<label>         
  movl %ebx, %edi                                   #  306   0xd90a7  2      OPC=movl_r32_r32    
  movl %r12d, %esi                                  #  307   0xd90a9  3      OPC=movl_r32_r32    
  subl %ecx, %r13d                                  #  308   0xd90ac  3      OPC=subl_r32_r32    
  movl %edx, 0x8(%rsp)                              #  309   0xd90af  4      OPC=movl_m32_r32    
  sarl $0x2, %r13d                                  #  310   0xd90b3  4      OPC=sarl_r32_imm8   
  nop                                               #  311   0xd90b7  1      OPC=nop             
  nop                                               #  312   0xd90b8  1      OPC=nop             
  nop                                               #  313   0xd90b9  1      OPC=nop             
  nop                                               #  314   0xd90ba  1      OPC=nop             
  nop                                               #  315   0xd90bb  1      OPC=nop             
  nop                                               #  316   0xd90bc  1      OPC=nop             
  nop                                               #  317   0xd90bd  1      OPC=nop             
  nop                                               #  318   0xd90be  1      OPC=nop             
  nop                                               #  319   0xd90bf  1      OPC=nop             
  nop                                               #  320   0xd90c0  1      OPC=nop             
  nop                                               #  321   0xd90c1  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEE7reserveEj  #  322   0xd90c2  5      OPC=callq_label     
  movl %ebx, %ebx                                   #  323   0xd90c7  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %ecx                          #  324   0xd90c9  4      OPC=movl_r32_m32    
  movl 0x8(%rsp), %edx                              #  325   0xd90cd  4      OPC=movl_r32_m32    
  leal -0xc(%rcx), %eax                             #  326   0xd90d1  3      OPC=leal_r32_m16    
  leal (%rcx,%r13,4), %r13d                         #  327   0xd90d4  4      OPC=leal_r32_m16    
  movl %eax, %eax                                   #  328   0xd90d8  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi                          #  329   0xd90da  4      OPC=movl_r32_m32    
  jmpq .L_d9000                                     #  330   0xd90de  5      OPC=jmpq_label_1    
  nop                                               #  331   0xd90e3  1      OPC=nop             
  nop                                               #  332   0xd90e4  1      OPC=nop             
  nop                                               #  333   0xd90e5  1      OPC=nop             
  nop                                               #  334   0xd90e6  1      OPC=nop             
.L_d90e0:                                           #        0xd90e7  0      OPC=<label>         
  movl $0x1003bae6, %edi                            #  335   0xd90e7  5      OPC=movl_r32_imm32  
  nop                                               #  336   0xd90ec  1      OPC=nop             
  nop                                               #  337   0xd90ed  1      OPC=nop             
  nop                                               #  338   0xd90ee  1      OPC=nop             
  nop                                               #  339   0xd90ef  1      OPC=nop             
  nop                                               #  340   0xd90f0  1      OPC=nop             
  nop                                               #  341   0xd90f1  1      OPC=nop             
  nop                                               #  342   0xd90f2  1      OPC=nop             
  nop                                               #  343   0xd90f3  1      OPC=nop             
  nop                                               #  344   0xd90f4  1      OPC=nop             
  nop                                               #  345   0xd90f5  1      OPC=nop             
  nop                                               #  346   0xd90f6  1      OPC=nop             
  nop                                               #  347   0xd90f7  1      OPC=nop             
  nop                                               #  348   0xd90f8  1      OPC=nop             
  nop                                               #  349   0xd90f9  1      OPC=nop             
  nop                                               #  350   0xd90fa  1      OPC=nop             
  nop                                               #  351   0xd90fb  1      OPC=nop             
  nop                                               #  352   0xd90fc  1      OPC=nop             
  nop                                               #  353   0xd90fd  1      OPC=nop             
  nop                                               #  354   0xd90fe  1      OPC=nop             
  nop                                               #  355   0xd90ff  1      OPC=nop             
  nop                                               #  356   0xd9100  1      OPC=nop             
  nop                                               #  357   0xd9101  1      OPC=nop             
  callq ._ZSt20__throw_length_errorPKc              #  358   0xd9102  5      OPC=callq_label     
                                                                                                 
.size _ZNSbIwSt11char_traitsIwESaIwEE6appendEPKwj, .-_ZNSbIwSt11char_traitsIwESaIwEE6appendEPKwj
