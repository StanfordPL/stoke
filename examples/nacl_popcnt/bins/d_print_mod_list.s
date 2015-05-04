  .text
  .globl d_print_mod_list
  .type d_print_mod_list, @function

#! file-offset 0x54f80
#! rip-offset  0x54f80
#! capacity    960 bytes

# Text                            #  Line  RIP      Bytes  
.d_print_mod_list:                #        0x54f80  0      
  pushq %r14                      #  1     0x54f80  3      
  movl %edx, %r14d                #  2     0x54f83  3      
  pushq %r13                      #  3     0x54f86  3      
  movl %esi, %r13d                #  4     0x54f89  3      
  pushq %r12                      #  5     0x54f8c  3      
  pushq %rbx                      #  6     0x54f8f  2      
  movl %edi, %ebx                 #  7     0x54f91  2      
  subl $0x8, %esp                 #  8     0x54f93  3      
  addq %r15, %rsp                 #  9     0x54f96  3      
  testq %r13, %r13                #  10    0x54f99  3      
  jne .L_55080                    #  11    0x54f9c  6      
  xchgw %ax, %ax                  #  12    0x54fa2  3      
  jmpq .L_550e0                   #  13    0x54fa5  5      
  nop                             #  14    0x54faa  1      
  nop                             #  15    0x54fab  1      
.L_54fc0:                         #        0x54fac  0      
  movl %r13d, %r13d               #  16    0x54fac  3      
  movl 0x4(%r15,%r13,1), %esi     #  17    0x54faf  5      
  nop                             #  18    0x54fb4  1      
  nop                             #  19    0x54fb5  1      
.L_54fe0:                         #        0x54fb6  0      
  movl %r13d, %r13d               #  20    0x54fb6  3      
  movl 0xc(%r15,%r13,1), %eax     #  21    0x54fb9  5      
  movl %ebx, %ebx                 #  22    0x54fbe  2      
  movl 0x114(%r15,%rbx,1), %r12d  #  23    0x54fc0  8      
  movl %r13d, %r13d               #  24    0x54fc8  3      
  movl $0x1, 0x8(%r15,%r13,1)     #  25    0x54fcb  9      
  xchgw %ax, %ax                  #  26    0x54fd4  3      
  movl %ebx, %ebx                 #  27    0x54fd7  2      
  movl %eax, 0x114(%r15,%rbx,1)   #  28    0x54fd9  8      
  movl %esi, %esi                 #  29    0x54fe1  2      
  movl (%r15,%rsi,1), %eax        #  30    0x54fe3  4      
  cmpl $0x25, %eax                #  31    0x54fe7  3      
  je .L_55100                     #  32    0x54fea  6      
  cmpl $0x26, %eax                #  33    0x54ff0  3      
  nop                             #  34    0x54ff3  1      
  je .L_55160                     #  35    0x54ff4  6      
  cmpl $0x2, %eax                 #  36    0x54ffa  3      
  je .L_551c0                     #  37    0x54ffd  6      
  movl %ebx, %edi                 #  38    0x55003  2      
  nop                             #  39    0x55005  1      
  callq .d_print_mod              #  40    0x55006  5      
  movl %ebx, %ebx                 #  41    0x5500b  2      
  movl %r12d, 0x114(%r15,%rbx,1)  #  42    0x5500d  8      
  nop                             #  43    0x55015  1      
  nop                             #  44    0x55016  1      
.L_55060:                         #        0x55017  0      
  movl %r13d, %r13d               #  45    0x55017  3      
  movl (%r15,%r13,1), %r13d       #  46    0x5501a  4      
  testq %r13, %r13                #  47    0x5501e  3      
  je .L_550e0                     #  48    0x55021  6      
  nop                             #  49    0x55027  1      
  nop                             #  50    0x55028  1      
.L_55080:                         #        0x55029  0      
  movl %ebx, %ebx                 #  51    0x55029  2      
  movl 0x11c(%r15,%rbx,1), %r10d  #  52    0x5502b  8      
  testl %r10d, %r10d              #  53    0x55033  3      
  jne .L_550e0                    #  54    0x55036  6      
  movl %r13d, %r13d               #  55    0x5503c  3      
  movl 0x8(%r15,%r13,1), %r9d     #  56    0x5503f  5      
  testl %r9d, %r9d                #  57    0x55044  3      
  jne .L_55060                    #  58    0x55047  6      
  testl %r14d, %r14d              #  59    0x5504d  3      
  nop                             #  60    0x55050  1      
  jne .L_54fc0                    #  61    0x55051  6      
  movl %r13d, %r13d               #  62    0x55057  3      
  movl 0x4(%r15,%r13,1), %esi     #  63    0x5505a  5      
  movl %esi, %esi                 #  64    0x5505f  2      
  movl (%r15,%rsi,1), %eax        #  65    0x55061  4      
  subl $0x1a, %eax                #  66    0x55065  3      
  cmpl $0x2, %eax                 #  67    0x55068  3      
  ja .L_54fe0                     #  68    0x5506b  6      
  movl %r13d, %r13d               #  69    0x55071  3      
  movl (%r15,%r13,1), %r13d       #  70    0x55074  4      
  testq %r13, %r13                #  71    0x55078  3      
  jne .L_55080                    #  72    0x5507b  6      
  nop                             #  73    0x55081  1      
  nop                             #  74    0x55082  1      
.L_550e0:                         #        0x55083  0      
  addl $0x8, %esp                 #  75    0x55083  3      
  addq %r15, %rsp                 #  76    0x55086  3      
  popq %rbx                       #  77    0x55089  2      
  popq %r12                       #  78    0x5508b  3      
  popq %r13                       #  79    0x5508e  3      
  popq %r14                       #  80    0x55091  3      
  popq %r11                       #  81    0x55094  3      
  andl $0xffffffe0, %r11d         #  82    0x55097  7      
  addq %r15, %r11                 #  83    0x5509e  3      
  jmpq %r11                       #  84    0x550a1  3      
  nop                             #  85    0x550a4  1      
.L_55100:                         #        0x550a5  0      
  movl %r13d, %r13d               #  86    0x550a5  3      
  movl (%r15,%r13,1), %edx        #  87    0x550a8  4      
  movl %ebx, %edi                 #  88    0x550ac  2      
  nop                             #  89    0x550ae  1      
  nop                             #  90    0x550af  1      
  callq .d_print_function_type    #  91    0x550b0  5      
  movl %ebx, %ebx                 #  92    0x550b5  2      
  movl %r12d, 0x114(%r15,%rbx,1)  #  93    0x550b7  8      
  addl $0x8, %esp                 #  94    0x550bf  3      
  addq %r15, %rsp                 #  95    0x550c2  3      
  popq %rbx                       #  96    0x550c5  2      
  popq %r12                       #  97    0x550c7  3      
  popq %r13                       #  98    0x550ca  3      
  popq %r14                       #  99    0x550cd  3      
  popq %r11                       #  100   0x550d0  3      
  nop                             #  101   0x550d3  1      
  andl $0xffffffe0, %r11d         #  102   0x550d4  7      
  addq %r15, %r11                 #  103   0x550db  3      
  jmpq %r11                       #  104   0x550de  3      
  nop                             #  105   0x550e1  1      
  nop                             #  106   0x550e2  1      
.L_55160:                         #        0x550e3  0      
  movl %r13d, %r13d               #  107   0x550e3  3      
  movl (%r15,%r13,1), %edx        #  108   0x550e6  4      
  movl %ebx, %edi                 #  109   0x550ea  2      
  nop                             #  110   0x550ec  1      
  nop                             #  111   0x550ed  1      
  callq .d_print_array_type       #  112   0x550ee  5      
  movl %ebx, %ebx                 #  113   0x550f3  2      
  movl %r12d, 0x114(%r15,%rbx,1)  #  114   0x550f5  8      
  addl $0x8, %esp                 #  115   0x550fd  3      
  addq %r15, %rsp                 #  116   0x55100  3      
  popq %rbx                       #  117   0x55103  2      
  popq %r12                       #  118   0x55105  3      
  popq %r13                       #  119   0x55108  3      
  popq %r14                       #  120   0x5510b  3      
  popq %r11                       #  121   0x5510e  3      
  nop                             #  122   0x55111  1      
  andl $0xffffffe0, %r11d         #  123   0x55112  7      
  addq %r15, %r11                 #  124   0x55119  3      
  jmpq %r11                       #  125   0x5511c  3      
  nop                             #  126   0x5511f  1      
  nop                             #  127   0x55120  1      
.L_551c0:                         #        0x55121  0      
  movl %ebx, %ebx                 #  128   0x55121  2      
  movl 0x118(%r15,%rbx,1), %r14d  #  129   0x55123  8      
  movl %ebx, %ebx                 #  130   0x5512b  2      
  movl $0x0, 0x118(%r15,%rbx,1)   #  131   0x5512d  12     
  movl %ebx, %edi                 #  132   0x55139  2      
  nop                             #  133   0x5513b  1      
  movl %esi, %esi                 #  134   0x5513c  2      
  movl 0x4(%r15,%rsi,1), %esi     #  135   0x5513e  5      
  nop                             #  136   0x55143  1      
  nop                             #  137   0x55144  1      
  callq .d_print_comp             #  138   0x55145  5      
  movl %ebx, %ebx                 #  139   0x5514a  2      
  testb $0x4, (%r15,%rbx,1)       #  140   0x5514c  5      
  movl %ebx, %ebx                 #  141   0x55151  2      
  movl %r14d, 0x118(%r15,%rbx,1)  #  142   0x55153  8      
  jne .L_55300                    #  143   0x5515b  6      
  movl $0x10022865, %esi          #  144   0x55161  5      
  movl %ebx, %edi                 #  145   0x55166  2      
  xchgw %ax, %ax                  #  146   0x55168  3      
  nop                             #  147   0x5516b  1      
  nop                             #  148   0x5516c  1      
  callq .d_append_string          #  149   0x5516d  5      
.L_55240:                         #        0x55172  0      
  movl %r13d, %r13d               #  150   0x55172  3      
  movl 0x4(%r15,%r13,1), %eax     #  151   0x55175  5      
  movl %eax, %eax                 #  152   0x5517a  2      
  movl 0x8(%r15,%rax,1), %esi     #  153   0x5517c  5      
  movl %esi, %esi                 #  154   0x55181  2      
  movl (%r15,%rsi,1), %eax        #  155   0x55183  4      
  subl $0x1a, %eax                #  156   0x55187  3      
  cmpl $0x2, %eax                 #  157   0x5518a  3      
  nop                             #  158   0x5518d  1      
  ja .L_552a0                     #  159   0x5518e  6      
  nop                             #  160   0x55194  1      
  nop                             #  161   0x55195  1      
.L_55280:                         #        0x55196  0      
  movl %esi, %esi                 #  162   0x55196  2      
  movl 0x4(%r15,%rsi,1), %esi     #  163   0x55198  5      
  movl %esi, %esi                 #  164   0x5519d  2      
  movl (%r15,%rsi,1), %eax        #  165   0x5519f  4      
  subl $0x1a, %eax                #  166   0x551a3  3      
  cmpl $0x2, %eax                 #  167   0x551a6  3      
  jbe .L_55280                    #  168   0x551a9  6      
  nop                             #  169   0x551af  1      
.L_552a0:                         #        0x551b0  0      
  movl %ebx, %edi                 #  170   0x551b0  2      
  nop                             #  171   0x551b2  1      
  nop                             #  172   0x551b3  1      
  callq .d_print_comp             #  173   0x551b4  5      
  movl %ebx, %ebx                 #  174   0x551b9  2      
  movl %r12d, 0x114(%r15,%rbx,1)  #  175   0x551bb  8      
  addl $0x8, %esp                 #  176   0x551c3  3      
  addq %r15, %rsp                 #  177   0x551c6  3      
  popq %rbx                       #  178   0x551c9  2      
  popq %r12                       #  179   0x551cb  3      
  popq %r13                       #  180   0x551ce  3      
  popq %r14                       #  181   0x551d1  3      
  popq %r11                       #  182   0x551d4  3      
  nop                             #  183   0x551d7  1      
  andl $0xffffffe0, %r11d         #  184   0x551d8  7      
  addq %r15, %r11                 #  185   0x551df  3      
  jmpq %r11                       #  186   0x551e2  3      
  nop                             #  187   0x551e5  1      
  nop                             #  188   0x551e6  1      
.L_55300:                         #        0x551e7  0      
  movl $0x2e, %esi                #  189   0x551e7  5      
  movl %ebx, %edi                 #  190   0x551ec  2      
  nop                             #  191   0x551ee  1      
  nop                             #  192   0x551ef  1      
  callq .d_append_char            #  193   0x551f0  5      
  jmpq .L_55240                   #  194   0x551f5  5      
  nop                             #  195   0x551fa  1      
  nop                             #  196   0x551fb  1      
                                                           
.size d_print_mod_list, .-d_print_mod_list

