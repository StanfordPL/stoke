  .text
  .globl _ZN2pp8Instance20AddPerInstanceObjectERKSsPv
  .type _ZN2pp8Instance20AddPerInstanceObjectERKSsPv, @function

#! file-offset 0x21900
#! rip-offset  0x21900
#! capacity    704 bytes

# Text                                                                                                                                   #  Line  RIP      Bytes  
._ZN2pp8Instance20AddPerInstanceObjectERKSsPv:                                                                                           #        0x21900  0      
  pushq %r14                                                                                                                             #  1     0x21900  3      
  movl %edx, %r14d                                                                                                                       #  2     0x21903  3      
  movl %esi, %r10d                                                                                                                       #  3     0x21906  3      
  pushq %r13                                                                                                                             #  4     0x21909  3      
  pushq %r12                                                                                                                             #  5     0x2190c  3      
  movl %edi, %r12d                                                                                                                       #  6     0x2190f  3      
  leal 0xc(%r12), %r11d                                                                                                                  #  7     0x21912  5      
  pushq %rbx                                                                                                                             #  8     0x21917  2      
  movq %r11, %rbx                                                                                                                        #  9     0x21919  3      
  subl $0x18, %esp                                                                                                                       #  10    0x2191c  3      
  addq %r15, %rsp                                                                                                                        #  11    0x2191f  3      
  xchgw %ax, %ax                                                                                                                         #  12    0x21922  3      
  movl %r12d, %r12d                                                                                                                      #  13    0x21925  3      
  movl 0x10(%r15,%r12,1), %edx                                                                                                           #  14    0x21928  5      
  testq %rdx, %rdx                                                                                                                       #  15    0x2192d  3      
  je .L_21a20                                                                                                                            #  16    0x21930  6      
  movl %r10d, %r10d                                                                                                                      #  17    0x21936  3      
  movl (%r15,%r10,1), %r9d                                                                                                               #  18    0x21939  4      
  leal -0xc(%r9), %eax                                                                                                                   #  19    0x2193d  4      
  nop                                                                                                                                    #  20    0x21941  1      
  movl %eax, %eax                                                                                                                        #  21    0x21942  2      
  movl (%r15,%rax,1), %r8d                                                                                                               #  22    0x21944  4      
  jmpq .L_219a0                                                                                                                          #  23    0x21948  5      
  nop                                                                                                                                    #  24    0x2194d  1      
  nop                                                                                                                                    #  25    0x2194e  1      
.L_21960:                                                                                                                                #        0x2194f  0      
  movl %edx, %edx                                                                                                                        #  26    0x2194f  2      
  movl 0x8(%r15,%rdx,1), %eax                                                                                                            #  27    0x21951  5      
  movq %rdx, %rbx                                                                                                                        #  28    0x21956  3      
  testq %rax, %rax                                                                                                                       #  29    0x21959  3      
  je .L_21a20                                                                                                                            #  30    0x2195c  6      
  nop                                                                                                                                    #  31    0x21962  1      
.L_21980:                                                                                                                                #        0x21963  0      
  movq %rax, %rdx                                                                                                                        #  32    0x21963  3      
  nop                                                                                                                                    #  33    0x21966  1      
  nop                                                                                                                                    #  34    0x21967  1      
.L_219a0:                                                                                                                                #        0x21968  0      
  movl %edx, %edx                                                                                                                        #  35    0x21968  2      
  movl 0x10(%r15,%rdx,1), %esi                                                                                                           #  36    0x2196a  5      
  movq %r9, %rdi                                                                                                                         #  37    0x2196f  3      
  leal -0xc(%rsi), %eax                                                                                                                  #  38    0x21972  3      
  movl %eax, %eax                                                                                                                        #  39    0x21975  2      
  movl (%r15,%rax,1), %eax                                                                                                               #  40    0x21977  4      
  cmpl %eax, %r8d                                                                                                                        #  41    0x2197b  3      
  movl %eax, %ecx                                                                                                                        #  42    0x2197e  2      
  cmovbel %r8d, %ecx                                                                                                                     #  43    0x21980  4      
  movl %ecx, %ecx                                                                                                                        #  44    0x21984  2      
  xchgw %ax, %ax                                                                                                                         #  45    0x21986  3      
  cmpq %rcx, %rcx                                                                                                                        #  46    0x21989  3      
  movl %esi, %esi                                                                                                                        #  47    0x2198c  2      
  leaq (%r15,%rsi,1), %rsi                                                                                                               #  48    0x2198e  4      
  movl %edi, %edi                                                                                                                        #  49    0x21992  2      
  leaq (%r15,%rdi,1), %rdi                                                                                                               #  50    0x21994  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)                                                                                                      #  51    0x21998  3      
  movl %esi, %esi                                                                                                                        #  52    0x2199b  2      
  movl %edi, %edi                                                                                                                        #  53    0x2199d  2      
  seta %cl                                                                                                                               #  54    0x2199f  3      
  setb %sil                                                                                                                              #  55    0x219a2  4      
  subl %r8d, %eax                                                                                                                        #  56    0x219a6  3      
  nop                                                                                                                                    #  57    0x219a9  1      
  subb %sil, %cl                                                                                                                         #  58    0x219aa  3      
  movsbl %cl, %ecx                                                                                                                       #  59    0x219ad  3      
  testl %ecx, %ecx                                                                                                                       #  60    0x219b0  2      
  cmovel %eax, %ecx                                                                                                                      #  61    0x219b2  3      
  testl %ecx, %ecx                                                                                                                       #  62    0x219b5  2      
  jns .L_21960                                                                                                                           #  63    0x219b7  6      
  movl %edx, %edx                                                                                                                        #  64    0x219bd  2      
  movl 0xc(%r15,%rdx,1), %eax                                                                                                            #  65    0x219bf  5      
  testq %rax, %rax                                                                                                                       #  66    0x219c4  3      
  nop                                                                                                                                    #  67    0x219c7  1      
  jne .L_21980                                                                                                                           #  68    0x219c8  6      
  nop                                                                                                                                    #  69    0x219ce  1      
  nop                                                                                                                                    #  70    0x219cf  1      
.L_21a20:                                                                                                                                #        0x219d0  0      
  cmpl %ebx, %r11d                                                                                                                       #  71    0x219d0  3      
  movq %rbx, %r13                                                                                                                        #  72    0x219d3  3      
  je .L_21ae0                                                                                                                            #  73    0x219d6  6      
  movl %r10d, %r10d                                                                                                                      #  74    0x219dc  3      
  movl (%r15,%r10,1), %esi                                                                                                               #  75    0x219df  4      
  movl %ebx, %ebx                                                                                                                        #  76    0x219e3  2      
  movl 0x10(%r15,%rbx,1), %edi                                                                                                           #  77    0x219e5  5      
  leal -0xc(%rsi), %eax                                                                                                                  #  78    0x219ea  3      
  nop                                                                                                                                    #  79    0x219ed  1      
  movl %eax, %eax                                                                                                                        #  80    0x219ee  2      
  movl (%r15,%rax,1), %edx                                                                                                               #  81    0x219f0  4      
  leal -0xc(%rdi), %eax                                                                                                                  #  82    0x219f4  3      
  movl %eax, %eax                                                                                                                        #  83    0x219f7  2      
  movl (%r15,%rax,1), %eax                                                                                                               #  84    0x219f9  4      
  movl %edx, %ecx                                                                                                                        #  85    0x219fd  2      
  cmpl %edx, %eax                                                                                                                        #  86    0x219ff  2      
  cmovbel %eax, %ecx                                                                                                                     #  87    0x21a01  3      
  movl %ecx, %ecx                                                                                                                        #  88    0x21a04  2      
  cmpq %rcx, %rcx                                                                                                                        #  89    0x21a06  3      
  nop                                                                                                                                    #  90    0x21a09  1      
  movl %esi, %esi                                                                                                                        #  91    0x21a0a  2      
  leaq (%r15,%rsi,1), %rsi                                                                                                               #  92    0x21a0c  4      
  movl %edi, %edi                                                                                                                        #  93    0x21a10  2      
  leaq (%r15,%rdi,1), %rdi                                                                                                               #  94    0x21a12  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)                                                                                                      #  95    0x21a16  3      
  movl %esi, %esi                                                                                                                        #  96    0x21a19  2      
  movl %edi, %edi                                                                                                                        #  97    0x21a1b  2      
  seta %cl                                                                                                                               #  98    0x21a1d  3      
  setb %sil                                                                                                                              #  99    0x21a20  4      
  subl %eax, %edx                                                                                                                        #  100   0x21a24  2      
  subb %sil, %cl                                                                                                                         #  101   0x21a26  3      
  xchgw %ax, %ax                                                                                                                         #  102   0x21a29  3      
  movsbl %cl, %ecx                                                                                                                       #  103   0x21a2c  3      
  testl %ecx, %ecx                                                                                                                       #  104   0x21a2f  2      
  cmovel %edx, %ecx                                                                                                                      #  105   0x21a31  3      
  testl %ecx, %ecx                                                                                                                       #  106   0x21a34  2      
  js .L_21ae0                                                                                                                            #  107   0x21a36  6      
  nop                                                                                                                                    #  108   0x21a3c  1      
  nop                                                                                                                                    #  109   0x21a3d  1      
.L_21aa0:                                                                                                                                #        0x21a3e  0      
  movl %r13d, %r13d                                                                                                                      #  110   0x21a3e  3      
  movl %r14d, 0x14(%r15,%r13,1)                                                                                                          #  111   0x21a41  5      
  addl $0x18, %esp                                                                                                                       #  112   0x21a46  3      
  addq %r15, %rsp                                                                                                                        #  113   0x21a49  3      
  popq %rbx                                                                                                                              #  114   0x21a4c  2      
  popq %r12                                                                                                                              #  115   0x21a4e  3      
  popq %r13                                                                                                                              #  116   0x21a51  3      
  popq %r14                                                                                                                              #  117   0x21a54  3      
  popq %r11                                                                                                                              #  118   0x21a57  3      
  nop                                                                                                                                    #  119   0x21a5a  1      
  andl $0xffffffe0, %r11d                                                                                                                #  120   0x21a5b  7      
  addq %r15, %r11                                                                                                                        #  121   0x21a62  3      
  jmpq %r11                                                                                                                              #  122   0x21a65  3      
  nop                                                                                                                                    #  123   0x21a68  1      
  nop                                                                                                                                    #  124   0x21a69  1      
.L_21ae0:                                                                                                                                #        0x21a6a  0      
  movl %r10d, %esi                                                                                                                       #  125   0x21a6a  3      
  movl %esp, %edi                                                                                                                        #  126   0x21a6d  2      
  movl %esp, %r13d                                                                                                                       #  127   0x21a6f  3      
  nop                                                                                                                                    #  128   0x21a72  1      
  nop                                                                                                                                    #  129   0x21a73  1      
  callq ._ZNSsC1ERKSs                                                                                                                    #  130   0x21a74  5      
  leal 0x8(%r12), %edi                                                                                                                   #  131   0x21a79  5      
  movl %esp, %edx                                                                                                                        #  132   0x21a7e  2      
  movl %ebx, %esi                                                                                                                        #  133   0x21a80  2      
  movl $0x0, 0x4(%rsp)                                                                                                                   #  134   0x21a82  8      
  nop                                                                                                                                    #  135   0x21a8a  1      
  callq ._ZNSt8_Rb_treeISsSt4pairIKSsPvESt10_Select1stIS3_ESt4lessISsESaIS3_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS3_ERKS3_  #  136   0x21a8b  5      
  movl (%rsp), %edi                                                                                                                      #  137   0x21a90  3      
  movl %eax, %r13d                                                                                                                       #  138   0x21a93  3      
  subl $0xc, %edi                                                                                                                        #  139   0x21a96  3      
  cmpl $0x10031da0, %edi                                                                                                                 #  140   0x21a99  6      
  je .L_21aa0                                                                                                                            #  141   0x21a9f  6      
  movl %edi, %edi                                                                                                                        #  142   0x21aa5  2      
  movl 0x8(%r15,%rdi,1), %eax                                                                                                            #  143   0x21aa7  5      
  leal -0x1(%rax), %edx                                                                                                                  #  144   0x21aac  3      
  nop                                                                                                                                    #  145   0x21aaf  1      
  testl %eax, %eax                                                                                                                       #  146   0x21ab0  2      
  movl %edi, %edi                                                                                                                        #  147   0x21ab2  2      
  movl %edx, 0x8(%r15,%rdi,1)                                                                                                            #  148   0x21ab4  5      
  jg .L_21aa0                                                                                                                            #  149   0x21ab9  6      
  leal 0xf(%rsp), %esi                                                                                                                   #  150   0x21abf  4      
  nop                                                                                                                                    #  151   0x21ac3  1      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE                                                                                                  #  152   0x21ac4  5      
  jmpq .L_21aa0                                                                                                                          #  153   0x21ac9  5      
  nop                                                                                                                                    #  154   0x21ace  1      
  nop                                                                                                                                    #  155   0x21acf  1      
  movl %eax, %ebx                                                                                                                        #  156   0x21ad0  2      
  movl %r13d, %edi                                                                                                                       #  157   0x21ad2  3      
  nop                                                                                                                                    #  158   0x21ad5  1      
  nop                                                                                                                                    #  159   0x21ad6  1      
  callq ._ZNSsD1Ev                                                                                                                       #  160   0x21ad7  5      
  movl %ebx, %edi                                                                                                                        #  161   0x21adc  2      
  nop                                                                                                                                    #  162   0x21ade  1      
  nop                                                                                                                                    #  163   0x21adf  1      
  callq ._Unwind_Resume                                                                                                                  #  164   0x21ae0  5      
                                                                                                                                                                  
.size _ZN2pp8Instance20AddPerInstanceObjectERKSsPv, .-_ZN2pp8Instance20AddPerInstanceObjectERKSsPv

