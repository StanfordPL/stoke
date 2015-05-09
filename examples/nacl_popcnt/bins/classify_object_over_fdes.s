  .text
  .globl classify_object_over_fdes
  .type classify_object_over_fdes, @function

#! file-offset 0x5e800
#! rip-offset  0x5e800
#! capacity    576 bytes

# Text                                 #  Line  RIP      Bytes  
.classify_object_over_fdes:            #        0x5e800  0      
  pushq %r14                           #  1     0x5e800  3      
  pushq %r13                           #  2     0x5e803  3      
  movl %edi, %r13d                     #  3     0x5e806  3      
  pushq %r12                           #  4     0x5e809  3      
  pushq %rbx                           #  5     0x5e80c  2      
  movl %esi, %ebx                      #  6     0x5e80e  2      
  subl $0x38, %esp                     #  7     0x5e810  3      
  addq %r15, %rsp                      #  8     0x5e813  3      
  movl %ebx, %ebx                      #  9     0x5e816  2      
  movl (%r15,%rbx,1), %esi             #  10    0x5e818  4      
  movl $0x0, 0x14(%rsp)                #  11    0x5e81c  8      
  testl %esi, %esi                     #  12    0x5e824  2      
  je .L_5e9e0                          #  13    0x5e826  6      
  leal 0x2c(%rsp), %eax                #  14    0x5e82c  4      
  movl $0x0, 0xc(%rsp)                 #  15    0x5e830  8      
  movl $0x0, 0x8(%rsp)                 #  16    0x5e838  8      
  xorl %edx, %edx                      #  17    0x5e840  2      
  xchgw %ax, %ax                       #  18    0x5e842  3      
  movq %rax, 0x18(%rsp)                #  19    0x5e845  5      
  jmpq .L_5e8a0                        #  20    0x5e84a  5      
  nop                                  #  21    0x5e84f  1      
  nop                                  #  22    0x5e850  1      
.L_5e860:                              #        0x5e851  0      
  addl $0x1, 0x14(%rsp)                #  23    0x5e851  5      
  movl %eax, %eax                      #  24    0x5e856  2      
  movl %r13d, %r13d                    #  25    0x5e858  3      
  cmpl %eax, (%r15,%r13,1)             #  26    0x5e85b  4      
  jbe .L_5e9c0                         #  27    0x5e85f  6      
  movl %r13d, %r13d                    #  28    0x5e865  3      
  movl %eax, (%r15,%r13,1)             #  29    0x5e868  4      
  movq %r12, %rdx                      #  30    0x5e86c  3      
  xchgw %ax, %ax                       #  31    0x5e86f  3      
.L_5e880:                              #        0x5e872  0      
  movl %ebx, %ebx                      #  32    0x5e872  2      
  movl (%r15,%rbx,1), %eax             #  33    0x5e874  4      
  leal 0x4(%rax,%rbx,1), %ebx          #  34    0x5e878  4      
  movl %ebx, %ebx                      #  35    0x5e87c  2      
  movl (%r15,%rbx,1), %ecx             #  36    0x5e87e  4      
  testl %ecx, %ecx                     #  37    0x5e882  2      
  je .L_5e9e0                          #  38    0x5e884  6      
  nop                                  #  39    0x5e88a  1      
.L_5e8a0:                              #        0x5e88b  0      
  movl %ebx, %ebx                      #  40    0x5e88b  2      
  movl 0x4(%r15,%rbx,1), %r12d         #  41    0x5e88d  5      
  testl %r12d, %r12d                   #  42    0x5e892  3      
  je .L_5e880                          #  43    0x5e895  6      
  negl %r12d                           #  44    0x5e89b  3      
  leal 0x4(%r12,%rbx,1), %r12d         #  45    0x5e89e  5      
  cmpl %r12d, %edx                     #  46    0x5e8a3  3      
  je .L_5ea00                          #  47    0x5e8a6  6      
  movl %r12d, %edi                     #  48    0x5e8ac  3      
  nop                                  #  49    0x5e8af  1      
  nop                                  #  50    0x5e8b0  1      
  callq .get_cie_encoding              #  51    0x5e8b1  5      
  movzbl %al, %r14d                    #  52    0x5e8b6  4      
  movl %r13d, %esi                     #  53    0x5e8ba  3      
  movl %eax, 0x8(%rsp)                 #  54    0x5e8bd  4      
  movl %r14d, %edi                     #  55    0x5e8c1  3      
  movb %al, 0x13(%rsp)                 #  56    0x5e8c4  4      
  nop                                  #  57    0x5e8c8  1      
  callq .base_from_object              #  58    0x5e8c9  5      
  movl %eax, 0xc(%rsp)                 #  59    0x5e8ce  4      
  movl %r13d, %r13d                    #  60    0x5e8d2  3      
  movzwl 0x10(%r15,%r13,1), %eax       #  61    0x5e8d5  6      
  movl %eax, %edx                      #  62    0x5e8db  2      
  andw $0x7f8, %dx                     #  63    0x5e8dd  5      
  cmpw $0x7f8, %dx                     #  64    0x5e8e2  5      
  je .L_5ea20                          #  65    0x5e8e7  6      
  nop                                  #  66    0x5e8ed  1      
  shrw $0x3, %ax                       #  67    0x5e8ee  4      
  movzbl %al, %eax                     #  68    0x5e8f2  3      
  cmpl %eax, 0x8(%rsp)                 #  69    0x5e8f5  4      
  je .L_5e940                          #  70    0x5e8f9  6      
  movl %r13d, %r13d                    #  71    0x5e8ff  3      
  orb $0x4, 0x10(%r15,%r13,1)          #  72    0x5e902  6      
  nop                                  #  73    0x5e908  1      
.L_5e940:                              #        0x5e909  0      
  movl 0x18(%rsp), %ecx                #  74    0x5e909  4      
  movl 0xc(%rsp), %esi                 #  75    0x5e90d  4      
  leal 0x8(%rbx), %edx                 #  76    0x5e911  3      
  movl %r14d, %edi                     #  77    0x5e914  3      
  nop                                  #  78    0x5e917  1      
  callq .read_encoded_value_with_base  #  79    0x5e918  5      
  movl %r14d, %edi                     #  80    0x5e91d  3      
  nop                                  #  81    0x5e920  1      
  nop                                  #  82    0x5e921  1      
  callq .size_of_encoded_value         #  83    0x5e922  5      
  cmpl $0x3, %eax                      #  84    0x5e927  3      
  movl $0xffffffff, %edx               #  85    0x5e92a  5      
  ja .L_5e9a0                          #  86    0x5e92f  6      
  leal (,%rax,8), %ecx                 #  87    0x5e935  7      
  movl $0x1, %edx                      #  88    0x5e93c  5      
  shll %cl, %edx                       #  89    0x5e941  2      
  subl $0x1, %edx                      #  90    0x5e943  3      
  nop                                  #  91    0x5e946  1      
.L_5e9a0:                              #        0x5e947  0      
  movl 0x2c(%rsp), %eax                #  92    0x5e947  4      
  testl %eax, %edx                     #  93    0x5e94b  2      
  jne .L_5e860                         #  94    0x5e94d  6      
  nop                                  #  95    0x5e953  1      
  nop                                  #  96    0x5e954  1      
.L_5e9c0:                              #        0x5e955  0      
  movl %ebx, %ebx                      #  97    0x5e955  2      
  movl (%r15,%rbx,1), %eax             #  98    0x5e957  4      
  movq %r12, %rdx                      #  99    0x5e95b  3      
  leal 0x4(%rax,%rbx,1), %ebx          #  100   0x5e95e  4      
  movl %ebx, %ebx                      #  101   0x5e962  2      
  movl (%r15,%rbx,1), %ecx             #  102   0x5e964  4      
  testl %ecx, %ecx                     #  103   0x5e968  2      
  jne .L_5e8a0                         #  104   0x5e96a  6      
  nop                                  #  105   0x5e970  1      
.L_5e9e0:                              #        0x5e971  0      
  movl 0x14(%rsp), %eax                #  106   0x5e971  4      
  addl $0x38, %esp                     #  107   0x5e975  3      
  addq %r15, %rsp                      #  108   0x5e978  3      
  popq %rbx                            #  109   0x5e97b  2      
  popq %r12                            #  110   0x5e97d  3      
  popq %r13                            #  111   0x5e980  3      
  popq %r14                            #  112   0x5e983  3      
  popq %r11                            #  113   0x5e986  3      
  andl $0xffffffe0, %r11d              #  114   0x5e989  7      
  addq %r15, %r11                      #  115   0x5e990  3      
  jmpq %r11                            #  116   0x5e993  3      
  nop                                  #  117   0x5e996  1      
.L_5ea00:                              #        0x5e997  0      
  movzbl 0x8(%rsp), %r14d              #  118   0x5e997  6      
  jmpq .L_5e940                        #  119   0x5e99d  5      
  nop                                  #  120   0x5e9a2  1      
  nop                                  #  121   0x5e9a3  1      
.L_5ea20:                              #        0x5e9a4  0      
  movzbl 0x13(%rsp), %edx              #  122   0x5e9a4  5      
  andw $0xf807, %ax                    #  123   0x5e9a9  4      
  shll $0x3, %edx                      #  124   0x5e9ad  3      
  orl %edx, %eax                       #  125   0x5e9b0  2      
  movl %r13d, %r13d                    #  126   0x5e9b2  3      
  movw %ax, 0x10(%r15,%r13,1)          #  127   0x5e9b5  6      
  jmpq .L_5e940                        #  128   0x5e9bb  5      
  nop                                  #  129   0x5e9c0  1      
                                                                
.size classify_object_over_fdes, .-classify_object_over_fdes

