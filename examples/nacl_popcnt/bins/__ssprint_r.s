  .text
  .globl __ssprint_r
  .type __ssprint_r, @function

#! file-offset 0x80d40
#! rip-offset  0x80d40
#! capacity    1024 bytes

# Text                           #  Line  RIP      Bytes  
.__ssprint_r:                    #        0x80d40  0      
  pushq %r14                     #  1     0x80d40  3      
  movl %edx, %edx                #  2     0x80d43  2      
  movl %edi, %edi                #  3     0x80d45  2      
  xorl %r8d, %r8d                #  4     0x80d47  3      
  pushq %r13                     #  5     0x80d4a  3      
  pushq %r12                     #  6     0x80d4d  3      
  xorl %r12d, %r12d              #  7     0x80d50  3      
  pushq %rbx                     #  8     0x80d53  2      
  movl %esi, %ebx                #  9     0x80d55  2      
  subl $0x38, %esp               #  10    0x80d57  3      
  addq %r15, %rsp                #  11    0x80d5a  3      
  movl %edx, %edx                #  12    0x80d5d  2      
  movl 0x8(%r15,%rdx,1), %eax    #  13    0x80d5f  5      
  movl %edx, %edx                #  14    0x80d64  2      
  movl (%r15,%rdx,1), %r14d      #  15    0x80d66  4      
  movq %rdi, 0x28(%rsp)          #  16    0x80d6a  5      
  movq %rdx, 0x20(%rsp)          #  17    0x80d6f  5      
  testl %eax, %eax               #  18    0x80d74  2      
  je .L_810e0                    #  19    0x80d76  6      
  testl %r12d, %r12d             #  20    0x80d7c  3      
  nop                            #  21    0x80d7f  1      
  je .L_80e20                    #  22    0x80d80  6      
  movl %ebx, %ebx                #  23    0x80d86  2      
  movl 0x8(%r15,%rbx,1), %r13d   #  24    0x80d88  5      
  cmpl %r13d, %r12d              #  25    0x80d8d  3      
  movl %r13d, %ecx               #  26    0x80d90  3      
  jae .L_80e60                   #  27    0x80d93  6      
  nop                            #  28    0x80d99  1      
.L_80da0:                        #        0x80d9a  0      
  movl %ebx, %ebx                #  29    0x80d9a  2      
  movl (%r15,%rbx,1), %edi       #  30    0x80d9c  4      
  movl %r12d, %r13d              #  31    0x80da0  3      
  movl %r12d, %ecx               #  32    0x80da3  3      
  nop                            #  33    0x80da6  1      
  nop                            #  34    0x80da7  1      
.L_80dc0:                        #        0x80da8  0      
  movl %ecx, %edx                #  35    0x80da8  2      
  movl %r8d, %esi                #  36    0x80daa  3      
  movl %ecx, 0x8(%rsp)           #  37    0x80dad  4      
  nop                            #  38    0x80db1  1      
  nop                            #  39    0x80db2  1      
  callq .memmove                 #  40    0x80db3  5      
  movq 0x20(%rsp), %rdx          #  41    0x80db8  5      
  movl %ebx, %ebx                #  42    0x80dbd  2      
  subl %r13d, 0x8(%r15,%rbx,1)   #  43    0x80dbf  5      
  movl 0x8(%rsp), %ecx           #  44    0x80dc4  4      
  movl %ebx, %ebx                #  45    0x80dc8  2      
  addl %ecx, (%r15,%rbx,1)       #  46    0x80dca  4      
  movl %edx, %edx                #  47    0x80dce  2      
  movl 0x8(%r15,%rdx,1), %eax    #  48    0x80dd0  5      
  subl %r12d, %eax               #  49    0x80dd5  3      
  testl %eax, %eax               #  50    0x80dd8  2      
  movl %edx, %edx                #  51    0x80dda  2      
  movl %eax, 0x8(%r15,%rdx,1)    #  52    0x80ddc  5      
  je .L_810a0                    #  53    0x80de1  6      
  xchgw %ax, %ax                 #  54    0x80de7  3      
  nop                            #  55    0x80dea  1      
.L_80e20:                        #        0x80deb  0      
  movl %r14d, %r14d              #  56    0x80deb  3      
  movl 0x4(%r15,%r14,1), %r12d   #  57    0x80dee  5      
  movl %r14d, %r14d              #  58    0x80df3  3      
  movl (%r15,%r14,1), %r8d       #  59    0x80df6  4      
  addl $0x8, %r14d               #  60    0x80dfa  4      
  testl %r12d, %r12d             #  61    0x80dfe  3      
  je .L_80e20                    #  62    0x80e01  6      
  movl %ebx, %ebx                #  63    0x80e07  2      
  movl 0x8(%r15,%rbx,1), %r13d   #  64    0x80e09  5      
  nop                            #  65    0x80e0e  1      
  cmpl %r13d, %r12d              #  66    0x80e0f  3      
  movl %r13d, %ecx               #  67    0x80e12  3      
  jb .L_80da0                    #  68    0x80e15  6      
  nop                            #  69    0x80e1b  1      
  nop                            #  70    0x80e1c  1      
.L_80e60:                        #        0x80e1d  0      
  movl %ebx, %ebx                #  71    0x80e1d  2      
  movswl 0xc(%r15,%rbx,1), %edi  #  72    0x80e1f  6      
  testl $0x480, %edi             #  73    0x80e25  6      
  jne .L_80e80                   #  74    0x80e2b  6      
  movl %ebx, %ebx                #  75    0x80e31  2      
  movl (%r15,%rbx,1), %edi       #  76    0x80e33  4      
  jmpq .L_80dc0                  #  77    0x80e37  5      
  nop                            #  78    0x80e3c  1      
.L_80e80:                        #        0x80e3d  0      
  movl %ebx, %ebx                #  79    0x80e3d  2      
  movl 0x14(%r15,%rbx,1), %ecx   #  80    0x80e3f  5      
  movl %ebx, %ebx                #  81    0x80e44  2      
  movl 0x10(%r15,%rbx,1), %eax   #  82    0x80e46  5      
  movl %ebx, %ebx                #  83    0x80e4b  2      
  movl (%r15,%rbx,1), %r9d       #  84    0x80e4d  4      
  leal (%rcx,%rcx,2), %ecx       #  85    0x80e51  3      
  subl %eax, %r9d                #  86    0x80e54  3      
  movl %ecx, %edx                #  87    0x80e57  2      
  nop                            #  88    0x80e59  1      
  leal 0x1(%r9,%r12,1), %r10d    #  89    0x80e5a  5      
  shrl $0x1f, %edx               #  90    0x80e5f  3      
  leal (%rdx,%rcx,1), %ecx       #  91    0x80e62  3      
  sarl $0x1, %ecx                #  92    0x80e65  2      
  cmpl %r10d, %ecx               #  93    0x80e67  3      
  movl %ecx, %edx                #  94    0x80e6a  2      
  jae .L_80ec0                   #  95    0x80e6c  6      
  movl %r10d, %ecx               #  96    0x80e72  3      
  movl %r10d, %edx               #  97    0x80e75  3      
  nop                            #  98    0x80e78  1      
.L_80ec0:                        #        0x80e79  0      
  andl $0x400, %edi              #  99    0x80e79  6      
  je .L_80fc0                    #  100   0x80e7f  6      
  movl 0x28(%rsp), %edi          #  101   0x80e85  4      
  movl %edx, %esi                #  102   0x80e89  2      
  movl %ecx, 0x8(%rsp)           #  103   0x80e8b  4      
  movq %r8, 0x10(%rsp)           #  104   0x80e8f  5      
  movl %r9d, 0x18(%rsp)          #  105   0x80e94  5      
  nop                            #  106   0x80e99  1      
  nop                            #  107   0x80e9a  1      
  callq ._malloc_r               #  108   0x80e9b  5      
  movl %eax, %r13d               #  109   0x80ea0  3      
  movl 0x8(%rsp), %ecx           #  110   0x80ea3  4      
  movq 0x10(%rsp), %r8           #  111   0x80ea7  5      
  testq %r13, %r13               #  112   0x80eac  3      
  movl 0x18(%rsp), %r9d          #  113   0x80eaf  5      
  je .L_81120                    #  114   0x80eb4  6      
  nop                            #  115   0x80eba  1      
  movl %ebx, %ebx                #  116   0x80ebb  2      
  movl 0x10(%r15,%rbx,1), %esi   #  117   0x80ebd  5      
  movl %r9d, %edx                #  118   0x80ec2  3      
  movl %r13d, %edi               #  119   0x80ec5  3      
  movl %ecx, 0x8(%rsp)           #  120   0x80ec8  4      
  movq %r8, 0x10(%rsp)           #  121   0x80ecc  5      
  movl %r9d, 0x18(%rsp)          #  122   0x80ed1  5      
  callq .memcpy                  #  123   0x80ed6  5      
  movl %ebx, %ebx                #  124   0x80edb  2      
  movzwl 0xc(%r15,%rbx,1), %eax  #  125   0x80edd  6      
  movl 0x8(%rsp), %ecx           #  126   0x80ee3  4      
  movq 0x10(%rsp), %r8           #  127   0x80ee7  5      
  movl 0x18(%rsp), %r9d          #  128   0x80eec  5      
  andw $0xfb7f, %ax              #  129   0x80ef1  4      
  orb $0x80, %al                 #  130   0x80ef5  2      
  nop                            #  131   0x80ef7  1      
  movl %ebx, %ebx                #  132   0x80ef8  2      
  movw %ax, 0xc(%r15,%rbx,1)     #  133   0x80efa  6      
  nop                            #  134   0x80f00  1      
  nop                            #  135   0x80f01  1      
.L_80f80:                        #        0x80f02  0      
  leal (%r9,%r13,1), %edi        #  136   0x80f02  4      
  movl %ebx, %ebx                #  137   0x80f06  2      
  movl %ecx, 0x14(%r15,%rbx,1)   #  138   0x80f08  5      
  subl %r9d, %ecx                #  139   0x80f0d  3      
  movl %ebx, %ebx                #  140   0x80f10  2      
  movl %r13d, 0x10(%r15,%rbx,1)  #  141   0x80f12  5      
  movl %ebx, %ebx                #  142   0x80f17  2      
  movl %ecx, 0x8(%r15,%rbx,1)    #  143   0x80f19  5      
  movl %r12d, %r13d              #  144   0x80f1e  3      
  nop                            #  145   0x80f21  1      
  movl %ebx, %ebx                #  146   0x80f22  2      
  movl %edi, (%r15,%rbx,1)       #  147   0x80f24  4      
  movl %r12d, %ecx               #  148   0x80f28  3      
  jmpq .L_80dc0                  #  149   0x80f2b  5      
  nop                            #  150   0x80f30  1      
  nop                            #  151   0x80f31  1      
.L_80fc0:                        #        0x80f32  0      
  movl 0x28(%rsp), %edi          #  152   0x80f32  4      
  movl %eax, %esi                #  153   0x80f36  2      
  movl %ecx, 0x8(%rsp)           #  154   0x80f38  4      
  movq %r8, 0x10(%rsp)           #  155   0x80f3c  5      
  movl %r9d, 0x18(%rsp)          #  156   0x80f41  5      
  nop                            #  157   0x80f46  1      
  callq ._realloc_r              #  158   0x80f47  5      
  movl %eax, %r13d               #  159   0x80f4c  3      
  movl 0x8(%rsp), %ecx           #  160   0x80f4f  4      
  movq 0x10(%rsp), %r8           #  161   0x80f53  5      
  testq %r13, %r13               #  162   0x80f58  3      
  movl 0x18(%rsp), %r9d          #  163   0x80f5b  5      
  jne .L_80f80                   #  164   0x80f60  6      
  movl %ebx, %ebx                #  165   0x80f66  2      
  movl 0x10(%r15,%rbx,1), %esi   #  166   0x80f68  5      
  nop                            #  167   0x80f6d  1      
  movl 0x28(%rsp), %edi          #  168   0x80f6e  4      
  nop                            #  169   0x80f72  1      
  nop                            #  170   0x80f73  1      
  callq ._free_r                 #  171   0x80f74  5      
  movq 0x28(%rsp), %rax          #  172   0x80f79  5      
  movl %eax, %eax                #  173   0x80f7e  2      
  movl $0xc, (%r15,%rax,1)       #  174   0x80f80  8      
  xchgw %ax, %ax                 #  175   0x80f88  3      
  nop                            #  176   0x80f8b  1      
.L_81040:                        #        0x80f8c  0      
  movq 0x20(%rsp), %rdx          #  177   0x80f8c  5      
  movl %ebx, %ebx                #  178   0x80f91  2      
  orw $0x40, 0xc(%r15,%rbx,1)    #  179   0x80f93  7      
  movl $0xffffffff, %eax         #  180   0x80f9a  5      
  movl %edx, %edx                #  181   0x80f9f  2      
  movl $0x0, 0x8(%r15,%rdx,1)    #  182   0x80fa1  9      
  xchgw %ax, %ax                 #  183   0x80faa  3      
  movl %edx, %edx                #  184   0x80fad  2      
  movl $0x0, 0x4(%r15,%rdx,1)    #  185   0x80faf  9      
  addl $0x38, %esp               #  186   0x80fb8  3      
  addq %r15, %rsp                #  187   0x80fbb  3      
  popq %rbx                      #  188   0x80fbe  2      
  popq %r12                      #  189   0x80fc0  3      
  popq %r13                      #  190   0x80fc3  3      
  popq %r14                      #  191   0x80fc6  3      
  popq %r11                      #  192   0x80fc9  3      
  nop                            #  193   0x80fcc  1      
  andl $0xffffffe0, %r11d        #  194   0x80fcd  7      
  addq %r15, %r11                #  195   0x80fd4  3      
  jmpq %r11                      #  196   0x80fd7  3      
  nop                            #  197   0x80fda  1      
  nop                            #  198   0x80fdb  1      
.L_810a0:                        #        0x80fdc  0      
  movl %edx, %edx                #  199   0x80fdc  2      
  movl $0x0, 0x8(%r15,%rdx,1)    #  200   0x80fde  9      
  movl %edx, %edx                #  201   0x80fe7  2      
  movl $0x0, 0x4(%r15,%rdx,1)    #  202   0x80fe9  9      
  addl $0x38, %esp               #  203   0x80ff2  3      
  addq %r15, %rsp                #  204   0x80ff5  3      
  popq %rbx                      #  205   0x80ff8  2      
  popq %r12                      #  206   0x80ffa  3      
  nop                            #  207   0x80ffd  1      
  popq %r13                      #  208   0x80ffe  3      
  popq %r14                      #  209   0x81001  3      
  popq %r11                      #  210   0x81004  3      
  xorl %eax, %eax                #  211   0x81007  2      
  andl $0xffffffe0, %r11d        #  212   0x81009  7      
  addq %r15, %r11                #  213   0x81010  3      
  jmpq %r11                      #  214   0x81013  3      
  nop                            #  215   0x81016  1      
.L_810e0:                        #        0x81017  0      
  movl %edx, %edx                #  216   0x81017  2      
  movl $0x0, 0x4(%r15,%rdx,1)    #  217   0x81019  9      
  addl $0x38, %esp               #  218   0x81022  3      
  addq %r15, %rsp                #  219   0x81025  3      
  xorl %eax, %eax                #  220   0x81028  2      
  popq %rbx                      #  221   0x8102a  2      
  popq %r12                      #  222   0x8102c  3      
  popq %r13                      #  223   0x8102f  3      
  popq %r14                      #  224   0x81032  3      
  popq %r11                      #  225   0x81035  3      
  nop                            #  226   0x81038  1      
  andl $0xffffffe0, %r11d        #  227   0x81039  7      
  addq %r15, %r11                #  228   0x81040  3      
  jmpq %r11                      #  229   0x81043  3      
  nop                            #  230   0x81046  1      
  nop                            #  231   0x81047  1      
.L_81120:                        #        0x81048  0      
  movq 0x28(%rsp), %rdx          #  232   0x81048  5      
  movl %edx, %edx                #  233   0x8104d  2      
  movl $0xc, (%r15,%rdx,1)       #  234   0x8104f  8      
  jmpq .L_81040                  #  235   0x81057  5      
  nop                            #  236   0x8105c  1      
                                                          
.size __ssprint_r, .-__ssprint_r

