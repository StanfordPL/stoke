  .text
  .globl __sprint_r
  .type __sprint_r, @function

#! file-offset 0x840a0
#! rip-offset  0x840a0
#! capacity    512 bytes

# Text                            #  Line  RIP      Bytes  
.__sprint_r:                      #        0x840a0  0      
  pushq %r14                      #  1     0x840a0  3      
  movl %edx, %edx                 #  2     0x840a3  2      
  movl %edi, %edi                 #  3     0x840a5  2      
  movl %esi, %r14d                #  4     0x840a7  3      
  pushq %r13                      #  5     0x840aa  3      
  pushq %r12                      #  6     0x840ad  3      
  pushq %rbx                      #  7     0x840b0  2      
  subl $0x28, %esp                #  8     0x840b2  3      
  addq %r15, %rsp                 #  9     0x840b5  3      
  movl %edx, %edx                 #  10    0x840b8  2      
  movl 0x8(%r15,%rdx,1), %eax     #  11    0x840ba  5      
  movq %rdi, 0x8(%rsp)            #  12    0x840bf  5      
  movq %rdx, 0x10(%rsp)           #  13    0x840c4  5      
  testl %eax, %eax                #  14    0x840c9  2      
  je .L_84220                     #  15    0x840cb  6      
  movl %r14d, %r14d               #  16    0x840d1  3      
  testb $0x20, 0x79(%r15,%r14,1)  #  17    0x840d4  6      
  je .L_84260                     #  18    0x840da  6      
  nop                             #  19    0x840e0  1      
  movq 0x10(%rsp), %rax           #  20    0x840e1  5      
  movl %eax, %eax                 #  21    0x840e6  2      
  movl (%r15,%rax,1), %eax        #  22    0x840e8  4      
  movq %rax, 0x18(%rsp)           #  23    0x840ec  5      
  nop                             #  24    0x840f1  1      
  nop                             #  25    0x840f2  1      
.L_84100:                         #        0x840f3  0      
  movq 0x18(%rsp), %rdx           #  26    0x840f3  5      
  movl %edx, %edx                 #  27    0x840f8  2      
  movl 0x4(%r15,%rdx,1), %r13d    #  28    0x840fa  5      
  movl %edx, %edx                 #  29    0x840ff  2      
  movl (%r15,%rdx,1), %ebx        #  30    0x84101  4      
  shrl $0x2, %r13d                #  31    0x84105  4      
  testl %r13d, %r13d              #  32    0x84109  3      
  jle .L_841e0                    #  33    0x8410c  6      
  nop                             #  34    0x84112  1      
  xorl %r12d, %r12d               #  35    0x84113  3      
  jmpq .L_84160                   #  36    0x84116  5      
  nop                             #  37    0x8411b  1      
  nop                             #  38    0x8411c  1      
.L_84140:                         #        0x8411d  0      
  addl $0x1, %r12d                #  39    0x8411d  4      
  addl $0x4, %ebx                 #  40    0x84121  3      
  cmpl %r12d, %r13d               #  41    0x84124  3      
  jle .L_841e0                    #  42    0x84127  6      
  nop                             #  43    0x8412d  1      
  nop                             #  44    0x8412e  1      
.L_84160:                         #        0x8412f  0      
  movl %ebx, %eax                 #  45    0x8412f  2      
  movl 0x8(%rsp), %edi            #  46    0x84131  4      
  movl %r14d, %edx                #  47    0x84135  3      
  movl %eax, %eax                 #  48    0x84138  2      
  movl (%r15,%rax,1), %esi        #  49    0x8413a  4      
  nop                             #  50    0x8413e  1      
  callq ._fputwc_r                #  51    0x8413f  5      
  cmpl $0xffffffff, %eax          #  52    0x84144  5      
  jne .L_84140                    #  53    0x84149  6      
  nop                             #  54    0x8414f  1      
  nop                             #  55    0x84150  1      
.L_841a0:                         #        0x84151  0      
  movq 0x10(%rsp), %rdx           #  56    0x84151  5      
  movl %edx, %edx                 #  57    0x84156  2      
  movl $0x0, 0x8(%r15,%rdx,1)     #  58    0x84158  9      
  movl %edx, %edx                 #  59    0x84161  2      
  movl $0x0, 0x4(%r15,%rdx,1)     #  60    0x84163  9      
  nop                             #  61    0x8416c  1      
  addl $0x28, %esp                #  62    0x8416d  3      
  addq %r15, %rsp                 #  63    0x84170  3      
  popq %rbx                       #  64    0x84173  2      
  popq %r12                       #  65    0x84175  3      
  popq %r13                       #  66    0x84178  3      
  popq %r14                       #  67    0x8417b  3      
  popq %r11                       #  68    0x8417e  3      
  andl $0xffffffe0, %r11d         #  69    0x84181  7      
  addq %r15, %r11                 #  70    0x84188  3      
  jmpq %r11                       #  71    0x8418b  3      
  nop                             #  72    0x8418e  1      
.L_841e0:                         #        0x8418f  0      
  movq 0x10(%rsp), %rdx           #  73    0x8418f  5      
  shll $0x2, %r13d                #  74    0x84194  4      
  movl %edx, %edx                 #  75    0x84198  2      
  movl 0x8(%r15,%rdx,1), %eax     #  76    0x8419a  5      
  subl %r13d, %eax                #  77    0x8419f  3      
  testl %eax, %eax                #  78    0x841a2  2      
  movl %edx, %edx                 #  79    0x841a4  2      
  movl %eax, 0x8(%r15,%rdx,1)     #  80    0x841a6  5      
  nop                             #  81    0x841ab  1      
  je .L_841a0                     #  82    0x841ac  6      
  movl 0x18(%rsp), %eax           #  83    0x841b2  4      
  addl $0x8, %eax                 #  84    0x841b6  3      
  movq %rax, 0x18(%rsp)           #  85    0x841b9  5      
  jmpq .L_84100                   #  86    0x841be  5      
  nop                             #  87    0x841c3  1      
.L_84220:                         #        0x841c4  0      
  movl %edx, %edx                 #  88    0x841c4  2      
  movl $0x0, 0x4(%r15,%rdx,1)     #  89    0x841c6  9      
  addl $0x28, %esp                #  90    0x841cf  3      
  addq %r15, %rsp                 #  91    0x841d2  3      
  xorl %eax, %eax                 #  92    0x841d5  2      
  popq %rbx                       #  93    0x841d7  2      
  popq %r12                       #  94    0x841d9  3      
  popq %r13                       #  95    0x841dc  3      
  popq %r14                       #  96    0x841df  3      
  popq %r11                       #  97    0x841e2  3      
  nop                             #  98    0x841e5  1      
  andl $0xffffffe0, %r11d         #  99    0x841e6  7      
  addq %r15, %r11                 #  100   0x841ed  3      
  jmpq %r11                       #  101   0x841f0  3      
  nop                             #  102   0x841f3  1      
  nop                             #  103   0x841f4  1      
.L_84260:                         #        0x841f5  0      
  movl 0x10(%rsp), %edx           #  104   0x841f5  4      
  movl 0x8(%rsp), %edi            #  105   0x841f9  4      
  movl %r14d, %esi                #  106   0x841fd  3      
  nop                             #  107   0x84200  1      
  nop                             #  108   0x84201  1      
  callq .__sfvwrite_r             #  109   0x84202  5      
  jmpq .L_841a0                   #  110   0x84207  5      
  nop                             #  111   0x8420c  1      
  nop                             #  112   0x8420d  1      
                                                           
.size __sprint_r, .-__sprint_r

