  .text
  .globl read_encoded_value_with_base
  .type read_encoded_value_with_base, @function

#! file-offset 0x5e3c0
#! rip-offset  0x5e3c0
#! capacity    608 bytes

# Text                          #  Line  RIP      Bytes  
.read_encoded_value_with_base:  #        0x5e3c0  0      
  pushq %r12                    #  1     0x5e3c0  3      
  movl %edx, %eax               #  2     0x5e3c3  2      
  movl %ecx, %r10d              #  3     0x5e3c5  3      
  pushq %rbx                    #  4     0x5e3c8  2      
  subl $0x8, %esp               #  5     0x5e3ca  3      
  addq %r15, %rsp               #  6     0x5e3cd  3      
  cmpb $0x50, %dil              #  7     0x5e3d0  4      
  je .L_5e5e0                   #  8     0x5e3d4  6      
  movzbl %dil, %r9d             #  9     0x5e3da  4      
  movq %rax, %rbx               #  10    0x5e3de  3      
  nop                           #  11    0x5e3e1  1      
  movl %r9d, %edx               #  12    0x5e3e2  3      
  andl $0xf, %edx               #  13    0x5e3e5  3      
  cmpl $0xc, %edx               #  14    0x5e3e8  3      
  jbe .L_5e420                  #  15    0x5e3eb  6      
  nop                           #  16    0x5e3f1  1      
  nop                           #  17    0x5e3f2  1      
  nop                           #  18    0x5e3f3  1      
  nop                           #  19    0x5e3f4  1      
  callq .abort                  #  20    0x5e3f5  5      
.L_5e420:                       #        0x5e3fa  0      
  leal 0xffc4ee6(%rip), %ecx    #  21    0x5e3fa  6      
  movl %edx, %edx               #  22    0x5e400  2      
  leaq (%rcx,%rdx,4), %rdx      #  23    0x5e402  4      
  movl %edx, %edx               #  24    0x5e406  2      
  movslq (%r15,%rdx,1), %rdx    #  25    0x5e408  4      
  leaq (%rdx,%rcx,1), %rcx      #  26    0x5e40c  4      
  andl $0xffffffe0, %ecx        #  27    0x5e410  6      
  addq %r15, %rcx               #  28    0x5e416  3      
  jmpq %rcx                     #  29    0x5e419  2      
  xchgw %ax, %ax                #  30    0x5e41b  3      
  movl %eax, %eax               #  31    0x5e41e  2      
  movl (%r15,%rax,1), %edx      #  32    0x5e420  4      
  addl $0x4, %eax               #  33    0x5e424  3      
  nop                           #  34    0x5e427  1      
  nop                           #  35    0x5e428  1      
.L_5e460:                       #        0x5e429  0      
  testl %edx, %edx              #  36    0x5e429  2      
  je .L_5e480                   #  37    0x5e42b  6      
  andl $0x70, %r9d              #  38    0x5e431  4      
  cmpl $0x10, %r9d              #  39    0x5e435  4      
  cmovel %ebx, %esi             #  40    0x5e439  3      
  addl %esi, %edx               #  41    0x5e43c  2      
  testb %dil, %dil              #  42    0x5e43e  3      
  jns .L_5e480                  #  43    0x5e441  6      
  movl %edx, %edx               #  44    0x5e447  2      
  movl %edx, %edx               #  45    0x5e449  2      
  movl (%r15,%rdx,1), %edx      #  46    0x5e44b  4      
  xchgw %ax, %ax                #  47    0x5e44f  3      
.L_5e480:                       #        0x5e452  0      
  movl %r10d, %r10d             #  48    0x5e452  3      
  movl %edx, (%r15,%r10,1)      #  49    0x5e455  4      
  addl $0x8, %esp               #  50    0x5e459  3      
  addq %r15, %rsp               #  51    0x5e45c  3      
  popq %rbx                     #  52    0x5e45f  2      
  popq %r12                     #  53    0x5e461  3      
  popq %r11                     #  54    0x5e464  3      
  andl $0xffffffe0, %r11d       #  55    0x5e467  7      
  addq %r15, %r11               #  56    0x5e46e  3      
  jmpq %r11                     #  57    0x5e471  3      
  nop                           #  58    0x5e474  1      
  movl %eax, %eax               #  59    0x5e475  2      
  movl (%r15,%rax,1), %edx      #  60    0x5e477  4      
  addl $0x8, %eax               #  61    0x5e47b  3      
  jmpq .L_5e460                 #  62    0x5e47e  5      
  nop                           #  63    0x5e483  1      
  nop                           #  64    0x5e484  1      
  xorl %edx, %edx               #  65    0x5e485  2      
  xorl %ecx, %ecx               #  66    0x5e487  2      
  nop                           #  67    0x5e489  1      
  nop                           #  68    0x5e48a  1      
.L_5e4e0:                       #        0x5e48b  0      
  movl %eax, %eax               #  69    0x5e48b  2      
  movzbl (%r15,%rax,1), %r11d   #  70    0x5e48d  5      
  movl $0x7f, %r8d              #  71    0x5e492  6      
  addl $0x1, %eax               #  72    0x5e498  3      
  andl %r11d, %r8d              #  73    0x5e49b  3      
  shll %cl, %r8d                #  74    0x5e49e  3      
  addl $0x7, %ecx               #  75    0x5e4a1  3      
  orl %r8d, %edx                #  76    0x5e4a4  3      
  testb %r11b, %r11b            #  77    0x5e4a7  3      
  nop                           #  78    0x5e4aa  1      
  js .L_5e4e0                   #  79    0x5e4ab  6      
  jmpq .L_5e460                 #  80    0x5e4b1  5      
  nop                           #  81    0x5e4b6  1      
  nop                           #  82    0x5e4b7  1      
  xorl %edx, %edx               #  83    0x5e4b8  2      
  xorl %ecx, %ecx               #  84    0x5e4ba  2      
  nop                           #  85    0x5e4bc  1      
  nop                           #  86    0x5e4bd  1      
.L_5e540:                       #        0x5e4be  0      
  movl %eax, %eax               #  87    0x5e4be  2      
  movzbl (%r15,%rax,1), %r11d   #  88    0x5e4c0  5      
  addl $0x1, %eax               #  89    0x5e4c5  3      
  movzbl %r11b, %r12d           #  90    0x5e4c8  4      
  movl %r12d, %r8d              #  91    0x5e4cc  3      
  andl $0x7f, %r8d              #  92    0x5e4cf  4      
  shll %cl, %r8d                #  93    0x5e4d3  3      
  addl $0x7, %ecx               #  94    0x5e4d6  3      
  orl %r8d, %edx                #  95    0x5e4d9  3      
  xchgw %ax, %ax                #  96    0x5e4dc  3      
  testb %r11b, %r11b            #  97    0x5e4df  3      
  js .L_5e540                   #  98    0x5e4e2  6      
  cmpl $0x1f, %ecx              #  99    0x5e4e8  3      
  ja .L_5e460                   #  100   0x5e4eb  6      
  andl $0x40, %r12d             #  101   0x5e4f1  4      
  je .L_5e460                   #  102   0x5e4f5  6      
  movl $0xffffffff, %r8d        #  103   0x5e4fb  6      
  xchgw %ax, %ax                #  104   0x5e501  3      
  shll %cl, %r8d                #  105   0x5e504  3      
  orl %r8d, %edx                #  106   0x5e507  3      
  jmpq .L_5e460                 #  107   0x5e50a  5      
  nop                           #  108   0x5e50f  1      
  nop                           #  109   0x5e510  1      
  movl %eax, %eax               #  110   0x5e511  2      
  movswl (%r15,%rax,1), %edx    #  111   0x5e513  5      
  addl $0x2, %eax               #  112   0x5e518  3      
  jmpq .L_5e460                 #  113   0x5e51b  5      
  xchgw %ax, %ax                #  114   0x5e520  3      
  nop                           #  115   0x5e523  1      
  movl %eax, %eax               #  116   0x5e524  2      
  movzwl (%r15,%rax,1), %edx    #  117   0x5e526  5      
  addl $0x2, %eax               #  118   0x5e52b  3      
  jmpq .L_5e460                 #  119   0x5e52e  5      
  xchgw %ax, %ax                #  120   0x5e533  3      
  nop                           #  121   0x5e536  1      
.L_5e5e0:                       #        0x5e537  0      
  addl $0x3, %eax               #  122   0x5e537  3      
  andl $0xfffffffc, %eax        #  123   0x5e53a  5      
  movl %eax, %edx               #  124   0x5e53f  2      
  addl $0x4, %eax               #  125   0x5e541  3      
  movl %edx, %edx               #  126   0x5e544  2      
  movl (%r15,%rdx,1), %edx      #  127   0x5e546  4      
  movl %eax, %eax               #  128   0x5e54a  2      
  movl %r10d, %r10d             #  129   0x5e54c  3      
  movl %edx, (%r15,%r10,1)      #  130   0x5e54f  4      
  addl $0x8, %esp               #  131   0x5e553  3      
  addq %r15, %rsp               #  132   0x5e556  3      
  popq %rbx                     #  133   0x5e559  2      
  popq %r12                     #  134   0x5e55b  3      
  popq %r11                     #  135   0x5e55e  3      
  andl $0xffffffe0, %r11d       #  136   0x5e561  7      
  addq %r15, %r11               #  137   0x5e568  3      
  jmpq %r11                     #  138   0x5e56b  3      
  xchgw %ax, %ax                #  139   0x5e56e  3      
  nop                           #  140   0x5e571  1      
                                                         
.size read_encoded_value_with_base, .-read_encoded_value_with_base

