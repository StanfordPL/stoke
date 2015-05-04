  .text
  .globl _ZNK2pp3VareqERKS0_
  .type _ZNK2pp3VareqERKS0_, @function

#! file-offset 0x2ac80
#! rip-offset  0x2ac80
#! capacity    1088 bytes

# Text                                #  Line  RIP      Bytes  
._ZNK2pp3VareqERKS0_:                 #        0x2ac80  0      
  movq %r14, -0x8(%rsp)               #  1     0x2ac80  5      
  movl %esi, %esi                     #  2     0x2ac85  2      
  movl %edi, %r14d                    #  3     0x2ac87  3      
  movq %rbx, -0x20(%rsp)              #  4     0x2ac8a  5      
  movq %r12, -0x18(%rsp)              #  5     0x2ac8f  5      
  xorl %ebx, %ebx                     #  6     0x2ac94  2      
  movq %r13, -0x10(%rsp)              #  7     0x2ac96  5      
  nop                                 #  8     0x2ac9b  1      
  subl $0x48, %esp                    #  9     0x2ac9c  3      
  addq %r15, %rsp                     #  10    0x2ac9f  3      
  movl %r14d, %r14d                   #  11    0x2aca2  3      
  movl 0x8(%r15,%r14,1), %eax         #  12    0x2aca5  5      
  movl %esi, %esi                     #  13    0x2acaa  2      
  movl 0x8(%r15,%rsi,1), %edx         #  14    0x2acac  5      
  cmpl %edx, %eax                     #  15    0x2acb1  2      
  je .L_2ad00                         #  16    0x2acb3  6      
  nop                                 #  17    0x2acb9  1      
.L_2acc0:                             #        0x2acba  0      
  movl %ebx, %eax                     #  18    0x2acba  2      
  movq 0x30(%rsp), %r12               #  19    0x2acbc  5      
  movq 0x28(%rsp), %rbx               #  20    0x2acc1  5      
  movq 0x38(%rsp), %r13               #  21    0x2acc6  5      
  movq 0x40(%rsp), %r14               #  22    0x2accb  5      
  addl $0x48, %esp                    #  23    0x2acd0  3      
  addq %r15, %rsp                     #  24    0x2acd3  3      
  popq %r11                           #  25    0x2acd6  3      
  xchgw %ax, %ax                      #  26    0x2acd9  3      
  andl $0xffffffe0, %r11d             #  27    0x2acdc  7      
  addq %r15, %r11                     #  28    0x2ace3  3      
  jmpq %r11                           #  29    0x2ace6  3      
  nop                                 #  30    0x2ace9  1      
  nop                                 #  31    0x2acea  1      
.L_2ad00:                             #        0x2aceb  0      
  cmpl $0x5, %eax                     #  32    0x2aceb  3      
  jbe .L_2ad20                        #  33    0x2acee  6      
  movl %esi, %esi                     #  34    0x2acf4  2      
  movq 0x10(%r15,%rsi,1), %rax        #  35    0x2acf6  5      
  movl %r14d, %r14d                   #  36    0x2acfb  3      
  cmpq %rax, 0x10(%r15,%r14,1)        #  37    0x2acfe  5      
  sete %bl                            #  38    0x2ad03  3      
  jmpq .L_2acc0                       #  39    0x2ad06  5      
  nop                                 #  40    0x2ad0b  1      
.L_2ad20:                             #        0x2ad0c  0      
  movl %eax, %ecx                     #  41    0x2ad0c  2      
  movl %ecx, %ecx                     #  42    0x2ad0e  2      
  movq 0x100205b8(%r15,%rcx,8), %rcx  #  43    0x2ad10  8      
  andl $0xffffffe0, %ecx              #  44    0x2ad18  6      
  addq %r15, %rcx                     #  45    0x2ad1e  3      
  jmpq %rcx                           #  46    0x2ad21  2      
  nop                                 #  47    0x2ad23  1      
  movl %esi, %esi                     #  48    0x2ad24  2      
  movq 0x10(%r15,%rsi,1), %rax        #  49    0x2ad26  5      
  movl %r14d, %r14d                   #  50    0x2ad2b  3      
  cmpq %rax, 0x10(%r15,%r14,1)        #  51    0x2ad2e  5      
  jne .L_2aea0                        #  52    0x2ad33  6      
  nop                                 #  53    0x2ad39  1      
  movl $0x1, %ebx                     #  54    0x2ad3a  5      
  jmpq .L_2acc0                       #  55    0x2ad3f  5      
  nop                                 #  56    0x2ad44  1      
  nop                                 #  57    0x2ad45  1      
  cmpl $0x4, %eax                     #  58    0x2ad46  3      
  je .L_2af80                         #  59    0x2ad49  6      
  cmpl $0x3, %edx                     #  60    0x2ad4f  3      
  xorpd %xmm1, %xmm1                  #  61    0x2ad52  4      
  je .L_2b000                         #  62    0x2ad56  6      
  nop                                 #  63    0x2ad5c  1      
.L_2ada0:                             #        0x2ad5d  0      
  cmpl $0x4, %edx                     #  64    0x2ad5d  3      
  je .L_2afe0                         #  65    0x2ad60  6      
  nop                                 #  66    0x2ad66  1      
  nop                                 #  67    0x2ad67  1      
.L_2adc0:                             #        0x2ad68  0      
  cmpl $0x3, %eax                     #  68    0x2ad68  3      
  xorpd %xmm0, %xmm0                  #  69    0x2ad6b  4      
  jne .L_2ade0                        #  70    0x2ad6f  6      
  movl %esi, %esi                     #  71    0x2ad75  2      
  cvtsi2sdl 0x10(%r15,%rsi,1), %xmm0  #  72    0x2ad77  7      
  nop                                 #  73    0x2ad7e  1      
.L_2ade0:                             #        0x2ad7f  0      
  ucomisd %xmm0, %xmm1                #  74    0x2ad7f  4      
  sete %bl                            #  75    0x2ad83  3      
  setnp %al                           #  76    0x2ad86  3      
  andl %eax, %ebx                     #  77    0x2ad89  2      
  jmpq .L_2acc0                       #  78    0x2ad8b  5      
  nop                                 #  79    0x2ad90  1      
  cmpl $0x3, %eax                     #  80    0x2ad91  3      
  je .L_2afa0                         #  81    0x2ad94  6      
  cmpl $0x4, %edx                     #  82    0x2ad9a  3      
  je .L_2b020                         #  83    0x2ad9d  6      
  cmpl $0x3, %edx                     #  84    0x2ada3  3      
  je .L_2b060                         #  85    0x2ada6  6      
  xorl %ecx, %ecx                     #  86    0x2adac  2      
  nop                                 #  87    0x2adae  1      
.L_2ae20:                             #        0x2adaf  0      
  xorl %edx, %edx                     #  88    0x2adaf  2      
  cmpl $0x4, %eax                     #  89    0x2adb1  3      
  jne .L_2ae40                        #  90    0x2adb4  6      
  movl %esi, %esi                     #  91    0x2adba  2      
  movsd 0x10(%r15,%rsi,1), %xmm8      #  92    0x2adbc  7      
  cvttsd2si %xmm8, %edx               #  93    0x2adc3  5      
  nop                                 #  94    0x2adc8  1      
.L_2ae40:                             #        0x2adc9  0      
  cmpl %edx, %ecx                     #  95    0x2adc9  2      
  sete %bl                            #  96    0x2adcb  3      
  jmpq .L_2acc0                       #  97    0x2adce  5      
  nop                                 #  98    0x2add3  1      
  nop                                 #  99    0x2add4  1      
  cmpl $0x2, %eax                     #  100   0x2add5  3      
  movl $0x1, %ebx                     #  101   0x2add8  5      
  jne .L_2acc0                        #  102   0x2addd  6      
  movl %r14d, %r14d                   #  103   0x2ade3  3      
  movl 0x10(%r15,%r14,1), %edx        #  104   0x2ade6  5      
  movl %esi, %esi                     #  105   0x2adeb  2      
  movl 0x10(%r15,%rsi,1), %eax        #  106   0x2aded  5      
  testl %edx, %edx                    #  107   0x2adf2  2      
  nop                                 #  108   0x2adf4  1      
  setne %dl                           #  109   0x2adf5  3      
  testl %eax, %eax                    #  110   0x2adf8  2      
  setne %al                           #  111   0x2adfa  3      
  cmpb %al, %dl                       #  112   0x2adfd  2      
  sete %bl                            #  113   0x2adff  3      
  jmpq .L_2acc0                       #  114   0x2ae02  5      
  nop                                 #  115   0x2ae07  1      
.L_2aea0:                             #        0x2ae08  0      
  leal 0x10(%rsp), %r13d              #  116   0x2ae08  5      
  movl %esp, %edi                     #  117   0x2ae0d  2      
  movl %esp, %r12d                    #  118   0x2ae0f  3      
  xchgw %ax, %ax                      #  119   0x2ae12  3      
  nop                                 #  120   0x2ae15  1      
  callq ._ZNK2pp3Var8AsStringEv       #  121   0x2ae16  5      
  movl %r14d, %esi                    #  122   0x2ae1b  3      
  movl %r13d, %edi                    #  123   0x2ae1e  3      
  nop                                 #  124   0x2ae21  1      
  nop                                 #  125   0x2ae22  1      
  callq ._ZNK2pp3Var8AsStringEv       #  126   0x2ae23  5      
  movl 0x10(%rsp), %esi               #  127   0x2ae28  4      
  movl (%rsp), %edi                   #  128   0x2ae2c  3      
  xorl %ebx, %ebx                     #  129   0x2ae2f  2      
  leal -0xc(%rsi), %eax               #  130   0x2ae31  3      
  movl %eax, %eax                     #  131   0x2ae34  2      
  movl (%r15,%rax,1), %ecx            #  132   0x2ae36  4      
  leal -0xc(%rdi), %eax               #  133   0x2ae3a  3      
  movl %eax, %eax                     #  134   0x2ae3d  2      
  cmpl (%r15,%rax,1), %ecx            #  135   0x2ae3f  4      
  nop                                 #  136   0x2ae43  1      
  je .L_2b040                         #  137   0x2ae44  6      
  nop                                 #  138   0x2ae4a  1      
  nop                                 #  139   0x2ae4b  1      
.L_2af20:                             #        0x2ae4c  0      
  movl %r13d, %edi                    #  140   0x2ae4c  3      
  nop                                 #  141   0x2ae4f  1      
  nop                                 #  142   0x2ae50  1      
  callq ._ZNSsD1Ev                    #  143   0x2ae51  5      
  movl %r12d, %edi                    #  144   0x2ae56  3      
  nop                                 #  145   0x2ae59  1      
  nop                                 #  146   0x2ae5a  1      
  callq ._ZNSsD1Ev                    #  147   0x2ae5b  5      
  jmpq .L_2acc0                       #  148   0x2ae60  5      
  nop                                 #  149   0x2ae65  1      
  nop                                 #  150   0x2ae66  1      
.L_2af80:                             #        0x2ae67  0      
  movl %r14d, %r14d                   #  151   0x2ae67  3      
  movsd 0x10(%r15,%r14,1), %xmm1      #  152   0x2ae6a  7      
  jmpq .L_2ada0                       #  153   0x2ae71  5      
  xchgw %ax, %ax                      #  154   0x2ae76  3      
  nop                                 #  155   0x2ae79  1      
.L_2afa0:                             #        0x2ae7a  0      
  movl %r14d, %r14d                   #  156   0x2ae7a  3      
  movl 0x10(%r15,%r14,1), %ecx        #  157   0x2ae7d  5      
  nop                                 #  158   0x2ae82  1      
  nop                                 #  159   0x2ae83  1      
.L_2afc0:                             #        0x2ae84  0      
  movl %esi, %esi                     #  160   0x2ae84  2      
  movl 0x10(%r15,%rsi,1), %edx        #  161   0x2ae86  5      
  jmpq .L_2ae40                       #  162   0x2ae8b  5      
  nop                                 #  163   0x2ae90  1      
  nop                                 #  164   0x2ae91  1      
.L_2afe0:                             #        0x2ae92  0      
  movl %esi, %esi                     #  165   0x2ae92  2      
  movsd 0x10(%r15,%rsi,1), %xmm0      #  166   0x2ae94  7      
  jmpq .L_2ade0                       #  167   0x2ae9b  5      
  nop                                 #  168   0x2aea0  1      
  nop                                 #  169   0x2aea1  1      
.L_2b000:                             #        0x2aea2  0      
  movl %r14d, %r14d                   #  170   0x2aea2  3      
  cvtsi2sdl 0x10(%r15,%r14,1), %xmm1  #  171   0x2aea5  7      
  jmpq .L_2adc0                       #  172   0x2aeac  5      
  xchgw %ax, %ax                      #  173   0x2aeb1  3      
  nop                                 #  174   0x2aeb4  1      
.L_2b020:                             #        0x2aeb5  0      
  movl %r14d, %r14d                   #  175   0x2aeb5  3      
  movsd 0x10(%r15,%r14,1), %xmm9      #  176   0x2aeb8  7      
  cvttsd2si %xmm9, %ecx               #  177   0x2aebf  5      
  jmpq .L_2ae20                       #  178   0x2aec4  5      
  nop                                 #  179   0x2aec9  1      
.L_2b040:                             #        0x2aeca  0      
  movl %ecx, %ecx                     #  180   0x2aeca  2      
  cmpq %rcx, %rcx                     #  181   0x2aecc  3      
  movl %esi, %esi                     #  182   0x2aecf  2      
  leaq (%r15,%rsi,1), %rsi            #  183   0x2aed1  4      
  movl %edi, %edi                     #  184   0x2aed5  2      
  leaq (%r15,%rdi,1), %rdi            #  185   0x2aed7  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)   #  186   0x2aedb  3      
  movl %esi, %esi                     #  187   0x2aede  2      
  movl %edi, %edi                     #  188   0x2aee0  2      
  sete %bl                            #  189   0x2aee2  3      
  jmpq .L_2af20                       #  190   0x2aee5  5      
  nop                                 #  191   0x2aeea  1      
.L_2b060:                             #        0x2aeeb  0      
  xorl %ecx, %ecx                     #  192   0x2aeeb  2      
  jmpq .L_2afc0                       #  193   0x2aeed  5      
  nop                                 #  194   0x2aef2  1      
  nop                                 #  195   0x2aef3  1      
  movl %eax, %ebx                     #  196   0x2aef4  2      
  movl %r12d, %edi                    #  197   0x2aef6  3      
  nop                                 #  198   0x2aef9  1      
  nop                                 #  199   0x2aefa  1      
  callq ._ZNSsD1Ev                    #  200   0x2aefb  5      
  movl %ebx, %edi                     #  201   0x2af00  2      
  nop                                 #  202   0x2af02  1      
  nop                                 #  203   0x2af03  1      
  callq ._Unwind_Resume               #  204   0x2af04  5      
                                                               
.size _ZNK2pp3VareqERKS0_, .-_ZNK2pp3VareqERKS0_

