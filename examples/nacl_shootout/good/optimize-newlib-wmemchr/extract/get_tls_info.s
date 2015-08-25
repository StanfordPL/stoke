  .text
  .globl get_tls_info
  .type get_tls_info, @function

#! file-offset 0x158c80
#! rip-offset  0x118c80
#! capacity    672 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
.get_tls_info:                  #        0x118c80  0      OPC=<label>         
  movl 0xff600e6(%rip), %eax    #  1     0x118c80  6      OPC=movl_r32_m32    
  testl %eax, %eax              #  2     0x118c86  2      OPC=testl_r32_r32   
  jne .L_118d00                 #  3     0x118c88  2      OPC=jne_label       
  movl $0x10020000, %eax        #  4     0x118c8a  5      OPC=movl_r32_imm32  
  testl %eax, %eax              #  5     0x118c8f  2      OPC=testl_r32_r32   
  jne .L_118d20                 #  6     0x118c91  6      OPC=jne_label_1     
  nop                           #  7     0x118c97  1      OPC=nop             
  nop                           #  8     0x118c98  1      OPC=nop             
  nop                           #  9     0x118c99  1      OPC=nop             
  nop                           #  10    0x118c9a  1      OPC=nop             
  nop                           #  11    0x118c9b  1      OPC=nop             
  nop                           #  12    0x118c9c  1      OPC=nop             
  nop                           #  13    0x118c9d  1      OPC=nop             
  nop                           #  14    0x118c9e  1      OPC=nop             
  nop                           #  15    0x118c9f  1      OPC=nop             
.L_118ca0:                      #        0x118ca0  0      OPC=<label>         
  testl %eax, %eax              #  16    0x118ca0  2      OPC=testl_r32_r32   
  jne .L_118e20                 #  17    0x118ca2  6      OPC=jne_label_1     
  nop                           #  18    0x118ca8  1      OPC=nop             
  nop                           #  19    0x118ca9  1      OPC=nop             
  nop                           #  20    0x118caa  1      OPC=nop             
  nop                           #  21    0x118cab  1      OPC=nop             
  nop                           #  22    0x118cac  1      OPC=nop             
  nop                           #  23    0x118cad  1      OPC=nop             
  nop                           #  24    0x118cae  1      OPC=nop             
  nop                           #  25    0x118caf  1      OPC=nop             
  nop                           #  26    0x118cb0  1      OPC=nop             
  nop                           #  27    0x118cb1  1      OPC=nop             
  nop                           #  28    0x118cb2  1      OPC=nop             
  nop                           #  29    0x118cb3  1      OPC=nop             
  nop                           #  30    0x118cb4  1      OPC=nop             
  nop                           #  31    0x118cb5  1      OPC=nop             
  nop                           #  32    0x118cb6  1      OPC=nop             
  nop                           #  33    0x118cb7  1      OPC=nop             
  nop                           #  34    0x118cb8  1      OPC=nop             
  nop                           #  35    0x118cb9  1      OPC=nop             
  nop                           #  36    0x118cba  1      OPC=nop             
  nop                           #  37    0x118cbb  1      OPC=nop             
  nop                           #  38    0x118cbc  1      OPC=nop             
  nop                           #  39    0x118cbd  1      OPC=nop             
  nop                           #  40    0x118cbe  1      OPC=nop             
  nop                           #  41    0x118cbf  1      OPC=nop             
.L_118cc0:                      #        0x118cc0  0      OPC=<label>         
  movl -0x118cc6(%rip), %eax    #  42    0x118cc0  6      OPC=movl_r32_m32    
  movl $0x0, 0xff60090(%rip)    #  43    0x118cc6  10     OPC=movl_m32_imm32  
  movl %eax, 0xff60096(%rip)    #  44    0x118cd0  6      OPC=movl_m32_r32    
  movl $0x0, %eax               #  45    0x118cd6  5      OPC=movl_r32_imm32  
  subl $0x0, %eax               #  46    0x118cdb  5      OPC=subl_eax_imm32  
  movl %eax, 0xff6007e(%rip)    #  47    0x118ce0  6      OPC=movl_m32_r32    
  movl $0x0, %eax               #  48    0x118ce6  5      OPC=movl_r32_imm32  
  subl $0x0, %eax               #  49    0x118ceb  5      OPC=subl_eax_imm32  
  movl %eax, 0xff60072(%rip)    #  50    0x118cf0  6      OPC=movl_m32_r32    
  nop                           #  51    0x118cf6  1      OPC=nop             
  nop                           #  52    0x118cf7  1      OPC=nop             
  nop                           #  53    0x118cf8  1      OPC=nop             
  nop                           #  54    0x118cf9  1      OPC=nop             
  nop                           #  55    0x118cfa  1      OPC=nop             
  nop                           #  56    0x118cfb  1      OPC=nop             
  nop                           #  57    0x118cfc  1      OPC=nop             
  nop                           #  58    0x118cfd  1      OPC=nop             
  nop                           #  59    0x118cfe  1      OPC=nop             
  nop                           #  60    0x118cff  1      OPC=nop             
.L_118d00:                      #        0x118d00  0      OPC=<label>         
  popq %r11                     #  61    0x118d00  2      OPC=popq_r64_1      
  movl $0x10078d60, %eax        #  62    0x118d02  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %r11d       #  63    0x118d07  7      OPC=andl_r32_imm32  
  nop                           #  64    0x118d0e  1      OPC=nop             
  nop                           #  65    0x118d0f  1      OPC=nop             
  nop                           #  66    0x118d10  1      OPC=nop             
  nop                           #  67    0x118d11  1      OPC=nop             
  addq %r15, %r11               #  68    0x118d12  3      OPC=addq_r64_r64    
  jmpq %r11                     #  69    0x118d15  3      OPC=jmpq_r64        
  nop                           #  70    0x118d18  1      OPC=nop             
  nop                           #  71    0x118d19  1      OPC=nop             
  nop                           #  72    0x118d1a  1      OPC=nop             
  nop                           #  73    0x118d1b  1      OPC=nop             
  nop                           #  74    0x118d1c  1      OPC=nop             
  nop                           #  75    0x118d1d  1      OPC=nop             
  nop                           #  76    0x118d1e  1      OPC=nop             
  nop                           #  77    0x118d1f  1      OPC=nop             
  nop                           #  78    0x118d20  1      OPC=nop             
  nop                           #  79    0x118d21  1      OPC=nop             
  nop                           #  80    0x118d22  1      OPC=nop             
  nop                           #  81    0x118d23  1      OPC=nop             
  nop                           #  82    0x118d24  1      OPC=nop             
  nop                           #  83    0x118d25  1      OPC=nop             
  nop                           #  84    0x118d26  1      OPC=nop             
.L_118d20:                      #        0x118d27  0      OPC=<label>         
  cmpb $0x1, 0xff072dd(%rip)    #  85    0x118d27  7      OPC=cmpb_m8_imm8    
  jne .L_118ca0                 #  86    0x118d2e  6      OPC=jne_label_1     
  cmpw $0x20, 0xff072f5(%rip)   #  87    0x118d34  8      OPC=cmpw_m16_imm8   
  jne .L_118ca0                 #  88    0x118d3c  6      OPC=jne_label_1     
  nop                           #  89    0x118d42  1      OPC=nop             
  nop                           #  90    0x118d43  1      OPC=nop             
  nop                           #  91    0x118d44  1      OPC=nop             
  nop                           #  92    0x118d45  1      OPC=nop             
  nop                           #  93    0x118d46  1      OPC=nop             
  movl 0xff072d6(%rip), %esi    #  94    0x118d47  6      OPC=movl_r32_m32    
  movzwl 0xff072df(%rip), %edi  #  95    0x118d4d  7      OPC=movzwl_r32_m16  
  xorl %ecx, %ecx               #  96    0x118d54  2      OPC=xorl_r32_r32    
  addl %eax, %esi               #  97    0x118d56  2      OPC=addl_r32_r32    
  jmpq .L_118d80                #  98    0x118d58  2      OPC=jmpq_label      
  nop                           #  99    0x118d5a  1      OPC=nop             
  nop                           #  100   0x118d5b  1      OPC=nop             
  nop                           #  101   0x118d5c  1      OPC=nop             
  nop                           #  102   0x118d5d  1      OPC=nop             
  nop                           #  103   0x118d5e  1      OPC=nop             
  nop                           #  104   0x118d5f  1      OPC=nop             
  nop                           #  105   0x118d60  1      OPC=nop             
  nop                           #  106   0x118d61  1      OPC=nop             
  nop                           #  107   0x118d62  1      OPC=nop             
  nop                           #  108   0x118d63  1      OPC=nop             
  nop                           #  109   0x118d64  1      OPC=nop             
  nop                           #  110   0x118d65  1      OPC=nop             
  nop                           #  111   0x118d66  1      OPC=nop             
.L_118d60:                      #        0x118d67  0      OPC=<label>         
  addl $0x1, %ecx               #  112   0x118d67  3      OPC=addl_r32_imm8   
  nop                           #  113   0x118d6a  1      OPC=nop             
  nop                           #  114   0x118d6b  1      OPC=nop             
  nop                           #  115   0x118d6c  1      OPC=nop             
  nop                           #  116   0x118d6d  1      OPC=nop             
  nop                           #  117   0x118d6e  1      OPC=nop             
  nop                           #  118   0x118d6f  1      OPC=nop             
  nop                           #  119   0x118d70  1      OPC=nop             
  nop                           #  120   0x118d71  1      OPC=nop             
  nop                           #  121   0x118d72  1      OPC=nop             
  nop                           #  122   0x118d73  1      OPC=nop             
  nop                           #  123   0x118d74  1      OPC=nop             
  nop                           #  124   0x118d75  1      OPC=nop             
  nop                           #  125   0x118d76  1      OPC=nop             
  nop                           #  126   0x118d77  1      OPC=nop             
  nop                           #  127   0x118d78  1      OPC=nop             
  nop                           #  128   0x118d79  1      OPC=nop             
  nop                           #  129   0x118d7a  1      OPC=nop             
  nop                           #  130   0x118d7b  1      OPC=nop             
  nop                           #  131   0x118d7c  1      OPC=nop             
  nop                           #  132   0x118d7d  1      OPC=nop             
  nop                           #  133   0x118d7e  1      OPC=nop             
  nop                           #  134   0x118d7f  1      OPC=nop             
  nop                           #  135   0x118d80  1      OPC=nop             
  nop                           #  136   0x118d81  1      OPC=nop             
  nop                           #  137   0x118d82  1      OPC=nop             
  nop                           #  138   0x118d83  1      OPC=nop             
  nop                           #  139   0x118d84  1      OPC=nop             
  nop                           #  140   0x118d85  1      OPC=nop             
  nop                           #  141   0x118d86  1      OPC=nop             
.L_118d80:                      #        0x118d87  0      OPC=<label>         
  cmpl %edi, %ecx               #  142   0x118d87  2      OPC=cmpl_r32_r32    
  jge .L_118ca0                 #  143   0x118d89  6      OPC=jge_label_1     
  movl %esi, %edx               #  144   0x118d8f  2      OPC=movl_r32_r32    
  addl $0x20, %esi              #  145   0x118d91  3      OPC=addl_r32_imm8   
  movl %edx, %edx               #  146   0x118d94  2      OPC=movl_r32_r32    
  cmpl $0x7, (%r15,%rdx,1)      #  147   0x118d96  5      OPC=cmpl_m32_imm8   
  jne .L_118d60                 #  148   0x118d9b  2      OPC=jne_label       
  movl %edx, %edx               #  149   0x118d9d  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rdx,1), %eax  #  150   0x118d9f  5      OPC=movl_r32_m32    
  nop                           #  151   0x118da4  1      OPC=nop             
  nop                           #  152   0x118da5  1      OPC=nop             
  nop                           #  153   0x118da6  1      OPC=nop             
  cmpw $0x3, 0xff07268(%rip)    #  154   0x118da7  8      OPC=cmpw_m16_imm8   
  movl %eax, 0xff5ffbe(%rip)    #  155   0x118daf  6      OPC=movl_m32_r32    
  movl %edx, %edx               #  156   0x118db5  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdx,1), %eax   #  157   0x118db7  5      OPC=movl_r32_m32    
  movl %eax, 0xff5ffa5(%rip)    #  158   0x118dbc  6      OPC=movl_m32_r32    
  nop                           #  159   0x118dc2  1      OPC=nop             
  nop                           #  160   0x118dc3  1      OPC=nop             
  nop                           #  161   0x118dc4  1      OPC=nop             
  nop                           #  162   0x118dc5  1      OPC=nop             
  nop                           #  163   0x118dc6  1      OPC=nop             
  jne .L_118de0                 #  164   0x118dc7  2      OPC=jne_label       
  addl $0x10020000, %eax        #  165   0x118dc9  5      OPC=addl_eax_imm32  
  movl %eax, 0xff5ff93(%rip)    #  166   0x118dce  6      OPC=movl_m32_r32    
  nop                           #  167   0x118dd4  1      OPC=nop             
  nop                           #  168   0x118dd5  1      OPC=nop             
  nop                           #  169   0x118dd6  1      OPC=nop             
  nop                           #  170   0x118dd7  1      OPC=nop             
  nop                           #  171   0x118dd8  1      OPC=nop             
  nop                           #  172   0x118dd9  1      OPC=nop             
  nop                           #  173   0x118dda  1      OPC=nop             
  nop                           #  174   0x118ddb  1      OPC=nop             
  nop                           #  175   0x118ddc  1      OPC=nop             
  nop                           #  176   0x118ddd  1      OPC=nop             
  nop                           #  177   0x118dde  1      OPC=nop             
  nop                           #  178   0x118ddf  1      OPC=nop             
  nop                           #  179   0x118de0  1      OPC=nop             
  nop                           #  180   0x118de1  1      OPC=nop             
  nop                           #  181   0x118de2  1      OPC=nop             
  nop                           #  182   0x118de3  1      OPC=nop             
  nop                           #  183   0x118de4  1      OPC=nop             
  nop                           #  184   0x118de5  1      OPC=nop             
  nop                           #  185   0x118de6  1      OPC=nop             
.L_118de0:                      #        0x118de7  0      OPC=<label>         
  movl %edx, %edx               #  186   0x118de7  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rdx,1), %ecx  #  187   0x118de9  5      OPC=movl_r32_m32    
  movl %ecx, 0xff5ff77(%rip)    #  188   0x118dee  6      OPC=movl_m32_r32    
  movl %edx, %edx               #  189   0x118df4  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdx,1), %eax  #  190   0x118df6  5      OPC=movl_r32_m32    
  subl %ecx, %eax               #  191   0x118dfb  2      OPC=subl_r32_r32    
  movl %eax, 0xff5ff6c(%rip)    #  192   0x118dfd  6      OPC=movl_m32_r32    
  nop                           #  193   0x118e03  1      OPC=nop             
  nop                           #  194   0x118e04  1      OPC=nop             
  nop                           #  195   0x118e05  1      OPC=nop             
  nop                           #  196   0x118e06  1      OPC=nop             
  jmpq .L_118d00                #  197   0x118e07  5      OPC=jmpq_label_1    
  nop                           #  198   0x118e0c  1      OPC=nop             
  nop                           #  199   0x118e0d  1      OPC=nop             
  nop                           #  200   0x118e0e  1      OPC=nop             
  nop                           #  201   0x118e0f  1      OPC=nop             
  nop                           #  202   0x118e10  1      OPC=nop             
  nop                           #  203   0x118e11  1      OPC=nop             
  nop                           #  204   0x118e12  1      OPC=nop             
  nop                           #  205   0x118e13  1      OPC=nop             
  nop                           #  206   0x118e14  1      OPC=nop             
  nop                           #  207   0x118e15  1      OPC=nop             
  nop                           #  208   0x118e16  1      OPC=nop             
  nop                           #  209   0x118e17  1      OPC=nop             
  nop                           #  210   0x118e18  1      OPC=nop             
  nop                           #  211   0x118e19  1      OPC=nop             
  nop                           #  212   0x118e1a  1      OPC=nop             
  nop                           #  213   0x118e1b  1      OPC=nop             
  nop                           #  214   0x118e1c  1      OPC=nop             
  nop                           #  215   0x118e1d  1      OPC=nop             
  nop                           #  216   0x118e1e  1      OPC=nop             
  nop                           #  217   0x118e1f  1      OPC=nop             
  nop                           #  218   0x118e20  1      OPC=nop             
  nop                           #  219   0x118e21  1      OPC=nop             
  nop                           #  220   0x118e22  1      OPC=nop             
  nop                           #  221   0x118e23  1      OPC=nop             
  nop                           #  222   0x118e24  1      OPC=nop             
  nop                           #  223   0x118e25  1      OPC=nop             
  nop                           #  224   0x118e26  1      OPC=nop             
.L_118e20:                      #        0x118e27  0      OPC=<label>         
  cmpb $0x2, 0xff071dd(%rip)    #  225   0x118e27  7      OPC=cmpb_m8_imm8    
  jne .L_118cc0                 #  226   0x118e2e  6      OPC=jne_label_1     
  cmpw $0x38, 0xff07201(%rip)   #  227   0x118e34  8      OPC=cmpw_m16_imm8   
  jne .L_118cc0                 #  228   0x118e3c  6      OPC=jne_label_1     
  nop                           #  229   0x118e42  1      OPC=nop             
  nop                           #  230   0x118e43  1      OPC=nop             
  nop                           #  231   0x118e44  1      OPC=nop             
  nop                           #  232   0x118e45  1      OPC=nop             
  nop                           #  233   0x118e46  1      OPC=nop             
  movq 0xff071d9(%rip), %rcx    #  234   0x118e47  7      OPC=movq_r64_m64    
  movzwl 0xff071ea(%rip), %esi  #  235   0x118e4e  7      OPC=movzwl_r32_m16  
  xorl %edx, %edx               #  236   0x118e55  2      OPC=xorl_r32_r32    
  addl $0x10020000, %ecx        #  237   0x118e57  6      OPC=addl_r32_imm32  
  jmpq .L_118e80                #  238   0x118e5d  2      OPC=jmpq_label      
  nop                           #  239   0x118e5f  1      OPC=nop             
  nop                           #  240   0x118e60  1      OPC=nop             
  nop                           #  241   0x118e61  1      OPC=nop             
  nop                           #  242   0x118e62  1      OPC=nop             
  nop                           #  243   0x118e63  1      OPC=nop             
  nop                           #  244   0x118e64  1      OPC=nop             
  nop                           #  245   0x118e65  1      OPC=nop             
  nop                           #  246   0x118e66  1      OPC=nop             
.L_118e60:                      #        0x118e67  0      OPC=<label>         
  addl $0x1, %edx               #  247   0x118e67  3      OPC=addl_r32_imm8   
  nop                           #  248   0x118e6a  1      OPC=nop             
  nop                           #  249   0x118e6b  1      OPC=nop             
  nop                           #  250   0x118e6c  1      OPC=nop             
  nop                           #  251   0x118e6d  1      OPC=nop             
  nop                           #  252   0x118e6e  1      OPC=nop             
  nop                           #  253   0x118e6f  1      OPC=nop             
  nop                           #  254   0x118e70  1      OPC=nop             
  nop                           #  255   0x118e71  1      OPC=nop             
  nop                           #  256   0x118e72  1      OPC=nop             
  nop                           #  257   0x118e73  1      OPC=nop             
  nop                           #  258   0x118e74  1      OPC=nop             
  nop                           #  259   0x118e75  1      OPC=nop             
  nop                           #  260   0x118e76  1      OPC=nop             
  nop                           #  261   0x118e77  1      OPC=nop             
  nop                           #  262   0x118e78  1      OPC=nop             
  nop                           #  263   0x118e79  1      OPC=nop             
  nop                           #  264   0x118e7a  1      OPC=nop             
  nop                           #  265   0x118e7b  1      OPC=nop             
  nop                           #  266   0x118e7c  1      OPC=nop             
  nop                           #  267   0x118e7d  1      OPC=nop             
  nop                           #  268   0x118e7e  1      OPC=nop             
  nop                           #  269   0x118e7f  1      OPC=nop             
  nop                           #  270   0x118e80  1      OPC=nop             
  nop                           #  271   0x118e81  1      OPC=nop             
  nop                           #  272   0x118e82  1      OPC=nop             
  nop                           #  273   0x118e83  1      OPC=nop             
  nop                           #  274   0x118e84  1      OPC=nop             
  nop                           #  275   0x118e85  1      OPC=nop             
  nop                           #  276   0x118e86  1      OPC=nop             
.L_118e80:                      #        0x118e87  0      OPC=<label>         
  cmpl %esi, %edx               #  277   0x118e87  2      OPC=cmpl_r32_r32    
  jge .L_118cc0                 #  278   0x118e89  6      OPC=jge_label_1     
  movl %ecx, %eax               #  279   0x118e8f  2      OPC=movl_r32_r32    
  addl $0x38, %ecx              #  280   0x118e91  3      OPC=addl_r32_imm8   
  movl %eax, %eax               #  281   0x118e94  2      OPC=movl_r32_r32    
  cmpl $0x7, (%r15,%rax,1)      #  282   0x118e96  5      OPC=cmpl_m32_imm8   
  jne .L_118e60                 #  283   0x118e9b  2      OPC=jne_label       
  movl %eax, %eax               #  284   0x118e9d  2      OPC=movl_r32_r32    
  movq 0x30(%r15,%rax,1), %rdx  #  285   0x118e9f  5      OPC=movq_r64_m64    
  nop                           #  286   0x118ea4  1      OPC=nop             
  nop                           #  287   0x118ea5  1      OPC=nop             
  nop                           #  288   0x118ea6  1      OPC=nop             
  cmpw $0x3, 0xff07168(%rip)    #  289   0x118ea7  8      OPC=cmpw_m16_imm8   
  movl %edx, 0xff5febe(%rip)    #  290   0x118eaf  6      OPC=movl_m32_r32    
  movl %eax, %eax               #  291   0x118eb5  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %edx  #  292   0x118eb7  5      OPC=movl_r32_m32    
  movl %edx, 0xff5fea5(%rip)    #  293   0x118ebc  6      OPC=movl_m32_r32    
  nop                           #  294   0x118ec2  1      OPC=nop             
  nop                           #  295   0x118ec3  1      OPC=nop             
  nop                           #  296   0x118ec4  1      OPC=nop             
  nop                           #  297   0x118ec5  1      OPC=nop             
  nop                           #  298   0x118ec6  1      OPC=nop             
  jne .L_118ee0                 #  299   0x118ec7  2      OPC=jne_label       
  addl $0x10020000, %edx        #  300   0x118ec9  6      OPC=addl_r32_imm32  
  movl %edx, 0xff5fe92(%rip)    #  301   0x118ecf  6      OPC=movl_m32_r32    
  nop                           #  302   0x118ed5  1      OPC=nop             
  nop                           #  303   0x118ed6  1      OPC=nop             
  nop                           #  304   0x118ed7  1      OPC=nop             
  nop                           #  305   0x118ed8  1      OPC=nop             
  nop                           #  306   0x118ed9  1      OPC=nop             
  nop                           #  307   0x118eda  1      OPC=nop             
  nop                           #  308   0x118edb  1      OPC=nop             
  nop                           #  309   0x118edc  1      OPC=nop             
  nop                           #  310   0x118edd  1      OPC=nop             
  nop                           #  311   0x118ede  1      OPC=nop             
  nop                           #  312   0x118edf  1      OPC=nop             
  nop                           #  313   0x118ee0  1      OPC=nop             
  nop                           #  314   0x118ee1  1      OPC=nop             
  nop                           #  315   0x118ee2  1      OPC=nop             
  nop                           #  316   0x118ee3  1      OPC=nop             
  nop                           #  317   0x118ee4  1      OPC=nop             
  nop                           #  318   0x118ee5  1      OPC=nop             
  nop                           #  319   0x118ee6  1      OPC=nop             
.L_118ee0:                      #        0x118ee7  0      OPC=<label>         
  movl %eax, %eax               #  320   0x118ee7  2      OPC=movl_r32_r32    
  movq 0x20(%r15,%rax,1), %rdx  #  321   0x118ee9  5      OPC=movq_r64_m64    
  movl %eax, %eax               #  322   0x118eee  2      OPC=movl_r32_r32    
  movq 0x28(%r15,%rax,1), %rax  #  323   0x118ef0  5      OPC=movq_r64_m64    
  subl %edx, %eax               #  324   0x118ef5  2      OPC=subl_r32_r32    
  movl %edx, 0xff5fe6e(%rip)    #  325   0x118ef7  6      OPC=movl_m32_r32    
  movl %eax, 0xff5fe6c(%rip)    #  326   0x118efd  6      OPC=movl_m32_r32    
  nop                           #  327   0x118f03  1      OPC=nop             
  nop                           #  328   0x118f04  1      OPC=nop             
  nop                           #  329   0x118f05  1      OPC=nop             
  nop                           #  330   0x118f06  1      OPC=nop             
  jmpq .L_118d00                #  331   0x118f07  5      OPC=jmpq_label_1    
  nop                           #  332   0x118f0c  1      OPC=nop             
  nop                           #  333   0x118f0d  1      OPC=nop             
  nop                           #  334   0x118f0e  1      OPC=nop             
  nop                           #  335   0x118f0f  1      OPC=nop             
  nop                           #  336   0x118f10  1      OPC=nop             
  nop                           #  337   0x118f11  1      OPC=nop             
  nop                           #  338   0x118f12  1      OPC=nop             
  nop                           #  339   0x118f13  1      OPC=nop             
  nop                           #  340   0x118f14  1      OPC=nop             
  nop                           #  341   0x118f15  1      OPC=nop             
  nop                           #  342   0x118f16  1      OPC=nop             
  nop                           #  343   0x118f17  1      OPC=nop             
  nop                           #  344   0x118f18  1      OPC=nop             
  nop                           #  345   0x118f19  1      OPC=nop             
  nop                           #  346   0x118f1a  1      OPC=nop             
  nop                           #  347   0x118f1b  1      OPC=nop             
  nop                           #  348   0x118f1c  1      OPC=nop             
  nop                           #  349   0x118f1d  1      OPC=nop             
  nop                           #  350   0x118f1e  1      OPC=nop             
  nop                           #  351   0x118f1f  1      OPC=nop             
  nop                           #  352   0x118f20  1      OPC=nop             
  nop                           #  353   0x118f21  1      OPC=nop             
  nop                           #  354   0x118f22  1      OPC=nop             
  nop                           #  355   0x118f23  1      OPC=nop             
  nop                           #  356   0x118f24  1      OPC=nop             
  nop                           #  357   0x118f25  1      OPC=nop             
  nop                           #  358   0x118f26  1      OPC=nop             
                                                                              
.size get_tls_info, .-get_tls_info
