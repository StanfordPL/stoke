  .text
  .globl __sfp
  .type __sfp, @function

#! file-offset 0x7b320
#! rip-offset  0x7b320
#! capacity    672 bytes

# Text                                #  Line  RIP      Bytes  
.__sfp:                               #        0x7b320  0      
  pushq %r13                          #  1     0x7b320  3      
  movl %edi, %r13d                    #  2     0x7b323  3      
  pushq %r12                          #  3     0x7b326  3      
  movl 0xffa815c(%rip), %r12d         #  4     0x7b329  7      
  pushq %rbx                          #  5     0x7b330  2      
  testq %r12, %r12                    #  6     0x7b332  3      
  je .L_7b360                         #  7     0x7b335  6      
  movl %r12d, %r12d                   #  8     0x7b33b  3      
  movl 0x38(%r15,%r12,1), %edx        #  9     0x7b33e  5      
  testl %edx, %edx                    #  10    0x7b343  2      
  xchgw %ax, %ax                      #  11    0x7b345  3      
  je .L_7b520                         #  12    0x7b348  6      
  nop                                 #  13    0x7b34e  1      
  nop                                 #  14    0x7b34f  1      
.L_7b360:                             #        0x7b350  0      
  addl $0x2e0, %r12d                  #  15    0x7b350  7      
  nop                                 #  16    0x7b357  1      
  nop                                 #  17    0x7b358  1      
  callq .__sfp_lock_acquire           #  18    0x7b359  5      
.L_7b380:                             #        0x7b35e  0      
  movl %r12d, %r12d                   #  19    0x7b35e  3      
  movl 0x4(%r15,%r12,1), %eax         #  20    0x7b361  5      
  movl %r12d, %r12d                   #  21    0x7b366  3      
  movl 0x8(%r15,%r12,1), %ebx         #  22    0x7b369  5      
  subl $0x1, %eax                     #  23    0x7b36e  3      
  jns .L_7b3c0                        #  24    0x7b371  6      
  jmpq .L_7b4e0                       #  25    0x7b377  5      
  nop                                 #  26    0x7b37c  1      
.L_7b3a0:                             #        0x7b37d  0      
  subl $0x1, %eax                     #  27    0x7b37d  3      
  js .L_7b4e0                         #  28    0x7b380  6      
  subl $0xffffff80, %ebx              #  29    0x7b386  6      
  nop                                 #  30    0x7b38c  1      
  nop                                 #  31    0x7b38d  1      
.L_7b3c0:                             #        0x7b38e  0      
  movl %ebx, %ebx                     #  32    0x7b38e  2      
  cmpw $0x0, 0xc(%r15,%rbx,1)         #  33    0x7b390  7      
  jne .L_7b3a0                        #  34    0x7b397  6      
  leal 0x5c(%rbx), %edi               #  35    0x7b39d  3      
  movl %ebx, %ebx                     #  36    0x7b3a0  2      
  movw $0xffff, 0xe(%r15,%rbx,1)      #  37    0x7b3a2  8      
  nop                                 #  38    0x7b3aa  1      
  movl %ebx, %ebx                     #  39    0x7b3ab  2      
  movw $0x1, 0xc(%r15,%rbx,1)         #  40    0x7b3ad  8      
  movl %ebx, %ebx                     #  41    0x7b3b5  2      
  movl $0x0, 0x78(%r15,%rbx,1)        #  42    0x7b3b7  9      
  nop                                 #  43    0x7b3c0  1      
  callq .__local_lock_init_recursive  #  44    0x7b3c1  5      
  nop                                 #  45    0x7b3c6  1      
  nop                                 #  46    0x7b3c7  1      
  callq .__sfp_lock_release           #  47    0x7b3c8  5      
  leal 0x70(%rbx), %edi               #  48    0x7b3cd  3      
  movl %ebx, %ebx                     #  49    0x7b3d0  2      
  movl $0x0, (%r15,%rbx,1)            #  50    0x7b3d2  8      
  movl %ebx, %ebx                     #  51    0x7b3da  2      
  movl $0x0, 0x8(%r15,%rbx,1)         #  52    0x7b3dc  9      
  nop                                 #  53    0x7b3e5  1      
  movl %ebx, %ebx                     #  54    0x7b3e6  2      
  movl $0x0, 0x4(%r15,%rbx,1)         #  55    0x7b3e8  9      
  movl %ebx, %ebx                     #  56    0x7b3f1  2      
  movl $0x0, 0x10(%r15,%rbx,1)        #  57    0x7b3f3  9      
  movl $0x8, %edx                     #  58    0x7b3fc  5      
  nop                                 #  59    0x7b401  1      
  movl %ebx, %ebx                     #  60    0x7b402  2      
  movl $0x0, 0x14(%r15,%rbx,1)        #  61    0x7b404  9      
  movl %ebx, %ebx                     #  62    0x7b40d  2      
  movl $0x0, 0x18(%r15,%rbx,1)        #  63    0x7b40f  9      
  xorl %esi, %esi                     #  64    0x7b418  2      
  nop                                 #  65    0x7b41a  1      
  callq .memset                       #  66    0x7b41b  5      
  movl %ebx, %ebx                     #  67    0x7b420  2      
  movl $0x0, 0x30(%r15,%rbx,1)        #  68    0x7b422  9      
  movl %ebx, %ebx                     #  69    0x7b42b  2      
  movl $0x0, 0x34(%r15,%rbx,1)        #  70    0x7b42d  9      
  nop                                 #  71    0x7b436  1      
  movl %ebx, %ebx                     #  72    0x7b437  2      
  movl $0x0, 0x44(%r15,%rbx,1)        #  73    0x7b439  9      
  movl %ebx, %ebx                     #  74    0x7b442  2      
  movl $0x0, 0x48(%r15,%rbx,1)        #  75    0x7b444  9      
  nop                                 #  76    0x7b44d  1      
.L_7b4c0:                             #        0x7b44e  0      
  movl %ebx, %eax                     #  77    0x7b44e  2      
  popq %rbx                           #  78    0x7b450  2      
  popq %r12                           #  79    0x7b452  3      
  popq %r13                           #  80    0x7b455  3      
  popq %r11                           #  81    0x7b458  3      
  andl $0xffffffe0, %r11d             #  82    0x7b45b  7      
  addq %r15, %r11                     #  83    0x7b462  3      
  jmpq %r11                           #  84    0x7b465  3      
  nop                                 #  85    0x7b468  1      
.L_7b4e0:                             #        0x7b469  0      
  movl %r12d, %r12d                   #  86    0x7b469  3      
  movl (%r15,%r12,1), %eax            #  87    0x7b46c  4      
  testq %rax, %rax                    #  88    0x7b470  3      
  je .L_7b560                         #  89    0x7b473  6      
  nop                                 #  90    0x7b479  1      
  nop                                 #  91    0x7b47a  1      
.L_7b500:                             #        0x7b47b  0      
  movq %rax, %r12                     #  92    0x7b47b  3      
  jmpq .L_7b380                       #  93    0x7b47e  5      
  nop                                 #  94    0x7b483  1      
  nop                                 #  95    0x7b484  1      
.L_7b520:                             #        0x7b485  0      
  movl %r12d, %edi                    #  96    0x7b485  3      
  nop                                 #  97    0x7b488  1      
  nop                                 #  98    0x7b489  1      
  callq .__sinit                      #  99    0x7b48a  5      
  jmpq .L_7b360                       #  100   0x7b48f  5      
  nop                                 #  101   0x7b494  1      
  nop                                 #  102   0x7b495  1      
.L_7b560:                             #        0x7b496  0      
  movl $0x4, %esi                     #  103   0x7b496  5      
  movl %r13d, %edi                    #  104   0x7b49b  3      
  nop                                 #  105   0x7b49e  1      
  nop                                 #  106   0x7b49f  1      
  callq .__sfmoreglue                 #  107   0x7b4a0  5      
  movl %eax, %eax                     #  108   0x7b4a5  2      
  testq %rax, %rax                    #  109   0x7b4a7  3      
  movl %r12d, %r12d                   #  110   0x7b4aa  3      
  movl %eax, (%r15,%r12,1)            #  111   0x7b4ad  4      
  jne .L_7b500                        #  112   0x7b4b1  6      
  nop                                 #  113   0x7b4b7  1      
  callq .__sfp_lock_release           #  114   0x7b4b8  5      
  xorl %ebx, %ebx                     #  115   0x7b4bd  2      
  movl %r13d, %r13d                   #  116   0x7b4bf  3      
  movl $0xc, (%r15,%r13,1)            #  117   0x7b4c2  8      
  jmpq .L_7b4c0                       #  118   0x7b4ca  5      
  nop                                 #  119   0x7b4cf  1      
  nop                                 #  120   0x7b4d0  1      
  nop                                 #  121   0x7b4d1  1      
  nop                                 #  122   0x7b4d2  1      
  nop                                 #  123   0x7b4d3  1      
  nop                                 #  124   0x7b4d4  1      
  nop                                 #  125   0x7b4d5  1      
  nop                                 #  126   0x7b4d6  1      
  nop                                 #  127   0x7b4d7  1      
  nop                                 #  128   0x7b4d8  1      
  nop                                 #  129   0x7b4d9  1      
  nop                                 #  130   0x7b4da  1      
  nop                                 #  131   0x7b4db  1      
  nop                                 #  132   0x7b4dc  1      
                                                               
.size __sfp, .-__sfp

