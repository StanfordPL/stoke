  .text
  .globl _Unwind_Resume
  .type _Unwind_Resume, @function

#! file-offset 0x5d6c0
#! rip-offset  0x5d6c0
#! capacity    416 bytes

# Text                                  #  Line  RIP      Bytes  
._Unwind_Resume:                        #        0x5d6c0  0      
  pushq %rbp                            #  1     0x5d6c0  2      
  movq %rsp, %rbp                       #  2     0x5d6c2  3      
  movq %rax, -0x30(%rbp)                #  3     0x5d6c5  4      
  movq %rdx, -0x28(%rbp)                #  4     0x5d6c9  4      
  leal 0x10(%rbp), %eax                 #  5     0x5d6cd  3      
  movq %rbx, -0x20(%rbp)                #  6     0x5d6d0  4      
  movq %r12, -0x18(%rbp)                #  7     0x5d6d4  4      
  leal -0xc0(%rbp), %ebx                #  8     0x5d6d8  6      
  nop                                   #  9     0x5d6de  1      
  movq %r13, -0x10(%rbp)                #  10    0x5d6df  4      
  movq %r14, -0x8(%rbp)                 #  11    0x5d6e3  4      
  subl $0x150, %esp                     #  12    0x5d6e7  6      
  addq %r15, %rsp                       #  13    0x5d6ed  3      
  movl 0x8(%rbp), %edx                  #  14    0x5d6f0  3      
  leal -0x150(%rbp), %r12d              #  15    0x5d6f3  7      
  movl %edi, %r13d                      #  16    0x5d6fa  3      
  movl %eax, %esi                       #  17    0x5d6fd  2      
  movl %ebx, %edi                       #  18    0x5d6ff  2      
  nop                                   #  19    0x5d701  1      
  nop                                   #  20    0x5d702  1      
  callq .uw_init_context_1              #  21    0x5d703  5      
  movl $0x12, %ecx                      #  22    0x5d708  5      
  movq %r12, %rdi                       #  23    0x5d70d  3      
  movq %rbx, %rsi                       #  24    0x5d710  3      
  movl %esi, %esi                       #  25    0x5d713  2      
  leaq (%r15,%rsi,1), %rsi              #  26    0x5d715  4      
  movl %edi, %edi                       #  27    0x5d719  2      
  leaq (%r15,%rdi,1), %rdi              #  28    0x5d71b  4      
  rep movsq %ds:(%rsi), %es:(%rdi)      #  29    0x5d71f  4      
  movl %esi, %esi                       #  30    0x5d723  2      
  movl %edi, %edi                       #  31    0x5d725  2      
  xchgw %ax, %ax                        #  32    0x5d727  3      
  movl %r13d, %r13d                     #  33    0x5d72a  3      
  cmpq $0x0, 0x10(%r15,%r13,1)          #  34    0x5d72d  6      
  jne .L_5d7a0                          #  35    0x5d733  6      
  movl %r12d, %esi                      #  36    0x5d739  3      
  movl %r13d, %edi                      #  37    0x5d73c  3      
  nop                                   #  38    0x5d73f  1      
  callq ._Unwind_RaiseException_Phase2  #  39    0x5d740  5      
  cmpl $0x7, %eax                       #  40    0x5d745  3      
  je .L_5d7e0                           #  41    0x5d748  6      
  nop                                   #  42    0x5d74e  1      
  nop                                   #  43    0x5d74f  1      
.L_5d780:                               #        0x5d750  0      
  nop                                   #  44    0x5d750  1      
  nop                                   #  45    0x5d751  1      
  callq .abort                          #  46    0x5d752  5      
.L_5d7a0:                               #        0x5d757  0      
  movl %r12d, %esi                      #  47    0x5d757  3      
  movl %r13d, %edi                      #  48    0x5d75a  3      
  nop                                   #  49    0x5d75d  1      
  nop                                   #  50    0x5d75e  1      
  callq ._Unwind_ForcedUnwind_Phase2    #  51    0x5d75f  5      
  cmpl $0x7, %eax                       #  52    0x5d764  3      
  jne .L_5d780                          #  53    0x5d767  6      
  nop                                   #  54    0x5d76d  1      
  nop                                   #  55    0x5d76e  1      
.L_5d7e0:                               #        0x5d76f  0      
  movl %r12d, %esi                      #  56    0x5d76f  3      
  movl %ebx, %edi                       #  57    0x5d772  2      
  nop                                   #  58    0x5d774  1      
  nop                                   #  59    0x5d775  1      
  callq .uw_install_context_1           #  60    0x5d776  5      
  movl -0x104(%rbp), %edx               #  61    0x5d77b  6      
  movl %eax, %ecx                       #  62    0x5d781  2      
  leal 0x10(%rbp), %eax                 #  63    0x5d783  3      
  addq %rcx, %rax                       #  64    0x5d786  3      
  leal 0x8(%rbp,%rcx,1), %ecx           #  65    0x5d789  4      
  movl %eax, %eax                       #  66    0x5d78d  2      
  movq %rdx, -0x8(%r15,%rax,1)          #  67    0x5d78f  5      
  movq -0x30(%rbp), %rax                #  68    0x5d794  4      
  nop                                   #  69    0x5d798  1      
  movq -0x28(%rbp), %rdx                #  70    0x5d799  4      
  movq -0x20(%rbp), %rbx                #  71    0x5d79d  4      
  movq -0x18(%rbp), %r12                #  72    0x5d7a1  4      
  movq -0x10(%rbp), %r13                #  73    0x5d7a5  4      
  movq -0x8(%rbp), %r14                 #  74    0x5d7a9  4      
  movl (%rbp), %ebp                     #  75    0x5d7ad  3      
  addq %r15, %rbp                       #  76    0x5d7b0  3      
  movl %ecx, %esp                       #  77    0x5d7b3  2      
  addq %r15, %rsp                       #  78    0x5d7b5  3      
  nop                                   #  79    0x5d7b8  1      
  popq %r11                             #  80    0x5d7b9  3      
  andl $0xffffffe0, %r11d               #  81    0x5d7bc  7      
  addq %r15, %r11                       #  82    0x5d7c3  3      
  jmpq %r11                             #  83    0x5d7c6  3      
  nop                                   #  84    0x5d7c9  1      
  nop                                   #  85    0x5d7ca  1      
                                                                 
.size _Unwind_Resume, .-_Unwind_Resume

