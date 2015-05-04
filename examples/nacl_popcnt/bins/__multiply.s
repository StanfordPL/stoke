  .text
  .globl __multiply
  .type __multiply, @function

#! file-offset 0x7f540
#! rip-offset  0x7f540
#! capacity    832 bytes

# Text                           #  Line  RIP      Bytes  
.__multiply:                     #        0x7f540  0      
  pushq %r14                     #  1     0x7f540  3      
  movl %edi, %edi                #  2     0x7f543  2      
  pushq %r13                     #  3     0x7f545  3      
  movl %edx, %r13d               #  4     0x7f548  3      
  pushq %r12                     #  5     0x7f54b  3      
  movl %esi, %r12d               #  6     0x7f54e  3      
  pushq %rbx                     #  7     0x7f551  2      
  subl $0x38, %esp               #  8     0x7f553  3      
  addq %r15, %rsp                #  9     0x7f556  3      
  movl %r12d, %r12d              #  10    0x7f559  3      
  movl 0x10(%r15,%r12,1), %edx   #  11    0x7f55c  5      
  nop                            #  12    0x7f561  1      
  movl %r13d, %r13d              #  13    0x7f562  3      
  movl 0x10(%r15,%r13,1), %r10d  #  14    0x7f565  5      
  cmpl %r10d, %edx               #  15    0x7f56a  3      
  jl .L_7f860                    #  16    0x7f56d  6      
  movl %r10d, %eax               #  17    0x7f573  3      
  movl %edx, %r10d               #  18    0x7f576  3      
  movl %eax, %edx                #  19    0x7f579  2      
  nop                            #  20    0x7f57b  1      
.L_7f580:                        #        0x7f57c  0      
  leal (%rdx,%r10,1), %ebx       #  21    0x7f57c  4      
  xorl %esi, %esi                #  22    0x7f580  2      
  movl %r12d, %r12d              #  23    0x7f582  3      
  cmpl 0x8(%r15,%r12,1), %ebx    #  24    0x7f585  5      
  movl %edx, 0x8(%rsp)           #  25    0x7f58a  4      
  movl %r10d, 0x10(%rsp)         #  26    0x7f58e  5      
  setg %sil                      #  27    0x7f593  4      
  nop                            #  28    0x7f597  1      
  movl %r12d, %r12d              #  29    0x7f598  3      
  addl 0x4(%r15,%r12,1), %esi    #  30    0x7f59b  5      
  nop                            #  31    0x7f5a0  1      
  nop                            #  32    0x7f5a1  1      
  callq ._Balloc                 #  33    0x7f5a2  5      
  movl %eax, %eax                #  34    0x7f5a7  2      
  movl 0x8(%rsp), %edx           #  35    0x7f5a9  4      
  movl 0x10(%rsp), %r10d         #  36    0x7f5ad  5      
  movq %rax, 0x18(%rsp)          #  37    0x7f5b2  5      
  movl 0x18(%rsp), %ecx          #  38    0x7f5b7  4      
  leal 0x14(%rax,%rbx,4), %r14d  #  39    0x7f5bb  5      
  addl $0x14, %ecx               #  40    0x7f5c0  3      
  cmpl %r14d, %ecx               #  41    0x7f5c3  3      
  nop                            #  42    0x7f5c6  1      
  jae .L_7f620                   #  43    0x7f5c7  6      
  movq %rcx, %rax                #  44    0x7f5cd  3      
  nop                            #  45    0x7f5d0  1      
  nop                            #  46    0x7f5d1  1      
.L_7f600:                        #        0x7f5d2  0      
  movl %eax, %eax                #  47    0x7f5d2  2      
  movl $0x0, (%r15,%rax,1)       #  48    0x7f5d4  8      
  addl $0x4, %eax                #  49    0x7f5dc  3      
  cmpl %eax, %r14d               #  50    0x7f5df  3      
  ja .L_7f600                    #  51    0x7f5e2  6      
  nop                            #  52    0x7f5e8  1      
.L_7f620:                        #        0x7f5e9  0      
  leal 0x14(%r12), %r11d         #  53    0x7f5e9  5      
  leal 0x14(%r12,%r10,4), %r10d  #  54    0x7f5ee  5      
  leal 0x14(%r13,%rdx,4), %edx   #  55    0x7f5f3  5      
  leal 0x14(%r13), %r12d         #  56    0x7f5f8  4      
  cmpl %edx, %r12d               #  57    0x7f5fc  3      
  jae .L_7f7c0                   #  58    0x7f5ff  6      
  nop                            #  59    0x7f605  1      
  movq %r14, 0x20(%rsp)          #  60    0x7f606  5      
  movq %rcx, %r13                #  61    0x7f60b  3      
  movq %rdx, %r14                #  62    0x7f60e  3      
  movl %ebx, 0x2c(%rsp)          #  63    0x7f611  4      
  xchgw %ax, %ax                 #  64    0x7f615  3      
  nop                            #  65    0x7f618  1      
.L_7f660:                        #        0x7f619  0      
  movl %r12d, %r12d              #  66    0x7f619  3      
  movl (%r15,%r12,1), %edi       #  67    0x7f61c  4      
  movl %edi, %r8d                #  68    0x7f620  3      
  andl $0xffff, %r8d             #  69    0x7f623  7      
  je .L_7f6e0                    #  70    0x7f62a  6      
  movq %r13, %rax                #  71    0x7f630  3      
  movq %r11, %rdx                #  72    0x7f633  3      
  xorl %edi, %edi                #  73    0x7f636  2      
  nop                            #  74    0x7f638  1      
.L_7f680:                        #        0x7f639  0      
  movl %edx, %edx                #  75    0x7f639  2      
  movl (%r15,%rdx,1), %esi       #  76    0x7f63b  4      
  movl %eax, %eax                #  77    0x7f63f  2      
  movl (%r15,%rax,1), %ebx       #  78    0x7f641  4      
  addl $0x4, %edx                #  79    0x7f645  3      
  movzwl %si, %ecx               #  80    0x7f648  3      
  shrl $0x10, %esi               #  81    0x7f64b  3      
  movzwl %bx, %r9d               #  82    0x7f64e  4      
  imull %r8d, %ecx               #  83    0x7f652  4      
  shrl $0x10, %ebx               #  84    0x7f656  3      
  imull %r8d, %esi               #  85    0x7f659  4      
  addl %r9d, %ecx                #  86    0x7f65d  3      
  addl %edi, %ecx                #  87    0x7f660  2      
  leal (%rsi,%rbx,1), %ebx       #  88    0x7f662  3      
  movl %ecx, %edi                #  89    0x7f665  2      
  andl $0xffff, %ecx             #  90    0x7f667  6      
  shrl $0x10, %edi               #  91    0x7f66d  3      
  addl %edi, %ebx                #  92    0x7f670  2      
  movl %ebx, %edi                #  93    0x7f672  2      
  shll $0x10, %ebx               #  94    0x7f674  3      
  orl %ecx, %ebx                 #  95    0x7f677  2      
  shrl $0x10, %edi               #  96    0x7f679  3      
  movl %eax, %eax                #  97    0x7f67c  2      
  movl %ebx, (%r15,%rax,1)       #  98    0x7f67e  4      
  addl $0x4, %eax                #  99    0x7f682  3      
  cmpl %edx, %r10d               #  100   0x7f685  3      
  ja .L_7f680                    #  101   0x7f688  6      
  movl %eax, %eax                #  102   0x7f68e  2      
  movl %edi, (%r15,%rax,1)       #  103   0x7f690  4      
  movl %r12d, %r12d              #  104   0x7f694  3      
  movl (%r15,%r12,1), %edi       #  105   0x7f697  4      
  xchgw %ax, %ax                 #  106   0x7f69b  3      
.L_7f6e0:                        #        0x7f69e  0      
  shrl $0x10, %edi               #  107   0x7f69e  3      
  testl %edi, %edi               #  108   0x7f6a1  2      
  je .L_7f780                    #  109   0x7f6a3  6      
  movl %r13d, %r13d              #  110   0x7f6a9  3      
  movl (%r15,%r13,1), %ecx       #  111   0x7f6ac  4      
  movq %r13, %rdx                #  112   0x7f6b0  3      
  movq %r11, %rax                #  113   0x7f6b3  3      
  xorl %r8d, %r8d                #  114   0x7f6b6  3      
  movl %ecx, %ebx                #  115   0x7f6b9  2      
  nop                            #  116   0x7f6bb  1      
.L_7f700:                        #        0x7f6bc  0      
  movl %eax, %eax                #  117   0x7f6bc  2      
  movzwl (%r15,%rax,1), %esi     #  118   0x7f6be  5      
  shrl $0x10, %ebx               #  119   0x7f6c3  3      
  andl $0xffff, %ecx             #  120   0x7f6c6  6      
  imull %edi, %esi               #  121   0x7f6cc  3      
  leal (%r8,%rsi,1), %esi        #  122   0x7f6cf  4      
  addl %ebx, %esi                #  123   0x7f6d3  2      
  movl %esi, %ebx                #  124   0x7f6d5  2      
  shrl $0x10, %esi               #  125   0x7f6d7  3      
  xchgw %ax, %ax                 #  126   0x7f6da  3      
  shll $0x10, %ebx               #  127   0x7f6dd  3      
  orl %ecx, %ebx                 #  128   0x7f6e0  2      
  movl %edx, %edx                #  129   0x7f6e2  2      
  movl %ebx, (%r15,%rdx,1)       #  130   0x7f6e4  4      
  movl %eax, %eax                #  131   0x7f6e8  2      
  movl (%r15,%rax,1), %ecx       #  132   0x7f6ea  4      
  addl $0x4, %edx                #  133   0x7f6ee  3      
  movl %edx, %edx                #  134   0x7f6f1  2      
  movl (%r15,%rdx,1), %ebx       #  135   0x7f6f3  4      
  addl $0x4, %eax                #  136   0x7f6f7  3      
  shrl $0x10, %ecx               #  137   0x7f6fa  3      
  imull %edi, %ecx               #  138   0x7f6fd  3      
  movzwl %bx, %r8d               #  139   0x7f700  4      
  leal (%rcx,%r8,1), %r8d        #  140   0x7f704  4      
  leal (%r8,%rsi,1), %ecx        #  141   0x7f708  4      
  movl %ecx, %r8d                #  142   0x7f70c  3      
  shrl $0x10, %r8d               #  143   0x7f70f  4      
  cmpl %eax, %r10d               #  144   0x7f713  3      
  ja .L_7f700                    #  145   0x7f716  6      
  nop                            #  146   0x7f71c  1      
  movl %edx, %edx                #  147   0x7f71d  2      
  movl %ecx, (%r15,%rdx,1)       #  148   0x7f71f  4      
  nop                            #  149   0x7f723  1      
  nop                            #  150   0x7f724  1      
.L_7f780:                        #        0x7f725  0      
  addl $0x4, %r12d               #  151   0x7f725  4      
  cmpl %r12d, %r14d              #  152   0x7f729  3      
  jbe .L_7f7a0                   #  153   0x7f72c  6      
  addl $0x4, %r13d               #  154   0x7f732  4      
  jmpq .L_7f660                  #  155   0x7f736  5      
  nop                            #  156   0x7f73b  1      
.L_7f7a0:                        #        0x7f73c  0      
  movq 0x20(%rsp), %r14          #  157   0x7f73c  5      
  movl 0x2c(%rsp), %ebx          #  158   0x7f741  4      
  nop                            #  159   0x7f745  1      
  nop                            #  160   0x7f746  1      
.L_7f7c0:                        #        0x7f747  0      
  testl %ebx, %ebx               #  161   0x7f747  2      
  jg .L_7f800                    #  162   0x7f749  6      
  jmpq .L_7f820                  #  163   0x7f74f  5      
  nop                            #  164   0x7f754  1      
  nop                            #  165   0x7f755  1      
.L_7f7e0:                        #        0x7f756  0      
  subl $0x1, %ebx                #  166   0x7f756  3      
  je .L_7f820                    #  167   0x7f759  6      
  nop                            #  168   0x7f75f  1      
  nop                            #  169   0x7f760  1      
.L_7f800:                        #        0x7f761  0      
  subl $0x4, %r14d               #  170   0x7f761  4      
  movl %r14d, %r14d              #  171   0x7f765  3      
  movl (%r15,%r14,1), %esi       #  172   0x7f768  4      
  testl %esi, %esi               #  173   0x7f76c  2      
  je .L_7f7e0                    #  174   0x7f76e  6      
  xchgw %ax, %ax                 #  175   0x7f774  3      
  nop                            #  176   0x7f777  1      
.L_7f820:                        #        0x7f778  0      
  movq 0x18(%rsp), %rax          #  177   0x7f778  5      
  movl %eax, %eax                #  178   0x7f77d  2      
  movl %ebx, 0x10(%r15,%rax,1)   #  179   0x7f77f  5      
  movl 0x18(%rsp), %eax          #  180   0x7f784  4      
  addl $0x38, %esp               #  181   0x7f788  3      
  addq %r15, %rsp                #  182   0x7f78b  3      
  popq %rbx                      #  183   0x7f78e  2      
  popq %r12                      #  184   0x7f790  3      
  popq %r13                      #  185   0x7f793  3      
  popq %r14                      #  186   0x7f796  3      
  popq %r11                      #  187   0x7f799  3      
  nop                            #  188   0x7f79c  1      
  andl $0xffffffe0, %r11d        #  189   0x7f79d  7      
  addq %r15, %r11                #  190   0x7f7a4  3      
  jmpq %r11                      #  191   0x7f7a7  3      
  nop                            #  192   0x7f7aa  1      
  nop                            #  193   0x7f7ab  1      
.L_7f860:                        #        0x7f7ac  0      
  movq %r12, %rax                #  194   0x7f7ac  3      
  movq %r13, %r12                #  195   0x7f7af  3      
  movq %rax, %r13                #  196   0x7f7b2  3      
  jmpq .L_7f580                  #  197   0x7f7b5  5      
  nop                            #  198   0x7f7ba  1      
  nop                            #  199   0x7f7bb  1      
                                                          
.size __multiply, .-__multiply

