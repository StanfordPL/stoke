  .text
  .globl _ZNK2pp3VareqERKS0_
  .type _ZNK2pp3VareqERKS0_, @function

#! file-offset 0x2abe0
#! rip-offset  0x2abe0
#! capacity    1088 bytes

# Text                                #  Line  RIP      Bytes  
._ZNK2pp3VareqERKS0_:                 #        0x2abe0  0      
  movq %r14, -0x8(%rsp)               #  1     0x2abe0  5      
  movl %esi, %esi                     #  2     0x2abe5  2      
  movl %edi, %r14d                    #  3     0x2abe7  3      
  movq %rbx, -0x20(%rsp)              #  4     0x2abea  5      
  movq %r12, -0x18(%rsp)              #  5     0x2abef  5      
  xorl %ebx, %ebx                     #  6     0x2abf4  2      
  movq %r13, -0x10(%rsp)              #  7     0x2abf6  5      
  nop                                 #  8     0x2abfb  1      
  subl $0x48, %esp                    #  9     0x2abfc  3      
  addq %r15, %rsp                     #  10    0x2abff  3      
  movl %r14d, %r14d                   #  11    0x2ac02  3      
  movl 0x8(%r15,%r14,1), %eax         #  12    0x2ac05  5      
  movl %esi, %esi                     #  13    0x2ac0a  2      
  movl 0x8(%r15,%rsi,1), %edx         #  14    0x2ac0c  5      
  cmpl %edx, %eax                     #  15    0x2ac11  2      
  je .L_2ac60                         #  16    0x2ac13  6      
  nop                                 #  17    0x2ac19  1      
.L_2ac20:                             #        0x2ac1a  0      
  movl %ebx, %eax                     #  18    0x2ac1a  2      
  movq 0x30(%rsp), %r12               #  19    0x2ac1c  5      
  movq 0x28(%rsp), %rbx               #  20    0x2ac21  5      
  movq 0x38(%rsp), %r13               #  21    0x2ac26  5      
  movq 0x40(%rsp), %r14               #  22    0x2ac2b  5      
  addl $0x48, %esp                    #  23    0x2ac30  3      
  addq %r15, %rsp                     #  24    0x2ac33  3      
  popq %r11                           #  25    0x2ac36  3      
  xchgw %ax, %ax                      #  26    0x2ac39  3      
  andl $0xffffffe0, %r11d             #  27    0x2ac3c  7      
  addq %r15, %r11                     #  28    0x2ac43  3      
  jmpq %r11                           #  29    0x2ac46  3      
  nop                                 #  30    0x2ac49  1      
  nop                                 #  31    0x2ac4a  1      
.L_2ac60:                             #        0x2ac4b  0      
  cmpl $0x5, %eax                     #  32    0x2ac4b  3      
  jbe .L_2ac80                        #  33    0x2ac4e  6      
  movl %esi, %esi                     #  34    0x2ac54  2      
  movq 0x10(%r15,%rsi,1), %rax        #  35    0x2ac56  5      
  movl %r14d, %r14d                   #  36    0x2ac5b  3      
  cmpq %rax, 0x10(%r15,%r14,1)        #  37    0x2ac5e  5      
  sete %bl                            #  38    0x2ac63  3      
  jmpq .L_2ac20                       #  39    0x2ac66  5      
  nop                                 #  40    0x2ac6b  1      
.L_2ac80:                             #        0x2ac6c  0      
  movl %eax, %ecx                     #  41    0x2ac6c  2      
  movl %ecx, %ecx                     #  42    0x2ac6e  2      
  movq 0x100205b8(%r15,%rcx,8), %rcx  #  43    0x2ac70  8      
  andl $0xffffffe0, %ecx              #  44    0x2ac78  6      
  addq %r15, %rcx                     #  45    0x2ac7e  3      
  jmpq %rcx                           #  46    0x2ac81  2      
  nop                                 #  47    0x2ac83  1      
  movl %esi, %esi                     #  48    0x2ac84  2      
  movq 0x10(%r15,%rsi,1), %rax        #  49    0x2ac86  5      
  movl %r14d, %r14d                   #  50    0x2ac8b  3      
  cmpq %rax, 0x10(%r15,%r14,1)        #  51    0x2ac8e  5      
  jne .L_2ae00                        #  52    0x2ac93  6      
  nop                                 #  53    0x2ac99  1      
  movl $0x1, %ebx                     #  54    0x2ac9a  5      
  jmpq .L_2ac20                       #  55    0x2ac9f  5      
  nop                                 #  56    0x2aca4  1      
  nop                                 #  57    0x2aca5  1      
  cmpl $0x4, %eax                     #  58    0x2aca6  3      
  je .L_2aee0                         #  59    0x2aca9  6      
  cmpl $0x3, %edx                     #  60    0x2acaf  3      
  xorpd %xmm1, %xmm1                  #  61    0x2acb2  4      
  je .L_2af60                         #  62    0x2acb6  6      
  nop                                 #  63    0x2acbc  1      
.L_2ad00:                             #        0x2acbd  0      
  cmpl $0x4, %edx                     #  64    0x2acbd  3      
  je .L_2af40                         #  65    0x2acc0  6      
  nop                                 #  66    0x2acc6  1      
  nop                                 #  67    0x2acc7  1      
.L_2ad20:                             #        0x2acc8  0      
  cmpl $0x3, %eax                     #  68    0x2acc8  3      
  xorpd %xmm0, %xmm0                  #  69    0x2accb  4      
  jne .L_2ad40                        #  70    0x2accf  6      
  movl %esi, %esi                     #  71    0x2acd5  2      
  cvtsi2sdl 0x10(%r15,%rsi,1), %xmm0  #  72    0x2acd7  7      
  nop                                 #  73    0x2acde  1      
.L_2ad40:                             #        0x2acdf  0      
  ucomisd %xmm0, %xmm1                #  74    0x2acdf  4      
  sete %bl                            #  75    0x2ace3  3      
  setnp %al                           #  76    0x2ace6  3      
  andl %eax, %ebx                     #  77    0x2ace9  2      
  jmpq .L_2ac20                       #  78    0x2aceb  5      
  nop                                 #  79    0x2acf0  1      
  cmpl $0x3, %eax                     #  80    0x2acf1  3      
  je .L_2af00                         #  81    0x2acf4  6      
  cmpl $0x4, %edx                     #  82    0x2acfa  3      
  je .L_2af80                         #  83    0x2acfd  6      
  cmpl $0x3, %edx                     #  84    0x2ad03  3      
  je .L_2afc0                         #  85    0x2ad06  6      
  xorl %ecx, %ecx                     #  86    0x2ad0c  2      
  nop                                 #  87    0x2ad0e  1      
.L_2ad80:                             #        0x2ad0f  0      
  xorl %edx, %edx                     #  88    0x2ad0f  2      
  cmpl $0x4, %eax                     #  89    0x2ad11  3      
  jne .L_2ada0                        #  90    0x2ad14  6      
  movl %esi, %esi                     #  91    0x2ad1a  2      
  movsd 0x10(%r15,%rsi,1), %xmm8      #  92    0x2ad1c  7      
  cvttsd2si %xmm8, %edx               #  93    0x2ad23  5      
  nop                                 #  94    0x2ad28  1      
.L_2ada0:                             #        0x2ad29  0      
  cmpl %edx, %ecx                     #  95    0x2ad29  2      
  sete %bl                            #  96    0x2ad2b  3      
  jmpq .L_2ac20                       #  97    0x2ad2e  5      
  nop                                 #  98    0x2ad33  1      
  nop                                 #  99    0x2ad34  1      
  cmpl $0x2, %eax                     #  100   0x2ad35  3      
  movl $0x1, %ebx                     #  101   0x2ad38  5      
  jne .L_2ac20                        #  102   0x2ad3d  6      
  movl %r14d, %r14d                   #  103   0x2ad43  3      
  movl 0x10(%r15,%r14,1), %edx        #  104   0x2ad46  5      
  movl %esi, %esi                     #  105   0x2ad4b  2      
  movl 0x10(%r15,%rsi,1), %eax        #  106   0x2ad4d  5      
  testl %edx, %edx                    #  107   0x2ad52  2      
  nop                                 #  108   0x2ad54  1      
  setne %dl                           #  109   0x2ad55  3      
  testl %eax, %eax                    #  110   0x2ad58  2      
  setne %al                           #  111   0x2ad5a  3      
  cmpb %al, %dl                       #  112   0x2ad5d  2      
  sete %bl                            #  113   0x2ad5f  3      
  jmpq .L_2ac20                       #  114   0x2ad62  5      
  nop                                 #  115   0x2ad67  1      
.L_2ae00:                             #        0x2ad68  0      
  leal 0x10(%rsp), %r13d              #  116   0x2ad68  5      
  movl %esp, %edi                     #  117   0x2ad6d  2      
  movl %esp, %r12d                    #  118   0x2ad6f  3      
  xchgw %ax, %ax                      #  119   0x2ad72  3      
  nop                                 #  120   0x2ad75  1      
  callq ._ZNK2pp3Var8AsStringEv       #  121   0x2ad76  5      
  movl %r14d, %esi                    #  122   0x2ad7b  3      
  movl %r13d, %edi                    #  123   0x2ad7e  3      
  nop                                 #  124   0x2ad81  1      
  nop                                 #  125   0x2ad82  1      
  callq ._ZNK2pp3Var8AsStringEv       #  126   0x2ad83  5      
  movl 0x10(%rsp), %esi               #  127   0x2ad88  4      
  movl (%rsp), %edi                   #  128   0x2ad8c  3      
  xorl %ebx, %ebx                     #  129   0x2ad8f  2      
  leal -0xc(%rsi), %eax               #  130   0x2ad91  3      
  movl %eax, %eax                     #  131   0x2ad94  2      
  movl (%r15,%rax,1), %ecx            #  132   0x2ad96  4      
  leal -0xc(%rdi), %eax               #  133   0x2ad9a  3      
  movl %eax, %eax                     #  134   0x2ad9d  2      
  cmpl (%r15,%rax,1), %ecx            #  135   0x2ad9f  4      
  nop                                 #  136   0x2ada3  1      
  je .L_2afa0                         #  137   0x2ada4  6      
  nop                                 #  138   0x2adaa  1      
  nop                                 #  139   0x2adab  1      
.L_2ae80:                             #        0x2adac  0      
  movl %r13d, %edi                    #  140   0x2adac  3      
  nop                                 #  141   0x2adaf  1      
  nop                                 #  142   0x2adb0  1      
  callq ._ZNSsD1Ev                    #  143   0x2adb1  5      
  movl %r12d, %edi                    #  144   0x2adb6  3      
  nop                                 #  145   0x2adb9  1      
  nop                                 #  146   0x2adba  1      
  callq ._ZNSsD1Ev                    #  147   0x2adbb  5      
  jmpq .L_2ac20                       #  148   0x2adc0  5      
  nop                                 #  149   0x2adc5  1      
  nop                                 #  150   0x2adc6  1      
.L_2aee0:                             #        0x2adc7  0      
  movl %r14d, %r14d                   #  151   0x2adc7  3      
  movsd 0x10(%r15,%r14,1), %xmm1      #  152   0x2adca  7      
  jmpq .L_2ad00                       #  153   0x2add1  5      
  xchgw %ax, %ax                      #  154   0x2add6  3      
  nop                                 #  155   0x2add9  1      
.L_2af00:                             #        0x2adda  0      
  movl %r14d, %r14d                   #  156   0x2adda  3      
  movl 0x10(%r15,%r14,1), %ecx        #  157   0x2addd  5      
  nop                                 #  158   0x2ade2  1      
  nop                                 #  159   0x2ade3  1      
.L_2af20:                             #        0x2ade4  0      
  movl %esi, %esi                     #  160   0x2ade4  2      
  movl 0x10(%r15,%rsi,1), %edx        #  161   0x2ade6  5      
  jmpq .L_2ada0                       #  162   0x2adeb  5      
  nop                                 #  163   0x2adf0  1      
  nop                                 #  164   0x2adf1  1      
.L_2af40:                             #        0x2adf2  0      
  movl %esi, %esi                     #  165   0x2adf2  2      
  movsd 0x10(%r15,%rsi,1), %xmm0      #  166   0x2adf4  7      
  jmpq .L_2ad40                       #  167   0x2adfb  5      
  nop                                 #  168   0x2ae00  1      
  nop                                 #  169   0x2ae01  1      
.L_2af60:                             #        0x2ae02  0      
  movl %r14d, %r14d                   #  170   0x2ae02  3      
  cvtsi2sdl 0x10(%r15,%r14,1), %xmm1  #  171   0x2ae05  7      
  jmpq .L_2ad20                       #  172   0x2ae0c  5      
  xchgw %ax, %ax                      #  173   0x2ae11  3      
  nop                                 #  174   0x2ae14  1      
.L_2af80:                             #        0x2ae15  0      
  movl %r14d, %r14d                   #  175   0x2ae15  3      
  movsd 0x10(%r15,%r14,1), %xmm9      #  176   0x2ae18  7      
  cvttsd2si %xmm9, %ecx               #  177   0x2ae1f  5      
  jmpq .L_2ad80                       #  178   0x2ae24  5      
  nop                                 #  179   0x2ae29  1      
.L_2afa0:                             #        0x2ae2a  0      
  movl %ecx, %ecx                     #  180   0x2ae2a  2      
  cmpq %rcx, %rcx                     #  181   0x2ae2c  3      
  movl %esi, %esi                     #  182   0x2ae2f  2      
  leaq (%r15,%rsi,1), %rsi            #  183   0x2ae31  4      
  movl %edi, %edi                     #  184   0x2ae35  2      
  leaq (%r15,%rdi,1), %rdi            #  185   0x2ae37  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)   #  186   0x2ae3b  3      
  movl %esi, %esi                     #  187   0x2ae3e  2      
  movl %edi, %edi                     #  188   0x2ae40  2      
  sete %bl                            #  189   0x2ae42  3      
  jmpq .L_2ae80                       #  190   0x2ae45  5      
  nop                                 #  191   0x2ae4a  1      
.L_2afc0:                             #        0x2ae4b  0      
  xorl %ecx, %ecx                     #  192   0x2ae4b  2      
  jmpq .L_2af20                       #  193   0x2ae4d  5      
  nop                                 #  194   0x2ae52  1      
  nop                                 #  195   0x2ae53  1      
  movl %eax, %ebx                     #  196   0x2ae54  2      
  movl %r12d, %edi                    #  197   0x2ae56  3      
  nop                                 #  198   0x2ae59  1      
  nop                                 #  199   0x2ae5a  1      
  callq ._ZNSsD1Ev                    #  200   0x2ae5b  5      
  movl %ebx, %edi                     #  201   0x2ae60  2      
  nop                                 #  202   0x2ae62  1      
  nop                                 #  203   0x2ae63  1      
  callq ._Unwind_Resume               #  204   0x2ae64  5      
                                                               
.size _ZNK2pp3VareqERKS0_, .-_ZNK2pp3VareqERKS0_

