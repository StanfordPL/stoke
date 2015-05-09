  .text
  .globl __d2b
  .type __d2b, @function

#! file-offset 0x7ede0
#! rip-offset  0x7ede0
#! capacity    608 bytes

# Text                             #  Line  RIP      Bytes  
.__d2b:                            #        0x7ede0  0      
  movq %rbx, -0x20(%rsp)           #  1     0x7ede0  5      
  movq %r12, -0x18(%rsp)           #  2     0x7ede5  5      
  movl %edx, %ebx                  #  3     0x7edea  2      
  movq %r13, -0x10(%rsp)           #  4     0x7edec  5      
  movq %r14, -0x8(%rsp)            #  5     0x7edf1  5      
  subl $0x58, %esp                 #  6     0x7edf6  3      
  addq %r15, %rsp                  #  7     0x7edf9  3      
  nop                              #  8     0x7edfc  1      
  movsd %xmm0, 0x8(%rsp)           #  9     0x7edfd  6      
  movq 0x8(%rsp), %rdx             #  10    0x7ee03  5      
  movl %edi, %edi                  #  11    0x7ee08  2      
  movl %esi, %r12d                 #  12    0x7ee0a  3      
  movl $0x1, %esi                  #  13    0x7ee0d  5      
  movq %rdx, 0x18(%rsp)            #  14    0x7ee12  5      
  nop                              #  15    0x7ee17  1      
  callq ._Balloc                   #  16    0x7ee18  5      
  movq 0x18(%rsp), %rdx            #  17    0x7ee1d  5      
  movl %eax, %r13d                 #  18    0x7ee22  3      
  movq %rdx, %rax                  #  19    0x7ee25  3      
  shrq $0x20, %rax                 #  20    0x7ee28  4      
  movl %eax, %ecx                  #  21    0x7ee2c  2      
  andl $0x7fffffff, %eax           #  22    0x7ee2e  5      
  movl %eax, %r14d                 #  23    0x7ee33  3      
  andl $0xfffff, %ecx              #  24    0x7ee36  6      
  nop                              #  25    0x7ee3c  1      
  shrl $0x14, %r14d                #  26    0x7ee3d  4      
  movl %ecx, 0x28(%rsp)            #  27    0x7ee41  4      
  testl %r14d, %r14d               #  28    0x7ee45  3      
  je .L_7ee60                      #  29    0x7ee48  6      
  orl $0x100000, %ecx              #  30    0x7ee4e  6      
  movl %ecx, 0x28(%rsp)            #  31    0x7ee54  4      
  nop                              #  32    0x7ee58  1      
.L_7ee60:                          #        0x7ee59  0      
  shlq $0x20, %rax                 #  33    0x7ee59  4      
  andl $0xffffffff, %edx           #  34    0x7ee5d  6      
  orq %rax, %rdx                   #  35    0x7ee63  3      
  testl %edx, %edx                 #  36    0x7ee66  2      
  je .L_7ef40                      #  37    0x7ee68  6      
  leal 0x2c(%rsp), %edi            #  38    0x7ee6e  4      
  movl %edx, 0x2c(%rsp)            #  39    0x7ee72  4      
  nop                              #  40    0x7ee76  1      
  callq .__lo0bits                 #  41    0x7ee77  5      
  testl %eax, %eax                 #  42    0x7ee7c  2      
  jne .L_7f000                     #  43    0x7ee7e  6      
  movl 0x2c(%rsp), %edx            #  44    0x7ee84  4      
  movl %r13d, %r13d                #  45    0x7ee88  3      
  movl %edx, 0x14(%r15,%r13,1)     #  46    0x7ee8b  5      
  movl 0x28(%rsp), %edx            #  47    0x7ee90  4      
  nop                              #  48    0x7ee94  1      
.L_7eea0:                          #        0x7ee95  0      
  cmpl $0x1, %edx                  #  49    0x7ee95  3      
  movl %r13d, %r13d                #  50    0x7ee98  3      
  movl %edx, 0x18(%r15,%r13,1)     #  51    0x7ee9b  5      
  sbbl %edx, %edx                  #  52    0x7eea0  2      
  addl $0x2, %edx                  #  53    0x7eea2  3      
  testl %r14d, %r14d               #  54    0x7eea5  3      
  movl %r13d, %r13d                #  55    0x7eea8  3      
  movl %edx, 0x10(%r15,%r13,1)     #  56    0x7eeab  5      
  nop                              #  57    0x7eeb0  1      
  jne .L_7efa0                     #  58    0x7eeb1  6      
  nop                              #  59    0x7eeb7  1      
  nop                              #  60    0x7eeb8  1      
.L_7eee0:                          #        0x7eeb9  0      
  subl $0x432, %eax                #  61    0x7eeb9  5      
  movl %edx, 0x18(%rsp)            #  62    0x7eebe  4      
  movl %r12d, %r12d                #  63    0x7eec2  3      
  movl %eax, (%r15,%r12,1)         #  64    0x7eec5  4      
  leal 0xc(,%rdx,4), %eax          #  65    0x7eec9  7      
  cltq                             #  66    0x7eed0  2      
  leaq (%r13,%rax,1), %rax         #  67    0x7eed2  5      
  xchgw %ax, %ax                   #  68    0x7eed7  3      
  movl %eax, %eax                  #  69    0x7eeda  2      
  movl 0x4(%r15,%rax,1), %edi      #  70    0x7eedc  5      
  nop                              #  71    0x7eee1  1      
  nop                              #  72    0x7eee2  1      
  callq .__hi0bits                 #  73    0x7eee3  5      
  movl 0x18(%rsp), %edx            #  74    0x7eee8  4      
  shll $0x5, %edx                  #  75    0x7eeec  3      
  subl %eax, %edx                  #  76    0x7eeef  2      
  movl %ebx, %ebx                  #  77    0x7eef1  2      
  movl %edx, (%r15,%rbx,1)         #  78    0x7eef3  4      
  jmpq .L_7efc0                    #  79    0x7eef7  5      
  nop                              #  80    0x7eefc  1      
.L_7ef40:                          #        0x7eefd  0      
  leal 0x28(%rsp), %edi            #  81    0x7eefd  4      
  nop                              #  82    0x7ef01  1      
  nop                              #  83    0x7ef02  1      
  callq .__lo0bits                 #  84    0x7ef03  5      
  movl 0x28(%rsp), %edx            #  85    0x7ef08  4      
  addl $0x20, %eax                 #  86    0x7ef0c  3      
  testl %r14d, %r14d               #  87    0x7ef0f  3      
  movl %r13d, %r13d                #  88    0x7ef12  3      
  movl $0x1, 0x10(%r15,%r13,1)     #  89    0x7ef15  9      
  movl %r13d, %r13d                #  90    0x7ef1e  3      
  movl %edx, 0x14(%r15,%r13,1)     #  91    0x7ef21  5      
  xchgw %ax, %ax                   #  92    0x7ef26  3      
  movl $0x1, %edx                  #  93    0x7ef29  5      
  je .L_7eee0                      #  94    0x7ef2e  6      
  nop                              #  95    0x7ef34  1      
  nop                              #  96    0x7ef35  1      
.L_7efa0:                          #        0x7ef36  0      
  leal -0x433(%rax,%r14,1), %r14d  #  97    0x7ef36  8      
  movl $0x35, %edx                 #  98    0x7ef3e  5      
  subl %eax, %edx                  #  99    0x7ef43  2      
  movl %r12d, %r12d                #  100   0x7ef45  3      
  movl %r14d, (%r15,%r12,1)        #  101   0x7ef48  4      
  movl %ebx, %ebx                  #  102   0x7ef4c  2      
  movl %edx, (%r15,%rbx,1)         #  103   0x7ef4e  4      
  nop                              #  104   0x7ef52  1      
.L_7efc0:                          #        0x7ef53  0      
  movl %r13d, %eax                 #  105   0x7ef53  3      
  movq 0x38(%rsp), %rbx            #  106   0x7ef56  5      
  movq 0x40(%rsp), %r12            #  107   0x7ef5b  5      
  movq 0x48(%rsp), %r13            #  108   0x7ef60  5      
  movq 0x50(%rsp), %r14            #  109   0x7ef65  5      
  addl $0x58, %esp                 #  110   0x7ef6a  3      
  addq %r15, %rsp                  #  111   0x7ef6d  3      
  popq %r11                        #  112   0x7ef70  3      
  nop                              #  113   0x7ef73  1      
  andl $0xffffffe0, %r11d          #  114   0x7ef74  7      
  addq %r15, %r11                  #  115   0x7ef7b  3      
  jmpq %r11                        #  116   0x7ef7e  3      
  nop                              #  117   0x7ef81  1      
  nop                              #  118   0x7ef82  1      
.L_7f000:                          #        0x7ef83  0      
  movl 0x28(%rsp), %edx            #  119   0x7ef83  4      
  movl $0x20, %ecx                 #  120   0x7ef87  5      
  subl %eax, %ecx                  #  121   0x7ef8c  2      
  movl %edx, %esi                  #  122   0x7ef8e  2      
  shll %cl, %esi                   #  123   0x7ef90  2      
  movl 0x2c(%rsp), %ecx            #  124   0x7ef92  4      
  orl %esi, %ecx                   #  125   0x7ef96  2      
  movl %r13d, %r13d                #  126   0x7ef98  3      
  movl %ecx, 0x14(%r15,%r13,1)     #  127   0x7ef9b  5      
  movl %eax, %ecx                  #  128   0x7efa0  2      
  nop                              #  129   0x7efa2  1      
  shrl %cl, %edx                   #  130   0x7efa3  2      
  movl %edx, 0x28(%rsp)            #  131   0x7efa5  4      
  jmpq .L_7eea0                    #  132   0x7efa9  5      
  nop                              #  133   0x7efae  1      
  nop                              #  134   0x7efaf  1      
                                                            
.size __d2b, .-__d2b

