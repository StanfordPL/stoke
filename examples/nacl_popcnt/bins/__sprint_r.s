  .text
  .globl __sprint_r
  .type __sprint_r, @function

#! file-offset 0x84020
#! rip-offset  0x84020
#! capacity    512 bytes

# Text                            #  Line  RIP      Bytes  
.__sprint_r:                      #        0x84020  0      
  pushq %r14                      #  1     0x84020  3      
  movl %edx, %edx                 #  2     0x84023  2      
  movl %edi, %edi                 #  3     0x84025  2      
  movl %esi, %r14d                #  4     0x84027  3      
  pushq %r13                      #  5     0x8402a  3      
  pushq %r12                      #  6     0x8402d  3      
  pushq %rbx                      #  7     0x84030  2      
  subl $0x28, %esp                #  8     0x84032  3      
  addq %r15, %rsp                 #  9     0x84035  3      
  movl %edx, %edx                 #  10    0x84038  2      
  movl 0x8(%r15,%rdx,1), %eax     #  11    0x8403a  5      
  movq %rdi, 0x8(%rsp)            #  12    0x8403f  5      
  movq %rdx, 0x10(%rsp)           #  13    0x84044  5      
  testl %eax, %eax                #  14    0x84049  2      
  je .L_841a0                     #  15    0x8404b  6      
  movl %r14d, %r14d               #  16    0x84051  3      
  testb $0x20, 0x79(%r15,%r14,1)  #  17    0x84054  6      
  je .L_841e0                     #  18    0x8405a  6      
  nop                             #  19    0x84060  1      
  movq 0x10(%rsp), %rax           #  20    0x84061  5      
  movl %eax, %eax                 #  21    0x84066  2      
  movl (%r15,%rax,1), %eax        #  22    0x84068  4      
  movq %rax, 0x18(%rsp)           #  23    0x8406c  5      
  nop                             #  24    0x84071  1      
  nop                             #  25    0x84072  1      
.L_84080:                         #        0x84073  0      
  movq 0x18(%rsp), %rdx           #  26    0x84073  5      
  movl %edx, %edx                 #  27    0x84078  2      
  movl 0x4(%r15,%rdx,1), %r13d    #  28    0x8407a  5      
  movl %edx, %edx                 #  29    0x8407f  2      
  movl (%r15,%rdx,1), %ebx        #  30    0x84081  4      
  shrl $0x2, %r13d                #  31    0x84085  4      
  testl %r13d, %r13d              #  32    0x84089  3      
  jle .L_84160                    #  33    0x8408c  6      
  nop                             #  34    0x84092  1      
  xorl %r12d, %r12d               #  35    0x84093  3      
  jmpq .L_840e0                   #  36    0x84096  5      
  nop                             #  37    0x8409b  1      
  nop                             #  38    0x8409c  1      
.L_840c0:                         #        0x8409d  0      
  addl $0x1, %r12d                #  39    0x8409d  4      
  addl $0x4, %ebx                 #  40    0x840a1  3      
  cmpl %r12d, %r13d               #  41    0x840a4  3      
  jle .L_84160                    #  42    0x840a7  6      
  nop                             #  43    0x840ad  1      
  nop                             #  44    0x840ae  1      
.L_840e0:                         #        0x840af  0      
  movl %ebx, %eax                 #  45    0x840af  2      
  movl 0x8(%rsp), %edi            #  46    0x840b1  4      
  movl %r14d, %edx                #  47    0x840b5  3      
  movl %eax, %eax                 #  48    0x840b8  2      
  movl (%r15,%rax,1), %esi        #  49    0x840ba  4      
  nop                             #  50    0x840be  1      
  callq ._fputwc_r                #  51    0x840bf  5      
  cmpl $0xffffffff, %eax          #  52    0x840c4  5      
  jne .L_840c0                    #  53    0x840c9  6      
  nop                             #  54    0x840cf  1      
  nop                             #  55    0x840d0  1      
.L_84120:                         #        0x840d1  0      
  movq 0x10(%rsp), %rdx           #  56    0x840d1  5      
  movl %edx, %edx                 #  57    0x840d6  2      
  movl $0x0, 0x8(%r15,%rdx,1)     #  58    0x840d8  9      
  movl %edx, %edx                 #  59    0x840e1  2      
  movl $0x0, 0x4(%r15,%rdx,1)     #  60    0x840e3  9      
  nop                             #  61    0x840ec  1      
  addl $0x28, %esp                #  62    0x840ed  3      
  addq %r15, %rsp                 #  63    0x840f0  3      
  popq %rbx                       #  64    0x840f3  2      
  popq %r12                       #  65    0x840f5  3      
  popq %r13                       #  66    0x840f8  3      
  popq %r14                       #  67    0x840fb  3      
  popq %r11                       #  68    0x840fe  3      
  andl $0xffffffe0, %r11d         #  69    0x84101  7      
  addq %r15, %r11                 #  70    0x84108  3      
  jmpq %r11                       #  71    0x8410b  3      
  nop                             #  72    0x8410e  1      
.L_84160:                         #        0x8410f  0      
  movq 0x10(%rsp), %rdx           #  73    0x8410f  5      
  shll $0x2, %r13d                #  74    0x84114  4      
  movl %edx, %edx                 #  75    0x84118  2      
  movl 0x8(%r15,%rdx,1), %eax     #  76    0x8411a  5      
  subl %r13d, %eax                #  77    0x8411f  3      
  testl %eax, %eax                #  78    0x84122  2      
  movl %edx, %edx                 #  79    0x84124  2      
  movl %eax, 0x8(%r15,%rdx,1)     #  80    0x84126  5      
  nop                             #  81    0x8412b  1      
  je .L_84120                     #  82    0x8412c  6      
  movl 0x18(%rsp), %eax           #  83    0x84132  4      
  addl $0x8, %eax                 #  84    0x84136  3      
  movq %rax, 0x18(%rsp)           #  85    0x84139  5      
  jmpq .L_84080                   #  86    0x8413e  5      
  nop                             #  87    0x84143  1      
.L_841a0:                         #        0x84144  0      
  movl %edx, %edx                 #  88    0x84144  2      
  movl $0x0, 0x4(%r15,%rdx,1)     #  89    0x84146  9      
  addl $0x28, %esp                #  90    0x8414f  3      
  addq %r15, %rsp                 #  91    0x84152  3      
  xorl %eax, %eax                 #  92    0x84155  2      
  popq %rbx                       #  93    0x84157  2      
  popq %r12                       #  94    0x84159  3      
  popq %r13                       #  95    0x8415c  3      
  popq %r14                       #  96    0x8415f  3      
  popq %r11                       #  97    0x84162  3      
  nop                             #  98    0x84165  1      
  andl $0xffffffe0, %r11d         #  99    0x84166  7      
  addq %r15, %r11                 #  100   0x8416d  3      
  jmpq %r11                       #  101   0x84170  3      
  nop                             #  102   0x84173  1      
  nop                             #  103   0x84174  1      
.L_841e0:                         #        0x84175  0      
  movl 0x10(%rsp), %edx           #  104   0x84175  4      
  movl 0x8(%rsp), %edi            #  105   0x84179  4      
  movl %r14d, %esi                #  106   0x8417d  3      
  nop                             #  107   0x84180  1      
  nop                             #  108   0x84181  1      
  callq .__sfvwrite_r             #  109   0x84182  5      
  jmpq .L_84120                   #  110   0x84187  5      
  nop                             #  111   0x8418c  1      
  nop                             #  112   0x8418d  1      
                                                           
.size __sprint_r, .-__sprint_r

