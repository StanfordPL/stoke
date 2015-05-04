  .text
  .globl __d2b
  .type __d2b, @function

#! file-offset 0x7ee80
#! rip-offset  0x7ee80
#! capacity    608 bytes

# Text                             #  Line  RIP      Bytes  
.__d2b:                            #        0x7ee80  0      
  movq %rbx, -0x20(%rsp)           #  1     0x7ee80  5      
  movq %r12, -0x18(%rsp)           #  2     0x7ee85  5      
  movl %edx, %ebx                  #  3     0x7ee8a  2      
  movq %r13, -0x10(%rsp)           #  4     0x7ee8c  5      
  movq %r14, -0x8(%rsp)            #  5     0x7ee91  5      
  subl $0x58, %esp                 #  6     0x7ee96  3      
  addq %r15, %rsp                  #  7     0x7ee99  3      
  nop                              #  8     0x7ee9c  1      
  movsd %xmm0, 0x8(%rsp)           #  9     0x7ee9d  6      
  movq 0x8(%rsp), %rdx             #  10    0x7eea3  5      
  movl %edi, %edi                  #  11    0x7eea8  2      
  movl %esi, %r12d                 #  12    0x7eeaa  3      
  movl $0x1, %esi                  #  13    0x7eead  5      
  movq %rdx, 0x18(%rsp)            #  14    0x7eeb2  5      
  nop                              #  15    0x7eeb7  1      
  callq ._Balloc                   #  16    0x7eeb8  5      
  movq 0x18(%rsp), %rdx            #  17    0x7eebd  5      
  movl %eax, %r13d                 #  18    0x7eec2  3      
  movq %rdx, %rax                  #  19    0x7eec5  3      
  shrq $0x20, %rax                 #  20    0x7eec8  4      
  movl %eax, %ecx                  #  21    0x7eecc  2      
  andl $0x7fffffff, %eax           #  22    0x7eece  5      
  movl %eax, %r14d                 #  23    0x7eed3  3      
  andl $0xfffff, %ecx              #  24    0x7eed6  6      
  nop                              #  25    0x7eedc  1      
  shrl $0x14, %r14d                #  26    0x7eedd  4      
  movl %ecx, 0x28(%rsp)            #  27    0x7eee1  4      
  testl %r14d, %r14d               #  28    0x7eee5  3      
  je .L_7ef00                      #  29    0x7eee8  6      
  orl $0x100000, %ecx              #  30    0x7eeee  6      
  movl %ecx, 0x28(%rsp)            #  31    0x7eef4  4      
  nop                              #  32    0x7eef8  1      
.L_7ef00:                          #        0x7eef9  0      
  shlq $0x20, %rax                 #  33    0x7eef9  4      
  andl $0xffffffff, %edx           #  34    0x7eefd  6      
  orq %rax, %rdx                   #  35    0x7ef03  3      
  testl %edx, %edx                 #  36    0x7ef06  2      
  je .L_7efe0                      #  37    0x7ef08  6      
  leal 0x2c(%rsp), %edi            #  38    0x7ef0e  4      
  movl %edx, 0x2c(%rsp)            #  39    0x7ef12  4      
  nop                              #  40    0x7ef16  1      
  callq .__lo0bits                 #  41    0x7ef17  5      
  testl %eax, %eax                 #  42    0x7ef1c  2      
  jne .L_7f0a0                     #  43    0x7ef1e  6      
  movl 0x2c(%rsp), %edx            #  44    0x7ef24  4      
  movl %r13d, %r13d                #  45    0x7ef28  3      
  movl %edx, 0x14(%r15,%r13,1)     #  46    0x7ef2b  5      
  movl 0x28(%rsp), %edx            #  47    0x7ef30  4      
  nop                              #  48    0x7ef34  1      
.L_7ef40:                          #        0x7ef35  0      
  cmpl $0x1, %edx                  #  49    0x7ef35  3      
  movl %r13d, %r13d                #  50    0x7ef38  3      
  movl %edx, 0x18(%r15,%r13,1)     #  51    0x7ef3b  5      
  sbbl %edx, %edx                  #  52    0x7ef40  2      
  addl $0x2, %edx                  #  53    0x7ef42  3      
  testl %r14d, %r14d               #  54    0x7ef45  3      
  movl %r13d, %r13d                #  55    0x7ef48  3      
  movl %edx, 0x10(%r15,%r13,1)     #  56    0x7ef4b  5      
  nop                              #  57    0x7ef50  1      
  jne .L_7f040                     #  58    0x7ef51  6      
  nop                              #  59    0x7ef57  1      
  nop                              #  60    0x7ef58  1      
.L_7ef80:                          #        0x7ef59  0      
  subl $0x432, %eax                #  61    0x7ef59  5      
  movl %edx, 0x18(%rsp)            #  62    0x7ef5e  4      
  movl %r12d, %r12d                #  63    0x7ef62  3      
  movl %eax, (%r15,%r12,1)         #  64    0x7ef65  4      
  leal 0xc(,%rdx,4), %eax          #  65    0x7ef69  7      
  cltq                             #  66    0x7ef70  2      
  leaq (%r13,%rax,1), %rax         #  67    0x7ef72  5      
  xchgw %ax, %ax                   #  68    0x7ef77  3      
  movl %eax, %eax                  #  69    0x7ef7a  2      
  movl 0x4(%r15,%rax,1), %edi      #  70    0x7ef7c  5      
  nop                              #  71    0x7ef81  1      
  nop                              #  72    0x7ef82  1      
  callq .__hi0bits                 #  73    0x7ef83  5      
  movl 0x18(%rsp), %edx            #  74    0x7ef88  4      
  shll $0x5, %edx                  #  75    0x7ef8c  3      
  subl %eax, %edx                  #  76    0x7ef8f  2      
  movl %ebx, %ebx                  #  77    0x7ef91  2      
  movl %edx, (%r15,%rbx,1)         #  78    0x7ef93  4      
  jmpq .L_7f060                    #  79    0x7ef97  5      
  nop                              #  80    0x7ef9c  1      
.L_7efe0:                          #        0x7ef9d  0      
  leal 0x28(%rsp), %edi            #  81    0x7ef9d  4      
  nop                              #  82    0x7efa1  1      
  nop                              #  83    0x7efa2  1      
  callq .__lo0bits                 #  84    0x7efa3  5      
  movl 0x28(%rsp), %edx            #  85    0x7efa8  4      
  addl $0x20, %eax                 #  86    0x7efac  3      
  testl %r14d, %r14d               #  87    0x7efaf  3      
  movl %r13d, %r13d                #  88    0x7efb2  3      
  movl $0x1, 0x10(%r15,%r13,1)     #  89    0x7efb5  9      
  movl %r13d, %r13d                #  90    0x7efbe  3      
  movl %edx, 0x14(%r15,%r13,1)     #  91    0x7efc1  5      
  xchgw %ax, %ax                   #  92    0x7efc6  3      
  movl $0x1, %edx                  #  93    0x7efc9  5      
  je .L_7ef80                      #  94    0x7efce  6      
  nop                              #  95    0x7efd4  1      
  nop                              #  96    0x7efd5  1      
.L_7f040:                          #        0x7efd6  0      
  leal -0x433(%rax,%r14,1), %r14d  #  97    0x7efd6  8      
  movl $0x35, %edx                 #  98    0x7efde  5      
  subl %eax, %edx                  #  99    0x7efe3  2      
  movl %r12d, %r12d                #  100   0x7efe5  3      
  movl %r14d, (%r15,%r12,1)        #  101   0x7efe8  4      
  movl %ebx, %ebx                  #  102   0x7efec  2      
  movl %edx, (%r15,%rbx,1)         #  103   0x7efee  4      
  nop                              #  104   0x7eff2  1      
.L_7f060:                          #        0x7eff3  0      
  movl %r13d, %eax                 #  105   0x7eff3  3      
  movq 0x38(%rsp), %rbx            #  106   0x7eff6  5      
  movq 0x40(%rsp), %r12            #  107   0x7effb  5      
  movq 0x48(%rsp), %r13            #  108   0x7f000  5      
  movq 0x50(%rsp), %r14            #  109   0x7f005  5      
  addl $0x58, %esp                 #  110   0x7f00a  3      
  addq %r15, %rsp                  #  111   0x7f00d  3      
  popq %r11                        #  112   0x7f010  3      
  nop                              #  113   0x7f013  1      
  andl $0xffffffe0, %r11d          #  114   0x7f014  7      
  addq %r15, %r11                  #  115   0x7f01b  3      
  jmpq %r11                        #  116   0x7f01e  3      
  nop                              #  117   0x7f021  1      
  nop                              #  118   0x7f022  1      
.L_7f0a0:                          #        0x7f023  0      
  movl 0x28(%rsp), %edx            #  119   0x7f023  4      
  movl $0x20, %ecx                 #  120   0x7f027  5      
  subl %eax, %ecx                  #  121   0x7f02c  2      
  movl %edx, %esi                  #  122   0x7f02e  2      
  shll %cl, %esi                   #  123   0x7f030  2      
  movl 0x2c(%rsp), %ecx            #  124   0x7f032  4      
  orl %esi, %ecx                   #  125   0x7f036  2      
  movl %r13d, %r13d                #  126   0x7f038  3      
  movl %ecx, 0x14(%r15,%r13,1)     #  127   0x7f03b  5      
  movl %eax, %ecx                  #  128   0x7f040  2      
  nop                              #  129   0x7f042  1      
  shrl %cl, %edx                   #  130   0x7f043  2      
  movl %edx, 0x28(%rsp)            #  131   0x7f045  4      
  jmpq .L_7ef40                    #  132   0x7f049  5      
  nop                              #  133   0x7f04e  1      
  nop                              #  134   0x7f04f  1      
                                                            
.size __d2b, .-__d2b

