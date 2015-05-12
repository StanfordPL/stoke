  .text
  .globl d_print_mod_list
  .type d_print_mod_list, @function

#! file-offset 0x54f00
#! rip-offset  0x54f00
#! capacity    960 bytes

# Text                            #  Line  RIP      Bytes  
.d_print_mod_list:                #        0x54f00  0      
  pushq %r14                      #  1     0x54f00  3      
  movl %edx, %r14d                #  2     0x54f03  3      
  pushq %r13                      #  3     0x54f06  3      
  movl %esi, %r13d                #  4     0x54f09  3      
  pushq %r12                      #  5     0x54f0c  3      
  pushq %rbx                      #  6     0x54f0f  2      
  movl %edi, %ebx                 #  7     0x54f11  2      
  subl $0x8, %esp                 #  8     0x54f13  3      
  addq %r15, %rsp                 #  9     0x54f16  3      
  testq %r13, %r13                #  10    0x54f19  3      
  jne .L_55000                    #  11    0x54f1c  6      
  xchgw %ax, %ax                  #  12    0x54f22  3      
  jmpq .L_55060                   #  13    0x54f25  5      
  nop                             #  14    0x54f2a  1      
  nop                             #  15    0x54f2b  1      
.L_54f40:                         #        0x54f2c  0      
  movl %r13d, %r13d               #  16    0x54f2c  3      
  movl 0x4(%r15,%r13,1), %esi     #  17    0x54f2f  5      
  nop                             #  18    0x54f34  1      
  nop                             #  19    0x54f35  1      
.L_54f60:                         #        0x54f36  0      
  movl %r13d, %r13d               #  20    0x54f36  3      
  movl 0xc(%r15,%r13,1), %eax     #  21    0x54f39  5      
  movl %ebx, %ebx                 #  22    0x54f3e  2      
  movl 0x114(%r15,%rbx,1), %r12d  #  23    0x54f40  8      
  movl %r13d, %r13d               #  24    0x54f48  3      
  movl $0x1, 0x8(%r15,%r13,1)     #  25    0x54f4b  9      
  xchgw %ax, %ax                  #  26    0x54f54  3      
  movl %ebx, %ebx                 #  27    0x54f57  2      
  movl %eax, 0x114(%r15,%rbx,1)   #  28    0x54f59  8      
  movl %esi, %esi                 #  29    0x54f61  2      
  movl (%r15,%rsi,1), %eax        #  30    0x54f63  4      
  cmpl $0x25, %eax                #  31    0x54f67  3      
  je .L_55080                     #  32    0x54f6a  6      
  cmpl $0x26, %eax                #  33    0x54f70  3      
  nop                             #  34    0x54f73  1      
  je .L_550e0                     #  35    0x54f74  6      
  cmpl $0x2, %eax                 #  36    0x54f7a  3      
  je .L_55140                     #  37    0x54f7d  6      
  movl %ebx, %edi                 #  38    0x54f83  2      
  nop                             #  39    0x54f85  1      
  callq .d_print_mod              #  40    0x54f86  5      
  movl %ebx, %ebx                 #  41    0x54f8b  2      
  movl %r12d, 0x114(%r15,%rbx,1)  #  42    0x54f8d  8      
  nop                             #  43    0x54f95  1      
  nop                             #  44    0x54f96  1      
.L_54fe0:                         #        0x54f97  0      
  movl %r13d, %r13d               #  45    0x54f97  3      
  movl (%r15,%r13,1), %r13d       #  46    0x54f9a  4      
  testq %r13, %r13                #  47    0x54f9e  3      
  je .L_55060                     #  48    0x54fa1  6      
  nop                             #  49    0x54fa7  1      
  nop                             #  50    0x54fa8  1      
.L_55000:                         #        0x54fa9  0      
  movl %ebx, %ebx                 #  51    0x54fa9  2      
  movl 0x11c(%r15,%rbx,1), %r10d  #  52    0x54fab  8      
  testl %r10d, %r10d              #  53    0x54fb3  3      
  jne .L_55060                    #  54    0x54fb6  6      
  movl %r13d, %r13d               #  55    0x54fbc  3      
  movl 0x8(%r15,%r13,1), %r9d     #  56    0x54fbf  5      
  testl %r9d, %r9d                #  57    0x54fc4  3      
  jne .L_54fe0                    #  58    0x54fc7  6      
  testl %r14d, %r14d              #  59    0x54fcd  3      
  nop                             #  60    0x54fd0  1      
  jne .L_54f40                    #  61    0x54fd1  6      
  movl %r13d, %r13d               #  62    0x54fd7  3      
  movl 0x4(%r15,%r13,1), %esi     #  63    0x54fda  5      
  movl %esi, %esi                 #  64    0x54fdf  2      
  movl (%r15,%rsi,1), %eax        #  65    0x54fe1  4      
  subl $0x1a, %eax                #  66    0x54fe5  3      
  cmpl $0x2, %eax                 #  67    0x54fe8  3      
  ja .L_54f60                     #  68    0x54feb  6      
  movl %r13d, %r13d               #  69    0x54ff1  3      
  movl (%r15,%r13,1), %r13d       #  70    0x54ff4  4      
  testq %r13, %r13                #  71    0x54ff8  3      
  jne .L_55000                    #  72    0x54ffb  6      
  nop                             #  73    0x55001  1      
  nop                             #  74    0x55002  1      
.L_55060:                         #        0x55003  0      
  addl $0x8, %esp                 #  75    0x55003  3      
  addq %r15, %rsp                 #  76    0x55006  3      
  popq %rbx                       #  77    0x55009  2      
  popq %r12                       #  78    0x5500b  3      
  popq %r13                       #  79    0x5500e  3      
  popq %r14                       #  80    0x55011  3      
  popq %r11                       #  81    0x55014  3      
  andl $0xffffffe0, %r11d         #  82    0x55017  7      
  addq %r15, %r11                 #  83    0x5501e  3      
  jmpq %r11                       #  84    0x55021  3      
  nop                             #  85    0x55024  1      
.L_55080:                         #        0x55025  0      
  movl %r13d, %r13d               #  86    0x55025  3      
  movl (%r15,%r13,1), %edx        #  87    0x55028  4      
  movl %ebx, %edi                 #  88    0x5502c  2      
  nop                             #  89    0x5502e  1      
  nop                             #  90    0x5502f  1      
  callq .d_print_function_type    #  91    0x55030  5      
  movl %ebx, %ebx                 #  92    0x55035  2      
  movl %r12d, 0x114(%r15,%rbx,1)  #  93    0x55037  8      
  addl $0x8, %esp                 #  94    0x5503f  3      
  addq %r15, %rsp                 #  95    0x55042  3      
  popq %rbx                       #  96    0x55045  2      
  popq %r12                       #  97    0x55047  3      
  popq %r13                       #  98    0x5504a  3      
  popq %r14                       #  99    0x5504d  3      
  popq %r11                       #  100   0x55050  3      
  nop                             #  101   0x55053  1      
  andl $0xffffffe0, %r11d         #  102   0x55054  7      
  addq %r15, %r11                 #  103   0x5505b  3      
  jmpq %r11                       #  104   0x5505e  3      
  nop                             #  105   0x55061  1      
  nop                             #  106   0x55062  1      
.L_550e0:                         #        0x55063  0      
  movl %r13d, %r13d               #  107   0x55063  3      
  movl (%r15,%r13,1), %edx        #  108   0x55066  4      
  movl %ebx, %edi                 #  109   0x5506a  2      
  nop                             #  110   0x5506c  1      
  nop                             #  111   0x5506d  1      
  callq .d_print_array_type       #  112   0x5506e  5      
  movl %ebx, %ebx                 #  113   0x55073  2      
  movl %r12d, 0x114(%r15,%rbx,1)  #  114   0x55075  8      
  addl $0x8, %esp                 #  115   0x5507d  3      
  addq %r15, %rsp                 #  116   0x55080  3      
  popq %rbx                       #  117   0x55083  2      
  popq %r12                       #  118   0x55085  3      
  popq %r13                       #  119   0x55088  3      
  popq %r14                       #  120   0x5508b  3      
  popq %r11                       #  121   0x5508e  3      
  nop                             #  122   0x55091  1      
  andl $0xffffffe0, %r11d         #  123   0x55092  7      
  addq %r15, %r11                 #  124   0x55099  3      
  jmpq %r11                       #  125   0x5509c  3      
  nop                             #  126   0x5509f  1      
  nop                             #  127   0x550a0  1      
.L_55140:                         #        0x550a1  0      
  movl %ebx, %ebx                 #  128   0x550a1  2      
  movl 0x118(%r15,%rbx,1), %r14d  #  129   0x550a3  8      
  movl %ebx, %ebx                 #  130   0x550ab  2      
  movl $0x0, 0x118(%r15,%rbx,1)   #  131   0x550ad  12     
  movl %ebx, %edi                 #  132   0x550b9  2      
  nop                             #  133   0x550bb  1      
  movl %esi, %esi                 #  134   0x550bc  2      
  movl 0x4(%r15,%rsi,1), %esi     #  135   0x550be  5      
  nop                             #  136   0x550c3  1      
  nop                             #  137   0x550c4  1      
  callq .d_print_comp             #  138   0x550c5  5      
  movl %ebx, %ebx                 #  139   0x550ca  2      
  testb $0x4, (%r15,%rbx,1)       #  140   0x550cc  5      
  movl %ebx, %ebx                 #  141   0x550d1  2      
  movl %r14d, 0x118(%r15,%rbx,1)  #  142   0x550d3  8      
  jne .L_55280                    #  143   0x550db  6      
  movl $0x10022865, %esi          #  144   0x550e1  5      
  movl %ebx, %edi                 #  145   0x550e6  2      
  xchgw %ax, %ax                  #  146   0x550e8  3      
  nop                             #  147   0x550eb  1      
  nop                             #  148   0x550ec  1      
  callq .d_append_string          #  149   0x550ed  5      
.L_551c0:                         #        0x550f2  0      
  movl %r13d, %r13d               #  150   0x550f2  3      
  movl 0x4(%r15,%r13,1), %eax     #  151   0x550f5  5      
  movl %eax, %eax                 #  152   0x550fa  2      
  movl 0x8(%r15,%rax,1), %esi     #  153   0x550fc  5      
  movl %esi, %esi                 #  154   0x55101  2      
  movl (%r15,%rsi,1), %eax        #  155   0x55103  4      
  subl $0x1a, %eax                #  156   0x55107  3      
  cmpl $0x2, %eax                 #  157   0x5510a  3      
  nop                             #  158   0x5510d  1      
  ja .L_55220                     #  159   0x5510e  6      
  nop                             #  160   0x55114  1      
  nop                             #  161   0x55115  1      
.L_55200:                         #        0x55116  0      
  movl %esi, %esi                 #  162   0x55116  2      
  movl 0x4(%r15,%rsi,1), %esi     #  163   0x55118  5      
  movl %esi, %esi                 #  164   0x5511d  2      
  movl (%r15,%rsi,1), %eax        #  165   0x5511f  4      
  subl $0x1a, %eax                #  166   0x55123  3      
  cmpl $0x2, %eax                 #  167   0x55126  3      
  jbe .L_55200                    #  168   0x55129  6      
  nop                             #  169   0x5512f  1      
.L_55220:                         #        0x55130  0      
  movl %ebx, %edi                 #  170   0x55130  2      
  nop                             #  171   0x55132  1      
  nop                             #  172   0x55133  1      
  callq .d_print_comp             #  173   0x55134  5      
  movl %ebx, %ebx                 #  174   0x55139  2      
  movl %r12d, 0x114(%r15,%rbx,1)  #  175   0x5513b  8      
  addl $0x8, %esp                 #  176   0x55143  3      
  addq %r15, %rsp                 #  177   0x55146  3      
  popq %rbx                       #  178   0x55149  2      
  popq %r12                       #  179   0x5514b  3      
  popq %r13                       #  180   0x5514e  3      
  popq %r14                       #  181   0x55151  3      
  popq %r11                       #  182   0x55154  3      
  nop                             #  183   0x55157  1      
  andl $0xffffffe0, %r11d         #  184   0x55158  7      
  addq %r15, %r11                 #  185   0x5515f  3      
  jmpq %r11                       #  186   0x55162  3      
  nop                             #  187   0x55165  1      
  nop                             #  188   0x55166  1      
.L_55280:                         #        0x55167  0      
  movl $0x2e, %esi                #  189   0x55167  5      
  movl %ebx, %edi                 #  190   0x5516c  2      
  nop                             #  191   0x5516e  1      
  nop                             #  192   0x5516f  1      
  callq .d_append_char            #  193   0x55170  5      
  jmpq .L_551c0                   #  194   0x55175  5      
  nop                             #  195   0x5517a  1      
  nop                             #  196   0x5517b  1      
                                                           
.size d_print_mod_list, .-d_print_mod_list

