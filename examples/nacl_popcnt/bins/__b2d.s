  .text
  .globl __b2d
  .type __b2d, @function

#! file-offset 0x7e760
#! rip-offset  0x7e760
#! capacity    448 bytes

# Text                           #  Line  RIP      Bytes  
.__b2d:                          #        0x7e760  0      
  movl %edi, %edi                #  1     0x7e760  2      
  movq %r13, -0x10(%rsp)         #  2     0x7e762  5      
  movq %r14, -0x8(%rsp)          #  3     0x7e767  5      
  movq %rbx, -0x20(%rsp)         #  4     0x7e76c  5      
  movq %r12, -0x18(%rsp)         #  5     0x7e771  5      
  subl $0x28, %esp               #  6     0x7e776  3      
  addq %r15, %rsp                #  7     0x7e779  3      
  nop                            #  8     0x7e77c  1      
  movl %edi, %edi                #  9     0x7e77d  2      
  movl 0x10(%r15,%rdi,1), %r12d  #  10    0x7e77f  5      
  leal 0x14(%rdi), %r13d         #  11    0x7e784  4      
  movl %esi, %r14d               #  12    0x7e788  3      
  leal 0x10(%rdi,%r12,4), %r12d  #  13    0x7e78b  5      
  movl %r12d, %r12d              #  14    0x7e790  3      
  movl (%r15,%r12,1), %ebx       #  15    0x7e793  4      
  movl %ebx, %edi                #  16    0x7e797  2      
  nop                            #  17    0x7e799  1      
  nop                            #  18    0x7e79a  1      
  nop                            #  19    0x7e79b  1      
  callq .__hi0bits               #  20    0x7e79c  5      
  movl $0x20, %edx               #  21    0x7e7a1  5      
  subl %eax, %edx                #  22    0x7e7a6  2      
  cmpl $0xa, %eax                #  23    0x7e7a8  3      
  movl %r14d, %r14d              #  24    0x7e7ab  3      
  movl %edx, (%r15,%r14,1)       #  25    0x7e7ae  4      
  jg .L_7e860                    #  26    0x7e7b2  6      
  movl $0xb, %ecx                #  27    0x7e7b8  5      
  xorl %esi, %esi                #  28    0x7e7bd  2      
  subl %eax, %ecx                #  29    0x7e7bf  2      
  cmpl %r12d, %r13d              #  30    0x7e7c1  3      
  jae .L_7e800                   #  31    0x7e7c4  6      
  subl $0x4, %r12d               #  32    0x7e7ca  4      
  movl %r12d, %r12d              #  33    0x7e7ce  3      
  movl (%r15,%r12,1), %esi       #  34    0x7e7d1  4      
  shrl %cl, %esi                 #  35    0x7e7d5  2      
  nop                            #  36    0x7e7d7  1      
.L_7e800:                        #        0x7e7d8  0      
  movl %ebx, %edx                #  37    0x7e7d8  2      
  shrl %cl, %edx                 #  38    0x7e7da  2      
  leal 0x15(%rax), %ecx          #  39    0x7e7dc  3      
  orl $0x3ff00000, %edx          #  40    0x7e7df  6      
  shll %cl, %ebx                 #  41    0x7e7e5  2      
  shlq $0x20, %rdx               #  42    0x7e7e7  4      
  orl %ebx, %esi                 #  43    0x7e7eb  2      
  orq %rsi, %rdx                 #  44    0x7e7ed  3      
  nop                            #  45    0x7e7f0  1      
.L_7e820:                        #        0x7e7f1  0      
  movq %rdx, (%rsp)              #  46    0x7e7f1  4      
  movq 0x8(%rsp), %rbx           #  47    0x7e7f5  5      
  movsd (%rsp), %xmm0            #  48    0x7e7fa  5      
  movq 0x10(%rsp), %r12          #  49    0x7e7ff  5      
  movq 0x18(%rsp), %r13          #  50    0x7e804  5      
  movq 0x20(%rsp), %r14          #  51    0x7e809  5      
  nop                            #  52    0x7e80e  1      
  addl $0x28, %esp               #  53    0x7e80f  3      
  addq %r15, %rsp                #  54    0x7e812  3      
  popq %r11                      #  55    0x7e815  3      
  andl $0xffffffe0, %r11d        #  56    0x7e818  7      
  addq %r15, %r11                #  57    0x7e81f  3      
  jmpq %r11                      #  58    0x7e822  3      
  nop                            #  59    0x7e825  1      
.L_7e860:                        #        0x7e826  0      
  xorl %esi, %esi                #  60    0x7e826  2      
  cmpl %r12d, %r13d              #  61    0x7e828  3      
  jb .L_7e900                    #  62    0x7e82b  6      
  subl $0xb, %eax                #  63    0x7e831  3      
  je .L_7e8e0                    #  64    0x7e834  6      
  nop                            #  65    0x7e83a  1      
  nop                            #  66    0x7e83b  1      
.L_7e880:                        #        0x7e83c  0      
  movl $0x20, %edi               #  67    0x7e83c  5      
  xorl %r8d, %r8d                #  68    0x7e841  3      
  subl %eax, %edi                #  69    0x7e844  2      
  cmpl %r13d, %r12d              #  70    0x7e846  3      
  jbe .L_7e8a0                   #  71    0x7e849  6      
  subl $0x4, %r12d               #  72    0x7e84f  4      
  movl %edi, %ecx                #  73    0x7e853  2      
  movl %r12d, %r12d              #  74    0x7e855  3      
  movl (%r15,%r12,1), %r8d       #  75    0x7e858  4      
  shrl %cl, %r8d                 #  76    0x7e85c  3      
  nop                            #  77    0x7e85f  1      
.L_7e8a0:                        #        0x7e860  0      
  movl %eax, %ecx                #  78    0x7e860  2      
  movl %esi, %edx                #  79    0x7e862  2      
  shll %cl, %ebx                 #  80    0x7e864  2      
  movl %edi, %ecx                #  81    0x7e866  2      
  shrl %cl, %edx                 #  82    0x7e868  2      
  orl $0x3ff00000, %ebx          #  83    0x7e86a  6      
  movl %eax, %ecx                #  84    0x7e870  2      
  orl %ebx, %edx                 #  85    0x7e872  2      
  shll %cl, %esi                 #  86    0x7e874  2      
  orl %esi, %r8d                 #  87    0x7e876  3      
  shlq $0x20, %rdx               #  88    0x7e879  4      
  orq %r8, %rdx                  #  89    0x7e87d  3      
  jmpq .L_7e820                  #  90    0x7e880  5      
  nop                            #  91    0x7e885  1      
  nop                            #  92    0x7e886  1      
.L_7e8e0:                        #        0x7e887  0      
  movl %ebx, %edx                #  93    0x7e887  2      
  movl %esi, %esi                #  94    0x7e889  2      
  orl $0x3ff00000, %edx          #  95    0x7e88b  6      
  shlq $0x20, %rdx               #  96    0x7e891  4      
  orq %rsi, %rdx                 #  97    0x7e895  3      
  jmpq .L_7e820                  #  98    0x7e898  5      
  nop                            #  99    0x7e89d  1      
.L_7e900:                        #        0x7e89e  0      
  subl $0x4, %r12d               #  100   0x7e89e  4      
  subl $0xb, %eax                #  101   0x7e8a2  3      
  movl %r12d, %r12d              #  102   0x7e8a5  3      
  movl (%r15,%r12,1), %esi       #  103   0x7e8a8  4      
  je .L_7e8e0                    #  104   0x7e8ac  6      
  jmpq .L_7e880                  #  105   0x7e8b2  5      
  nop                            #  106   0x7e8b7  1      
                                                          
.size __b2d, .-__b2d

