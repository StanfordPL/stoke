  .text
  .globl _ZNK2pp3VareqERKS0_
  .type _ZNK2pp3VareqERKS0_, @function

#! file-offset 0x2ac00
#! rip-offset  0x2ac00
#! capacity    1088 bytes

# Text                                #  Line  RIP      Bytes  
._ZNK2pp3VareqERKS0_:                 #        0x2ac00  0      
  movq %r14, -0x8(%rsp)               #  1     0x2ac00  5      
  movl %esi, %esi                     #  2     0x2ac05  2      
  movl %edi, %r14d                    #  3     0x2ac07  3      
  movq %rbx, -0x20(%rsp)              #  4     0x2ac0a  5      
  movq %r12, -0x18(%rsp)              #  5     0x2ac0f  5      
  xorl %ebx, %ebx                     #  6     0x2ac14  2      
  movq %r13, -0x10(%rsp)              #  7     0x2ac16  5      
  nop                                 #  8     0x2ac1b  1      
  subl $0x48, %esp                    #  9     0x2ac1c  3      
  addq %r15, %rsp                     #  10    0x2ac1f  3      
  movl %r14d, %r14d                   #  11    0x2ac22  3      
  movl 0x8(%r15,%r14,1), %eax         #  12    0x2ac25  5      
  movl %esi, %esi                     #  13    0x2ac2a  2      
  movl 0x8(%r15,%rsi,1), %edx         #  14    0x2ac2c  5      
  cmpl %edx, %eax                     #  15    0x2ac31  2      
  je .L_2ac80                         #  16    0x2ac33  6      
  nop                                 #  17    0x2ac39  1      
.L_2ac40:                             #        0x2ac3a  0      
  movl %ebx, %eax                     #  18    0x2ac3a  2      
  movq 0x30(%rsp), %r12               #  19    0x2ac3c  5      
  movq 0x28(%rsp), %rbx               #  20    0x2ac41  5      
  movq 0x38(%rsp), %r13               #  21    0x2ac46  5      
  movq 0x40(%rsp), %r14               #  22    0x2ac4b  5      
  addl $0x48, %esp                    #  23    0x2ac50  3      
  addq %r15, %rsp                     #  24    0x2ac53  3      
  popq %r11                           #  25    0x2ac56  3      
  xchgw %ax, %ax                      #  26    0x2ac59  3      
  andl $0xffffffe0, %r11d             #  27    0x2ac5c  7      
  addq %r15, %r11                     #  28    0x2ac63  3      
  jmpq %r11                           #  29    0x2ac66  3      
  nop                                 #  30    0x2ac69  1      
  nop                                 #  31    0x2ac6a  1      
.L_2ac80:                             #        0x2ac6b  0      
  cmpl $0x5, %eax                     #  32    0x2ac6b  3      
  jbe .L_2aca0                        #  33    0x2ac6e  6      
  movl %esi, %esi                     #  34    0x2ac74  2      
  movq 0x10(%r15,%rsi,1), %rax        #  35    0x2ac76  5      
  movl %r14d, %r14d                   #  36    0x2ac7b  3      
  cmpq %rax, 0x10(%r15,%r14,1)        #  37    0x2ac7e  5      
  sete %bl                            #  38    0x2ac83  3      
  jmpq .L_2ac40                       #  39    0x2ac86  5      
  nop                                 #  40    0x2ac8b  1      
.L_2aca0:                             #        0x2ac8c  0      
  movl %eax, %ecx                     #  41    0x2ac8c  2      
  movl %ecx, %ecx                     #  42    0x2ac8e  2      
  movq 0x100205b8(%r15,%rcx,8), %rcx  #  43    0x2ac90  8      
  andl $0xffffffe0, %ecx              #  44    0x2ac98  6      
  addq %r15, %rcx                     #  45    0x2ac9e  3      
  jmpq %rcx                           #  46    0x2aca1  2      
  nop                                 #  47    0x2aca3  1      
  movl %esi, %esi                     #  48    0x2aca4  2      
  movq 0x10(%r15,%rsi,1), %rax        #  49    0x2aca6  5      
  movl %r14d, %r14d                   #  50    0x2acab  3      
  cmpq %rax, 0x10(%r15,%r14,1)        #  51    0x2acae  5      
  jne .L_2ae20                        #  52    0x2acb3  6      
  nop                                 #  53    0x2acb9  1      
  movl $0x1, %ebx                     #  54    0x2acba  5      
  jmpq .L_2ac40                       #  55    0x2acbf  5      
  nop                                 #  56    0x2acc4  1      
  nop                                 #  57    0x2acc5  1      
  cmpl $0x4, %eax                     #  58    0x2acc6  3      
  je .L_2af00                         #  59    0x2acc9  6      
  cmpl $0x3, %edx                     #  60    0x2accf  3      
  xorpd %xmm1, %xmm1                  #  61    0x2acd2  4      
  je .L_2af80                         #  62    0x2acd6  6      
  nop                                 #  63    0x2acdc  1      
.L_2ad20:                             #        0x2acdd  0      
  cmpl $0x4, %edx                     #  64    0x2acdd  3      
  je .L_2af60                         #  65    0x2ace0  6      
  nop                                 #  66    0x2ace6  1      
  nop                                 #  67    0x2ace7  1      
.L_2ad40:                             #        0x2ace8  0      
  cmpl $0x3, %eax                     #  68    0x2ace8  3      
  xorpd %xmm0, %xmm0                  #  69    0x2aceb  4      
  jne .L_2ad60                        #  70    0x2acef  6      
  movl %esi, %esi                     #  71    0x2acf5  2      
  cvtsi2sdl 0x10(%r15,%rsi,1), %xmm0  #  72    0x2acf7  7      
  nop                                 #  73    0x2acfe  1      
.L_2ad60:                             #        0x2acff  0      
  ucomisd %xmm0, %xmm1                #  74    0x2acff  4      
  sete %bl                            #  75    0x2ad03  3      
  setnp %al                           #  76    0x2ad06  3      
  andl %eax, %ebx                     #  77    0x2ad09  2      
  jmpq .L_2ac40                       #  78    0x2ad0b  5      
  nop                                 #  79    0x2ad10  1      
  cmpl $0x3, %eax                     #  80    0x2ad11  3      
  je .L_2af20                         #  81    0x2ad14  6      
  cmpl $0x4, %edx                     #  82    0x2ad1a  3      
  je .L_2afa0                         #  83    0x2ad1d  6      
  cmpl $0x3, %edx                     #  84    0x2ad23  3      
  je .L_2afe0                         #  85    0x2ad26  6      
  xorl %ecx, %ecx                     #  86    0x2ad2c  2      
  nop                                 #  87    0x2ad2e  1      
.L_2ada0:                             #        0x2ad2f  0      
  xorl %edx, %edx                     #  88    0x2ad2f  2      
  cmpl $0x4, %eax                     #  89    0x2ad31  3      
  jne .L_2adc0                        #  90    0x2ad34  6      
  movl %esi, %esi                     #  91    0x2ad3a  2      
  movsd 0x10(%r15,%rsi,1), %xmm8      #  92    0x2ad3c  7      
  cvttsd2si %xmm8, %edx               #  93    0x2ad43  5      
  nop                                 #  94    0x2ad48  1      
.L_2adc0:                             #        0x2ad49  0      
  cmpl %edx, %ecx                     #  95    0x2ad49  2      
  sete %bl                            #  96    0x2ad4b  3      
  jmpq .L_2ac40                       #  97    0x2ad4e  5      
  nop                                 #  98    0x2ad53  1      
  nop                                 #  99    0x2ad54  1      
  cmpl $0x2, %eax                     #  100   0x2ad55  3      
  movl $0x1, %ebx                     #  101   0x2ad58  5      
  jne .L_2ac40                        #  102   0x2ad5d  6      
  movl %r14d, %r14d                   #  103   0x2ad63  3      
  movl 0x10(%r15,%r14,1), %edx        #  104   0x2ad66  5      
  movl %esi, %esi                     #  105   0x2ad6b  2      
  movl 0x10(%r15,%rsi,1), %eax        #  106   0x2ad6d  5      
  testl %edx, %edx                    #  107   0x2ad72  2      
  nop                                 #  108   0x2ad74  1      
  setne %dl                           #  109   0x2ad75  3      
  testl %eax, %eax                    #  110   0x2ad78  2      
  setne %al                           #  111   0x2ad7a  3      
  cmpb %al, %dl                       #  112   0x2ad7d  2      
  sete %bl                            #  113   0x2ad7f  3      
  jmpq .L_2ac40                       #  114   0x2ad82  5      
  nop                                 #  115   0x2ad87  1      
.L_2ae20:                             #        0x2ad88  0      
  leal 0x10(%rsp), %r13d              #  116   0x2ad88  5      
  movl %esp, %edi                     #  117   0x2ad8d  2      
  movl %esp, %r12d                    #  118   0x2ad8f  3      
  xchgw %ax, %ax                      #  119   0x2ad92  3      
  nop                                 #  120   0x2ad95  1      
  callq ._ZNK2pp3Var8AsStringEv       #  121   0x2ad96  5      
  movl %r14d, %esi                    #  122   0x2ad9b  3      
  movl %r13d, %edi                    #  123   0x2ad9e  3      
  nop                                 #  124   0x2ada1  1      
  nop                                 #  125   0x2ada2  1      
  callq ._ZNK2pp3Var8AsStringEv       #  126   0x2ada3  5      
  movl 0x10(%rsp), %esi               #  127   0x2ada8  4      
  movl (%rsp), %edi                   #  128   0x2adac  3      
  xorl %ebx, %ebx                     #  129   0x2adaf  2      
  leal -0xc(%rsi), %eax               #  130   0x2adb1  3      
  movl %eax, %eax                     #  131   0x2adb4  2      
  movl (%r15,%rax,1), %ecx            #  132   0x2adb6  4      
  leal -0xc(%rdi), %eax               #  133   0x2adba  3      
  movl %eax, %eax                     #  134   0x2adbd  2      
  cmpl (%r15,%rax,1), %ecx            #  135   0x2adbf  4      
  nop                                 #  136   0x2adc3  1      
  je .L_2afc0                         #  137   0x2adc4  6      
  nop                                 #  138   0x2adca  1      
  nop                                 #  139   0x2adcb  1      
.L_2aea0:                             #        0x2adcc  0      
  movl %r13d, %edi                    #  140   0x2adcc  3      
  nop                                 #  141   0x2adcf  1      
  nop                                 #  142   0x2add0  1      
  callq ._ZNSsD1Ev                    #  143   0x2add1  5      
  movl %r12d, %edi                    #  144   0x2add6  3      
  nop                                 #  145   0x2add9  1      
  nop                                 #  146   0x2adda  1      
  callq ._ZNSsD1Ev                    #  147   0x2addb  5      
  jmpq .L_2ac40                       #  148   0x2ade0  5      
  nop                                 #  149   0x2ade5  1      
  nop                                 #  150   0x2ade6  1      
.L_2af00:                             #        0x2ade7  0      
  movl %r14d, %r14d                   #  151   0x2ade7  3      
  movsd 0x10(%r15,%r14,1), %xmm1      #  152   0x2adea  7      
  jmpq .L_2ad20                       #  153   0x2adf1  5      
  xchgw %ax, %ax                      #  154   0x2adf6  3      
  nop                                 #  155   0x2adf9  1      
.L_2af20:                             #        0x2adfa  0      
  movl %r14d, %r14d                   #  156   0x2adfa  3      
  movl 0x10(%r15,%r14,1), %ecx        #  157   0x2adfd  5      
  nop                                 #  158   0x2ae02  1      
  nop                                 #  159   0x2ae03  1      
.L_2af40:                             #        0x2ae04  0      
  movl %esi, %esi                     #  160   0x2ae04  2      
  movl 0x10(%r15,%rsi,1), %edx        #  161   0x2ae06  5      
  jmpq .L_2adc0                       #  162   0x2ae0b  5      
  nop                                 #  163   0x2ae10  1      
  nop                                 #  164   0x2ae11  1      
.L_2af60:                             #        0x2ae12  0      
  movl %esi, %esi                     #  165   0x2ae12  2      
  movsd 0x10(%r15,%rsi,1), %xmm0      #  166   0x2ae14  7      
  jmpq .L_2ad60                       #  167   0x2ae1b  5      
  nop                                 #  168   0x2ae20  1      
  nop                                 #  169   0x2ae21  1      
.L_2af80:                             #        0x2ae22  0      
  movl %r14d, %r14d                   #  170   0x2ae22  3      
  cvtsi2sdl 0x10(%r15,%r14,1), %xmm1  #  171   0x2ae25  7      
  jmpq .L_2ad40                       #  172   0x2ae2c  5      
  xchgw %ax, %ax                      #  173   0x2ae31  3      
  nop                                 #  174   0x2ae34  1      
.L_2afa0:                             #        0x2ae35  0      
  movl %r14d, %r14d                   #  175   0x2ae35  3      
  movsd 0x10(%r15,%r14,1), %xmm9      #  176   0x2ae38  7      
  cvttsd2si %xmm9, %ecx               #  177   0x2ae3f  5      
  jmpq .L_2ada0                       #  178   0x2ae44  5      
  nop                                 #  179   0x2ae49  1      
.L_2afc0:                             #        0x2ae4a  0      
  movl %ecx, %ecx                     #  180   0x2ae4a  2      
  cmpq %rcx, %rcx                     #  181   0x2ae4c  3      
  movl %esi, %esi                     #  182   0x2ae4f  2      
  leaq (%r15,%rsi,1), %rsi            #  183   0x2ae51  4      
  movl %edi, %edi                     #  184   0x2ae55  2      
  leaq (%r15,%rdi,1), %rdi            #  185   0x2ae57  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)   #  186   0x2ae5b  3      
  movl %esi, %esi                     #  187   0x2ae5e  2      
  movl %edi, %edi                     #  188   0x2ae60  2      
  sete %bl                            #  189   0x2ae62  3      
  jmpq .L_2aea0                       #  190   0x2ae65  5      
  nop                                 #  191   0x2ae6a  1      
.L_2afe0:                             #        0x2ae6b  0      
  xorl %ecx, %ecx                     #  192   0x2ae6b  2      
  jmpq .L_2af40                       #  193   0x2ae6d  5      
  nop                                 #  194   0x2ae72  1      
  nop                                 #  195   0x2ae73  1      
  movl %eax, %ebx                     #  196   0x2ae74  2      
  movl %r12d, %edi                    #  197   0x2ae76  3      
  nop                                 #  198   0x2ae79  1      
  nop                                 #  199   0x2ae7a  1      
  callq ._ZNSsD1Ev                    #  200   0x2ae7b  5      
  movl %ebx, %edi                     #  201   0x2ae80  2      
  nop                                 #  202   0x2ae82  1      
  nop                                 #  203   0x2ae83  1      
  callq ._Unwind_Resume               #  204   0x2ae84  5      
                                                               
.size _ZNK2pp3VareqERKS0_, .-_ZNK2pp3VareqERKS0_

