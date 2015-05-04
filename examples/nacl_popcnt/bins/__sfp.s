  .text
  .globl __sfp
  .type __sfp, @function

#! file-offset 0x7b3c0
#! rip-offset  0x7b3c0
#! capacity    672 bytes

# Text                                #  Line  RIP      Bytes  
.__sfp:                               #        0x7b3c0  0      
  pushq %r13                          #  1     0x7b3c0  3      
  movl %edi, %r13d                    #  2     0x7b3c3  3      
  pushq %r12                          #  3     0x7b3c6  3      
  movl 0xffa80bc(%rip), %r12d         #  4     0x7b3c9  7      
  pushq %rbx                          #  5     0x7b3d0  2      
  testq %r12, %r12                    #  6     0x7b3d2  3      
  je .L_7b400                         #  7     0x7b3d5  6      
  movl %r12d, %r12d                   #  8     0x7b3db  3      
  movl 0x38(%r15,%r12,1), %edx        #  9     0x7b3de  5      
  testl %edx, %edx                    #  10    0x7b3e3  2      
  xchgw %ax, %ax                      #  11    0x7b3e5  3      
  je .L_7b5c0                         #  12    0x7b3e8  6      
  nop                                 #  13    0x7b3ee  1      
  nop                                 #  14    0x7b3ef  1      
.L_7b400:                             #        0x7b3f0  0      
  addl $0x2e0, %r12d                  #  15    0x7b3f0  7      
  nop                                 #  16    0x7b3f7  1      
  nop                                 #  17    0x7b3f8  1      
  callq .__sfp_lock_acquire           #  18    0x7b3f9  5      
.L_7b420:                             #        0x7b3fe  0      
  movl %r12d, %r12d                   #  19    0x7b3fe  3      
  movl 0x4(%r15,%r12,1), %eax         #  20    0x7b401  5      
  movl %r12d, %r12d                   #  21    0x7b406  3      
  movl 0x8(%r15,%r12,1), %ebx         #  22    0x7b409  5      
  subl $0x1, %eax                     #  23    0x7b40e  3      
  jns .L_7b460                        #  24    0x7b411  6      
  jmpq .L_7b580                       #  25    0x7b417  5      
  nop                                 #  26    0x7b41c  1      
.L_7b440:                             #        0x7b41d  0      
  subl $0x1, %eax                     #  27    0x7b41d  3      
  js .L_7b580                         #  28    0x7b420  6      
  subl $0xffffff80, %ebx              #  29    0x7b426  6      
  nop                                 #  30    0x7b42c  1      
  nop                                 #  31    0x7b42d  1      
.L_7b460:                             #        0x7b42e  0      
  movl %ebx, %ebx                     #  32    0x7b42e  2      
  cmpw $0x0, 0xc(%r15,%rbx,1)         #  33    0x7b430  7      
  jne .L_7b440                        #  34    0x7b437  6      
  leal 0x5c(%rbx), %edi               #  35    0x7b43d  3      
  movl %ebx, %ebx                     #  36    0x7b440  2      
  movw $0xffff, 0xe(%r15,%rbx,1)      #  37    0x7b442  8      
  nop                                 #  38    0x7b44a  1      
  movl %ebx, %ebx                     #  39    0x7b44b  2      
  movw $0x1, 0xc(%r15,%rbx,1)         #  40    0x7b44d  8      
  movl %ebx, %ebx                     #  41    0x7b455  2      
  movl $0x0, 0x78(%r15,%rbx,1)        #  42    0x7b457  9      
  nop                                 #  43    0x7b460  1      
  callq .__local_lock_init_recursive  #  44    0x7b461  5      
  nop                                 #  45    0x7b466  1      
  nop                                 #  46    0x7b467  1      
  callq .__sfp_lock_release           #  47    0x7b468  5      
  leal 0x70(%rbx), %edi               #  48    0x7b46d  3      
  movl %ebx, %ebx                     #  49    0x7b470  2      
  movl $0x0, (%r15,%rbx,1)            #  50    0x7b472  8      
  movl %ebx, %ebx                     #  51    0x7b47a  2      
  movl $0x0, 0x8(%r15,%rbx,1)         #  52    0x7b47c  9      
  nop                                 #  53    0x7b485  1      
  movl %ebx, %ebx                     #  54    0x7b486  2      
  movl $0x0, 0x4(%r15,%rbx,1)         #  55    0x7b488  9      
  movl %ebx, %ebx                     #  56    0x7b491  2      
  movl $0x0, 0x10(%r15,%rbx,1)        #  57    0x7b493  9      
  movl $0x8, %edx                     #  58    0x7b49c  5      
  nop                                 #  59    0x7b4a1  1      
  movl %ebx, %ebx                     #  60    0x7b4a2  2      
  movl $0x0, 0x14(%r15,%rbx,1)        #  61    0x7b4a4  9      
  movl %ebx, %ebx                     #  62    0x7b4ad  2      
  movl $0x0, 0x18(%r15,%rbx,1)        #  63    0x7b4af  9      
  xorl %esi, %esi                     #  64    0x7b4b8  2      
  nop                                 #  65    0x7b4ba  1      
  callq .memset                       #  66    0x7b4bb  5      
  movl %ebx, %ebx                     #  67    0x7b4c0  2      
  movl $0x0, 0x30(%r15,%rbx,1)        #  68    0x7b4c2  9      
  movl %ebx, %ebx                     #  69    0x7b4cb  2      
  movl $0x0, 0x34(%r15,%rbx,1)        #  70    0x7b4cd  9      
  nop                                 #  71    0x7b4d6  1      
  movl %ebx, %ebx                     #  72    0x7b4d7  2      
  movl $0x0, 0x44(%r15,%rbx,1)        #  73    0x7b4d9  9      
  movl %ebx, %ebx                     #  74    0x7b4e2  2      
  movl $0x0, 0x48(%r15,%rbx,1)        #  75    0x7b4e4  9      
  nop                                 #  76    0x7b4ed  1      
.L_7b560:                             #        0x7b4ee  0      
  movl %ebx, %eax                     #  77    0x7b4ee  2      
  popq %rbx                           #  78    0x7b4f0  2      
  popq %r12                           #  79    0x7b4f2  3      
  popq %r13                           #  80    0x7b4f5  3      
  popq %r11                           #  81    0x7b4f8  3      
  andl $0xffffffe0, %r11d             #  82    0x7b4fb  7      
  addq %r15, %r11                     #  83    0x7b502  3      
  jmpq %r11                           #  84    0x7b505  3      
  nop                                 #  85    0x7b508  1      
.L_7b580:                             #        0x7b509  0      
  movl %r12d, %r12d                   #  86    0x7b509  3      
  movl (%r15,%r12,1), %eax            #  87    0x7b50c  4      
  testq %rax, %rax                    #  88    0x7b510  3      
  je .L_7b600                         #  89    0x7b513  6      
  nop                                 #  90    0x7b519  1      
  nop                                 #  91    0x7b51a  1      
.L_7b5a0:                             #        0x7b51b  0      
  movq %rax, %r12                     #  92    0x7b51b  3      
  jmpq .L_7b420                       #  93    0x7b51e  5      
  nop                                 #  94    0x7b523  1      
  nop                                 #  95    0x7b524  1      
.L_7b5c0:                             #        0x7b525  0      
  movl %r12d, %edi                    #  96    0x7b525  3      
  nop                                 #  97    0x7b528  1      
  nop                                 #  98    0x7b529  1      
  callq .__sinit                      #  99    0x7b52a  5      
  jmpq .L_7b400                       #  100   0x7b52f  5      
  nop                                 #  101   0x7b534  1      
  nop                                 #  102   0x7b535  1      
.L_7b600:                             #        0x7b536  0      
  movl $0x4, %esi                     #  103   0x7b536  5      
  movl %r13d, %edi                    #  104   0x7b53b  3      
  nop                                 #  105   0x7b53e  1      
  nop                                 #  106   0x7b53f  1      
  callq .__sfmoreglue                 #  107   0x7b540  5      
  movl %eax, %eax                     #  108   0x7b545  2      
  testq %rax, %rax                    #  109   0x7b547  3      
  movl %r12d, %r12d                   #  110   0x7b54a  3      
  movl %eax, (%r15,%r12,1)            #  111   0x7b54d  4      
  jne .L_7b5a0                        #  112   0x7b551  6      
  nop                                 #  113   0x7b557  1      
  callq .__sfp_lock_release           #  114   0x7b558  5      
  xorl %ebx, %ebx                     #  115   0x7b55d  2      
  movl %r13d, %r13d                   #  116   0x7b55f  3      
  movl $0xc, (%r15,%r13,1)            #  117   0x7b562  8      
  jmpq .L_7b560                       #  118   0x7b56a  5      
  nop                                 #  119   0x7b56f  1      
  nop                                 #  120   0x7b570  1      
  nop                                 #  121   0x7b571  1      
  nop                                 #  122   0x7b572  1      
  nop                                 #  123   0x7b573  1      
  nop                                 #  124   0x7b574  1      
  nop                                 #  125   0x7b575  1      
  nop                                 #  126   0x7b576  1      
  nop                                 #  127   0x7b577  1      
  nop                                 #  128   0x7b578  1      
  nop                                 #  129   0x7b579  1      
  nop                                 #  130   0x7b57a  1      
  nop                                 #  131   0x7b57b  1      
  nop                                 #  132   0x7b57c  1      
                                                               
.size __sfp, .-__sfp

