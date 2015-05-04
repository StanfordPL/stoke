  .text
  .globl __b2d
  .type __b2d, @function

#! file-offset 0x7e800
#! rip-offset  0x7e800
#! capacity    448 bytes

# Text                           #  Line  RIP      Bytes  
.__b2d:                          #        0x7e800  0      
  movl %edi, %edi                #  1     0x7e800  2      
  movq %r13, -0x10(%rsp)         #  2     0x7e802  5      
  movq %r14, -0x8(%rsp)          #  3     0x7e807  5      
  movq %rbx, -0x20(%rsp)         #  4     0x7e80c  5      
  movq %r12, -0x18(%rsp)         #  5     0x7e811  5      
  subl $0x28, %esp               #  6     0x7e816  3      
  addq %r15, %rsp                #  7     0x7e819  3      
  nop                            #  8     0x7e81c  1      
  movl %edi, %edi                #  9     0x7e81d  2      
  movl 0x10(%r15,%rdi,1), %r12d  #  10    0x7e81f  5      
  leal 0x14(%rdi), %r13d         #  11    0x7e824  4      
  movl %esi, %r14d               #  12    0x7e828  3      
  leal 0x10(%rdi,%r12,4), %r12d  #  13    0x7e82b  5      
  movl %r12d, %r12d              #  14    0x7e830  3      
  movl (%r15,%r12,1), %ebx       #  15    0x7e833  4      
  movl %ebx, %edi                #  16    0x7e837  2      
  nop                            #  17    0x7e839  1      
  nop                            #  18    0x7e83a  1      
  nop                            #  19    0x7e83b  1      
  callq .__hi0bits               #  20    0x7e83c  5      
  movl $0x20, %edx               #  21    0x7e841  5      
  subl %eax, %edx                #  22    0x7e846  2      
  cmpl $0xa, %eax                #  23    0x7e848  3      
  movl %r14d, %r14d              #  24    0x7e84b  3      
  movl %edx, (%r15,%r14,1)       #  25    0x7e84e  4      
  jg .L_7e900                    #  26    0x7e852  6      
  movl $0xb, %ecx                #  27    0x7e858  5      
  xorl %esi, %esi                #  28    0x7e85d  2      
  subl %eax, %ecx                #  29    0x7e85f  2      
  cmpl %r12d, %r13d              #  30    0x7e861  3      
  jae .L_7e8a0                   #  31    0x7e864  6      
  subl $0x4, %r12d               #  32    0x7e86a  4      
  movl %r12d, %r12d              #  33    0x7e86e  3      
  movl (%r15,%r12,1), %esi       #  34    0x7e871  4      
  shrl %cl, %esi                 #  35    0x7e875  2      
  nop                            #  36    0x7e877  1      
.L_7e8a0:                        #        0x7e878  0      
  movl %ebx, %edx                #  37    0x7e878  2      
  shrl %cl, %edx                 #  38    0x7e87a  2      
  leal 0x15(%rax), %ecx          #  39    0x7e87c  3      
  orl $0x3ff00000, %edx          #  40    0x7e87f  6      
  shll %cl, %ebx                 #  41    0x7e885  2      
  shlq $0x20, %rdx               #  42    0x7e887  4      
  orl %ebx, %esi                 #  43    0x7e88b  2      
  orq %rsi, %rdx                 #  44    0x7e88d  3      
  nop                            #  45    0x7e890  1      
.L_7e8c0:                        #        0x7e891  0      
  movq %rdx, (%rsp)              #  46    0x7e891  4      
  movq 0x8(%rsp), %rbx           #  47    0x7e895  5      
  movsd (%rsp), %xmm0            #  48    0x7e89a  5      
  movq 0x10(%rsp), %r12          #  49    0x7e89f  5      
  movq 0x18(%rsp), %r13          #  50    0x7e8a4  5      
  movq 0x20(%rsp), %r14          #  51    0x7e8a9  5      
  nop                            #  52    0x7e8ae  1      
  addl $0x28, %esp               #  53    0x7e8af  3      
  addq %r15, %rsp                #  54    0x7e8b2  3      
  popq %r11                      #  55    0x7e8b5  3      
  andl $0xffffffe0, %r11d        #  56    0x7e8b8  7      
  addq %r15, %r11                #  57    0x7e8bf  3      
  jmpq %r11                      #  58    0x7e8c2  3      
  nop                            #  59    0x7e8c5  1      
.L_7e900:                        #        0x7e8c6  0      
  xorl %esi, %esi                #  60    0x7e8c6  2      
  cmpl %r12d, %r13d              #  61    0x7e8c8  3      
  jb .L_7e9a0                    #  62    0x7e8cb  6      
  subl $0xb, %eax                #  63    0x7e8d1  3      
  je .L_7e980                    #  64    0x7e8d4  6      
  nop                            #  65    0x7e8da  1      
  nop                            #  66    0x7e8db  1      
.L_7e920:                        #        0x7e8dc  0      
  movl $0x20, %edi               #  67    0x7e8dc  5      
  xorl %r8d, %r8d                #  68    0x7e8e1  3      
  subl %eax, %edi                #  69    0x7e8e4  2      
  cmpl %r13d, %r12d              #  70    0x7e8e6  3      
  jbe .L_7e940                   #  71    0x7e8e9  6      
  subl $0x4, %r12d               #  72    0x7e8ef  4      
  movl %edi, %ecx                #  73    0x7e8f3  2      
  movl %r12d, %r12d              #  74    0x7e8f5  3      
  movl (%r15,%r12,1), %r8d       #  75    0x7e8f8  4      
  shrl %cl, %r8d                 #  76    0x7e8fc  3      
  nop                            #  77    0x7e8ff  1      
.L_7e940:                        #        0x7e900  0      
  movl %eax, %ecx                #  78    0x7e900  2      
  movl %esi, %edx                #  79    0x7e902  2      
  shll %cl, %ebx                 #  80    0x7e904  2      
  movl %edi, %ecx                #  81    0x7e906  2      
  shrl %cl, %edx                 #  82    0x7e908  2      
  orl $0x3ff00000, %ebx          #  83    0x7e90a  6      
  movl %eax, %ecx                #  84    0x7e910  2      
  orl %ebx, %edx                 #  85    0x7e912  2      
  shll %cl, %esi                 #  86    0x7e914  2      
  orl %esi, %r8d                 #  87    0x7e916  3      
  shlq $0x20, %rdx               #  88    0x7e919  4      
  orq %r8, %rdx                  #  89    0x7e91d  3      
  jmpq .L_7e8c0                  #  90    0x7e920  5      
  nop                            #  91    0x7e925  1      
  nop                            #  92    0x7e926  1      
.L_7e980:                        #        0x7e927  0      
  movl %ebx, %edx                #  93    0x7e927  2      
  movl %esi, %esi                #  94    0x7e929  2      
  orl $0x3ff00000, %edx          #  95    0x7e92b  6      
  shlq $0x20, %rdx               #  96    0x7e931  4      
  orq %rsi, %rdx                 #  97    0x7e935  3      
  jmpq .L_7e8c0                  #  98    0x7e938  5      
  nop                            #  99    0x7e93d  1      
.L_7e9a0:                        #        0x7e93e  0      
  subl $0x4, %r12d               #  100   0x7e93e  4      
  subl $0xb, %eax                #  101   0x7e942  3      
  movl %r12d, %r12d              #  102   0x7e945  3      
  movl (%r15,%r12,1), %esi       #  103   0x7e948  4      
  je .L_7e980                    #  104   0x7e94c  6      
  jmpq .L_7e920                  #  105   0x7e952  5      
  nop                            #  106   0x7e957  1      
                                                          
.size __b2d, .-__b2d

