  .text
  .globl read_encoded_value_with_base
  .type read_encoded_value_with_base, @function

#! file-offset 0x5e3e0
#! rip-offset  0x5e3e0
#! capacity    608 bytes

# Text                          #  Line  RIP      Bytes  
.read_encoded_value_with_base:  #        0x5e3e0  0      
  pushq %r12                    #  1     0x5e3e0  3      
  movl %edx, %eax               #  2     0x5e3e3  2      
  movl %ecx, %r10d              #  3     0x5e3e5  3      
  pushq %rbx                    #  4     0x5e3e8  2      
  subl $0x8, %esp               #  5     0x5e3ea  3      
  addq %r15, %rsp               #  6     0x5e3ed  3      
  cmpb $0x50, %dil              #  7     0x5e3f0  4      
  je .L_5e600                   #  8     0x5e3f4  6      
  movzbl %dil, %r9d             #  9     0x5e3fa  4      
  movq %rax, %rbx               #  10    0x5e3fe  3      
  nop                           #  11    0x5e401  1      
  movl %r9d, %edx               #  12    0x5e402  3      
  andl $0xf, %edx               #  13    0x5e405  3      
  cmpl $0xc, %edx               #  14    0x5e408  3      
  jbe .L_5e440                  #  15    0x5e40b  6      
  nop                           #  16    0x5e411  1      
  nop                           #  17    0x5e412  1      
  nop                           #  18    0x5e413  1      
  nop                           #  19    0x5e414  1      
  callq .abort                  #  20    0x5e415  5      
.L_5e440:                       #        0x5e41a  0      
  leal 0xffc4ec6(%rip), %ecx    #  21    0x5e41a  6      
  movl %edx, %edx               #  22    0x5e420  2      
  leaq (%rcx,%rdx,4), %rdx      #  23    0x5e422  4      
  movl %edx, %edx               #  24    0x5e426  2      
  movslq (%r15,%rdx,1), %rdx    #  25    0x5e428  4      
  leaq (%rdx,%rcx,1), %rcx      #  26    0x5e42c  4      
  andl $0xffffffe0, %ecx        #  27    0x5e430  6      
  addq %r15, %rcx               #  28    0x5e436  3      
  jmpq %rcx                     #  29    0x5e439  2      
  xchgw %ax, %ax                #  30    0x5e43b  3      
  movl %eax, %eax               #  31    0x5e43e  2      
  movl (%r15,%rax,1), %edx      #  32    0x5e440  4      
  addl $0x4, %eax               #  33    0x5e444  3      
  nop                           #  34    0x5e447  1      
  nop                           #  35    0x5e448  1      
.L_5e480:                       #        0x5e449  0      
  testl %edx, %edx              #  36    0x5e449  2      
  je .L_5e4a0                   #  37    0x5e44b  6      
  andl $0x70, %r9d              #  38    0x5e451  4      
  cmpl $0x10, %r9d              #  39    0x5e455  4      
  cmovel %ebx, %esi             #  40    0x5e459  3      
  addl %esi, %edx               #  41    0x5e45c  2      
  testb %dil, %dil              #  42    0x5e45e  3      
  jns .L_5e4a0                  #  43    0x5e461  6      
  movl %edx, %edx               #  44    0x5e467  2      
  movl %edx, %edx               #  45    0x5e469  2      
  movl (%r15,%rdx,1), %edx      #  46    0x5e46b  4      
  xchgw %ax, %ax                #  47    0x5e46f  3      
.L_5e4a0:                       #        0x5e472  0      
  movl %r10d, %r10d             #  48    0x5e472  3      
  movl %edx, (%r15,%r10,1)      #  49    0x5e475  4      
  addl $0x8, %esp               #  50    0x5e479  3      
  addq %r15, %rsp               #  51    0x5e47c  3      
  popq %rbx                     #  52    0x5e47f  2      
  popq %r12                     #  53    0x5e481  3      
  popq %r11                     #  54    0x5e484  3      
  andl $0xffffffe0, %r11d       #  55    0x5e487  7      
  addq %r15, %r11               #  56    0x5e48e  3      
  jmpq %r11                     #  57    0x5e491  3      
  nop                           #  58    0x5e494  1      
  movl %eax, %eax               #  59    0x5e495  2      
  movl (%r15,%rax,1), %edx      #  60    0x5e497  4      
  addl $0x8, %eax               #  61    0x5e49b  3      
  jmpq .L_5e480                 #  62    0x5e49e  5      
  nop                           #  63    0x5e4a3  1      
  nop                           #  64    0x5e4a4  1      
  xorl %edx, %edx               #  65    0x5e4a5  2      
  xorl %ecx, %ecx               #  66    0x5e4a7  2      
  nop                           #  67    0x5e4a9  1      
  nop                           #  68    0x5e4aa  1      
.L_5e500:                       #        0x5e4ab  0      
  movl %eax, %eax               #  69    0x5e4ab  2      
  movzbl (%r15,%rax,1), %r11d   #  70    0x5e4ad  5      
  movl $0x7f, %r8d              #  71    0x5e4b2  6      
  addl $0x1, %eax               #  72    0x5e4b8  3      
  andl %r11d, %r8d              #  73    0x5e4bb  3      
  shll %cl, %r8d                #  74    0x5e4be  3      
  addl $0x7, %ecx               #  75    0x5e4c1  3      
  orl %r8d, %edx                #  76    0x5e4c4  3      
  testb %r11b, %r11b            #  77    0x5e4c7  3      
  nop                           #  78    0x5e4ca  1      
  js .L_5e500                   #  79    0x5e4cb  6      
  jmpq .L_5e480                 #  80    0x5e4d1  5      
  nop                           #  81    0x5e4d6  1      
  nop                           #  82    0x5e4d7  1      
  xorl %edx, %edx               #  83    0x5e4d8  2      
  xorl %ecx, %ecx               #  84    0x5e4da  2      
  nop                           #  85    0x5e4dc  1      
  nop                           #  86    0x5e4dd  1      
.L_5e560:                       #        0x5e4de  0      
  movl %eax, %eax               #  87    0x5e4de  2      
  movzbl (%r15,%rax,1), %r11d   #  88    0x5e4e0  5      
  addl $0x1, %eax               #  89    0x5e4e5  3      
  movzbl %r11b, %r12d           #  90    0x5e4e8  4      
  movl %r12d, %r8d              #  91    0x5e4ec  3      
  andl $0x7f, %r8d              #  92    0x5e4ef  4      
  shll %cl, %r8d                #  93    0x5e4f3  3      
  addl $0x7, %ecx               #  94    0x5e4f6  3      
  orl %r8d, %edx                #  95    0x5e4f9  3      
  xchgw %ax, %ax                #  96    0x5e4fc  3      
  testb %r11b, %r11b            #  97    0x5e4ff  3      
  js .L_5e560                   #  98    0x5e502  6      
  cmpl $0x1f, %ecx              #  99    0x5e508  3      
  ja .L_5e480                   #  100   0x5e50b  6      
  andl $0x40, %r12d             #  101   0x5e511  4      
  je .L_5e480                   #  102   0x5e515  6      
  movl $0xffffffff, %r8d        #  103   0x5e51b  6      
  xchgw %ax, %ax                #  104   0x5e521  3      
  shll %cl, %r8d                #  105   0x5e524  3      
  orl %r8d, %edx                #  106   0x5e527  3      
  jmpq .L_5e480                 #  107   0x5e52a  5      
  nop                           #  108   0x5e52f  1      
  nop                           #  109   0x5e530  1      
  movl %eax, %eax               #  110   0x5e531  2      
  movswl (%r15,%rax,1), %edx    #  111   0x5e533  5      
  addl $0x2, %eax               #  112   0x5e538  3      
  jmpq .L_5e480                 #  113   0x5e53b  5      
  xchgw %ax, %ax                #  114   0x5e540  3      
  nop                           #  115   0x5e543  1      
  movl %eax, %eax               #  116   0x5e544  2      
  movzwl (%r15,%rax,1), %edx    #  117   0x5e546  5      
  addl $0x2, %eax               #  118   0x5e54b  3      
  jmpq .L_5e480                 #  119   0x5e54e  5      
  xchgw %ax, %ax                #  120   0x5e553  3      
  nop                           #  121   0x5e556  1      
.L_5e600:                       #        0x5e557  0      
  addl $0x3, %eax               #  122   0x5e557  3      
  andl $0xfffffffc, %eax        #  123   0x5e55a  5      
  movl %eax, %edx               #  124   0x5e55f  2      
  addl $0x4, %eax               #  125   0x5e561  3      
  movl %edx, %edx               #  126   0x5e564  2      
  movl (%r15,%rdx,1), %edx      #  127   0x5e566  4      
  movl %eax, %eax               #  128   0x5e56a  2      
  movl %r10d, %r10d             #  129   0x5e56c  3      
  movl %edx, (%r15,%r10,1)      #  130   0x5e56f  4      
  addl $0x8, %esp               #  131   0x5e573  3      
  addq %r15, %rsp               #  132   0x5e576  3      
  popq %rbx                     #  133   0x5e579  2      
  popq %r12                     #  134   0x5e57b  3      
  popq %r11                     #  135   0x5e57e  3      
  andl $0xffffffe0, %r11d       #  136   0x5e581  7      
  addq %r15, %r11               #  137   0x5e588  3      
  jmpq %r11                     #  138   0x5e58b  3      
  xchgw %ax, %ax                #  139   0x5e58e  3      
  nop                           #  140   0x5e591  1      
                                                         
.size read_encoded_value_with_base, .-read_encoded_value_with_base

