  .text
  .globl _ZN9__gnu_cxx27__verbose_terminate_handlerEv
  .type _ZN9__gnu_cxx27__verbose_terminate_handlerEv, @function

#! file-offset 0x4f4a0
#! rip-offset  0x4f4a0
#! capacity    1344 bytes

# Text                                          #  Line  RIP      Bytes  
._ZN9__gnu_cxx27__verbose_terminate_handlerEv:  #        0x4f4a0  0      
  movq %rbx, -0x18(%rsp)                        #  1     0x4f4a0  5      
  movq %r12, -0x10(%rsp)                        #  2     0x4f4a5  5      
  movq %r13, -0x8(%rsp)                         #  3     0x4f4aa  5      
  subl $0x38, %esp                              #  4     0x4f4af  3      
  addq %r15, %rsp                               #  5     0x4f4b2  3      
  cmpb $0x0, 0xffe7374(%rip)                    #  6     0x4f4b5  7      
  nop                                           #  7     0x4f4bc  1      
  je .L_4f540                                   #  8     0x4f4bd  6      
  nop                                           #  9     0x4f4c3  1      
  nop                                           #  10    0x4f4c4  1      
  callq .__nacl_read_tp                         #  11    0x4f4c5  5      
  leaq -0x480(%rax), %rax                       #  12    0x4f4ca  7      
  movl $0x1d, %edx                              #  13    0x4f4d1  5      
  movl $0x1, %esi                               #  14    0x4f4d6  5      
  movl $0x1002147c, %edi                        #  15    0x4f4db  5      
  movl %eax, %eax                               #  16    0x4f4e0  2      
  movl (%r15,%rax,1), %eax                      #  17    0x4f4e2  4      
  nop                                           #  18    0x4f4e6  1      
  movl %eax, %eax                               #  19    0x4f4e7  2      
  movl 0xc(%r15,%rax,1), %ecx                   #  20    0x4f4e9  5      
  nop                                           #  21    0x4f4ee  1      
  nop                                           #  22    0x4f4ef  1      
  callq .fwrite                                 #  23    0x4f4f0  5      
  nop                                           #  24    0x4f4f5  1      
  nop                                           #  25    0x4f4f6  1      
  callq .abort                                  #  26    0x4f4f7  5      
.L_4f540:                                       #        0x4f4fc  0      
  movb $0x1, 0xffe732d(%rip)                    #  27    0x4f4fc  7      
  nop                                           #  28    0x4f503  1      
  nop                                           #  29    0x4f504  1      
  callq .__cxa_current_exception_type           #  30    0x4f505  5      
  movl %eax, %eax                               #  31    0x4f50a  2      
  testq %rax, %rax                              #  32    0x4f50c  3      
  je .L_4f740                                   #  33    0x4f50f  6      
  movl %eax, %eax                               #  34    0x4f515  2      
  movl 0x4(%r15,%rax,1), %r12d                  #  35    0x4f517  5      
  leal 0x1c(%rsp), %ecx                         #  36    0x4f51c  4      
  xorl %edx, %edx                               #  37    0x4f520  2      
  xorl %esi, %esi                               #  38    0x4f522  2      
  nop                                           #  39    0x4f524  1      
  movl $0xffffffff, 0x1c(%rsp)                  #  40    0x4f525  8      
  movl %r12d, %edi                              #  41    0x4f52d  3      
  nop                                           #  42    0x4f530  1      
  nop                                           #  43    0x4f531  1      
  callq .__cxa_demangle                         #  44    0x4f532  5      
  movl %eax, %r13d                              #  45    0x4f537  3      
  nop                                           #  46    0x4f53a  1      
  nop                                           #  47    0x4f53b  1      
  callq .__nacl_read_tp                         #  48    0x4f53c  5      
  movq $0xfffffffffffffb80, %rbx                #  49    0x4f541  7      
  movl $0x30, %edx                              #  50    0x4f548  5      
  movl $0x1, %esi                               #  51    0x4f54d  5      
  movl $0x100214b0, %edi                        #  52    0x4f552  5      
  addq %rbx, %rax                               #  53    0x4f557  3      
  movl %eax, %eax                               #  54    0x4f55a  2      
  movl (%r15,%rax,1), %eax                      #  55    0x4f55c  4      
  nop                                           #  56    0x4f560  1      
  movl %eax, %eax                               #  57    0x4f561  2      
  movl 0xc(%r15,%rax,1), %ecx                   #  58    0x4f563  5      
  nop                                           #  59    0x4f568  1      
  nop                                           #  60    0x4f569  1      
  callq .fwrite                                 #  61    0x4f56a  5      
  movl 0x1c(%rsp), %edx                         #  62    0x4f56f  4      
  testl %edx, %edx                              #  63    0x4f573  2      
  jne .L_4f6e0                                  #  64    0x4f575  6      
  nop                                           #  65    0x4f57b  1      
  callq .__nacl_read_tp                         #  66    0x4f57c  5      
  addq %rbx, %rax                               #  67    0x4f581  3      
  movl %r13d, %edi                              #  68    0x4f584  3      
  movl %eax, %eax                               #  69    0x4f587  2      
  movl (%r15,%rax,1), %eax                      #  70    0x4f589  4      
  movl %eax, %eax                               #  71    0x4f58d  2      
  movl 0xc(%r15,%rax,1), %esi                   #  72    0x4f58f  5      
  nop                                           #  73    0x4f594  1      
  callq .fputs                                  #  74    0x4f595  5      
.L_4f640:                                       #        0x4f59a  0      
  nop                                           #  75    0x4f59a  1      
  nop                                           #  76    0x4f59b  1      
  callq .__nacl_read_tp                         #  77    0x4f59c  5      
  addq %rbx, %rax                               #  78    0x4f5a1  3      
  movl $0x2, %edx                               #  79    0x4f5a4  5      
  movl $0x1, %esi                               #  80    0x4f5a9  5      
  movl %eax, %eax                               #  81    0x4f5ae  2      
  movl (%r15,%rax,1), %eax                      #  82    0x4f5b0  4      
  movl $0x1002149a, %edi                        #  83    0x4f5b4  5      
  movl %eax, %eax                               #  84    0x4f5b9  2      
  movl 0xc(%r15,%rax,1), %ecx                   #  85    0x4f5bb  5      
  nop                                           #  86    0x4f5c0  1      
  nop                                           #  87    0x4f5c1  1      
  nop                                           #  88    0x4f5c2  1      
  callq .fwrite                                 #  89    0x4f5c3  5      
  movl 0x1c(%rsp), %eax                         #  90    0x4f5c8  4      
  testl %eax, %eax                              #  91    0x4f5cc  2      
  je .L_4f7c0                                   #  92    0x4f5ce  6      
  nop                                           #  93    0x4f5d4  1      
  nop                                           #  94    0x4f5d5  1      
.L_4f6c0:                                       #        0x4f5d6  0      
  nop                                           #  95    0x4f5d6  1      
  nop                                           #  96    0x4f5d7  1      
  callq .__cxa_rethrow                          #  97    0x4f5d8  5      
.L_4f6e0:                                       #        0x4f5dd  0      
  nop                                           #  98    0x4f5dd  1      
  nop                                           #  99    0x4f5de  1      
  callq .__nacl_read_tp                         #  100   0x4f5df  5      
  addq %rbx, %rax                               #  101   0x4f5e4  3      
  movl %r12d, %edi                              #  102   0x4f5e7  3      
  movl %eax, %eax                               #  103   0x4f5ea  2      
  movl (%r15,%rax,1), %eax                      #  104   0x4f5ec  4      
  movl %eax, %eax                               #  105   0x4f5f0  2      
  movl 0xc(%r15,%rax,1), %esi                   #  106   0x4f5f2  5      
  nop                                           #  107   0x4f5f7  1      
  callq .fputs                                  #  108   0x4f5f8  5      
  jmpq .L_4f640                                 #  109   0x4f5fd  5      
  nop                                           #  110   0x4f602  1      
  nop                                           #  111   0x4f603  1      
.L_4f740:                                       #        0x4f604  0      
  nop                                           #  112   0x4f604  1      
  nop                                           #  113   0x4f605  1      
  callq .__nacl_read_tp                         #  114   0x4f606  5      
  leaq -0x480(%rax), %rax                       #  115   0x4f60b  7      
  movl $0x2d, %edx                              #  116   0x4f612  5      
  movl $0x1, %esi                               #  117   0x4f617  5      
  movl $0x100214e8, %edi                        #  118   0x4f61c  5      
  movl %eax, %eax                               #  119   0x4f621  2      
  movl (%r15,%rax,1), %eax                      #  120   0x4f623  4      
  nop                                           #  121   0x4f627  1      
  movl %eax, %eax                               #  122   0x4f628  2      
  movl 0xc(%r15,%rax,1), %ecx                   #  123   0x4f62a  5      
  nop                                           #  124   0x4f62f  1      
  nop                                           #  125   0x4f630  1      
  callq .fwrite                                 #  126   0x4f631  5      
.L_4f7a0:                                       #        0x4f636  0      
  nop                                           #  127   0x4f636  1      
  nop                                           #  128   0x4f637  1      
  callq .abort                                  #  129   0x4f638  5      
.L_4f7c0:                                       #        0x4f63d  0      
  movl %r13d, %edi                              #  130   0x4f63d  3      
  nop                                           #  131   0x4f640  1      
  nop                                           #  132   0x4f641  1      
  callq .free                                   #  133   0x4f642  5      
  jmpq .L_4f6c0                                 #  134   0x4f647  5      
  nop                                           #  135   0x4f64c  1      
  nop                                           #  136   0x4f64d  1      
  cmpq $0x2, %rdx                               #  137   0x4f64e  4      
  movl %eax, %edi                               #  138   0x4f652  2      
  je .L_4f860                                   #  139   0x4f654  6      
  nop                                           #  140   0x4f65a  1      
  nop                                           #  141   0x4f65b  1      
  callq .__cxa_begin_catch                      #  142   0x4f65c  5      
.L_4f820:                                       #        0x4f661  0      
  nop                                           #  143   0x4f661  1      
  nop                                           #  144   0x4f662  1      
  callq .__cxa_end_catch                        #  145   0x4f663  5      
  jmpq .L_4f7a0                                 #  146   0x4f668  5      
  nop                                           #  147   0x4f66d  1      
  nop                                           #  148   0x4f66e  1      
.L_4f860:                                       #        0x4f66f  0      
  nop                                           #  149   0x4f66f  1      
  nop                                           #  150   0x4f670  1      
  callq .__cxa_begin_catch                      #  151   0x4f671  5      
  movl %eax, %edi                               #  152   0x4f676  2      
  movl %edi, %edi                               #  153   0x4f678  2      
  movl (%r15,%rdi,1), %eax                      #  154   0x4f67a  4      
  movl %eax, %eax                               #  155   0x4f67e  2      
  movl 0x8(%r15,%rax,1), %eax                   #  156   0x4f680  5      
  nop                                           #  157   0x4f685  1      
  andl $0xffffffe0, %eax                        #  158   0x4f686  5      
  addq %r15, %rax                               #  159   0x4f68b  3      
  callq %rax                                    #  160   0x4f68e  2      
  movl %eax, %r12d                              #  161   0x4f690  3      
  nop                                           #  162   0x4f693  1      
  nop                                           #  163   0x4f694  1      
  callq .__nacl_read_tp                         #  164   0x4f695  5      
  addq %rbx, %rax                               #  165   0x4f69a  3      
  movl $0xb, %edx                               #  166   0x4f69d  5      
  movl $0x1, %esi                               #  167   0x4f6a2  5      
  movl %eax, %eax                               #  168   0x4f6a7  2      
  movl (%r15,%rax,1), %eax                      #  169   0x4f6a9  4      
  movl $0x1002149d, %edi                        #  170   0x4f6ad  5      
  movl %eax, %eax                               #  171   0x4f6b2  2      
  movl 0xc(%r15,%rax,1), %ecx                   #  172   0x4f6b4  5      
  nop                                           #  173   0x4f6b9  1      
  nop                                           #  174   0x4f6ba  1      
  nop                                           #  175   0x4f6bb  1      
  callq .fwrite                                 #  176   0x4f6bc  5      
  nop                                           #  177   0x4f6c1  1      
  nop                                           #  178   0x4f6c2  1      
  callq .__nacl_read_tp                         #  179   0x4f6c3  5      
  addq %rbx, %rax                               #  180   0x4f6c8  3      
  movl %r12d, %edi                              #  181   0x4f6cb  3      
  movl %eax, %eax                               #  182   0x4f6ce  2      
  movl (%r15,%rax,1), %eax                      #  183   0x4f6d0  4      
  movl %eax, %eax                               #  184   0x4f6d4  2      
  movl 0xc(%r15,%rax,1), %esi                   #  185   0x4f6d6  5      
  nop                                           #  186   0x4f6db  1      
  callq .fputs                                  #  187   0x4f6dc  5      
  nop                                           #  188   0x4f6e1  1      
  nop                                           #  189   0x4f6e2  1      
  callq .__nacl_read_tp                         #  190   0x4f6e3  5      
  leaq (%rax,%rbx,1), %rbx                      #  191   0x4f6e8  4      
  movl $0xa, %edi                               #  192   0x4f6ec  5      
  movl %ebx, %ebx                               #  193   0x4f6f1  2      
  movl (%r15,%rbx,1), %eax                      #  194   0x4f6f3  4      
  movl %eax, %eax                               #  195   0x4f6f7  2      
  movl 0xc(%r15,%rax,1), %esi                   #  196   0x4f6f9  5      
  nop                                           #  197   0x4f6fe  1      
  callq .fputc                                  #  198   0x4f6ff  5      
  jmpq .L_4f820                                 #  199   0x4f704  5      
  nop                                           #  200   0x4f709  1      
  nop                                           #  201   0x4f70a  1      
  movl %eax, 0x8(%rsp)                          #  202   0x4f70b  4      
  nop                                           #  203   0x4f70f  1      
  nop                                           #  204   0x4f710  1      
  callq .__cxa_end_catch                        #  205   0x4f711  5      
  movl 0x8(%rsp), %edi                          #  206   0x4f716  4      
  nop                                           #  207   0x4f71a  1      
  nop                                           #  208   0x4f71b  1      
  callq ._Unwind_Resume                         #  209   0x4f71c  5      
                                                                         
.size _ZN9__gnu_cxx27__verbose_terminate_handlerEv, .-_ZN9__gnu_cxx27__verbose_terminate_handlerEv

