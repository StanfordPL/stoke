  .text
  .globl __d2b
  .type __d2b, @function

#! file-offset 0x7ee00
#! rip-offset  0x7ee00
#! capacity    608 bytes

# Text                             #  Line  RIP      Bytes  
.__d2b:                            #        0x7ee00  0      
  movq %rbx, -0x20(%rsp)           #  1     0x7ee00  5      
  movq %r12, -0x18(%rsp)           #  2     0x7ee05  5      
  movl %edx, %ebx                  #  3     0x7ee0a  2      
  movq %r13, -0x10(%rsp)           #  4     0x7ee0c  5      
  movq %r14, -0x8(%rsp)            #  5     0x7ee11  5      
  subl $0x58, %esp                 #  6     0x7ee16  3      
  addq %r15, %rsp                  #  7     0x7ee19  3      
  nop                              #  8     0x7ee1c  1      
  movsd %xmm0, 0x8(%rsp)           #  9     0x7ee1d  6      
  movq 0x8(%rsp), %rdx             #  10    0x7ee23  5      
  movl %edi, %edi                  #  11    0x7ee28  2      
  movl %esi, %r12d                 #  12    0x7ee2a  3      
  movl $0x1, %esi                  #  13    0x7ee2d  5      
  movq %rdx, 0x18(%rsp)            #  14    0x7ee32  5      
  nop                              #  15    0x7ee37  1      
  callq ._Balloc                   #  16    0x7ee38  5      
  movq 0x18(%rsp), %rdx            #  17    0x7ee3d  5      
  movl %eax, %r13d                 #  18    0x7ee42  3      
  movq %rdx, %rax                  #  19    0x7ee45  3      
  shrq $0x20, %rax                 #  20    0x7ee48  4      
  movl %eax, %ecx                  #  21    0x7ee4c  2      
  andl $0x7fffffff, %eax           #  22    0x7ee4e  5      
  movl %eax, %r14d                 #  23    0x7ee53  3      
  andl $0xfffff, %ecx              #  24    0x7ee56  6      
  nop                              #  25    0x7ee5c  1      
  shrl $0x14, %r14d                #  26    0x7ee5d  4      
  movl %ecx, 0x28(%rsp)            #  27    0x7ee61  4      
  testl %r14d, %r14d               #  28    0x7ee65  3      
  je .L_7ee80                      #  29    0x7ee68  6      
  orl $0x100000, %ecx              #  30    0x7ee6e  6      
  movl %ecx, 0x28(%rsp)            #  31    0x7ee74  4      
  nop                              #  32    0x7ee78  1      
.L_7ee80:                          #        0x7ee79  0      
  shlq $0x20, %rax                 #  33    0x7ee79  4      
  andl $0xffffffff, %edx           #  34    0x7ee7d  6      
  orq %rax, %rdx                   #  35    0x7ee83  3      
  testl %edx, %edx                 #  36    0x7ee86  2      
  je .L_7ef60                      #  37    0x7ee88  6      
  leal 0x2c(%rsp), %edi            #  38    0x7ee8e  4      
  movl %edx, 0x2c(%rsp)            #  39    0x7ee92  4      
  nop                              #  40    0x7ee96  1      
  callq .__lo0bits                 #  41    0x7ee97  5      
  testl %eax, %eax                 #  42    0x7ee9c  2      
  jne .L_7f020                     #  43    0x7ee9e  6      
  movl 0x2c(%rsp), %edx            #  44    0x7eea4  4      
  movl %r13d, %r13d                #  45    0x7eea8  3      
  movl %edx, 0x14(%r15,%r13,1)     #  46    0x7eeab  5      
  movl 0x28(%rsp), %edx            #  47    0x7eeb0  4      
  nop                              #  48    0x7eeb4  1      
.L_7eec0:                          #        0x7eeb5  0      
  cmpl $0x1, %edx                  #  49    0x7eeb5  3      
  movl %r13d, %r13d                #  50    0x7eeb8  3      
  movl %edx, 0x18(%r15,%r13,1)     #  51    0x7eebb  5      
  sbbl %edx, %edx                  #  52    0x7eec0  2      
  addl $0x2, %edx                  #  53    0x7eec2  3      
  testl %r14d, %r14d               #  54    0x7eec5  3      
  movl %r13d, %r13d                #  55    0x7eec8  3      
  movl %edx, 0x10(%r15,%r13,1)     #  56    0x7eecb  5      
  nop                              #  57    0x7eed0  1      
  jne .L_7efc0                     #  58    0x7eed1  6      
  nop                              #  59    0x7eed7  1      
  nop                              #  60    0x7eed8  1      
.L_7ef00:                          #        0x7eed9  0      
  subl $0x432, %eax                #  61    0x7eed9  5      
  movl %edx, 0x18(%rsp)            #  62    0x7eede  4      
  movl %r12d, %r12d                #  63    0x7eee2  3      
  movl %eax, (%r15,%r12,1)         #  64    0x7eee5  4      
  leal 0xc(,%rdx,4), %eax          #  65    0x7eee9  7      
  cltq                             #  66    0x7eef0  2      
  leaq (%r13,%rax,1), %rax         #  67    0x7eef2  5      
  xchgw %ax, %ax                   #  68    0x7eef7  3      
  movl %eax, %eax                  #  69    0x7eefa  2      
  movl 0x4(%r15,%rax,1), %edi      #  70    0x7eefc  5      
  nop                              #  71    0x7ef01  1      
  nop                              #  72    0x7ef02  1      
  callq .__hi0bits                 #  73    0x7ef03  5      
  movl 0x18(%rsp), %edx            #  74    0x7ef08  4      
  shll $0x5, %edx                  #  75    0x7ef0c  3      
  subl %eax, %edx                  #  76    0x7ef0f  2      
  movl %ebx, %ebx                  #  77    0x7ef11  2      
  movl %edx, (%r15,%rbx,1)         #  78    0x7ef13  4      
  jmpq .L_7efe0                    #  79    0x7ef17  5      
  nop                              #  80    0x7ef1c  1      
.L_7ef60:                          #        0x7ef1d  0      
  leal 0x28(%rsp), %edi            #  81    0x7ef1d  4      
  nop                              #  82    0x7ef21  1      
  nop                              #  83    0x7ef22  1      
  callq .__lo0bits                 #  84    0x7ef23  5      
  movl 0x28(%rsp), %edx            #  85    0x7ef28  4      
  addl $0x20, %eax                 #  86    0x7ef2c  3      
  testl %r14d, %r14d               #  87    0x7ef2f  3      
  movl %r13d, %r13d                #  88    0x7ef32  3      
  movl $0x1, 0x10(%r15,%r13,1)     #  89    0x7ef35  9      
  movl %r13d, %r13d                #  90    0x7ef3e  3      
  movl %edx, 0x14(%r15,%r13,1)     #  91    0x7ef41  5      
  xchgw %ax, %ax                   #  92    0x7ef46  3      
  movl $0x1, %edx                  #  93    0x7ef49  5      
  je .L_7ef00                      #  94    0x7ef4e  6      
  nop                              #  95    0x7ef54  1      
  nop                              #  96    0x7ef55  1      
.L_7efc0:                          #        0x7ef56  0      
  leal -0x433(%rax,%r14,1), %r14d  #  97    0x7ef56  8      
  movl $0x35, %edx                 #  98    0x7ef5e  5      
  subl %eax, %edx                  #  99    0x7ef63  2      
  movl %r12d, %r12d                #  100   0x7ef65  3      
  movl %r14d, (%r15,%r12,1)        #  101   0x7ef68  4      
  movl %ebx, %ebx                  #  102   0x7ef6c  2      
  movl %edx, (%r15,%rbx,1)         #  103   0x7ef6e  4      
  nop                              #  104   0x7ef72  1      
.L_7efe0:                          #        0x7ef73  0      
  movl %r13d, %eax                 #  105   0x7ef73  3      
  movq 0x38(%rsp), %rbx            #  106   0x7ef76  5      
  movq 0x40(%rsp), %r12            #  107   0x7ef7b  5      
  movq 0x48(%rsp), %r13            #  108   0x7ef80  5      
  movq 0x50(%rsp), %r14            #  109   0x7ef85  5      
  addl $0x58, %esp                 #  110   0x7ef8a  3      
  addq %r15, %rsp                  #  111   0x7ef8d  3      
  popq %r11                        #  112   0x7ef90  3      
  nop                              #  113   0x7ef93  1      
  andl $0xffffffe0, %r11d          #  114   0x7ef94  7      
  addq %r15, %r11                  #  115   0x7ef9b  3      
  jmpq %r11                        #  116   0x7ef9e  3      
  nop                              #  117   0x7efa1  1      
  nop                              #  118   0x7efa2  1      
.L_7f020:                          #        0x7efa3  0      
  movl 0x28(%rsp), %edx            #  119   0x7efa3  4      
  movl $0x20, %ecx                 #  120   0x7efa7  5      
  subl %eax, %ecx                  #  121   0x7efac  2      
  movl %edx, %esi                  #  122   0x7efae  2      
  shll %cl, %esi                   #  123   0x7efb0  2      
  movl 0x2c(%rsp), %ecx            #  124   0x7efb2  4      
  orl %esi, %ecx                   #  125   0x7efb6  2      
  movl %r13d, %r13d                #  126   0x7efb8  3      
  movl %ecx, 0x14(%r15,%r13,1)     #  127   0x7efbb  5      
  movl %eax, %ecx                  #  128   0x7efc0  2      
  nop                              #  129   0x7efc2  1      
  shrl %cl, %edx                   #  130   0x7efc3  2      
  movl %edx, 0x28(%rsp)            #  131   0x7efc5  4      
  jmpq .L_7eec0                    #  132   0x7efc9  5      
  nop                              #  133   0x7efce  1      
  nop                              #  134   0x7efcf  1      
                                                            
.size __d2b, .-__d2b

