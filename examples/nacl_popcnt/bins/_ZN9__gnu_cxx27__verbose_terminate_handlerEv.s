  .text
  .globl _ZN9__gnu_cxx27__verbose_terminate_handlerEv
  .type _ZN9__gnu_cxx27__verbose_terminate_handlerEv, @function

#! file-offset 0x4f540
#! rip-offset  0x4f540
#! capacity    1344 bytes

# Text                                          #  Line  RIP      Bytes  
._ZN9__gnu_cxx27__verbose_terminate_handlerEv:  #        0x4f540  0      
  movq %rbx, -0x18(%rsp)                        #  1     0x4f540  5      
  movq %r12, -0x10(%rsp)                        #  2     0x4f545  5      
  movq %r13, -0x8(%rsp)                         #  3     0x4f54a  5      
  subl $0x38, %esp                              #  4     0x4f54f  3      
  addq %r15, %rsp                               #  5     0x4f552  3      
  cmpb $0x0, 0xffe72d4(%rip)                    #  6     0x4f555  7      
  nop                                           #  7     0x4f55c  1      
  je .L_4f5e0                                   #  8     0x4f55d  6      
  nop                                           #  9     0x4f563  1      
  nop                                           #  10    0x4f564  1      
  callq .__nacl_read_tp                         #  11    0x4f565  5      
  leaq -0x480(%rax), %rax                       #  12    0x4f56a  7      
  movl $0x1d, %edx                              #  13    0x4f571  5      
  movl $0x1, %esi                               #  14    0x4f576  5      
  movl $0x1002147c, %edi                        #  15    0x4f57b  5      
  movl %eax, %eax                               #  16    0x4f580  2      
  movl (%r15,%rax,1), %eax                      #  17    0x4f582  4      
  nop                                           #  18    0x4f586  1      
  movl %eax, %eax                               #  19    0x4f587  2      
  movl 0xc(%r15,%rax,1), %ecx                   #  20    0x4f589  5      
  nop                                           #  21    0x4f58e  1      
  nop                                           #  22    0x4f58f  1      
  callq .fwrite                                 #  23    0x4f590  5      
  nop                                           #  24    0x4f595  1      
  nop                                           #  25    0x4f596  1      
  callq .abort                                  #  26    0x4f597  5      
.L_4f5e0:                                       #        0x4f59c  0      
  movb $0x1, 0xffe728d(%rip)                    #  27    0x4f59c  7      
  nop                                           #  28    0x4f5a3  1      
  nop                                           #  29    0x4f5a4  1      
  callq .__cxa_current_exception_type           #  30    0x4f5a5  5      
  movl %eax, %eax                               #  31    0x4f5aa  2      
  testq %rax, %rax                              #  32    0x4f5ac  3      
  je .L_4f7e0                                   #  33    0x4f5af  6      
  movl %eax, %eax                               #  34    0x4f5b5  2      
  movl 0x4(%r15,%rax,1), %r12d                  #  35    0x4f5b7  5      
  leal 0x1c(%rsp), %ecx                         #  36    0x4f5bc  4      
  xorl %edx, %edx                               #  37    0x4f5c0  2      
  xorl %esi, %esi                               #  38    0x4f5c2  2      
  nop                                           #  39    0x4f5c4  1      
  movl $0xffffffff, 0x1c(%rsp)                  #  40    0x4f5c5  8      
  movl %r12d, %edi                              #  41    0x4f5cd  3      
  nop                                           #  42    0x4f5d0  1      
  nop                                           #  43    0x4f5d1  1      
  callq .__cxa_demangle                         #  44    0x4f5d2  5      
  movl %eax, %r13d                              #  45    0x4f5d7  3      
  nop                                           #  46    0x4f5da  1      
  nop                                           #  47    0x4f5db  1      
  callq .__nacl_read_tp                         #  48    0x4f5dc  5      
  movq $0xfffffffffffffb80, %rbx                #  49    0x4f5e1  7      
  movl $0x30, %edx                              #  50    0x4f5e8  5      
  movl $0x1, %esi                               #  51    0x4f5ed  5      
  movl $0x100214b0, %edi                        #  52    0x4f5f2  5      
  addq %rbx, %rax                               #  53    0x4f5f7  3      
  movl %eax, %eax                               #  54    0x4f5fa  2      
  movl (%r15,%rax,1), %eax                      #  55    0x4f5fc  4      
  nop                                           #  56    0x4f600  1      
  movl %eax, %eax                               #  57    0x4f601  2      
  movl 0xc(%r15,%rax,1), %ecx                   #  58    0x4f603  5      
  nop                                           #  59    0x4f608  1      
  nop                                           #  60    0x4f609  1      
  callq .fwrite                                 #  61    0x4f60a  5      
  movl 0x1c(%rsp), %edx                         #  62    0x4f60f  4      
  testl %edx, %edx                              #  63    0x4f613  2      
  jne .L_4f780                                  #  64    0x4f615  6      
  nop                                           #  65    0x4f61b  1      
  callq .__nacl_read_tp                         #  66    0x4f61c  5      
  addq %rbx, %rax                               #  67    0x4f621  3      
  movl %r13d, %edi                              #  68    0x4f624  3      
  movl %eax, %eax                               #  69    0x4f627  2      
  movl (%r15,%rax,1), %eax                      #  70    0x4f629  4      
  movl %eax, %eax                               #  71    0x4f62d  2      
  movl 0xc(%r15,%rax,1), %esi                   #  72    0x4f62f  5      
  nop                                           #  73    0x4f634  1      
  callq .fputs                                  #  74    0x4f635  5      
.L_4f6e0:                                       #        0x4f63a  0      
  nop                                           #  75    0x4f63a  1      
  nop                                           #  76    0x4f63b  1      
  callq .__nacl_read_tp                         #  77    0x4f63c  5      
  addq %rbx, %rax                               #  78    0x4f641  3      
  movl $0x2, %edx                               #  79    0x4f644  5      
  movl $0x1, %esi                               #  80    0x4f649  5      
  movl %eax, %eax                               #  81    0x4f64e  2      
  movl (%r15,%rax,1), %eax                      #  82    0x4f650  4      
  movl $0x1002149a, %edi                        #  83    0x4f654  5      
  movl %eax, %eax                               #  84    0x4f659  2      
  movl 0xc(%r15,%rax,1), %ecx                   #  85    0x4f65b  5      
  nop                                           #  86    0x4f660  1      
  nop                                           #  87    0x4f661  1      
  nop                                           #  88    0x4f662  1      
  callq .fwrite                                 #  89    0x4f663  5      
  movl 0x1c(%rsp), %eax                         #  90    0x4f668  4      
  testl %eax, %eax                              #  91    0x4f66c  2      
  je .L_4f860                                   #  92    0x4f66e  6      
  nop                                           #  93    0x4f674  1      
  nop                                           #  94    0x4f675  1      
.L_4f760:                                       #        0x4f676  0      
  nop                                           #  95    0x4f676  1      
  nop                                           #  96    0x4f677  1      
  callq .__cxa_rethrow                          #  97    0x4f678  5      
.L_4f780:                                       #        0x4f67d  0      
  nop                                           #  98    0x4f67d  1      
  nop                                           #  99    0x4f67e  1      
  callq .__nacl_read_tp                         #  100   0x4f67f  5      
  addq %rbx, %rax                               #  101   0x4f684  3      
  movl %r12d, %edi                              #  102   0x4f687  3      
  movl %eax, %eax                               #  103   0x4f68a  2      
  movl (%r15,%rax,1), %eax                      #  104   0x4f68c  4      
  movl %eax, %eax                               #  105   0x4f690  2      
  movl 0xc(%r15,%rax,1), %esi                   #  106   0x4f692  5      
  nop                                           #  107   0x4f697  1      
  callq .fputs                                  #  108   0x4f698  5      
  jmpq .L_4f6e0                                 #  109   0x4f69d  5      
  nop                                           #  110   0x4f6a2  1      
  nop                                           #  111   0x4f6a3  1      
.L_4f7e0:                                       #        0x4f6a4  0      
  nop                                           #  112   0x4f6a4  1      
  nop                                           #  113   0x4f6a5  1      
  callq .__nacl_read_tp                         #  114   0x4f6a6  5      
  leaq -0x480(%rax), %rax                       #  115   0x4f6ab  7      
  movl $0x2d, %edx                              #  116   0x4f6b2  5      
  movl $0x1, %esi                               #  117   0x4f6b7  5      
  movl $0x100214e8, %edi                        #  118   0x4f6bc  5      
  movl %eax, %eax                               #  119   0x4f6c1  2      
  movl (%r15,%rax,1), %eax                      #  120   0x4f6c3  4      
  nop                                           #  121   0x4f6c7  1      
  movl %eax, %eax                               #  122   0x4f6c8  2      
  movl 0xc(%r15,%rax,1), %ecx                   #  123   0x4f6ca  5      
  nop                                           #  124   0x4f6cf  1      
  nop                                           #  125   0x4f6d0  1      
  callq .fwrite                                 #  126   0x4f6d1  5      
.L_4f840:                                       #        0x4f6d6  0      
  nop                                           #  127   0x4f6d6  1      
  nop                                           #  128   0x4f6d7  1      
  callq .abort                                  #  129   0x4f6d8  5      
.L_4f860:                                       #        0x4f6dd  0      
  movl %r13d, %edi                              #  130   0x4f6dd  3      
  nop                                           #  131   0x4f6e0  1      
  nop                                           #  132   0x4f6e1  1      
  callq .free                                   #  133   0x4f6e2  5      
  jmpq .L_4f760                                 #  134   0x4f6e7  5      
  nop                                           #  135   0x4f6ec  1      
  nop                                           #  136   0x4f6ed  1      
  cmpq $0x2, %rdx                               #  137   0x4f6ee  4      
  movl %eax, %edi                               #  138   0x4f6f2  2      
  je .L_4f900                                   #  139   0x4f6f4  6      
  nop                                           #  140   0x4f6fa  1      
  nop                                           #  141   0x4f6fb  1      
  callq .__cxa_begin_catch                      #  142   0x4f6fc  5      
.L_4f8c0:                                       #        0x4f701  0      
  nop                                           #  143   0x4f701  1      
  nop                                           #  144   0x4f702  1      
  callq .__cxa_end_catch                        #  145   0x4f703  5      
  jmpq .L_4f840                                 #  146   0x4f708  5      
  nop                                           #  147   0x4f70d  1      
  nop                                           #  148   0x4f70e  1      
.L_4f900:                                       #        0x4f70f  0      
  nop                                           #  149   0x4f70f  1      
  nop                                           #  150   0x4f710  1      
  callq .__cxa_begin_catch                      #  151   0x4f711  5      
  movl %eax, %edi                               #  152   0x4f716  2      
  movl %edi, %edi                               #  153   0x4f718  2      
  movl (%r15,%rdi,1), %eax                      #  154   0x4f71a  4      
  movl %eax, %eax                               #  155   0x4f71e  2      
  movl 0x8(%r15,%rax,1), %eax                   #  156   0x4f720  5      
  nop                                           #  157   0x4f725  1      
  andl $0xffffffe0, %eax                        #  158   0x4f726  5      
  addq %r15, %rax                               #  159   0x4f72b  3      
  callq %rax                                    #  160   0x4f72e  2      
  movl %eax, %r12d                              #  161   0x4f730  3      
  nop                                           #  162   0x4f733  1      
  nop                                           #  163   0x4f734  1      
  callq .__nacl_read_tp                         #  164   0x4f735  5      
  addq %rbx, %rax                               #  165   0x4f73a  3      
  movl $0xb, %edx                               #  166   0x4f73d  5      
  movl $0x1, %esi                               #  167   0x4f742  5      
  movl %eax, %eax                               #  168   0x4f747  2      
  movl (%r15,%rax,1), %eax                      #  169   0x4f749  4      
  movl $0x1002149d, %edi                        #  170   0x4f74d  5      
  movl %eax, %eax                               #  171   0x4f752  2      
  movl 0xc(%r15,%rax,1), %ecx                   #  172   0x4f754  5      
  nop                                           #  173   0x4f759  1      
  nop                                           #  174   0x4f75a  1      
  nop                                           #  175   0x4f75b  1      
  callq .fwrite                                 #  176   0x4f75c  5      
  nop                                           #  177   0x4f761  1      
  nop                                           #  178   0x4f762  1      
  callq .__nacl_read_tp                         #  179   0x4f763  5      
  addq %rbx, %rax                               #  180   0x4f768  3      
  movl %r12d, %edi                              #  181   0x4f76b  3      
  movl %eax, %eax                               #  182   0x4f76e  2      
  movl (%r15,%rax,1), %eax                      #  183   0x4f770  4      
  movl %eax, %eax                               #  184   0x4f774  2      
  movl 0xc(%r15,%rax,1), %esi                   #  185   0x4f776  5      
  nop                                           #  186   0x4f77b  1      
  callq .fputs                                  #  187   0x4f77c  5      
  nop                                           #  188   0x4f781  1      
  nop                                           #  189   0x4f782  1      
  callq .__nacl_read_tp                         #  190   0x4f783  5      
  leaq (%rax,%rbx,1), %rbx                      #  191   0x4f788  4      
  movl $0xa, %edi                               #  192   0x4f78c  5      
  movl %ebx, %ebx                               #  193   0x4f791  2      
  movl (%r15,%rbx,1), %eax                      #  194   0x4f793  4      
  movl %eax, %eax                               #  195   0x4f797  2      
  movl 0xc(%r15,%rax,1), %esi                   #  196   0x4f799  5      
  nop                                           #  197   0x4f79e  1      
  callq .fputc                                  #  198   0x4f79f  5      
  jmpq .L_4f8c0                                 #  199   0x4f7a4  5      
  nop                                           #  200   0x4f7a9  1      
  nop                                           #  201   0x4f7aa  1      
  movl %eax, 0x8(%rsp)                          #  202   0x4f7ab  4      
  nop                                           #  203   0x4f7af  1      
  nop                                           #  204   0x4f7b0  1      
  callq .__cxa_end_catch                        #  205   0x4f7b1  5      
  movl 0x8(%rsp), %edi                          #  206   0x4f7b6  4      
  nop                                           #  207   0x4f7ba  1      
  nop                                           #  208   0x4f7bb  1      
  callq ._Unwind_Resume                         #  209   0x4f7bc  5      
                                                                         
.size _ZN9__gnu_cxx27__verbose_terminate_handlerEv, .-_ZN9__gnu_cxx27__verbose_terminate_handlerEv

