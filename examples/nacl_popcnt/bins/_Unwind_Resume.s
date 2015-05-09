  .text
  .globl _Unwind_Resume
  .type _Unwind_Resume, @function

#! file-offset 0x5d620
#! rip-offset  0x5d620
#! capacity    416 bytes

# Text                                  #  Line  RIP      Bytes  
._Unwind_Resume:                        #        0x5d620  0      
  pushq %rbp                            #  1     0x5d620  2      
  movq %rsp, %rbp                       #  2     0x5d622  3      
  movq %rax, -0x30(%rbp)                #  3     0x5d625  4      
  movq %rdx, -0x28(%rbp)                #  4     0x5d629  4      
  leal 0x10(%rbp), %eax                 #  5     0x5d62d  3      
  movq %rbx, -0x20(%rbp)                #  6     0x5d630  4      
  movq %r12, -0x18(%rbp)                #  7     0x5d634  4      
  leal -0xc0(%rbp), %ebx                #  8     0x5d638  6      
  nop                                   #  9     0x5d63e  1      
  movq %r13, -0x10(%rbp)                #  10    0x5d63f  4      
  movq %r14, -0x8(%rbp)                 #  11    0x5d643  4      
  subl $0x150, %esp                     #  12    0x5d647  6      
  addq %r15, %rsp                       #  13    0x5d64d  3      
  movl 0x8(%rbp), %edx                  #  14    0x5d650  3      
  leal -0x150(%rbp), %r12d              #  15    0x5d653  7      
  movl %edi, %r13d                      #  16    0x5d65a  3      
  movl %eax, %esi                       #  17    0x5d65d  2      
  movl %ebx, %edi                       #  18    0x5d65f  2      
  nop                                   #  19    0x5d661  1      
  nop                                   #  20    0x5d662  1      
  callq .uw_init_context_1              #  21    0x5d663  5      
  movl $0x12, %ecx                      #  22    0x5d668  5      
  movq %r12, %rdi                       #  23    0x5d66d  3      
  movq %rbx, %rsi                       #  24    0x5d670  3      
  movl %esi, %esi                       #  25    0x5d673  2      
  leaq (%r15,%rsi,1), %rsi              #  26    0x5d675  4      
  movl %edi, %edi                       #  27    0x5d679  2      
  leaq (%r15,%rdi,1), %rdi              #  28    0x5d67b  4      
  rep movsq %ds:(%rsi), %es:(%rdi)      #  29    0x5d67f  4      
  movl %esi, %esi                       #  30    0x5d683  2      
  movl %edi, %edi                       #  31    0x5d685  2      
  xchgw %ax, %ax                        #  32    0x5d687  3      
  movl %r13d, %r13d                     #  33    0x5d68a  3      
  cmpq $0x0, 0x10(%r15,%r13,1)          #  34    0x5d68d  6      
  jne .L_5d700                          #  35    0x5d693  6      
  movl %r12d, %esi                      #  36    0x5d699  3      
  movl %r13d, %edi                      #  37    0x5d69c  3      
  nop                                   #  38    0x5d69f  1      
  callq ._Unwind_RaiseException_Phase2  #  39    0x5d6a0  5      
  cmpl $0x7, %eax                       #  40    0x5d6a5  3      
  je .L_5d740                           #  41    0x5d6a8  6      
  nop                                   #  42    0x5d6ae  1      
  nop                                   #  43    0x5d6af  1      
.L_5d6e0:                               #        0x5d6b0  0      
  nop                                   #  44    0x5d6b0  1      
  nop                                   #  45    0x5d6b1  1      
  callq .abort                          #  46    0x5d6b2  5      
.L_5d700:                               #        0x5d6b7  0      
  movl %r12d, %esi                      #  47    0x5d6b7  3      
  movl %r13d, %edi                      #  48    0x5d6ba  3      
  nop                                   #  49    0x5d6bd  1      
  nop                                   #  50    0x5d6be  1      
  callq ._Unwind_ForcedUnwind_Phase2    #  51    0x5d6bf  5      
  cmpl $0x7, %eax                       #  52    0x5d6c4  3      
  jne .L_5d6e0                          #  53    0x5d6c7  6      
  nop                                   #  54    0x5d6cd  1      
  nop                                   #  55    0x5d6ce  1      
.L_5d740:                               #        0x5d6cf  0      
  movl %r12d, %esi                      #  56    0x5d6cf  3      
  movl %ebx, %edi                       #  57    0x5d6d2  2      
  nop                                   #  58    0x5d6d4  1      
  nop                                   #  59    0x5d6d5  1      
  callq .uw_install_context_1           #  60    0x5d6d6  5      
  movl -0x104(%rbp), %edx               #  61    0x5d6db  6      
  movl %eax, %ecx                       #  62    0x5d6e1  2      
  leal 0x10(%rbp), %eax                 #  63    0x5d6e3  3      
  addq %rcx, %rax                       #  64    0x5d6e6  3      
  leal 0x8(%rbp,%rcx,1), %ecx           #  65    0x5d6e9  4      
  movl %eax, %eax                       #  66    0x5d6ed  2      
  movq %rdx, -0x8(%r15,%rax,1)          #  67    0x5d6ef  5      
  movq -0x30(%rbp), %rax                #  68    0x5d6f4  4      
  nop                                   #  69    0x5d6f8  1      
  movq -0x28(%rbp), %rdx                #  70    0x5d6f9  4      
  movq -0x20(%rbp), %rbx                #  71    0x5d6fd  4      
  movq -0x18(%rbp), %r12                #  72    0x5d701  4      
  movq -0x10(%rbp), %r13                #  73    0x5d705  4      
  movq -0x8(%rbp), %r14                 #  74    0x5d709  4      
  movl (%rbp), %ebp                     #  75    0x5d70d  3      
  addq %r15, %rbp                       #  76    0x5d710  3      
  movl %ecx, %esp                       #  77    0x5d713  2      
  addq %r15, %rsp                       #  78    0x5d715  3      
  nop                                   #  79    0x5d718  1      
  popq %r11                             #  80    0x5d719  3      
  andl $0xffffffe0, %r11d               #  81    0x5d71c  7      
  addq %r15, %r11                       #  82    0x5d723  3      
  jmpq %r11                             #  83    0x5d726  3      
  nop                                   #  84    0x5d729  1      
  nop                                   #  85    0x5d72a  1      
                                                                 
.size _Unwind_Resume, .-_Unwind_Resume

