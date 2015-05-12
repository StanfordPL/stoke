  .text
  .globl _ZN9__gnu_cxx27__verbose_terminate_handlerEv
  .type _ZN9__gnu_cxx27__verbose_terminate_handlerEv, @function

#! file-offset 0x4f4c0
#! rip-offset  0x4f4c0
#! capacity    1344 bytes

# Text                                          #  Line  RIP      Bytes  
._ZN9__gnu_cxx27__verbose_terminate_handlerEv:  #        0x4f4c0  0      
  movq %rbx, -0x18(%rsp)                        #  1     0x4f4c0  5      
  movq %r12, -0x10(%rsp)                        #  2     0x4f4c5  5      
  movq %r13, -0x8(%rsp)                         #  3     0x4f4ca  5      
  subl $0x38, %esp                              #  4     0x4f4cf  3      
  addq %r15, %rsp                               #  5     0x4f4d2  3      
  cmpb $0x0, 0xffe7354(%rip)                    #  6     0x4f4d5  7      
  nop                                           #  7     0x4f4dc  1      
  je .L_4f560                                   #  8     0x4f4dd  6      
  nop                                           #  9     0x4f4e3  1      
  nop                                           #  10    0x4f4e4  1      
  callq .__nacl_read_tp                         #  11    0x4f4e5  5      
  leaq -0x480(%rax), %rax                       #  12    0x4f4ea  7      
  movl $0x1d, %edx                              #  13    0x4f4f1  5      
  movl $0x1, %esi                               #  14    0x4f4f6  5      
  movl $0x1002147c, %edi                        #  15    0x4f4fb  5      
  movl %eax, %eax                               #  16    0x4f500  2      
  movl (%r15,%rax,1), %eax                      #  17    0x4f502  4      
  nop                                           #  18    0x4f506  1      
  movl %eax, %eax                               #  19    0x4f507  2      
  movl 0xc(%r15,%rax,1), %ecx                   #  20    0x4f509  5      
  nop                                           #  21    0x4f50e  1      
  nop                                           #  22    0x4f50f  1      
  callq .fwrite                                 #  23    0x4f510  5      
  nop                                           #  24    0x4f515  1      
  nop                                           #  25    0x4f516  1      
  callq .abort                                  #  26    0x4f517  5      
.L_4f560:                                       #        0x4f51c  0      
  movb $0x1, 0xffe730d(%rip)                    #  27    0x4f51c  7      
  nop                                           #  28    0x4f523  1      
  nop                                           #  29    0x4f524  1      
  callq .__cxa_current_exception_type           #  30    0x4f525  5      
  movl %eax, %eax                               #  31    0x4f52a  2      
  testq %rax, %rax                              #  32    0x4f52c  3      
  je .L_4f760                                   #  33    0x4f52f  6      
  movl %eax, %eax                               #  34    0x4f535  2      
  movl 0x4(%r15,%rax,1), %r12d                  #  35    0x4f537  5      
  leal 0x1c(%rsp), %ecx                         #  36    0x4f53c  4      
  xorl %edx, %edx                               #  37    0x4f540  2      
  xorl %esi, %esi                               #  38    0x4f542  2      
  nop                                           #  39    0x4f544  1      
  movl $0xffffffff, 0x1c(%rsp)                  #  40    0x4f545  8      
  movl %r12d, %edi                              #  41    0x4f54d  3      
  nop                                           #  42    0x4f550  1      
  nop                                           #  43    0x4f551  1      
  callq .__cxa_demangle                         #  44    0x4f552  5      
  movl %eax, %r13d                              #  45    0x4f557  3      
  nop                                           #  46    0x4f55a  1      
  nop                                           #  47    0x4f55b  1      
  callq .__nacl_read_tp                         #  48    0x4f55c  5      
  movq $0xfffffffffffffb80, %rbx                #  49    0x4f561  7      
  movl $0x30, %edx                              #  50    0x4f568  5      
  movl $0x1, %esi                               #  51    0x4f56d  5      
  movl $0x100214b0, %edi                        #  52    0x4f572  5      
  addq %rbx, %rax                               #  53    0x4f577  3      
  movl %eax, %eax                               #  54    0x4f57a  2      
  movl (%r15,%rax,1), %eax                      #  55    0x4f57c  4      
  nop                                           #  56    0x4f580  1      
  movl %eax, %eax                               #  57    0x4f581  2      
  movl 0xc(%r15,%rax,1), %ecx                   #  58    0x4f583  5      
  nop                                           #  59    0x4f588  1      
  nop                                           #  60    0x4f589  1      
  callq .fwrite                                 #  61    0x4f58a  5      
  movl 0x1c(%rsp), %edx                         #  62    0x4f58f  4      
  testl %edx, %edx                              #  63    0x4f593  2      
  jne .L_4f700                                  #  64    0x4f595  6      
  nop                                           #  65    0x4f59b  1      
  callq .__nacl_read_tp                         #  66    0x4f59c  5      
  addq %rbx, %rax                               #  67    0x4f5a1  3      
  movl %r13d, %edi                              #  68    0x4f5a4  3      
  movl %eax, %eax                               #  69    0x4f5a7  2      
  movl (%r15,%rax,1), %eax                      #  70    0x4f5a9  4      
  movl %eax, %eax                               #  71    0x4f5ad  2      
  movl 0xc(%r15,%rax,1), %esi                   #  72    0x4f5af  5      
  nop                                           #  73    0x4f5b4  1      
  callq .fputs                                  #  74    0x4f5b5  5      
.L_4f660:                                       #        0x4f5ba  0      
  nop                                           #  75    0x4f5ba  1      
  nop                                           #  76    0x4f5bb  1      
  callq .__nacl_read_tp                         #  77    0x4f5bc  5      
  addq %rbx, %rax                               #  78    0x4f5c1  3      
  movl $0x2, %edx                               #  79    0x4f5c4  5      
  movl $0x1, %esi                               #  80    0x4f5c9  5      
  movl %eax, %eax                               #  81    0x4f5ce  2      
  movl (%r15,%rax,1), %eax                      #  82    0x4f5d0  4      
  movl $0x1002149a, %edi                        #  83    0x4f5d4  5      
  movl %eax, %eax                               #  84    0x4f5d9  2      
  movl 0xc(%r15,%rax,1), %ecx                   #  85    0x4f5db  5      
  nop                                           #  86    0x4f5e0  1      
  nop                                           #  87    0x4f5e1  1      
  nop                                           #  88    0x4f5e2  1      
  callq .fwrite                                 #  89    0x4f5e3  5      
  movl 0x1c(%rsp), %eax                         #  90    0x4f5e8  4      
  testl %eax, %eax                              #  91    0x4f5ec  2      
  je .L_4f7e0                                   #  92    0x4f5ee  6      
  nop                                           #  93    0x4f5f4  1      
  nop                                           #  94    0x4f5f5  1      
.L_4f6e0:                                       #        0x4f5f6  0      
  nop                                           #  95    0x4f5f6  1      
  nop                                           #  96    0x4f5f7  1      
  callq .__cxa_rethrow                          #  97    0x4f5f8  5      
.L_4f700:                                       #        0x4f5fd  0      
  nop                                           #  98    0x4f5fd  1      
  nop                                           #  99    0x4f5fe  1      
  callq .__nacl_read_tp                         #  100   0x4f5ff  5      
  addq %rbx, %rax                               #  101   0x4f604  3      
  movl %r12d, %edi                              #  102   0x4f607  3      
  movl %eax, %eax                               #  103   0x4f60a  2      
  movl (%r15,%rax,1), %eax                      #  104   0x4f60c  4      
  movl %eax, %eax                               #  105   0x4f610  2      
  movl 0xc(%r15,%rax,1), %esi                   #  106   0x4f612  5      
  nop                                           #  107   0x4f617  1      
  callq .fputs                                  #  108   0x4f618  5      
  jmpq .L_4f660                                 #  109   0x4f61d  5      
  nop                                           #  110   0x4f622  1      
  nop                                           #  111   0x4f623  1      
.L_4f760:                                       #        0x4f624  0      
  nop                                           #  112   0x4f624  1      
  nop                                           #  113   0x4f625  1      
  callq .__nacl_read_tp                         #  114   0x4f626  5      
  leaq -0x480(%rax), %rax                       #  115   0x4f62b  7      
  movl $0x2d, %edx                              #  116   0x4f632  5      
  movl $0x1, %esi                               #  117   0x4f637  5      
  movl $0x100214e8, %edi                        #  118   0x4f63c  5      
  movl %eax, %eax                               #  119   0x4f641  2      
  movl (%r15,%rax,1), %eax                      #  120   0x4f643  4      
  nop                                           #  121   0x4f647  1      
  movl %eax, %eax                               #  122   0x4f648  2      
  movl 0xc(%r15,%rax,1), %ecx                   #  123   0x4f64a  5      
  nop                                           #  124   0x4f64f  1      
  nop                                           #  125   0x4f650  1      
  callq .fwrite                                 #  126   0x4f651  5      
.L_4f7c0:                                       #        0x4f656  0      
  nop                                           #  127   0x4f656  1      
  nop                                           #  128   0x4f657  1      
  callq .abort                                  #  129   0x4f658  5      
.L_4f7e0:                                       #        0x4f65d  0      
  movl %r13d, %edi                              #  130   0x4f65d  3      
  nop                                           #  131   0x4f660  1      
  nop                                           #  132   0x4f661  1      
  callq .free                                   #  133   0x4f662  5      
  jmpq .L_4f6e0                                 #  134   0x4f667  5      
  nop                                           #  135   0x4f66c  1      
  nop                                           #  136   0x4f66d  1      
  cmpq $0x2, %rdx                               #  137   0x4f66e  4      
  movl %eax, %edi                               #  138   0x4f672  2      
  je .L_4f880                                   #  139   0x4f674  6      
  nop                                           #  140   0x4f67a  1      
  nop                                           #  141   0x4f67b  1      
  callq .__cxa_begin_catch                      #  142   0x4f67c  5      
.L_4f840:                                       #        0x4f681  0      
  nop                                           #  143   0x4f681  1      
  nop                                           #  144   0x4f682  1      
  callq .__cxa_end_catch                        #  145   0x4f683  5      
  jmpq .L_4f7c0                                 #  146   0x4f688  5      
  nop                                           #  147   0x4f68d  1      
  nop                                           #  148   0x4f68e  1      
.L_4f880:                                       #        0x4f68f  0      
  nop                                           #  149   0x4f68f  1      
  nop                                           #  150   0x4f690  1      
  callq .__cxa_begin_catch                      #  151   0x4f691  5      
  movl %eax, %edi                               #  152   0x4f696  2      
  movl %edi, %edi                               #  153   0x4f698  2      
  movl (%r15,%rdi,1), %eax                      #  154   0x4f69a  4      
  movl %eax, %eax                               #  155   0x4f69e  2      
  movl 0x8(%r15,%rax,1), %eax                   #  156   0x4f6a0  5      
  nop                                           #  157   0x4f6a5  1      
  andl $0xffffffe0, %eax                        #  158   0x4f6a6  5      
  addq %r15, %rax                               #  159   0x4f6ab  3      
  callq %rax                                    #  160   0x4f6ae  2      
  movl %eax, %r12d                              #  161   0x4f6b0  3      
  nop                                           #  162   0x4f6b3  1      
  nop                                           #  163   0x4f6b4  1      
  callq .__nacl_read_tp                         #  164   0x4f6b5  5      
  addq %rbx, %rax                               #  165   0x4f6ba  3      
  movl $0xb, %edx                               #  166   0x4f6bd  5      
  movl $0x1, %esi                               #  167   0x4f6c2  5      
  movl %eax, %eax                               #  168   0x4f6c7  2      
  movl (%r15,%rax,1), %eax                      #  169   0x4f6c9  4      
  movl $0x1002149d, %edi                        #  170   0x4f6cd  5      
  movl %eax, %eax                               #  171   0x4f6d2  2      
  movl 0xc(%r15,%rax,1), %ecx                   #  172   0x4f6d4  5      
  nop                                           #  173   0x4f6d9  1      
  nop                                           #  174   0x4f6da  1      
  nop                                           #  175   0x4f6db  1      
  callq .fwrite                                 #  176   0x4f6dc  5      
  nop                                           #  177   0x4f6e1  1      
  nop                                           #  178   0x4f6e2  1      
  callq .__nacl_read_tp                         #  179   0x4f6e3  5      
  addq %rbx, %rax                               #  180   0x4f6e8  3      
  movl %r12d, %edi                              #  181   0x4f6eb  3      
  movl %eax, %eax                               #  182   0x4f6ee  2      
  movl (%r15,%rax,1), %eax                      #  183   0x4f6f0  4      
  movl %eax, %eax                               #  184   0x4f6f4  2      
  movl 0xc(%r15,%rax,1), %esi                   #  185   0x4f6f6  5      
  nop                                           #  186   0x4f6fb  1      
  callq .fputs                                  #  187   0x4f6fc  5      
  nop                                           #  188   0x4f701  1      
  nop                                           #  189   0x4f702  1      
  callq .__nacl_read_tp                         #  190   0x4f703  5      
  leaq (%rax,%rbx,1), %rbx                      #  191   0x4f708  4      
  movl $0xa, %edi                               #  192   0x4f70c  5      
  movl %ebx, %ebx                               #  193   0x4f711  2      
  movl (%r15,%rbx,1), %eax                      #  194   0x4f713  4      
  movl %eax, %eax                               #  195   0x4f717  2      
  movl 0xc(%r15,%rax,1), %esi                   #  196   0x4f719  5      
  nop                                           #  197   0x4f71e  1      
  callq .fputc                                  #  198   0x4f71f  5      
  jmpq .L_4f840                                 #  199   0x4f724  5      
  nop                                           #  200   0x4f729  1      
  nop                                           #  201   0x4f72a  1      
  movl %eax, 0x8(%rsp)                          #  202   0x4f72b  4      
  nop                                           #  203   0x4f72f  1      
  nop                                           #  204   0x4f730  1      
  callq .__cxa_end_catch                        #  205   0x4f731  5      
  movl 0x8(%rsp), %edi                          #  206   0x4f736  4      
  nop                                           #  207   0x4f73a  1      
  nop                                           #  208   0x4f73b  1      
  callq ._Unwind_Resume                         #  209   0x4f73c  5      
                                                                         
.size _ZN9__gnu_cxx27__verbose_terminate_handlerEv, .-_ZN9__gnu_cxx27__verbose_terminate_handlerEv

