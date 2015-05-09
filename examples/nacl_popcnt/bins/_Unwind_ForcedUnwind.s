  .text
  .globl _Unwind_ForcedUnwind
  .type _Unwind_ForcedUnwind, @function

#! file-offset 0x5d340
#! rip-offset  0x5d340
#! capacity    384 bytes

# Text                                #  Line  RIP      Bytes  
._Unwind_ForcedUnwind:                #        0x5d340  0      
  pushq %rbp                          #  1     0x5d340  2      
  movq %rsp, %rbp                     #  2     0x5d342  3      
  movq %rax, -0x30(%rbp)              #  3     0x5d345  4      
  movq %rdx, -0x28(%rbp)              #  4     0x5d349  4      
  leal 0x10(%rbp), %eax               #  5     0x5d34d  3      
  movq %rbx, -0x20(%rbp)              #  6     0x5d350  4      
  movq %r12, -0x18(%rbp)              #  7     0x5d354  4      
  leal -0xc0(%rbp), %ebx              #  8     0x5d358  6      
  nop                                 #  9     0x5d35e  1      
  movq %r13, -0x10(%rbp)              #  10    0x5d35f  4      
  movq %r14, -0x8(%rbp)               #  11    0x5d363  4      
  movl %edx, %r13d                    #  12    0x5d367  3      
  subl $0x150, %esp                   #  13    0x5d36a  6      
  addq %r15, %rsp                     #  14    0x5d370  3      
  movl 0x8(%rbp), %edx                #  15    0x5d373  3      
  movl %edi, %r12d                    #  16    0x5d376  3      
  movl %esi, %r14d                    #  17    0x5d379  3      
  movl %ebx, %edi                     #  18    0x5d37c  2      
  nop                                 #  19    0x5d37e  1      
  movl %eax, %esi                     #  20    0x5d37f  2      
  nop                                 #  21    0x5d381  1      
  nop                                 #  22    0x5d382  1      
  callq .uw_init_context_1            #  23    0x5d383  5      
  leal -0x150(%rbp), %edi             #  24    0x5d388  6      
  movl $0x12, %ecx                    #  25    0x5d38e  5      
  movq %rbx, %rsi                     #  26    0x5d393  3      
  movl %esi, %esi                     #  27    0x5d396  2      
  leaq (%r15,%rsi,1), %rsi            #  28    0x5d398  4      
  movl %edi, %edi                     #  29    0x5d39c  2      
  leaq (%r15,%rdi,1), %rdi            #  30    0x5d39e  4      
  rep movsq %ds:(%rsi), %es:(%rdi)    #  31    0x5d3a2  4      
  movl %esi, %esi                     #  32    0x5d3a6  2      
  nop                                 #  33    0x5d3a8  1      
  movl %edi, %edi                     #  34    0x5d3a9  2      
  movl %r12d, %r12d                   #  35    0x5d3ab  3      
  movq %r13, 0x18(%r15,%r12,1)        #  36    0x5d3ae  5      
  leal -0x150(%rbp), %r13d            #  37    0x5d3b3  7      
  movl %r12d, %r12d                   #  38    0x5d3ba  3      
  movq %r14, 0x10(%r15,%r12,1)        #  39    0x5d3bd  5      
  movl %r12d, %edi                    #  40    0x5d3c2  3      
  movl %r13d, %esi                    #  41    0x5d3c5  3      
  nop                                 #  42    0x5d3c8  1      
  nop                                 #  43    0x5d3c9  1      
  nop                                 #  44    0x5d3ca  1      
  callq ._Unwind_ForcedUnwind_Phase2  #  45    0x5d3cb  5      
  cmpl $0x7, %eax                     #  46    0x5d3d0  3      
  je .L_5d440                         #  47    0x5d3d3  6      
  movq -0x20(%rbp), %rbx              #  48    0x5d3d9  4      
  movq -0x18(%rbp), %r12              #  49    0x5d3dd  4      
  movq -0x10(%rbp), %r13              #  50    0x5d3e1  4      
  movq -0x8(%rbp), %r14               #  51    0x5d3e5  4      
  movq %rbp, %rsp                     #  52    0x5d3e9  3      
  popq %r11                           #  53    0x5d3ec  3      
  movl %r11d, %ebp                    #  54    0x5d3ef  3      
  addq %r15, %rbp                     #  55    0x5d3f2  3      
  popq %r11                           #  56    0x5d3f5  3      
  andl $0xffffffe0, %r11d             #  57    0x5d3f8  7      
  addq %r15, %r11                     #  58    0x5d3ff  3      
  jmpq %r11                           #  59    0x5d402  3      
  nop                                 #  60    0x5d405  1      
  nop                                 #  61    0x5d406  1      
.L_5d440:                             #        0x5d407  0      
  movl %r13d, %esi                    #  62    0x5d407  3      
  movl %ebx, %edi                     #  63    0x5d40a  2      
  nop                                 #  64    0x5d40c  1      
  nop                                 #  65    0x5d40d  1      
  callq .uw_install_context_1         #  66    0x5d40e  5      
  movl -0x104(%rbp), %edx             #  67    0x5d413  6      
  movl %eax, %ecx                     #  68    0x5d419  2      
  leal 0x10(%rbp), %eax               #  69    0x5d41b  3      
  addq %rcx, %rax                     #  70    0x5d41e  3      
  leal 0x8(%rbp,%rcx,1), %ecx         #  71    0x5d421  4      
  movl %eax, %eax                     #  72    0x5d425  2      
  movq %rdx, -0x8(%r15,%rax,1)        #  73    0x5d427  5      
  movq -0x30(%rbp), %rax              #  74    0x5d42c  4      
  nop                                 #  75    0x5d430  1      
  movq -0x28(%rbp), %rdx              #  76    0x5d431  4      
  movq -0x20(%rbp), %rbx              #  77    0x5d435  4      
  movq -0x18(%rbp), %r12              #  78    0x5d439  4      
  movq -0x10(%rbp), %r13              #  79    0x5d43d  4      
  movq -0x8(%rbp), %r14               #  80    0x5d441  4      
  movl (%rbp), %ebp                   #  81    0x5d445  3      
  addq %r15, %rbp                     #  82    0x5d448  3      
  movl %ecx, %esp                     #  83    0x5d44b  2      
  addq %r15, %rsp                     #  84    0x5d44d  3      
  nop                                 #  85    0x5d450  1      
  popq %r11                           #  86    0x5d451  3      
  andl $0xffffffe0, %r11d             #  87    0x5d454  7      
  addq %r15, %r11                     #  88    0x5d45b  3      
  jmpq %r11                           #  89    0x5d45e  3      
  nop                                 #  90    0x5d461  1      
  nop                                 #  91    0x5d462  1      
                                                               
.size _Unwind_ForcedUnwind, .-_Unwind_ForcedUnwind

