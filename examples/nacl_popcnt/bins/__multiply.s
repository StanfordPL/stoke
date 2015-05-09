  .text
  .globl __multiply
  .type __multiply, @function

#! file-offset 0x7f4a0
#! rip-offset  0x7f4a0
#! capacity    832 bytes

# Text                           #  Line  RIP      Bytes  
.__multiply:                     #        0x7f4a0  0      
  pushq %r14                     #  1     0x7f4a0  3      
  movl %edi, %edi                #  2     0x7f4a3  2      
  pushq %r13                     #  3     0x7f4a5  3      
  movl %edx, %r13d               #  4     0x7f4a8  3      
  pushq %r12                     #  5     0x7f4ab  3      
  movl %esi, %r12d               #  6     0x7f4ae  3      
  pushq %rbx                     #  7     0x7f4b1  2      
  subl $0x38, %esp               #  8     0x7f4b3  3      
  addq %r15, %rsp                #  9     0x7f4b6  3      
  movl %r12d, %r12d              #  10    0x7f4b9  3      
  movl 0x10(%r15,%r12,1), %edx   #  11    0x7f4bc  5      
  nop                            #  12    0x7f4c1  1      
  movl %r13d, %r13d              #  13    0x7f4c2  3      
  movl 0x10(%r15,%r13,1), %r10d  #  14    0x7f4c5  5      
  cmpl %r10d, %edx               #  15    0x7f4ca  3      
  jl .L_7f7c0                    #  16    0x7f4cd  6      
  movl %r10d, %eax               #  17    0x7f4d3  3      
  movl %edx, %r10d               #  18    0x7f4d6  3      
  movl %eax, %edx                #  19    0x7f4d9  2      
  nop                            #  20    0x7f4db  1      
.L_7f4e0:                        #        0x7f4dc  0      
  leal (%rdx,%r10,1), %ebx       #  21    0x7f4dc  4      
  xorl %esi, %esi                #  22    0x7f4e0  2      
  movl %r12d, %r12d              #  23    0x7f4e2  3      
  cmpl 0x8(%r15,%r12,1), %ebx    #  24    0x7f4e5  5      
  movl %edx, 0x8(%rsp)           #  25    0x7f4ea  4      
  movl %r10d, 0x10(%rsp)         #  26    0x7f4ee  5      
  setg %sil                      #  27    0x7f4f3  4      
  nop                            #  28    0x7f4f7  1      
  movl %r12d, %r12d              #  29    0x7f4f8  3      
  addl 0x4(%r15,%r12,1), %esi    #  30    0x7f4fb  5      
  nop                            #  31    0x7f500  1      
  nop                            #  32    0x7f501  1      
  callq ._Balloc                 #  33    0x7f502  5      
  movl %eax, %eax                #  34    0x7f507  2      
  movl 0x8(%rsp), %edx           #  35    0x7f509  4      
  movl 0x10(%rsp), %r10d         #  36    0x7f50d  5      
  movq %rax, 0x18(%rsp)          #  37    0x7f512  5      
  movl 0x18(%rsp), %ecx          #  38    0x7f517  4      
  leal 0x14(%rax,%rbx,4), %r14d  #  39    0x7f51b  5      
  addl $0x14, %ecx               #  40    0x7f520  3      
  cmpl %r14d, %ecx               #  41    0x7f523  3      
  nop                            #  42    0x7f526  1      
  jae .L_7f580                   #  43    0x7f527  6      
  movq %rcx, %rax                #  44    0x7f52d  3      
  nop                            #  45    0x7f530  1      
  nop                            #  46    0x7f531  1      
.L_7f560:                        #        0x7f532  0      
  movl %eax, %eax                #  47    0x7f532  2      
  movl $0x0, (%r15,%rax,1)       #  48    0x7f534  8      
  addl $0x4, %eax                #  49    0x7f53c  3      
  cmpl %eax, %r14d               #  50    0x7f53f  3      
  ja .L_7f560                    #  51    0x7f542  6      
  nop                            #  52    0x7f548  1      
.L_7f580:                        #        0x7f549  0      
  leal 0x14(%r12), %r11d         #  53    0x7f549  5      
  leal 0x14(%r12,%r10,4), %r10d  #  54    0x7f54e  5      
  leal 0x14(%r13,%rdx,4), %edx   #  55    0x7f553  5      
  leal 0x14(%r13), %r12d         #  56    0x7f558  4      
  cmpl %edx, %r12d               #  57    0x7f55c  3      
  jae .L_7f720                   #  58    0x7f55f  6      
  nop                            #  59    0x7f565  1      
  movq %r14, 0x20(%rsp)          #  60    0x7f566  5      
  movq %rcx, %r13                #  61    0x7f56b  3      
  movq %rdx, %r14                #  62    0x7f56e  3      
  movl %ebx, 0x2c(%rsp)          #  63    0x7f571  4      
  xchgw %ax, %ax                 #  64    0x7f575  3      
  nop                            #  65    0x7f578  1      
.L_7f5c0:                        #        0x7f579  0      
  movl %r12d, %r12d              #  66    0x7f579  3      
  movl (%r15,%r12,1), %edi       #  67    0x7f57c  4      
  movl %edi, %r8d                #  68    0x7f580  3      
  andl $0xffff, %r8d             #  69    0x7f583  7      
  je .L_7f640                    #  70    0x7f58a  6      
  movq %r13, %rax                #  71    0x7f590  3      
  movq %r11, %rdx                #  72    0x7f593  3      
  xorl %edi, %edi                #  73    0x7f596  2      
  nop                            #  74    0x7f598  1      
.L_7f5e0:                        #        0x7f599  0      
  movl %edx, %edx                #  75    0x7f599  2      
  movl (%r15,%rdx,1), %esi       #  76    0x7f59b  4      
  movl %eax, %eax                #  77    0x7f59f  2      
  movl (%r15,%rax,1), %ebx       #  78    0x7f5a1  4      
  addl $0x4, %edx                #  79    0x7f5a5  3      
  movzwl %si, %ecx               #  80    0x7f5a8  3      
  shrl $0x10, %esi               #  81    0x7f5ab  3      
  movzwl %bx, %r9d               #  82    0x7f5ae  4      
  imull %r8d, %ecx               #  83    0x7f5b2  4      
  shrl $0x10, %ebx               #  84    0x7f5b6  3      
  imull %r8d, %esi               #  85    0x7f5b9  4      
  addl %r9d, %ecx                #  86    0x7f5bd  3      
  addl %edi, %ecx                #  87    0x7f5c0  2      
  leal (%rsi,%rbx,1), %ebx       #  88    0x7f5c2  3      
  movl %ecx, %edi                #  89    0x7f5c5  2      
  andl $0xffff, %ecx             #  90    0x7f5c7  6      
  shrl $0x10, %edi               #  91    0x7f5cd  3      
  addl %edi, %ebx                #  92    0x7f5d0  2      
  movl %ebx, %edi                #  93    0x7f5d2  2      
  shll $0x10, %ebx               #  94    0x7f5d4  3      
  orl %ecx, %ebx                 #  95    0x7f5d7  2      
  shrl $0x10, %edi               #  96    0x7f5d9  3      
  movl %eax, %eax                #  97    0x7f5dc  2      
  movl %ebx, (%r15,%rax,1)       #  98    0x7f5de  4      
  addl $0x4, %eax                #  99    0x7f5e2  3      
  cmpl %edx, %r10d               #  100   0x7f5e5  3      
  ja .L_7f5e0                    #  101   0x7f5e8  6      
  movl %eax, %eax                #  102   0x7f5ee  2      
  movl %edi, (%r15,%rax,1)       #  103   0x7f5f0  4      
  movl %r12d, %r12d              #  104   0x7f5f4  3      
  movl (%r15,%r12,1), %edi       #  105   0x7f5f7  4      
  xchgw %ax, %ax                 #  106   0x7f5fb  3      
.L_7f640:                        #        0x7f5fe  0      
  shrl $0x10, %edi               #  107   0x7f5fe  3      
  testl %edi, %edi               #  108   0x7f601  2      
  je .L_7f6e0                    #  109   0x7f603  6      
  movl %r13d, %r13d              #  110   0x7f609  3      
  movl (%r15,%r13,1), %ecx       #  111   0x7f60c  4      
  movq %r13, %rdx                #  112   0x7f610  3      
  movq %r11, %rax                #  113   0x7f613  3      
  xorl %r8d, %r8d                #  114   0x7f616  3      
  movl %ecx, %ebx                #  115   0x7f619  2      
  nop                            #  116   0x7f61b  1      
.L_7f660:                        #        0x7f61c  0      
  movl %eax, %eax                #  117   0x7f61c  2      
  movzwl (%r15,%rax,1), %esi     #  118   0x7f61e  5      
  shrl $0x10, %ebx               #  119   0x7f623  3      
  andl $0xffff, %ecx             #  120   0x7f626  6      
  imull %edi, %esi               #  121   0x7f62c  3      
  leal (%r8,%rsi,1), %esi        #  122   0x7f62f  4      
  addl %ebx, %esi                #  123   0x7f633  2      
  movl %esi, %ebx                #  124   0x7f635  2      
  shrl $0x10, %esi               #  125   0x7f637  3      
  xchgw %ax, %ax                 #  126   0x7f63a  3      
  shll $0x10, %ebx               #  127   0x7f63d  3      
  orl %ecx, %ebx                 #  128   0x7f640  2      
  movl %edx, %edx                #  129   0x7f642  2      
  movl %ebx, (%r15,%rdx,1)       #  130   0x7f644  4      
  movl %eax, %eax                #  131   0x7f648  2      
  movl (%r15,%rax,1), %ecx       #  132   0x7f64a  4      
  addl $0x4, %edx                #  133   0x7f64e  3      
  movl %edx, %edx                #  134   0x7f651  2      
  movl (%r15,%rdx,1), %ebx       #  135   0x7f653  4      
  addl $0x4, %eax                #  136   0x7f657  3      
  shrl $0x10, %ecx               #  137   0x7f65a  3      
  imull %edi, %ecx               #  138   0x7f65d  3      
  movzwl %bx, %r8d               #  139   0x7f660  4      
  leal (%rcx,%r8,1), %r8d        #  140   0x7f664  4      
  leal (%r8,%rsi,1), %ecx        #  141   0x7f668  4      
  movl %ecx, %r8d                #  142   0x7f66c  3      
  shrl $0x10, %r8d               #  143   0x7f66f  4      
  cmpl %eax, %r10d               #  144   0x7f673  3      
  ja .L_7f660                    #  145   0x7f676  6      
  nop                            #  146   0x7f67c  1      
  movl %edx, %edx                #  147   0x7f67d  2      
  movl %ecx, (%r15,%rdx,1)       #  148   0x7f67f  4      
  nop                            #  149   0x7f683  1      
  nop                            #  150   0x7f684  1      
.L_7f6e0:                        #        0x7f685  0      
  addl $0x4, %r12d               #  151   0x7f685  4      
  cmpl %r12d, %r14d              #  152   0x7f689  3      
  jbe .L_7f700                   #  153   0x7f68c  6      
  addl $0x4, %r13d               #  154   0x7f692  4      
  jmpq .L_7f5c0                  #  155   0x7f696  5      
  nop                            #  156   0x7f69b  1      
.L_7f700:                        #        0x7f69c  0      
  movq 0x20(%rsp), %r14          #  157   0x7f69c  5      
  movl 0x2c(%rsp), %ebx          #  158   0x7f6a1  4      
  nop                            #  159   0x7f6a5  1      
  nop                            #  160   0x7f6a6  1      
.L_7f720:                        #        0x7f6a7  0      
  testl %ebx, %ebx               #  161   0x7f6a7  2      
  jg .L_7f760                    #  162   0x7f6a9  6      
  jmpq .L_7f780                  #  163   0x7f6af  5      
  nop                            #  164   0x7f6b4  1      
  nop                            #  165   0x7f6b5  1      
.L_7f740:                        #        0x7f6b6  0      
  subl $0x1, %ebx                #  166   0x7f6b6  3      
  je .L_7f780                    #  167   0x7f6b9  6      
  nop                            #  168   0x7f6bf  1      
  nop                            #  169   0x7f6c0  1      
.L_7f760:                        #        0x7f6c1  0      
  subl $0x4, %r14d               #  170   0x7f6c1  4      
  movl %r14d, %r14d              #  171   0x7f6c5  3      
  movl (%r15,%r14,1), %esi       #  172   0x7f6c8  4      
  testl %esi, %esi               #  173   0x7f6cc  2      
  je .L_7f740                    #  174   0x7f6ce  6      
  xchgw %ax, %ax                 #  175   0x7f6d4  3      
  nop                            #  176   0x7f6d7  1      
.L_7f780:                        #        0x7f6d8  0      
  movq 0x18(%rsp), %rax          #  177   0x7f6d8  5      
  movl %eax, %eax                #  178   0x7f6dd  2      
  movl %ebx, 0x10(%r15,%rax,1)   #  179   0x7f6df  5      
  movl 0x18(%rsp), %eax          #  180   0x7f6e4  4      
  addl $0x38, %esp               #  181   0x7f6e8  3      
  addq %r15, %rsp                #  182   0x7f6eb  3      
  popq %rbx                      #  183   0x7f6ee  2      
  popq %r12                      #  184   0x7f6f0  3      
  popq %r13                      #  185   0x7f6f3  3      
  popq %r14                      #  186   0x7f6f6  3      
  popq %r11                      #  187   0x7f6f9  3      
  nop                            #  188   0x7f6fc  1      
  andl $0xffffffe0, %r11d        #  189   0x7f6fd  7      
  addq %r15, %r11                #  190   0x7f704  3      
  jmpq %r11                      #  191   0x7f707  3      
  nop                            #  192   0x7f70a  1      
  nop                            #  193   0x7f70b  1      
.L_7f7c0:                        #        0x7f70c  0      
  movq %r12, %rax                #  194   0x7f70c  3      
  movq %r13, %r12                #  195   0x7f70f  3      
  movq %rax, %r13                #  196   0x7f712  3      
  jmpq .L_7f4e0                  #  197   0x7f715  5      
  nop                            #  198   0x7f71a  1      
  nop                            #  199   0x7f71b  1      
                                                          
.size __multiply, .-__multiply

