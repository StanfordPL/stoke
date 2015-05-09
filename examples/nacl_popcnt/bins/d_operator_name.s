  .text
  .globl d_operator_name
  .type d_operator_name, @function

#! file-offset 0x523e0
#! rip-offset  0x523e0
#! capacity    800 bytes

# Text                          #  Line  RIP      Bytes  
.d_operator_name:               #        0x523e0  0      
  pushq %r12                    #  1     0x523e0  3      
  xorl %r12d, %r12d             #  2     0x523e3  3      
  pushq %rbx                    #  3     0x523e6  2      
  movl %edi, %ebx               #  4     0x523e8  2      
  subl $0x8, %esp               #  5     0x523ea  3      
  addq %r15, %rsp               #  6     0x523ed  3      
  movl %ebx, %ebx               #  7     0x523f0  2      
  movl 0xc(%r15,%rbx,1), %eax   #  8     0x523f2  5      
  movl %eax, %eax               #  9     0x523f7  2      
  movzbl (%r15,%rax,1), %r9d    #  10    0x523f9  5      
  testb %r9b, %r9b              #  11    0x523fe  3      
  nop                           #  12    0x52401  1      
  je .L_52460                   #  13    0x52402  6      
  addl $0x1, %eax               #  14    0x52408  3      
  movl %ebx, %ebx               #  15    0x5240b  2      
  movl %eax, 0xc(%r15,%rbx,1)   #  16    0x5240d  5      
  movl %eax, %eax               #  17    0x52412  2      
  movzbl (%r15,%rax,1), %r12d   #  18    0x52414  5      
  testb %r12b, %r12b            #  19    0x52419  3      
  je .L_52440                   #  20    0x5241c  6      
  addl $0x1, %eax               #  21    0x52422  3      
  nop                           #  22    0x52425  1      
  movl %ebx, %ebx               #  23    0x52426  2      
  movl %eax, 0xc(%r15,%rbx,1)   #  24    0x52428  5      
  nop                           #  25    0x5242d  1      
  nop                           #  26    0x5242e  1      
.L_52440:                       #        0x5242f  0      
  cmpb $0x76, %r9b              #  27    0x5242f  4      
  jne .L_525a0                  #  28    0x52433  6      
  leal -0x30(%r12), %eax        #  29    0x52439  5      
  cmpb $0x9, %al                #  30    0x5243e  2      
  jbe .L_525e0                  #  31    0x52440  6      
  nop                           #  32    0x52446  1      
.L_52460:                       #        0x52447  0      
  movl $0x34, %esi              #  33    0x52447  5      
  xorl %edx, %edx               #  34    0x5244c  2      
  nop                           #  35    0x5244e  1      
  nop                           #  36    0x5244f  1      
.L_52480:                       #        0x52450  0      
  movl %esi, %eax               #  37    0x52450  2      
  subl %edx, %eax               #  38    0x52452  2      
  movl %eax, %ecx               #  39    0x52454  2      
  shrl $0x1f, %ecx              #  40    0x52456  3      
  leal (%rcx,%rax,1), %eax      #  41    0x52459  3      
  sarl $0x1, %eax               #  42    0x5245c  2      
  addl %edx, %eax               #  43    0x5245e  2      
  movl %eax, %r8d               #  44    0x52460  3      
  shll $0x4, %r8d               #  45    0x52463  4      
  addl $0x100224e0, %r8d        #  46    0x52467  7      
  xchgw %ax, %ax                #  47    0x5246e  3      
  movl %r8d, %r8d               #  48    0x52471  3      
  movl (%r15,%r8,1), %ecx       #  49    0x52474  4      
  movl %ecx, %ecx               #  50    0x52478  2      
  movzbl (%r15,%rcx,1), %edi    #  51    0x5247a  5      
  cmpb %dil, %r9b               #  52    0x5247f  3      
  jne .L_52560                  #  53    0x52482  6      
  movl %ecx, %ecx               #  54    0x52488  2      
  cmpb 0x1(%r15,%rcx,1), %r12b  #  55    0x5248a  5      
  xchgw %ax, %ax                #  56    0x5248f  3      
  je .L_52680                   #  57    0x52492  6      
  jge .L_52580                  #  58    0x52498  6      
  nop                           #  59    0x5249e  1      
  nop                           #  60    0x5249f  1      
.L_524e0:                       #        0x524a0  0      
  movl %eax, %esi               #  61    0x524a0  2      
  nop                           #  62    0x524a2  1      
  nop                           #  63    0x524a3  1      
.L_52500:                       #        0x524a4  0      
  cmpl %esi, %edx               #  64    0x524a4  2      
  jne .L_52480                  #  65    0x524a6  6      
  nop                           #  66    0x524ac  1      
  nop                           #  67    0x524ad  1      
.L_52520:                       #        0x524ae  0      
  xorl %eax, %eax               #  68    0x524ae  2      
  nop                           #  69    0x524b0  1      
  nop                           #  70    0x524b1  1      
.L_52540:                       #        0x524b2  0      
  addl $0x8, %esp               #  71    0x524b2  3      
  addq %r15, %rsp               #  72    0x524b5  3      
  popq %rbx                     #  73    0x524b8  2      
  popq %r12                     #  74    0x524ba  3      
  popq %r11                     #  75    0x524bd  3      
  andl $0xffffffe0, %r11d       #  76    0x524c0  7      
  addq %r15, %r11               #  77    0x524c7  3      
  jmpq %r11                     #  78    0x524ca  3      
  nop                           #  79    0x524cd  1      
.L_52560:                       #        0x524ce  0      
  cmpb %r9b, %dil               #  80    0x524ce  3      
  jg .L_524e0                   #  81    0x524d1  6      
  nop                           #  82    0x524d7  1      
  nop                           #  83    0x524d8  1      
.L_52580:                       #        0x524d9  0      
  leal 0x1(%rax), %edx          #  84    0x524d9  3      
  jmpq .L_52500                 #  85    0x524dc  5      
  nop                           #  86    0x524e1  1      
  nop                           #  87    0x524e2  1      
.L_525a0:                       #        0x524e3  0      
  cmpb $0x76, %r12b             #  88    0x524e3  4      
  jne .L_52460                  #  89    0x524e7  6      
  cmpb $0x63, %r9b              #  90    0x524ed  4      
  jne .L_52460                  #  91    0x524f1  6      
  movl %ebx, %edi               #  92    0x524f7  2      
  nop                           #  93    0x524f9  1      
  callq .d_type                 #  94    0x524fa  5      
  addl $0x8, %esp               #  95    0x524ff  3      
  addq %r15, %rsp               #  96    0x52502  3      
  movl %ebx, %edi               #  97    0x52505  2      
  movl %eax, %edx               #  98    0x52507  2      
  popq %rbx                     #  99    0x52509  2      
  popq %r12                     #  100   0x5250b  3      
  xorl %ecx, %ecx               #  101   0x5250e  2      
  movl $0x2d, %esi              #  102   0x52510  5      
  jmpq .d_make_comp             #  103   0x52515  5      
  nop                           #  104   0x5251a  1      
.L_525e0:                       #        0x5251b  0      
  movl %ebx, %edi               #  105   0x5251b  2      
  nop                           #  106   0x5251d  1      
  nop                           #  107   0x5251e  1      
  callq .d_source_name          #  108   0x5251f  5      
  movl %ebx, %ebx               #  109   0x52524  2      
  movl 0x14(%r15,%rbx,1), %edx  #  110   0x52526  5      
  movl %ebx, %ebx               #  111   0x5252b  2      
  cmpl 0x18(%r15,%rbx,1), %edx  #  112   0x5252d  5      
  movl %eax, %ecx               #  113   0x52532  2      
  jge .L_52520                  #  114   0x52534  6      
  leal (%rdx,%rdx,2), %eax      #  115   0x5253a  3      
  addl $0x1, %edx               #  116   0x5253d  3      
  nop                           #  117   0x52540  1      
  movl %ebx, %ebx               #  118   0x52541  2      
  movl %edx, 0x14(%r15,%rbx,1)  #  119   0x52543  5      
  shll $0x2, %eax               #  120   0x52548  3      
  movl %ebx, %ebx               #  121   0x5254b  2      
  addl 0x10(%r15,%rbx,1), %eax  #  122   0x5254d  5      
  testq %rax, %rax              #  123   0x52552  3      
  je .L_52540                   #  124   0x52555  6      
  testq %rcx, %rcx              #  125   0x5255b  3      
  nop                           #  126   0x5255e  1      
  je .L_52520                   #  127   0x5255f  6      
  movsbl %r12b, %edx            #  128   0x52565  4      
  movl %eax, %eax               #  129   0x52569  2      
  movl $0x2c, (%r15,%rax,1)     #  130   0x5256b  8      
  movl %eax, %eax               #  131   0x52573  2      
  movl %ecx, 0x8(%r15,%rax,1)   #  132   0x52575  5      
  subl $0x30, %edx              #  133   0x5257a  3      
  xchgw %ax, %ax                #  134   0x5257d  3      
  movl %eax, %eax               #  135   0x52580  2      
  movl %edx, 0x4(%r15,%rax,1)   #  136   0x52582  5      
  jmpq .L_52540                 #  137   0x52587  5      
  nop                           #  138   0x5258c  1      
  nop                           #  139   0x5258d  1      
.L_52680:                       #        0x5258e  0      
  movl %ebx, %ebx               #  140   0x5258e  2      
  movl 0x14(%r15,%rbx,1), %edx  #  141   0x52590  5      
  movl %ebx, %ebx               #  142   0x52595  2      
  cmpl 0x18(%r15,%rbx,1), %edx  #  143   0x52597  5      
  jge .L_52520                  #  144   0x5259c  6      
  leal (%rdx,%rdx,2), %eax      #  145   0x525a2  3      
  addl $0x1, %edx               #  146   0x525a5  3      
  nop                           #  147   0x525a8  1      
  movl %ebx, %ebx               #  148   0x525a9  2      
  movl %edx, 0x14(%r15,%rbx,1)  #  149   0x525ab  5      
  shll $0x2, %eax               #  150   0x525b0  3      
  movl %ebx, %ebx               #  151   0x525b3  2      
  addl 0x10(%r15,%rbx,1), %eax  #  152   0x525b5  5      
  testq %rax, %rax              #  153   0x525ba  3      
  je .L_52540                   #  154   0x525bd  6      
  nop                           #  155   0x525c3  1      
  movl %eax, %eax               #  156   0x525c4  2      
  movl $0x2b, (%r15,%rax,1)     #  157   0x525c6  8      
  movl %eax, %eax               #  158   0x525ce  2      
  movl %r8d, 0x4(%r15,%rax,1)   #  159   0x525d0  5      
  addl $0x8, %esp               #  160   0x525d5  3      
  addq %r15, %rsp               #  161   0x525d8  3      
  popq %rbx                     #  162   0x525db  2      
  popq %r12                     #  163   0x525dd  3      
  popq %r11                     #  164   0x525e0  3      
  nop                           #  165   0x525e3  1      
  andl $0xffffffe0, %r11d       #  166   0x525e4  7      
  addq %r15, %r11               #  167   0x525eb  3      
  jmpq %r11                     #  168   0x525ee  3      
  nop                           #  169   0x525f1  1      
  nop                           #  170   0x525f2  1      
                                                         
.size d_operator_name, .-d_operator_name

