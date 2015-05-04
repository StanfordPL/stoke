  .text
  .globl _findenv_r
  .type _findenv_r, @function

#! file-offset 0x69940
#! rip-offset  0x69940
#! capacity    448 bytes

# Text                        #  Line  RIP      Bytes  
._findenv_r:                  #        0x69940  0      
  pushq %r14                  #  1     0x69940  3      
  movl %edi, %r14d            #  2     0x69943  3      
  movl %edx, %edx             #  3     0x69946  2      
  movl %r14d, %edi            #  4     0x69948  3      
  pushq %r13                  #  5     0x6994b  3      
  movl %esi, %r13d            #  6     0x6994e  3      
  pushq %r12                  #  7     0x69951  3      
  pushq %rbx                  #  8     0x69954  2      
  subl $0x18, %esp            #  9     0x69956  3      
  addq %r15, %rsp             #  10    0x69959  3      
  movq %rdx, 0x8(%rsp)        #  11    0x6995c  5      
  nop                         #  12    0x69961  1      
  nop                         #  13    0x69962  1      
  nop                         #  14    0x69963  1      
  callq .__env_lock           #  15    0x69964  5      
  movl 0xffc6b89(%rip), %ebx  #  16    0x69969  6      
  testq %rbx, %rbx            #  17    0x6996f  3      
  je .L_69a60                 #  18    0x69972  6      
  movl %r13d, %r13d           #  19    0x69978  3      
  movzbl (%r15,%r13,1), %eax  #  20    0x6997b  5      
  cmpb $0x3d, %al             #  21    0x69980  2      
  je .L_69ae0                 #  22    0x69982  6      
  nop                         #  23    0x69988  1      
  testb %al, %al              #  24    0x69989  2      
  movq %r13, %r12             #  25    0x6998b  3      
  je .L_69ae0                 #  26    0x6998e  6      
  nop                         #  27    0x69994  1      
  nop                         #  28    0x69995  1      
.L_699c0:                     #        0x69996  0      
  addl $0x1, %r12d            #  29    0x69996  4      
  movl %r12d, %r12d           #  30    0x6999a  3      
  movzbl (%r15,%r12,1), %eax  #  31    0x6999d  5      
  cmpb $0x3d, %al             #  32    0x699a2  2      
  je .L_69a60                 #  33    0x699a4  6      
  testb %al, %al              #  34    0x699aa  2      
  jne .L_699c0                #  35    0x699ac  6      
  nop                         #  36    0x699b2  1      
.L_699e0:                     #        0x699b3  0      
  cmpb $0x3d, %al             #  37    0x699b3  2      
  je .L_69a60                 #  38    0x699b5  6      
  movl %ebx, %ebx             #  39    0x699bb  2      
  movl (%r15,%rbx,1), %edi    #  40    0x699bd  4      
  testq %rdi, %rdi            #  41    0x699c1  3      
  je .L_69a60                 #  42    0x699c4  6      
  subl %r13d, %r12d           #  43    0x699ca  3      
  nop                         #  44    0x699cd  1      
.L_69a00:                     #        0x699ce  0      
  movl %r12d, %edx            #  45    0x699ce  3      
  movl %r13d, %esi            #  46    0x699d1  3      
  nop                         #  47    0x699d4  1      
  nop                         #  48    0x699d5  1      
  callq .strncmp              #  49    0x699d6  5      
  testl %eax, %eax            #  50    0x699db  2      
  jne .L_69a40                #  51    0x699dd  6      
  movl %ebx, %ebx             #  52    0x699e3  2      
  movl (%r15,%rbx,1), %eax    #  53    0x699e5  4      
  addl %r12d, %eax            #  54    0x699e9  3      
  movl %eax, %eax             #  55    0x699ec  2      
  cmpb $0x3d, (%r15,%rax,1)   #  56    0x699ee  5      
  je .L_69aa0                 #  57    0x699f3  6      
  nop                         #  58    0x699f9  1      
.L_69a40:                     #        0x699fa  0      
  addl $0x4, %ebx             #  59    0x699fa  3      
  movl %ebx, %ebx             #  60    0x699fd  2      
  movl (%r15,%rbx,1), %edi    #  61    0x699ff  4      
  testq %rdi, %rdi            #  62    0x69a03  3      
  jne .L_69a00                #  63    0x69a06  6      
  nop                         #  64    0x69a0c  1      
  nop                         #  65    0x69a0d  1      
.L_69a60:                     #        0x69a0e  0      
  movl %r14d, %edi            #  66    0x69a0e  3      
  nop                         #  67    0x69a11  1      
  nop                         #  68    0x69a12  1      
  callq .__env_unlock         #  69    0x69a13  5      
  addl $0x18, %esp            #  70    0x69a18  3      
  addq %r15, %rsp             #  71    0x69a1b  3      
  xorl %eax, %eax             #  72    0x69a1e  2      
  popq %rbx                   #  73    0x69a20  2      
  popq %r12                   #  74    0x69a22  3      
  popq %r13                   #  75    0x69a25  3      
  popq %r14                   #  76    0x69a28  3      
  popq %r11                   #  77    0x69a2b  3      
  andl $0xffffffe0, %r11d     #  78    0x69a2e  7      
  addq %r15, %r11             #  79    0x69a35  3      
  jmpq %r11                   #  80    0x69a38  3      
  nop                         #  81    0x69a3b  1      
.L_69aa0:                     #        0x69a3c  0      
  subl 0xffc6ab6(%rip), %ebx  #  82    0x69a3c  6      
  movq 0x8(%rsp), %rdx        #  83    0x69a42  5      
  movl %r14d, %edi            #  84    0x69a47  3      
  movq %rax, (%rsp)           #  85    0x69a4a  4      
  sarl $0x2, %ebx             #  86    0x69a4e  3      
  movl %edx, %edx             #  87    0x69a51  2      
  movl %ebx, (%r15,%rdx,1)    #  88    0x69a53  4      
  callq .__env_unlock         #  89    0x69a57  5      
  movq (%rsp), %rax           #  90    0x69a5c  4      
  addl $0x18, %esp            #  91    0x69a60  3      
  addq %r15, %rsp             #  92    0x69a63  3      
  popq %rbx                   #  93    0x69a66  2      
  popq %r12                   #  94    0x69a68  3      
  popq %r13                   #  95    0x69a6b  3      
  popq %r14                   #  96    0x69a6e  3      
  popq %r11                   #  97    0x69a71  3      
  addl $0x1, %eax             #  98    0x69a74  3      
  andl $0xffffffe0, %r11d     #  99    0x69a77  7      
  addq %r15, %r11             #  100   0x69a7e  3      
  jmpq %r11                   #  101   0x69a81  3      
.L_69ae0:                     #        0x69a84  0      
  movq %r13, %r12             #  102   0x69a84  3      
  jmpq .L_699e0               #  103   0x69a87  5      
  nop                         #  104   0x69a8c  1      
  nop                         #  105   0x69a8d  1      
                                                       
.size _findenv_r, .-_findenv_r

