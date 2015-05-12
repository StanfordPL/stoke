  .text
  .globl __sfp
  .type __sfp, @function

#! file-offset 0x7b340
#! rip-offset  0x7b340
#! capacity    672 bytes

# Text                                #  Line  RIP      Bytes  
.__sfp:                               #        0x7b340  0      
  pushq %r13                          #  1     0x7b340  3      
  movl %edi, %r13d                    #  2     0x7b343  3      
  pushq %r12                          #  3     0x7b346  3      
  movl 0xffa813c(%rip), %r12d         #  4     0x7b349  7      
  pushq %rbx                          #  5     0x7b350  2      
  testq %r12, %r12                    #  6     0x7b352  3      
  je .L_7b380                         #  7     0x7b355  6      
  movl %r12d, %r12d                   #  8     0x7b35b  3      
  movl 0x38(%r15,%r12,1), %edx        #  9     0x7b35e  5      
  testl %edx, %edx                    #  10    0x7b363  2      
  xchgw %ax, %ax                      #  11    0x7b365  3      
  je .L_7b540                         #  12    0x7b368  6      
  nop                                 #  13    0x7b36e  1      
  nop                                 #  14    0x7b36f  1      
.L_7b380:                             #        0x7b370  0      
  addl $0x2e0, %r12d                  #  15    0x7b370  7      
  nop                                 #  16    0x7b377  1      
  nop                                 #  17    0x7b378  1      
  callq .__sfp_lock_acquire           #  18    0x7b379  5      
.L_7b3a0:                             #        0x7b37e  0      
  movl %r12d, %r12d                   #  19    0x7b37e  3      
  movl 0x4(%r15,%r12,1), %eax         #  20    0x7b381  5      
  movl %r12d, %r12d                   #  21    0x7b386  3      
  movl 0x8(%r15,%r12,1), %ebx         #  22    0x7b389  5      
  subl $0x1, %eax                     #  23    0x7b38e  3      
  jns .L_7b3e0                        #  24    0x7b391  6      
  jmpq .L_7b500                       #  25    0x7b397  5      
  nop                                 #  26    0x7b39c  1      
.L_7b3c0:                             #        0x7b39d  0      
  subl $0x1, %eax                     #  27    0x7b39d  3      
  js .L_7b500                         #  28    0x7b3a0  6      
  subl $0xffffff80, %ebx              #  29    0x7b3a6  6      
  nop                                 #  30    0x7b3ac  1      
  nop                                 #  31    0x7b3ad  1      
.L_7b3e0:                             #        0x7b3ae  0      
  movl %ebx, %ebx                     #  32    0x7b3ae  2      
  cmpw $0x0, 0xc(%r15,%rbx,1)         #  33    0x7b3b0  7      
  jne .L_7b3c0                        #  34    0x7b3b7  6      
  leal 0x5c(%rbx), %edi               #  35    0x7b3bd  3      
  movl %ebx, %ebx                     #  36    0x7b3c0  2      
  movw $0xffff, 0xe(%r15,%rbx,1)      #  37    0x7b3c2  8      
  nop                                 #  38    0x7b3ca  1      
  movl %ebx, %ebx                     #  39    0x7b3cb  2      
  movw $0x1, 0xc(%r15,%rbx,1)         #  40    0x7b3cd  8      
  movl %ebx, %ebx                     #  41    0x7b3d5  2      
  movl $0x0, 0x78(%r15,%rbx,1)        #  42    0x7b3d7  9      
  nop                                 #  43    0x7b3e0  1      
  callq .__local_lock_init_recursive  #  44    0x7b3e1  5      
  nop                                 #  45    0x7b3e6  1      
  nop                                 #  46    0x7b3e7  1      
  callq .__sfp_lock_release           #  47    0x7b3e8  5      
  leal 0x70(%rbx), %edi               #  48    0x7b3ed  3      
  movl %ebx, %ebx                     #  49    0x7b3f0  2      
  movl $0x0, (%r15,%rbx,1)            #  50    0x7b3f2  8      
  movl %ebx, %ebx                     #  51    0x7b3fa  2      
  movl $0x0, 0x8(%r15,%rbx,1)         #  52    0x7b3fc  9      
  nop                                 #  53    0x7b405  1      
  movl %ebx, %ebx                     #  54    0x7b406  2      
  movl $0x0, 0x4(%r15,%rbx,1)         #  55    0x7b408  9      
  movl %ebx, %ebx                     #  56    0x7b411  2      
  movl $0x0, 0x10(%r15,%rbx,1)        #  57    0x7b413  9      
  movl $0x8, %edx                     #  58    0x7b41c  5      
  nop                                 #  59    0x7b421  1      
  movl %ebx, %ebx                     #  60    0x7b422  2      
  movl $0x0, 0x14(%r15,%rbx,1)        #  61    0x7b424  9      
  movl %ebx, %ebx                     #  62    0x7b42d  2      
  movl $0x0, 0x18(%r15,%rbx,1)        #  63    0x7b42f  9      
  xorl %esi, %esi                     #  64    0x7b438  2      
  nop                                 #  65    0x7b43a  1      
  callq .memset                       #  66    0x7b43b  5      
  movl %ebx, %ebx                     #  67    0x7b440  2      
  movl $0x0, 0x30(%r15,%rbx,1)        #  68    0x7b442  9      
  movl %ebx, %ebx                     #  69    0x7b44b  2      
  movl $0x0, 0x34(%r15,%rbx,1)        #  70    0x7b44d  9      
  nop                                 #  71    0x7b456  1      
  movl %ebx, %ebx                     #  72    0x7b457  2      
  movl $0x0, 0x44(%r15,%rbx,1)        #  73    0x7b459  9      
  movl %ebx, %ebx                     #  74    0x7b462  2      
  movl $0x0, 0x48(%r15,%rbx,1)        #  75    0x7b464  9      
  nop                                 #  76    0x7b46d  1      
.L_7b4e0:                             #        0x7b46e  0      
  movl %ebx, %eax                     #  77    0x7b46e  2      
  popq %rbx                           #  78    0x7b470  2      
  popq %r12                           #  79    0x7b472  3      
  popq %r13                           #  80    0x7b475  3      
  popq %r11                           #  81    0x7b478  3      
  andl $0xffffffe0, %r11d             #  82    0x7b47b  7      
  addq %r15, %r11                     #  83    0x7b482  3      
  jmpq %r11                           #  84    0x7b485  3      
  nop                                 #  85    0x7b488  1      
.L_7b500:                             #        0x7b489  0      
  movl %r12d, %r12d                   #  86    0x7b489  3      
  movl (%r15,%r12,1), %eax            #  87    0x7b48c  4      
  testq %rax, %rax                    #  88    0x7b490  3      
  je .L_7b580                         #  89    0x7b493  6      
  nop                                 #  90    0x7b499  1      
  nop                                 #  91    0x7b49a  1      
.L_7b520:                             #        0x7b49b  0      
  movq %rax, %r12                     #  92    0x7b49b  3      
  jmpq .L_7b3a0                       #  93    0x7b49e  5      
  nop                                 #  94    0x7b4a3  1      
  nop                                 #  95    0x7b4a4  1      
.L_7b540:                             #        0x7b4a5  0      
  movl %r12d, %edi                    #  96    0x7b4a5  3      
  nop                                 #  97    0x7b4a8  1      
  nop                                 #  98    0x7b4a9  1      
  callq .__sinit                      #  99    0x7b4aa  5      
  jmpq .L_7b380                       #  100   0x7b4af  5      
  nop                                 #  101   0x7b4b4  1      
  nop                                 #  102   0x7b4b5  1      
.L_7b580:                             #        0x7b4b6  0      
  movl $0x4, %esi                     #  103   0x7b4b6  5      
  movl %r13d, %edi                    #  104   0x7b4bb  3      
  nop                                 #  105   0x7b4be  1      
  nop                                 #  106   0x7b4bf  1      
  callq .__sfmoreglue                 #  107   0x7b4c0  5      
  movl %eax, %eax                     #  108   0x7b4c5  2      
  testq %rax, %rax                    #  109   0x7b4c7  3      
  movl %r12d, %r12d                   #  110   0x7b4ca  3      
  movl %eax, (%r15,%r12,1)            #  111   0x7b4cd  4      
  jne .L_7b520                        #  112   0x7b4d1  6      
  nop                                 #  113   0x7b4d7  1      
  callq .__sfp_lock_release           #  114   0x7b4d8  5      
  xorl %ebx, %ebx                     #  115   0x7b4dd  2      
  movl %r13d, %r13d                   #  116   0x7b4df  3      
  movl $0xc, (%r15,%r13,1)            #  117   0x7b4e2  8      
  jmpq .L_7b4e0                       #  118   0x7b4ea  5      
  nop                                 #  119   0x7b4ef  1      
  nop                                 #  120   0x7b4f0  1      
  nop                                 #  121   0x7b4f1  1      
  nop                                 #  122   0x7b4f2  1      
  nop                                 #  123   0x7b4f3  1      
  nop                                 #  124   0x7b4f4  1      
  nop                                 #  125   0x7b4f5  1      
  nop                                 #  126   0x7b4f6  1      
  nop                                 #  127   0x7b4f7  1      
  nop                                 #  128   0x7b4f8  1      
  nop                                 #  129   0x7b4f9  1      
  nop                                 #  130   0x7b4fa  1      
  nop                                 #  131   0x7b4fb  1      
  nop                                 #  132   0x7b4fc  1      
                                                               
.size __sfp, .-__sfp

