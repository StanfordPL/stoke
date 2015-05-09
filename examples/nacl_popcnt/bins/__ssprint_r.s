  .text
  .globl __ssprint_r
  .type __ssprint_r, @function

#! file-offset 0x80d20
#! rip-offset  0x80d20
#! capacity    1024 bytes

# Text                           #  Line  RIP      Bytes  
.__ssprint_r:                    #        0x80d20  0      
  pushq %r14                     #  1     0x80d20  3      
  movl %edx, %edx                #  2     0x80d23  2      
  movl %edi, %edi                #  3     0x80d25  2      
  xorl %r8d, %r8d                #  4     0x80d27  3      
  pushq %r13                     #  5     0x80d2a  3      
  pushq %r12                     #  6     0x80d2d  3      
  xorl %r12d, %r12d              #  7     0x80d30  3      
  pushq %rbx                     #  8     0x80d33  2      
  movl %esi, %ebx                #  9     0x80d35  2      
  subl $0x38, %esp               #  10    0x80d37  3      
  addq %r15, %rsp                #  11    0x80d3a  3      
  movl %edx, %edx                #  12    0x80d3d  2      
  movl 0x8(%r15,%rdx,1), %eax    #  13    0x80d3f  5      
  movl %edx, %edx                #  14    0x80d44  2      
  movl (%r15,%rdx,1), %r14d      #  15    0x80d46  4      
  movq %rdi, 0x28(%rsp)          #  16    0x80d4a  5      
  movq %rdx, 0x20(%rsp)          #  17    0x80d4f  5      
  testl %eax, %eax               #  18    0x80d54  2      
  je .L_810c0                    #  19    0x80d56  6      
  testl %r12d, %r12d             #  20    0x80d5c  3      
  nop                            #  21    0x80d5f  1      
  je .L_80e00                    #  22    0x80d60  6      
  movl %ebx, %ebx                #  23    0x80d66  2      
  movl 0x8(%r15,%rbx,1), %r13d   #  24    0x80d68  5      
  cmpl %r13d, %r12d              #  25    0x80d6d  3      
  movl %r13d, %ecx               #  26    0x80d70  3      
  jae .L_80e40                   #  27    0x80d73  6      
  nop                            #  28    0x80d79  1      
.L_80d80:                        #        0x80d7a  0      
  movl %ebx, %ebx                #  29    0x80d7a  2      
  movl (%r15,%rbx,1), %edi       #  30    0x80d7c  4      
  movl %r12d, %r13d              #  31    0x80d80  3      
  movl %r12d, %ecx               #  32    0x80d83  3      
  nop                            #  33    0x80d86  1      
  nop                            #  34    0x80d87  1      
.L_80da0:                        #        0x80d88  0      
  movl %ecx, %edx                #  35    0x80d88  2      
  movl %r8d, %esi                #  36    0x80d8a  3      
  movl %ecx, 0x8(%rsp)           #  37    0x80d8d  4      
  nop                            #  38    0x80d91  1      
  nop                            #  39    0x80d92  1      
  callq .memmove                 #  40    0x80d93  5      
  movq 0x20(%rsp), %rdx          #  41    0x80d98  5      
  movl %ebx, %ebx                #  42    0x80d9d  2      
  subl %r13d, 0x8(%r15,%rbx,1)   #  43    0x80d9f  5      
  movl 0x8(%rsp), %ecx           #  44    0x80da4  4      
  movl %ebx, %ebx                #  45    0x80da8  2      
  addl %ecx, (%r15,%rbx,1)       #  46    0x80daa  4      
  movl %edx, %edx                #  47    0x80dae  2      
  movl 0x8(%r15,%rdx,1), %eax    #  48    0x80db0  5      
  subl %r12d, %eax               #  49    0x80db5  3      
  testl %eax, %eax               #  50    0x80db8  2      
  movl %edx, %edx                #  51    0x80dba  2      
  movl %eax, 0x8(%r15,%rdx,1)    #  52    0x80dbc  5      
  je .L_81080                    #  53    0x80dc1  6      
  xchgw %ax, %ax                 #  54    0x80dc7  3      
  nop                            #  55    0x80dca  1      
.L_80e00:                        #        0x80dcb  0      
  movl %r14d, %r14d              #  56    0x80dcb  3      
  movl 0x4(%r15,%r14,1), %r12d   #  57    0x80dce  5      
  movl %r14d, %r14d              #  58    0x80dd3  3      
  movl (%r15,%r14,1), %r8d       #  59    0x80dd6  4      
  addl $0x8, %r14d               #  60    0x80dda  4      
  testl %r12d, %r12d             #  61    0x80dde  3      
  je .L_80e00                    #  62    0x80de1  6      
  movl %ebx, %ebx                #  63    0x80de7  2      
  movl 0x8(%r15,%rbx,1), %r13d   #  64    0x80de9  5      
  nop                            #  65    0x80dee  1      
  cmpl %r13d, %r12d              #  66    0x80def  3      
  movl %r13d, %ecx               #  67    0x80df2  3      
  jb .L_80d80                    #  68    0x80df5  6      
  nop                            #  69    0x80dfb  1      
  nop                            #  70    0x80dfc  1      
.L_80e40:                        #        0x80dfd  0      
  movl %ebx, %ebx                #  71    0x80dfd  2      
  movswl 0xc(%r15,%rbx,1), %edi  #  72    0x80dff  6      
  testl $0x480, %edi             #  73    0x80e05  6      
  jne .L_80e60                   #  74    0x80e0b  6      
  movl %ebx, %ebx                #  75    0x80e11  2      
  movl (%r15,%rbx,1), %edi       #  76    0x80e13  4      
  jmpq .L_80da0                  #  77    0x80e17  5      
  nop                            #  78    0x80e1c  1      
.L_80e60:                        #        0x80e1d  0      
  movl %ebx, %ebx                #  79    0x80e1d  2      
  movl 0x14(%r15,%rbx,1), %ecx   #  80    0x80e1f  5      
  movl %ebx, %ebx                #  81    0x80e24  2      
  movl 0x10(%r15,%rbx,1), %eax   #  82    0x80e26  5      
  movl %ebx, %ebx                #  83    0x80e2b  2      
  movl (%r15,%rbx,1), %r9d       #  84    0x80e2d  4      
  leal (%rcx,%rcx,2), %ecx       #  85    0x80e31  3      
  subl %eax, %r9d                #  86    0x80e34  3      
  movl %ecx, %edx                #  87    0x80e37  2      
  nop                            #  88    0x80e39  1      
  leal 0x1(%r9,%r12,1), %r10d    #  89    0x80e3a  5      
  shrl $0x1f, %edx               #  90    0x80e3f  3      
  leal (%rdx,%rcx,1), %ecx       #  91    0x80e42  3      
  sarl $0x1, %ecx                #  92    0x80e45  2      
  cmpl %r10d, %ecx               #  93    0x80e47  3      
  movl %ecx, %edx                #  94    0x80e4a  2      
  jae .L_80ea0                   #  95    0x80e4c  6      
  movl %r10d, %ecx               #  96    0x80e52  3      
  movl %r10d, %edx               #  97    0x80e55  3      
  nop                            #  98    0x80e58  1      
.L_80ea0:                        #        0x80e59  0      
  andl $0x400, %edi              #  99    0x80e59  6      
  je .L_80fa0                    #  100   0x80e5f  6      
  movl 0x28(%rsp), %edi          #  101   0x80e65  4      
  movl %edx, %esi                #  102   0x80e69  2      
  movl %ecx, 0x8(%rsp)           #  103   0x80e6b  4      
  movq %r8, 0x10(%rsp)           #  104   0x80e6f  5      
  movl %r9d, 0x18(%rsp)          #  105   0x80e74  5      
  nop                            #  106   0x80e79  1      
  nop                            #  107   0x80e7a  1      
  callq ._malloc_r               #  108   0x80e7b  5      
  movl %eax, %r13d               #  109   0x80e80  3      
  movl 0x8(%rsp), %ecx           #  110   0x80e83  4      
  movq 0x10(%rsp), %r8           #  111   0x80e87  5      
  testq %r13, %r13               #  112   0x80e8c  3      
  movl 0x18(%rsp), %r9d          #  113   0x80e8f  5      
  je .L_81100                    #  114   0x80e94  6      
  nop                            #  115   0x80e9a  1      
  movl %ebx, %ebx                #  116   0x80e9b  2      
  movl 0x10(%r15,%rbx,1), %esi   #  117   0x80e9d  5      
  movl %r9d, %edx                #  118   0x80ea2  3      
  movl %r13d, %edi               #  119   0x80ea5  3      
  movl %ecx, 0x8(%rsp)           #  120   0x80ea8  4      
  movq %r8, 0x10(%rsp)           #  121   0x80eac  5      
  movl %r9d, 0x18(%rsp)          #  122   0x80eb1  5      
  callq .memcpy                  #  123   0x80eb6  5      
  movl %ebx, %ebx                #  124   0x80ebb  2      
  movzwl 0xc(%r15,%rbx,1), %eax  #  125   0x80ebd  6      
  movl 0x8(%rsp), %ecx           #  126   0x80ec3  4      
  movq 0x10(%rsp), %r8           #  127   0x80ec7  5      
  movl 0x18(%rsp), %r9d          #  128   0x80ecc  5      
  andw $0xfb7f, %ax              #  129   0x80ed1  4      
  orb $0x80, %al                 #  130   0x80ed5  2      
  nop                            #  131   0x80ed7  1      
  movl %ebx, %ebx                #  132   0x80ed8  2      
  movw %ax, 0xc(%r15,%rbx,1)     #  133   0x80eda  6      
  nop                            #  134   0x80ee0  1      
  nop                            #  135   0x80ee1  1      
.L_80f60:                        #        0x80ee2  0      
  leal (%r9,%r13,1), %edi        #  136   0x80ee2  4      
  movl %ebx, %ebx                #  137   0x80ee6  2      
  movl %ecx, 0x14(%r15,%rbx,1)   #  138   0x80ee8  5      
  subl %r9d, %ecx                #  139   0x80eed  3      
  movl %ebx, %ebx                #  140   0x80ef0  2      
  movl %r13d, 0x10(%r15,%rbx,1)  #  141   0x80ef2  5      
  movl %ebx, %ebx                #  142   0x80ef7  2      
  movl %ecx, 0x8(%r15,%rbx,1)    #  143   0x80ef9  5      
  movl %r12d, %r13d              #  144   0x80efe  3      
  nop                            #  145   0x80f01  1      
  movl %ebx, %ebx                #  146   0x80f02  2      
  movl %edi, (%r15,%rbx,1)       #  147   0x80f04  4      
  movl %r12d, %ecx               #  148   0x80f08  3      
  jmpq .L_80da0                  #  149   0x80f0b  5      
  nop                            #  150   0x80f10  1      
  nop                            #  151   0x80f11  1      
.L_80fa0:                        #        0x80f12  0      
  movl 0x28(%rsp), %edi          #  152   0x80f12  4      
  movl %eax, %esi                #  153   0x80f16  2      
  movl %ecx, 0x8(%rsp)           #  154   0x80f18  4      
  movq %r8, 0x10(%rsp)           #  155   0x80f1c  5      
  movl %r9d, 0x18(%rsp)          #  156   0x80f21  5      
  nop                            #  157   0x80f26  1      
  callq ._realloc_r              #  158   0x80f27  5      
  movl %eax, %r13d               #  159   0x80f2c  3      
  movl 0x8(%rsp), %ecx           #  160   0x80f2f  4      
  movq 0x10(%rsp), %r8           #  161   0x80f33  5      
  testq %r13, %r13               #  162   0x80f38  3      
  movl 0x18(%rsp), %r9d          #  163   0x80f3b  5      
  jne .L_80f60                   #  164   0x80f40  6      
  movl %ebx, %ebx                #  165   0x80f46  2      
  movl 0x10(%r15,%rbx,1), %esi   #  166   0x80f48  5      
  nop                            #  167   0x80f4d  1      
  movl 0x28(%rsp), %edi          #  168   0x80f4e  4      
  nop                            #  169   0x80f52  1      
  nop                            #  170   0x80f53  1      
  callq ._free_r                 #  171   0x80f54  5      
  movq 0x28(%rsp), %rax          #  172   0x80f59  5      
  movl %eax, %eax                #  173   0x80f5e  2      
  movl $0xc, (%r15,%rax,1)       #  174   0x80f60  8      
  xchgw %ax, %ax                 #  175   0x80f68  3      
  nop                            #  176   0x80f6b  1      
.L_81020:                        #        0x80f6c  0      
  movq 0x20(%rsp), %rdx          #  177   0x80f6c  5      
  movl %ebx, %ebx                #  178   0x80f71  2      
  orw $0x40, 0xc(%r15,%rbx,1)    #  179   0x80f73  7      
  movl $0xffffffff, %eax         #  180   0x80f7a  5      
  movl %edx, %edx                #  181   0x80f7f  2      
  movl $0x0, 0x8(%r15,%rdx,1)    #  182   0x80f81  9      
  xchgw %ax, %ax                 #  183   0x80f8a  3      
  movl %edx, %edx                #  184   0x80f8d  2      
  movl $0x0, 0x4(%r15,%rdx,1)    #  185   0x80f8f  9      
  addl $0x38, %esp               #  186   0x80f98  3      
  addq %r15, %rsp                #  187   0x80f9b  3      
  popq %rbx                      #  188   0x80f9e  2      
  popq %r12                      #  189   0x80fa0  3      
  popq %r13                      #  190   0x80fa3  3      
  popq %r14                      #  191   0x80fa6  3      
  popq %r11                      #  192   0x80fa9  3      
  nop                            #  193   0x80fac  1      
  andl $0xffffffe0, %r11d        #  194   0x80fad  7      
  addq %r15, %r11                #  195   0x80fb4  3      
  jmpq %r11                      #  196   0x80fb7  3      
  nop                            #  197   0x80fba  1      
  nop                            #  198   0x80fbb  1      
.L_81080:                        #        0x80fbc  0      
  movl %edx, %edx                #  199   0x80fbc  2      
  movl $0x0, 0x8(%r15,%rdx,1)    #  200   0x80fbe  9      
  movl %edx, %edx                #  201   0x80fc7  2      
  movl $0x0, 0x4(%r15,%rdx,1)    #  202   0x80fc9  9      
  addl $0x38, %esp               #  203   0x80fd2  3      
  addq %r15, %rsp                #  204   0x80fd5  3      
  popq %rbx                      #  205   0x80fd8  2      
  popq %r12                      #  206   0x80fda  3      
  nop                            #  207   0x80fdd  1      
  popq %r13                      #  208   0x80fde  3      
  popq %r14                      #  209   0x80fe1  3      
  popq %r11                      #  210   0x80fe4  3      
  xorl %eax, %eax                #  211   0x80fe7  2      
  andl $0xffffffe0, %r11d        #  212   0x80fe9  7      
  addq %r15, %r11                #  213   0x80ff0  3      
  jmpq %r11                      #  214   0x80ff3  3      
  nop                            #  215   0x80ff6  1      
.L_810c0:                        #        0x80ff7  0      
  movl %edx, %edx                #  216   0x80ff7  2      
  movl $0x0, 0x4(%r15,%rdx,1)    #  217   0x80ff9  9      
  addl $0x38, %esp               #  218   0x81002  3      
  addq %r15, %rsp                #  219   0x81005  3      
  xorl %eax, %eax                #  220   0x81008  2      
  popq %rbx                      #  221   0x8100a  2      
  popq %r12                      #  222   0x8100c  3      
  popq %r13                      #  223   0x8100f  3      
  popq %r14                      #  224   0x81012  3      
  popq %r11                      #  225   0x81015  3      
  nop                            #  226   0x81018  1      
  andl $0xffffffe0, %r11d        #  227   0x81019  7      
  addq %r15, %r11                #  228   0x81020  3      
  jmpq %r11                      #  229   0x81023  3      
  nop                            #  230   0x81026  1      
  nop                            #  231   0x81027  1      
.L_81100:                        #        0x81028  0      
  movq 0x28(%rsp), %rdx          #  232   0x81028  5      
  movl %edx, %edx                #  233   0x8102d  2      
  movl $0xc, (%r15,%rdx,1)       #  234   0x8102f  8      
  jmpq .L_81020                  #  235   0x81037  5      
  nop                            #  236   0x8103c  1      
                                                          
.size __ssprint_r, .-__ssprint_r

