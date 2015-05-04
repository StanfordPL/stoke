  .text
  .globl uw_install_context_1
  .type uw_install_context_1, @function

#! file-offset 0x5a4c0
#! rip-offset  0x5a4c0
#! capacity    832 bytes

# Text                            #  Line  RIP      Bytes  
.uw_install_context_1:            #        0x5a4c0  0      
  pushq %r14                      #  1     0x5a4c0  3      
  movl %esi, %esi                 #  2     0x5a4c3  2      
  movl %edi, %edi                 #  3     0x5a4c5  2      
  pushq %r13                      #  4     0x5a4c7  3      
  pushq %r12                      #  5     0x5a4ca  3      
  pushq %rbx                      #  6     0x5a4cd  2      
  subl $0x48, %esp                #  7     0x5a4cf  3      
  addq %r15, %rsp                 #  8     0x5a4d2  3      
  movl %esi, %esi                 #  9     0x5a4d5  2      
  testb $0x40, 0x67(%r15,%rsi,1)  #  10    0x5a4d7  6      
  movq %rdi, 0x18(%rsp)           #  11    0x5a4dd  5      
  xchgw %ax, %ax                  #  12    0x5a4e2  3      
  movq %rsi, 0x10(%rsp)           #  13    0x5a4e5  5      
  je .L_5a500                     #  14    0x5a4ea  6      
  movl %esi, %esi                 #  15    0x5a4f0  2      
  cmpb $0x0, 0x7f(%r15,%rsi,1)    #  16    0x5a4f2  6      
  jne .L_5a780                    #  17    0x5a4f8  6      
  nop                             #  18    0x5a4fe  1      
.L_5a500:                         #        0x5a4ff  0      
  movq 0x10(%rsp), %rdx           #  19    0x5a4ff  5      
  movl %edx, %edx                 #  20    0x5a504  2      
  movl 0x1c(%r15,%rdx,1), %eax    #  21    0x5a506  5      
  nop                             #  22    0x5a50b  1      
  nop                             #  23    0x5a50c  1      
.L_5a520:                         #        0x5a50d  0      
  testq %rax, %rax                #  24    0x5a50d  3      
  je .L_5a7a0                     #  25    0x5a510  6      
  nop                             #  26    0x5a516  1      
  nop                             #  27    0x5a517  1      
.L_5a540:                         #        0x5a518  0      
  movl 0x18(%rsp), %r14d          #  28    0x5a518  5      
  movl 0x10(%rsp), %r13d          #  29    0x5a51d  5      
  leal 0xffdc2f0(%rip), %ebx      #  30    0x5a522  6      
  leal 0xffdc2fa(%rip), %r8d      #  31    0x5a528  7      
  movl %r13d, %ecx                #  32    0x5a52f  3      
  movl %r14d, %r12d               #  33    0x5a532  3      
  nop                             #  34    0x5a535  1      
  jmpq .L_5a5e0                   #  35    0x5a536  5      
  nop                             #  36    0x5a53b  1      
  nop                             #  37    0x5a53c  1      
.L_5a580:                         #        0x5a53d  0      
  movl %ecx, %edx                 #  38    0x5a53d  2      
  movl %edx, %edx                 #  39    0x5a53f  2      
  cmpb $0x0, 0x78(%r15,%rdx,1)    #  40    0x5a541  6      
  je .L_5a620                     #  41    0x5a547  6      
  movl %ebx, %eax                 #  42    0x5a54d  2      
  movl %eax, %eax                 #  43    0x5a54f  2      
  movzbl (%r15,%rax,1), %eax      #  44    0x5a551  5      
  cmpb $0x8, %al                  #  45    0x5a556  2      
  nop                             #  46    0x5a558  1      
  je .L_5a680                     #  47    0x5a559  6      
  cmpb $0x4, %al                  #  48    0x5a55f  2      
  jne .L_5a7e0                    #  49    0x5a561  6      
  movl %esi, 0x3c(%rsp)           #  50    0x5a567  4      
  movl %edi, %edi                 #  51    0x5a56b  2      
  movl %esi, (%r15,%rdi,1)        #  52    0x5a56d  4      
  nop                             #  53    0x5a571  1      
.L_5a5c0:                         #        0x5a572  0      
  addl $0x1, %ebx                 #  54    0x5a572  3      
  addl $0x4, %r14d                #  55    0x5a575  4      
  addl $0x4, %r13d                #  56    0x5a579  4      
  addl $0x1, %r12d                #  57    0x5a57d  4      
  addl $0x1, %ecx                 #  58    0x5a581  3      
  cmpl %r8d, %ebx                 #  59    0x5a584  3      
  je .L_5a6a0                     #  60    0x5a587  6      
  nop                             #  61    0x5a58d  1      
.L_5a5e0:                         #        0x5a58e  0      
  movl %r14d, %eax                #  62    0x5a58e  3      
  movl %eax, %eax                 #  63    0x5a591  2      
  movl (%r15,%rax,1), %edi        #  64    0x5a593  4      
  movl %r13d, %eax                #  65    0x5a597  3      
  movl %eax, %eax                 #  66    0x5a59a  2      
  movl (%r15,%rax,1), %esi        #  67    0x5a59c  4      
  movl %r12d, %eax                #  68    0x5a5a0  3      
  movl %eax, %eax                 #  69    0x5a5a3  2      
  cmpb $0x0, 0x78(%r15,%rax,1)    #  70    0x5a5a5  6      
  nop                             #  71    0x5a5ab  1      
  jne .L_5a7e0                    #  72    0x5a5ac  6      
  testl %edi, %edi                #  73    0x5a5b2  2      
  setne %al                       #  74    0x5a5b4  3      
  jne .L_5a580                    #  75    0x5a5b7  6      
  nop                             #  76    0x5a5bd  1      
.L_5a620:                         #        0x5a5be  0      
  testq %rsi, %rsi                #  77    0x5a5be  3      
  je .L_5a5c0                     #  78    0x5a5c1  6      
  testb %al, %al                  #  79    0x5a5c7  2      
  je .L_5a5c0                     #  80    0x5a5c9  6      
  cmpl %edi, %esi                 #  81    0x5a5cf  2      
  je .L_5a5c0                     #  82    0x5a5d1  6      
  movl %ebx, %eax                 #  83    0x5a5d7  2      
  movl %eax, %eax                 #  84    0x5a5d9  2      
  movzbl (%r15,%rax,1), %edx      #  85    0x5a5db  5      
  movl %ecx, (%rsp)               #  86    0x5a5e0  3      
  movl %r8d, 0x8(%rsp)            #  87    0x5a5e3  5      
  xchgw %ax, %ax                  #  88    0x5a5e8  3      
  nop                             #  89    0x5a5eb  1      
  nop                             #  90    0x5a5ec  1      
  callq .memcpy                   #  91    0x5a5ed  5      
  movl 0x8(%rsp), %r8d            #  92    0x5a5f2  5      
  movl (%rsp), %ecx               #  93    0x5a5f7  3      
  jmpq .L_5a5c0                   #  94    0x5a5fa  5      
  nop                             #  95    0x5a5ff  1      
  nop                             #  96    0x5a600  1      
.L_5a680:                         #        0x5a601  0      
  movq %rsi, 0x28(%rsp)           #  97    0x5a601  5      
  movl %edi, %edi                 #  98    0x5a606  2      
  movq %rsi, (%r15,%rdi,1)        #  99    0x5a608  4      
  jmpq .L_5a5c0                   #  100   0x5a60c  5      
  nop                             #  101   0x5a611  1      
  nop                             #  102   0x5a612  1      
.L_5a6a0:                         #        0x5a613  0      
  movq 0x18(%rsp), %rdx           #  103   0x5a613  5      
  movl %edx, %edx                 #  104   0x5a618  2      
  testb $0x40, 0x67(%r15,%rdx,1)  #  105   0x5a61a  6      
  jne .L_5a700                    #  106   0x5a620  6      
  xchgw %ax, %ax                  #  107   0x5a626  3      
  nop                             #  108   0x5a629  1      
.L_5a6c0:                         #        0x5a62a  0      
  movq 0x18(%rsp), %rax           #  109   0x5a62a  5      
  movl %eax, %eax                 #  110   0x5a62f  2      
  movl 0x1c(%r15,%rax,1), %edx    #  111   0x5a631  5      
  xorl %eax, %eax                 #  112   0x5a636  2      
  testq %rdx, %rdx                #  113   0x5a638  3      
  je .L_5a720                     #  114   0x5a63b  6      
  nop                             #  115   0x5a641  1      
.L_5a6e0:                         #        0x5a642  0      
  addl $0x48, %esp                #  116   0x5a642  3      
  addq %r15, %rsp                 #  117   0x5a645  3      
  popq %rbx                       #  118   0x5a648  2      
  popq %r12                       #  119   0x5a64a  3      
  popq %r13                       #  120   0x5a64d  3      
  popq %r14                       #  121   0x5a650  3      
  popq %r11                       #  122   0x5a653  3      
  andl $0xffffffe0, %r11d         #  123   0x5a656  7      
  addq %r15, %r11                 #  124   0x5a65d  3      
  jmpq %r11                       #  125   0x5a660  3      
  nop                             #  126   0x5a663  1      
.L_5a700:                         #        0x5a664  0      
  movl %edx, %edx                 #  127   0x5a664  2      
  cmpb $0x0, 0x7f(%r15,%rdx,1)    #  128   0x5a666  6      
  je .L_5a6c0                     #  129   0x5a66c  6      
  movl 0x18(%rsp), %edx           #  130   0x5a672  4      
  xorl %eax, %eax                 #  131   0x5a676  2      
  addl $0x1c, %edx                #  132   0x5a678  3      
  testq %rdx, %rdx                #  133   0x5a67b  3      
  jne .L_5a6e0                    #  134   0x5a67e  6      
  nop                             #  135   0x5a684  1      
.L_5a720:                         #        0x5a685  0      
  movl 0x10(%rsp), %edi           #  136   0x5a685  4      
  movl $0x7, %esi                 #  137   0x5a689  5      
  nop                             #  138   0x5a68e  1      
  nop                             #  139   0x5a68f  1      
  callq ._Unwind_GetGR            #  140   0x5a690  5      
  movq 0x18(%rsp), %rdx           #  141   0x5a695  5      
  movl %edx, %edx                 #  142   0x5a69a  2      
  subl 0x48(%r15,%rdx,1), %eax    #  143   0x5a69c  5      
  movq 0x10(%rsp), %rdx           #  144   0x5a6a1  5      
  movl %edx, %edx                 #  145   0x5a6a6  2      
  addl 0x70(%r15,%rdx,1), %eax    #  146   0x5a6a8  5      
  addl $0x48, %esp                #  147   0x5a6ad  3      
  addq %r15, %rsp                 #  148   0x5a6b0  3      
  popq %rbx                       #  149   0x5a6b3  2      
  nop                             #  150   0x5a6b5  1      
  popq %r12                       #  151   0x5a6b6  3      
  popq %r13                       #  152   0x5a6b9  3      
  popq %r14                       #  153   0x5a6bc  3      
  popq %r11                       #  154   0x5a6bf  3      
  andl $0xffffffe0, %r11d         #  155   0x5a6c2  7      
  addq %r15, %r11                 #  156   0x5a6c9  3      
  jmpq %r11                       #  157   0x5a6cc  3      
  nop                             #  158   0x5a6cf  1      
.L_5a780:                         #        0x5a6d0  0      
  movl 0x10(%rsp), %eax           #  159   0x5a6d0  4      
  addl $0x1c, %eax                #  160   0x5a6d4  3      
  jmpq .L_5a520                   #  161   0x5a6d7  5      
  nop                             #  162   0x5a6dc  1      
  nop                             #  163   0x5a6dd  1      
.L_5a7a0:                         #        0x5a6de  0      
  movq 0x10(%rsp), %rax           #  164   0x5a6de  5      
  leal 0x30(%rsp), %edx           #  165   0x5a6e3  4      
  movl %eax, %eax                 #  166   0x5a6e7  2      
  movl 0x48(%r15,%rax,1), %esi    #  167   0x5a6e9  5      
  movl %eax, %edi                 #  168   0x5a6ee  2      
  nop                             #  169   0x5a6f0  1      
  callq ._Unwind_SetSpColumn      #  170   0x5a6f1  5      
  jmpq .L_5a540                   #  171   0x5a6f6  5      
  nop                             #  172   0x5a6fb  1      
  nop                             #  173   0x5a6fc  1      
.L_5a7e0:                         #        0x5a6fd  0      
  nop                             #  174   0x5a6fd  1      
  nop                             #  175   0x5a6fe  1      
  callq .abort                    #  176   0x5a6ff  5      
                                                           
.size uw_install_context_1, .-uw_install_context_1

