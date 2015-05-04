  .text
  .globl classify_object_over_fdes
  .type classify_object_over_fdes, @function

#! file-offset 0x5e8a0
#! rip-offset  0x5e8a0
#! capacity    576 bytes

# Text                                 #  Line  RIP      Bytes  
.classify_object_over_fdes:            #        0x5e8a0  0      
  pushq %r14                           #  1     0x5e8a0  3      
  pushq %r13                           #  2     0x5e8a3  3      
  movl %edi, %r13d                     #  3     0x5e8a6  3      
  pushq %r12                           #  4     0x5e8a9  3      
  pushq %rbx                           #  5     0x5e8ac  2      
  movl %esi, %ebx                      #  6     0x5e8ae  2      
  subl $0x38, %esp                     #  7     0x5e8b0  3      
  addq %r15, %rsp                      #  8     0x5e8b3  3      
  movl %ebx, %ebx                      #  9     0x5e8b6  2      
  movl (%r15,%rbx,1), %esi             #  10    0x5e8b8  4      
  movl $0x0, 0x14(%rsp)                #  11    0x5e8bc  8      
  testl %esi, %esi                     #  12    0x5e8c4  2      
  je .L_5ea80                          #  13    0x5e8c6  6      
  leal 0x2c(%rsp), %eax                #  14    0x5e8cc  4      
  movl $0x0, 0xc(%rsp)                 #  15    0x5e8d0  8      
  movl $0x0, 0x8(%rsp)                 #  16    0x5e8d8  8      
  xorl %edx, %edx                      #  17    0x5e8e0  2      
  xchgw %ax, %ax                       #  18    0x5e8e2  3      
  movq %rax, 0x18(%rsp)                #  19    0x5e8e5  5      
  jmpq .L_5e940                        #  20    0x5e8ea  5      
  nop                                  #  21    0x5e8ef  1      
  nop                                  #  22    0x5e8f0  1      
.L_5e900:                              #        0x5e8f1  0      
  addl $0x1, 0x14(%rsp)                #  23    0x5e8f1  5      
  movl %eax, %eax                      #  24    0x5e8f6  2      
  movl %r13d, %r13d                    #  25    0x5e8f8  3      
  cmpl %eax, (%r15,%r13,1)             #  26    0x5e8fb  4      
  jbe .L_5ea60                         #  27    0x5e8ff  6      
  movl %r13d, %r13d                    #  28    0x5e905  3      
  movl %eax, (%r15,%r13,1)             #  29    0x5e908  4      
  movq %r12, %rdx                      #  30    0x5e90c  3      
  xchgw %ax, %ax                       #  31    0x5e90f  3      
.L_5e920:                              #        0x5e912  0      
  movl %ebx, %ebx                      #  32    0x5e912  2      
  movl (%r15,%rbx,1), %eax             #  33    0x5e914  4      
  leal 0x4(%rax,%rbx,1), %ebx          #  34    0x5e918  4      
  movl %ebx, %ebx                      #  35    0x5e91c  2      
  movl (%r15,%rbx,1), %ecx             #  36    0x5e91e  4      
  testl %ecx, %ecx                     #  37    0x5e922  2      
  je .L_5ea80                          #  38    0x5e924  6      
  nop                                  #  39    0x5e92a  1      
.L_5e940:                              #        0x5e92b  0      
  movl %ebx, %ebx                      #  40    0x5e92b  2      
  movl 0x4(%r15,%rbx,1), %r12d         #  41    0x5e92d  5      
  testl %r12d, %r12d                   #  42    0x5e932  3      
  je .L_5e920                          #  43    0x5e935  6      
  negl %r12d                           #  44    0x5e93b  3      
  leal 0x4(%r12,%rbx,1), %r12d         #  45    0x5e93e  5      
  cmpl %r12d, %edx                     #  46    0x5e943  3      
  je .L_5eaa0                          #  47    0x5e946  6      
  movl %r12d, %edi                     #  48    0x5e94c  3      
  nop                                  #  49    0x5e94f  1      
  nop                                  #  50    0x5e950  1      
  callq .get_cie_encoding              #  51    0x5e951  5      
  movzbl %al, %r14d                    #  52    0x5e956  4      
  movl %r13d, %esi                     #  53    0x5e95a  3      
  movl %eax, 0x8(%rsp)                 #  54    0x5e95d  4      
  movl %r14d, %edi                     #  55    0x5e961  3      
  movb %al, 0x13(%rsp)                 #  56    0x5e964  4      
  nop                                  #  57    0x5e968  1      
  callq .base_from_object              #  58    0x5e969  5      
  movl %eax, 0xc(%rsp)                 #  59    0x5e96e  4      
  movl %r13d, %r13d                    #  60    0x5e972  3      
  movzwl 0x10(%r15,%r13,1), %eax       #  61    0x5e975  6      
  movl %eax, %edx                      #  62    0x5e97b  2      
  andw $0x7f8, %dx                     #  63    0x5e97d  5      
  cmpw $0x7f8, %dx                     #  64    0x5e982  5      
  je .L_5eac0                          #  65    0x5e987  6      
  nop                                  #  66    0x5e98d  1      
  shrw $0x3, %ax                       #  67    0x5e98e  4      
  movzbl %al, %eax                     #  68    0x5e992  3      
  cmpl %eax, 0x8(%rsp)                 #  69    0x5e995  4      
  je .L_5e9e0                          #  70    0x5e999  6      
  movl %r13d, %r13d                    #  71    0x5e99f  3      
  orb $0x4, 0x10(%r15,%r13,1)          #  72    0x5e9a2  6      
  nop                                  #  73    0x5e9a8  1      
.L_5e9e0:                              #        0x5e9a9  0      
  movl 0x18(%rsp), %ecx                #  74    0x5e9a9  4      
  movl 0xc(%rsp), %esi                 #  75    0x5e9ad  4      
  leal 0x8(%rbx), %edx                 #  76    0x5e9b1  3      
  movl %r14d, %edi                     #  77    0x5e9b4  3      
  nop                                  #  78    0x5e9b7  1      
  callq .read_encoded_value_with_base  #  79    0x5e9b8  5      
  movl %r14d, %edi                     #  80    0x5e9bd  3      
  nop                                  #  81    0x5e9c0  1      
  nop                                  #  82    0x5e9c1  1      
  callq .size_of_encoded_value         #  83    0x5e9c2  5      
  cmpl $0x3, %eax                      #  84    0x5e9c7  3      
  movl $0xffffffff, %edx               #  85    0x5e9ca  5      
  ja .L_5ea40                          #  86    0x5e9cf  6      
  leal (,%rax,8), %ecx                 #  87    0x5e9d5  7      
  movl $0x1, %edx                      #  88    0x5e9dc  5      
  shll %cl, %edx                       #  89    0x5e9e1  2      
  subl $0x1, %edx                      #  90    0x5e9e3  3      
  nop                                  #  91    0x5e9e6  1      
.L_5ea40:                              #        0x5e9e7  0      
  movl 0x2c(%rsp), %eax                #  92    0x5e9e7  4      
  testl %eax, %edx                     #  93    0x5e9eb  2      
  jne .L_5e900                         #  94    0x5e9ed  6      
  nop                                  #  95    0x5e9f3  1      
  nop                                  #  96    0x5e9f4  1      
.L_5ea60:                              #        0x5e9f5  0      
  movl %ebx, %ebx                      #  97    0x5e9f5  2      
  movl (%r15,%rbx,1), %eax             #  98    0x5e9f7  4      
  movq %r12, %rdx                      #  99    0x5e9fb  3      
  leal 0x4(%rax,%rbx,1), %ebx          #  100   0x5e9fe  4      
  movl %ebx, %ebx                      #  101   0x5ea02  2      
  movl (%r15,%rbx,1), %ecx             #  102   0x5ea04  4      
  testl %ecx, %ecx                     #  103   0x5ea08  2      
  jne .L_5e940                         #  104   0x5ea0a  6      
  nop                                  #  105   0x5ea10  1      
.L_5ea80:                              #        0x5ea11  0      
  movl 0x14(%rsp), %eax                #  106   0x5ea11  4      
  addl $0x38, %esp                     #  107   0x5ea15  3      
  addq %r15, %rsp                      #  108   0x5ea18  3      
  popq %rbx                            #  109   0x5ea1b  2      
  popq %r12                            #  110   0x5ea1d  3      
  popq %r13                            #  111   0x5ea20  3      
  popq %r14                            #  112   0x5ea23  3      
  popq %r11                            #  113   0x5ea26  3      
  andl $0xffffffe0, %r11d              #  114   0x5ea29  7      
  addq %r15, %r11                      #  115   0x5ea30  3      
  jmpq %r11                            #  116   0x5ea33  3      
  nop                                  #  117   0x5ea36  1      
.L_5eaa0:                              #        0x5ea37  0      
  movzbl 0x8(%rsp), %r14d              #  118   0x5ea37  6      
  jmpq .L_5e9e0                        #  119   0x5ea3d  5      
  nop                                  #  120   0x5ea42  1      
  nop                                  #  121   0x5ea43  1      
.L_5eac0:                              #        0x5ea44  0      
  movzbl 0x13(%rsp), %edx              #  122   0x5ea44  5      
  andw $0xf807, %ax                    #  123   0x5ea49  4      
  shll $0x3, %edx                      #  124   0x5ea4d  3      
  orl %edx, %eax                       #  125   0x5ea50  2      
  movl %r13d, %r13d                    #  126   0x5ea52  3      
  movw %ax, 0x10(%r15,%r13,1)          #  127   0x5ea55  6      
  jmpq .L_5e9e0                        #  128   0x5ea5b  5      
  nop                                  #  129   0x5ea60  1      
                                                                
.size classify_object_over_fdes, .-classify_object_over_fdes

