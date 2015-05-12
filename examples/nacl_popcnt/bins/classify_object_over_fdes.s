  .text
  .globl classify_object_over_fdes
  .type classify_object_over_fdes, @function

#! file-offset 0x5e820
#! rip-offset  0x5e820
#! capacity    576 bytes

# Text                                 #  Line  RIP      Bytes  
.classify_object_over_fdes:            #        0x5e820  0      
  pushq %r14                           #  1     0x5e820  3      
  pushq %r13                           #  2     0x5e823  3      
  movl %edi, %r13d                     #  3     0x5e826  3      
  pushq %r12                           #  4     0x5e829  3      
  pushq %rbx                           #  5     0x5e82c  2      
  movl %esi, %ebx                      #  6     0x5e82e  2      
  subl $0x38, %esp                     #  7     0x5e830  3      
  addq %r15, %rsp                      #  8     0x5e833  3      
  movl %ebx, %ebx                      #  9     0x5e836  2      
  movl (%r15,%rbx,1), %esi             #  10    0x5e838  4      
  movl $0x0, 0x14(%rsp)                #  11    0x5e83c  8      
  testl %esi, %esi                     #  12    0x5e844  2      
  je .L_5ea00                          #  13    0x5e846  6      
  leal 0x2c(%rsp), %eax                #  14    0x5e84c  4      
  movl $0x0, 0xc(%rsp)                 #  15    0x5e850  8      
  movl $0x0, 0x8(%rsp)                 #  16    0x5e858  8      
  xorl %edx, %edx                      #  17    0x5e860  2      
  xchgw %ax, %ax                       #  18    0x5e862  3      
  movq %rax, 0x18(%rsp)                #  19    0x5e865  5      
  jmpq .L_5e8c0                        #  20    0x5e86a  5      
  nop                                  #  21    0x5e86f  1      
  nop                                  #  22    0x5e870  1      
.L_5e880:                              #        0x5e871  0      
  addl $0x1, 0x14(%rsp)                #  23    0x5e871  5      
  movl %eax, %eax                      #  24    0x5e876  2      
  movl %r13d, %r13d                    #  25    0x5e878  3      
  cmpl %eax, (%r15,%r13,1)             #  26    0x5e87b  4      
  jbe .L_5e9e0                         #  27    0x5e87f  6      
  movl %r13d, %r13d                    #  28    0x5e885  3      
  movl %eax, (%r15,%r13,1)             #  29    0x5e888  4      
  movq %r12, %rdx                      #  30    0x5e88c  3      
  xchgw %ax, %ax                       #  31    0x5e88f  3      
.L_5e8a0:                              #        0x5e892  0      
  movl %ebx, %ebx                      #  32    0x5e892  2      
  movl (%r15,%rbx,1), %eax             #  33    0x5e894  4      
  leal 0x4(%rax,%rbx,1), %ebx          #  34    0x5e898  4      
  movl %ebx, %ebx                      #  35    0x5e89c  2      
  movl (%r15,%rbx,1), %ecx             #  36    0x5e89e  4      
  testl %ecx, %ecx                     #  37    0x5e8a2  2      
  je .L_5ea00                          #  38    0x5e8a4  6      
  nop                                  #  39    0x5e8aa  1      
.L_5e8c0:                              #        0x5e8ab  0      
  movl %ebx, %ebx                      #  40    0x5e8ab  2      
  movl 0x4(%r15,%rbx,1), %r12d         #  41    0x5e8ad  5      
  testl %r12d, %r12d                   #  42    0x5e8b2  3      
  je .L_5e8a0                          #  43    0x5e8b5  6      
  negl %r12d                           #  44    0x5e8bb  3      
  leal 0x4(%r12,%rbx,1), %r12d         #  45    0x5e8be  5      
  cmpl %r12d, %edx                     #  46    0x5e8c3  3      
  je .L_5ea20                          #  47    0x5e8c6  6      
  movl %r12d, %edi                     #  48    0x5e8cc  3      
  nop                                  #  49    0x5e8cf  1      
  nop                                  #  50    0x5e8d0  1      
  callq .get_cie_encoding              #  51    0x5e8d1  5      
  movzbl %al, %r14d                    #  52    0x5e8d6  4      
  movl %r13d, %esi                     #  53    0x5e8da  3      
  movl %eax, 0x8(%rsp)                 #  54    0x5e8dd  4      
  movl %r14d, %edi                     #  55    0x5e8e1  3      
  movb %al, 0x13(%rsp)                 #  56    0x5e8e4  4      
  nop                                  #  57    0x5e8e8  1      
  callq .base_from_object              #  58    0x5e8e9  5      
  movl %eax, 0xc(%rsp)                 #  59    0x5e8ee  4      
  movl %r13d, %r13d                    #  60    0x5e8f2  3      
  movzwl 0x10(%r15,%r13,1), %eax       #  61    0x5e8f5  6      
  movl %eax, %edx                      #  62    0x5e8fb  2      
  andw $0x7f8, %dx                     #  63    0x5e8fd  5      
  cmpw $0x7f8, %dx                     #  64    0x5e902  5      
  je .L_5ea40                          #  65    0x5e907  6      
  nop                                  #  66    0x5e90d  1      
  shrw $0x3, %ax                       #  67    0x5e90e  4      
  movzbl %al, %eax                     #  68    0x5e912  3      
  cmpl %eax, 0x8(%rsp)                 #  69    0x5e915  4      
  je .L_5e960                          #  70    0x5e919  6      
  movl %r13d, %r13d                    #  71    0x5e91f  3      
  orb $0x4, 0x10(%r15,%r13,1)          #  72    0x5e922  6      
  nop                                  #  73    0x5e928  1      
.L_5e960:                              #        0x5e929  0      
  movl 0x18(%rsp), %ecx                #  74    0x5e929  4      
  movl 0xc(%rsp), %esi                 #  75    0x5e92d  4      
  leal 0x8(%rbx), %edx                 #  76    0x5e931  3      
  movl %r14d, %edi                     #  77    0x5e934  3      
  nop                                  #  78    0x5e937  1      
  callq .read_encoded_value_with_base  #  79    0x5e938  5      
  movl %r14d, %edi                     #  80    0x5e93d  3      
  nop                                  #  81    0x5e940  1      
  nop                                  #  82    0x5e941  1      
  callq .size_of_encoded_value         #  83    0x5e942  5      
  cmpl $0x3, %eax                      #  84    0x5e947  3      
  movl $0xffffffff, %edx               #  85    0x5e94a  5      
  ja .L_5e9c0                          #  86    0x5e94f  6      
  leal (,%rax,8), %ecx                 #  87    0x5e955  7      
  movl $0x1, %edx                      #  88    0x5e95c  5      
  shll %cl, %edx                       #  89    0x5e961  2      
  subl $0x1, %edx                      #  90    0x5e963  3      
  nop                                  #  91    0x5e966  1      
.L_5e9c0:                              #        0x5e967  0      
  movl 0x2c(%rsp), %eax                #  92    0x5e967  4      
  testl %eax, %edx                     #  93    0x5e96b  2      
  jne .L_5e880                         #  94    0x5e96d  6      
  nop                                  #  95    0x5e973  1      
  nop                                  #  96    0x5e974  1      
.L_5e9e0:                              #        0x5e975  0      
  movl %ebx, %ebx                      #  97    0x5e975  2      
  movl (%r15,%rbx,1), %eax             #  98    0x5e977  4      
  movq %r12, %rdx                      #  99    0x5e97b  3      
  leal 0x4(%rax,%rbx,1), %ebx          #  100   0x5e97e  4      
  movl %ebx, %ebx                      #  101   0x5e982  2      
  movl (%r15,%rbx,1), %ecx             #  102   0x5e984  4      
  testl %ecx, %ecx                     #  103   0x5e988  2      
  jne .L_5e8c0                         #  104   0x5e98a  6      
  nop                                  #  105   0x5e990  1      
.L_5ea00:                              #        0x5e991  0      
  movl 0x14(%rsp), %eax                #  106   0x5e991  4      
  addl $0x38, %esp                     #  107   0x5e995  3      
  addq %r15, %rsp                      #  108   0x5e998  3      
  popq %rbx                            #  109   0x5e99b  2      
  popq %r12                            #  110   0x5e99d  3      
  popq %r13                            #  111   0x5e9a0  3      
  popq %r14                            #  112   0x5e9a3  3      
  popq %r11                            #  113   0x5e9a6  3      
  andl $0xffffffe0, %r11d              #  114   0x5e9a9  7      
  addq %r15, %r11                      #  115   0x5e9b0  3      
  jmpq %r11                            #  116   0x5e9b3  3      
  nop                                  #  117   0x5e9b6  1      
.L_5ea20:                              #        0x5e9b7  0      
  movzbl 0x8(%rsp), %r14d              #  118   0x5e9b7  6      
  jmpq .L_5e960                        #  119   0x5e9bd  5      
  nop                                  #  120   0x5e9c2  1      
  nop                                  #  121   0x5e9c3  1      
.L_5ea40:                              #        0x5e9c4  0      
  movzbl 0x13(%rsp), %edx              #  122   0x5e9c4  5      
  andw $0xf807, %ax                    #  123   0x5e9c9  4      
  shll $0x3, %edx                      #  124   0x5e9cd  3      
  orl %edx, %eax                       #  125   0x5e9d0  2      
  movl %r13d, %r13d                    #  126   0x5e9d2  3      
  movw %ax, 0x10(%r15,%r13,1)          #  127   0x5e9d5  6      
  jmpq .L_5e960                        #  128   0x5e9db  5      
  nop                                  #  129   0x5e9e0  1      
                                                                
.size classify_object_over_fdes, .-classify_object_over_fdes

