  .text
  .globl __ssprint_r
  .type __ssprint_r, @function

#! file-offset 0x80dc0
#! rip-offset  0x80dc0
#! capacity    1024 bytes

# Text                           #  Line  RIP      Bytes  
.__ssprint_r:                    #        0x80dc0  0      
  pushq %r14                     #  1     0x80dc0  3      
  movl %edx, %edx                #  2     0x80dc3  2      
  movl %edi, %edi                #  3     0x80dc5  2      
  xorl %r8d, %r8d                #  4     0x80dc7  3      
  pushq %r13                     #  5     0x80dca  3      
  pushq %r12                     #  6     0x80dcd  3      
  xorl %r12d, %r12d              #  7     0x80dd0  3      
  pushq %rbx                     #  8     0x80dd3  2      
  movl %esi, %ebx                #  9     0x80dd5  2      
  subl $0x38, %esp               #  10    0x80dd7  3      
  addq %r15, %rsp                #  11    0x80dda  3      
  movl %edx, %edx                #  12    0x80ddd  2      
  movl 0x8(%r15,%rdx,1), %eax    #  13    0x80ddf  5      
  movl %edx, %edx                #  14    0x80de4  2      
  movl (%r15,%rdx,1), %r14d      #  15    0x80de6  4      
  movq %rdi, 0x28(%rsp)          #  16    0x80dea  5      
  movq %rdx, 0x20(%rsp)          #  17    0x80def  5      
  testl %eax, %eax               #  18    0x80df4  2      
  je .L_81160                    #  19    0x80df6  6      
  testl %r12d, %r12d             #  20    0x80dfc  3      
  nop                            #  21    0x80dff  1      
  je .L_80ea0                    #  22    0x80e00  6      
  movl %ebx, %ebx                #  23    0x80e06  2      
  movl 0x8(%r15,%rbx,1), %r13d   #  24    0x80e08  5      
  cmpl %r13d, %r12d              #  25    0x80e0d  3      
  movl %r13d, %ecx               #  26    0x80e10  3      
  jae .L_80ee0                   #  27    0x80e13  6      
  nop                            #  28    0x80e19  1      
.L_80e20:                        #        0x80e1a  0      
  movl %ebx, %ebx                #  29    0x80e1a  2      
  movl (%r15,%rbx,1), %edi       #  30    0x80e1c  4      
  movl %r12d, %r13d              #  31    0x80e20  3      
  movl %r12d, %ecx               #  32    0x80e23  3      
  nop                            #  33    0x80e26  1      
  nop                            #  34    0x80e27  1      
.L_80e40:                        #        0x80e28  0      
  movl %ecx, %edx                #  35    0x80e28  2      
  movl %r8d, %esi                #  36    0x80e2a  3      
  movl %ecx, 0x8(%rsp)           #  37    0x80e2d  4      
  nop                            #  38    0x80e31  1      
  nop                            #  39    0x80e32  1      
  callq .memmove                 #  40    0x80e33  5      
  movq 0x20(%rsp), %rdx          #  41    0x80e38  5      
  movl %ebx, %ebx                #  42    0x80e3d  2      
  subl %r13d, 0x8(%r15,%rbx,1)   #  43    0x80e3f  5      
  movl 0x8(%rsp), %ecx           #  44    0x80e44  4      
  movl %ebx, %ebx                #  45    0x80e48  2      
  addl %ecx, (%r15,%rbx,1)       #  46    0x80e4a  4      
  movl %edx, %edx                #  47    0x80e4e  2      
  movl 0x8(%r15,%rdx,1), %eax    #  48    0x80e50  5      
  subl %r12d, %eax               #  49    0x80e55  3      
  testl %eax, %eax               #  50    0x80e58  2      
  movl %edx, %edx                #  51    0x80e5a  2      
  movl %eax, 0x8(%r15,%rdx,1)    #  52    0x80e5c  5      
  je .L_81120                    #  53    0x80e61  6      
  xchgw %ax, %ax                 #  54    0x80e67  3      
  nop                            #  55    0x80e6a  1      
.L_80ea0:                        #        0x80e6b  0      
  movl %r14d, %r14d              #  56    0x80e6b  3      
  movl 0x4(%r15,%r14,1), %r12d   #  57    0x80e6e  5      
  movl %r14d, %r14d              #  58    0x80e73  3      
  movl (%r15,%r14,1), %r8d       #  59    0x80e76  4      
  addl $0x8, %r14d               #  60    0x80e7a  4      
  testl %r12d, %r12d             #  61    0x80e7e  3      
  je .L_80ea0                    #  62    0x80e81  6      
  movl %ebx, %ebx                #  63    0x80e87  2      
  movl 0x8(%r15,%rbx,1), %r13d   #  64    0x80e89  5      
  nop                            #  65    0x80e8e  1      
  cmpl %r13d, %r12d              #  66    0x80e8f  3      
  movl %r13d, %ecx               #  67    0x80e92  3      
  jb .L_80e20                    #  68    0x80e95  6      
  nop                            #  69    0x80e9b  1      
  nop                            #  70    0x80e9c  1      
.L_80ee0:                        #        0x80e9d  0      
  movl %ebx, %ebx                #  71    0x80e9d  2      
  movswl 0xc(%r15,%rbx,1), %edi  #  72    0x80e9f  6      
  testl $0x480, %edi             #  73    0x80ea5  6      
  jne .L_80f00                   #  74    0x80eab  6      
  movl %ebx, %ebx                #  75    0x80eb1  2      
  movl (%r15,%rbx,1), %edi       #  76    0x80eb3  4      
  jmpq .L_80e40                  #  77    0x80eb7  5      
  nop                            #  78    0x80ebc  1      
.L_80f00:                        #        0x80ebd  0      
  movl %ebx, %ebx                #  79    0x80ebd  2      
  movl 0x14(%r15,%rbx,1), %ecx   #  80    0x80ebf  5      
  movl %ebx, %ebx                #  81    0x80ec4  2      
  movl 0x10(%r15,%rbx,1), %eax   #  82    0x80ec6  5      
  movl %ebx, %ebx                #  83    0x80ecb  2      
  movl (%r15,%rbx,1), %r9d       #  84    0x80ecd  4      
  leal (%rcx,%rcx,2), %ecx       #  85    0x80ed1  3      
  subl %eax, %r9d                #  86    0x80ed4  3      
  movl %ecx, %edx                #  87    0x80ed7  2      
  nop                            #  88    0x80ed9  1      
  leal 0x1(%r9,%r12,1), %r10d    #  89    0x80eda  5      
  shrl $0x1f, %edx               #  90    0x80edf  3      
  leal (%rdx,%rcx,1), %ecx       #  91    0x80ee2  3      
  sarl $0x1, %ecx                #  92    0x80ee5  2      
  cmpl %r10d, %ecx               #  93    0x80ee7  3      
  movl %ecx, %edx                #  94    0x80eea  2      
  jae .L_80f40                   #  95    0x80eec  6      
  movl %r10d, %ecx               #  96    0x80ef2  3      
  movl %r10d, %edx               #  97    0x80ef5  3      
  nop                            #  98    0x80ef8  1      
.L_80f40:                        #        0x80ef9  0      
  andl $0x400, %edi              #  99    0x80ef9  6      
  je .L_81040                    #  100   0x80eff  6      
  movl 0x28(%rsp), %edi          #  101   0x80f05  4      
  movl %edx, %esi                #  102   0x80f09  2      
  movl %ecx, 0x8(%rsp)           #  103   0x80f0b  4      
  movq %r8, 0x10(%rsp)           #  104   0x80f0f  5      
  movl %r9d, 0x18(%rsp)          #  105   0x80f14  5      
  nop                            #  106   0x80f19  1      
  nop                            #  107   0x80f1a  1      
  callq ._malloc_r               #  108   0x80f1b  5      
  movl %eax, %r13d               #  109   0x80f20  3      
  movl 0x8(%rsp), %ecx           #  110   0x80f23  4      
  movq 0x10(%rsp), %r8           #  111   0x80f27  5      
  testq %r13, %r13               #  112   0x80f2c  3      
  movl 0x18(%rsp), %r9d          #  113   0x80f2f  5      
  je .L_811a0                    #  114   0x80f34  6      
  nop                            #  115   0x80f3a  1      
  movl %ebx, %ebx                #  116   0x80f3b  2      
  movl 0x10(%r15,%rbx,1), %esi   #  117   0x80f3d  5      
  movl %r9d, %edx                #  118   0x80f42  3      
  movl %r13d, %edi               #  119   0x80f45  3      
  movl %ecx, 0x8(%rsp)           #  120   0x80f48  4      
  movq %r8, 0x10(%rsp)           #  121   0x80f4c  5      
  movl %r9d, 0x18(%rsp)          #  122   0x80f51  5      
  callq .memcpy                  #  123   0x80f56  5      
  movl %ebx, %ebx                #  124   0x80f5b  2      
  movzwl 0xc(%r15,%rbx,1), %eax  #  125   0x80f5d  6      
  movl 0x8(%rsp), %ecx           #  126   0x80f63  4      
  movq 0x10(%rsp), %r8           #  127   0x80f67  5      
  movl 0x18(%rsp), %r9d          #  128   0x80f6c  5      
  andw $0xfb7f, %ax              #  129   0x80f71  4      
  orb $0x80, %al                 #  130   0x80f75  2      
  nop                            #  131   0x80f77  1      
  movl %ebx, %ebx                #  132   0x80f78  2      
  movw %ax, 0xc(%r15,%rbx,1)     #  133   0x80f7a  6      
  nop                            #  134   0x80f80  1      
  nop                            #  135   0x80f81  1      
.L_81000:                        #        0x80f82  0      
  leal (%r9,%r13,1), %edi        #  136   0x80f82  4      
  movl %ebx, %ebx                #  137   0x80f86  2      
  movl %ecx, 0x14(%r15,%rbx,1)   #  138   0x80f88  5      
  subl %r9d, %ecx                #  139   0x80f8d  3      
  movl %ebx, %ebx                #  140   0x80f90  2      
  movl %r13d, 0x10(%r15,%rbx,1)  #  141   0x80f92  5      
  movl %ebx, %ebx                #  142   0x80f97  2      
  movl %ecx, 0x8(%r15,%rbx,1)    #  143   0x80f99  5      
  movl %r12d, %r13d              #  144   0x80f9e  3      
  nop                            #  145   0x80fa1  1      
  movl %ebx, %ebx                #  146   0x80fa2  2      
  movl %edi, (%r15,%rbx,1)       #  147   0x80fa4  4      
  movl %r12d, %ecx               #  148   0x80fa8  3      
  jmpq .L_80e40                  #  149   0x80fab  5      
  nop                            #  150   0x80fb0  1      
  nop                            #  151   0x80fb1  1      
.L_81040:                        #        0x80fb2  0      
  movl 0x28(%rsp), %edi          #  152   0x80fb2  4      
  movl %eax, %esi                #  153   0x80fb6  2      
  movl %ecx, 0x8(%rsp)           #  154   0x80fb8  4      
  movq %r8, 0x10(%rsp)           #  155   0x80fbc  5      
  movl %r9d, 0x18(%rsp)          #  156   0x80fc1  5      
  nop                            #  157   0x80fc6  1      
  callq ._realloc_r              #  158   0x80fc7  5      
  movl %eax, %r13d               #  159   0x80fcc  3      
  movl 0x8(%rsp), %ecx           #  160   0x80fcf  4      
  movq 0x10(%rsp), %r8           #  161   0x80fd3  5      
  testq %r13, %r13               #  162   0x80fd8  3      
  movl 0x18(%rsp), %r9d          #  163   0x80fdb  5      
  jne .L_81000                   #  164   0x80fe0  6      
  movl %ebx, %ebx                #  165   0x80fe6  2      
  movl 0x10(%r15,%rbx,1), %esi   #  166   0x80fe8  5      
  nop                            #  167   0x80fed  1      
  movl 0x28(%rsp), %edi          #  168   0x80fee  4      
  nop                            #  169   0x80ff2  1      
  nop                            #  170   0x80ff3  1      
  callq ._free_r                 #  171   0x80ff4  5      
  movq 0x28(%rsp), %rax          #  172   0x80ff9  5      
  movl %eax, %eax                #  173   0x80ffe  2      
  movl $0xc, (%r15,%rax,1)       #  174   0x81000  8      
  xchgw %ax, %ax                 #  175   0x81008  3      
  nop                            #  176   0x8100b  1      
.L_810c0:                        #        0x8100c  0      
  movq 0x20(%rsp), %rdx          #  177   0x8100c  5      
  movl %ebx, %ebx                #  178   0x81011  2      
  orw $0x40, 0xc(%r15,%rbx,1)    #  179   0x81013  7      
  movl $0xffffffff, %eax         #  180   0x8101a  5      
  movl %edx, %edx                #  181   0x8101f  2      
  movl $0x0, 0x8(%r15,%rdx,1)    #  182   0x81021  9      
  xchgw %ax, %ax                 #  183   0x8102a  3      
  movl %edx, %edx                #  184   0x8102d  2      
  movl $0x0, 0x4(%r15,%rdx,1)    #  185   0x8102f  9      
  addl $0x38, %esp               #  186   0x81038  3      
  addq %r15, %rsp                #  187   0x8103b  3      
  popq %rbx                      #  188   0x8103e  2      
  popq %r12                      #  189   0x81040  3      
  popq %r13                      #  190   0x81043  3      
  popq %r14                      #  191   0x81046  3      
  popq %r11                      #  192   0x81049  3      
  nop                            #  193   0x8104c  1      
  andl $0xffffffe0, %r11d        #  194   0x8104d  7      
  addq %r15, %r11                #  195   0x81054  3      
  jmpq %r11                      #  196   0x81057  3      
  nop                            #  197   0x8105a  1      
  nop                            #  198   0x8105b  1      
.L_81120:                        #        0x8105c  0      
  movl %edx, %edx                #  199   0x8105c  2      
  movl $0x0, 0x8(%r15,%rdx,1)    #  200   0x8105e  9      
  movl %edx, %edx                #  201   0x81067  2      
  movl $0x0, 0x4(%r15,%rdx,1)    #  202   0x81069  9      
  addl $0x38, %esp               #  203   0x81072  3      
  addq %r15, %rsp                #  204   0x81075  3      
  popq %rbx                      #  205   0x81078  2      
  popq %r12                      #  206   0x8107a  3      
  nop                            #  207   0x8107d  1      
  popq %r13                      #  208   0x8107e  3      
  popq %r14                      #  209   0x81081  3      
  popq %r11                      #  210   0x81084  3      
  xorl %eax, %eax                #  211   0x81087  2      
  andl $0xffffffe0, %r11d        #  212   0x81089  7      
  addq %r15, %r11                #  213   0x81090  3      
  jmpq %r11                      #  214   0x81093  3      
  nop                            #  215   0x81096  1      
.L_81160:                        #        0x81097  0      
  movl %edx, %edx                #  216   0x81097  2      
  movl $0x0, 0x4(%r15,%rdx,1)    #  217   0x81099  9      
  addl $0x38, %esp               #  218   0x810a2  3      
  addq %r15, %rsp                #  219   0x810a5  3      
  xorl %eax, %eax                #  220   0x810a8  2      
  popq %rbx                      #  221   0x810aa  2      
  popq %r12                      #  222   0x810ac  3      
  popq %r13                      #  223   0x810af  3      
  popq %r14                      #  224   0x810b2  3      
  popq %r11                      #  225   0x810b5  3      
  nop                            #  226   0x810b8  1      
  andl $0xffffffe0, %r11d        #  227   0x810b9  7      
  addq %r15, %r11                #  228   0x810c0  3      
  jmpq %r11                      #  229   0x810c3  3      
  nop                            #  230   0x810c6  1      
  nop                            #  231   0x810c7  1      
.L_811a0:                        #        0x810c8  0      
  movq 0x28(%rsp), %rdx          #  232   0x810c8  5      
  movl %edx, %edx                #  233   0x810cd  2      
  movl $0xc, (%r15,%rdx,1)       #  234   0x810cf  8      
  jmpq .L_810c0                  #  235   0x810d7  5      
  nop                            #  236   0x810dc  1      
                                                          
.size __ssprint_r, .-__ssprint_r

