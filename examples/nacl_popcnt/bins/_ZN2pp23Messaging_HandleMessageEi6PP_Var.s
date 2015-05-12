  .text
  .globl _ZN2pp23Messaging_HandleMessageEi6PP_Var
  .type _ZN2pp23Messaging_HandleMessageEi6PP_Var, @function

#! file-offset 0x247c0
#! rip-offset  0x247c0
#! capacity    416 bytes

# Text                                      #  Line  RIP      Bytes  
._ZN2pp23Messaging_HandleMessageEi6PP_Var:  #        0x247c0  0      
  pushq %rbx                                #  1     0x247c0  2      
  movl %edi, %ebx                           #  2     0x247c2  2      
  subl $0x40, %esp                          #  3     0x247c4  3      
  addq %r15, %rsp                           #  4     0x247c7  3      
  movq %rsi, 0x10(%rsp)                     #  5     0x247ca  5      
  movq %rdx, 0x18(%rsp)                     #  6     0x247cf  5      
  nop                                       #  7     0x247d4  1      
  callq ._ZN2pp6Module3GetEv                #  8     0x247d5  5      
  movl %eax, %eax                           #  9     0x247da  2      
  testq %rax, %rax                          #  10    0x247dc  3      
  je .L_24900                               #  11    0x247df  6      
  leal 0x8(%rax), %esi                      #  12    0x247e5  3      
  movl %eax, %eax                           #  13    0x247e8  2      
  movl 0xc(%r15,%rax,1), %eax               #  14    0x247ea  5      
  movq %rsi, %rcx                           #  15    0x247ef  3      
  testq %rax, %rax                          #  16    0x247f2  3      
  nop                                       #  17    0x247f5  1      
  jne .L_24860                              #  18    0x247f6  6      
  jmpq .L_24880                             #  19    0x247fc  5      
  nop                                       #  20    0x24801  1      
  nop                                       #  21    0x24802  1      
.L_24820:                                   #        0x24803  0      
  movl %eax, %eax                           #  22    0x24803  2      
  movl 0x8(%r15,%rax,1), %edx               #  23    0x24805  5      
  movq %rax, %rcx                           #  24    0x2480a  3      
  testq %rdx, %rdx                          #  25    0x2480d  3      
  je .L_24880                               #  26    0x24810  6      
  xchgw %ax, %ax                            #  27    0x24816  3      
  nop                                       #  28    0x24819  1      
.L_24840:                                   #        0x2481a  0      
  movq %rdx, %rax                           #  29    0x2481a  3      
  nop                                       #  30    0x2481d  1      
  nop                                       #  31    0x2481e  1      
.L_24860:                                   #        0x2481f  0      
  movl %eax, %eax                           #  32    0x2481f  2      
  cmpl 0x10(%r15,%rax,1), %ebx              #  33    0x24821  5      
  jle .L_24820                              #  34    0x24826  6      
  movl %eax, %eax                           #  35    0x2482c  2      
  movl 0xc(%r15,%rax,1), %edx               #  36    0x2482e  5      
  testq %rdx, %rdx                          #  37    0x24833  3      
  jne .L_24840                              #  38    0x24836  6      
  nop                                       #  39    0x2483c  1      
.L_24880:                                   #        0x2483d  0      
  cmpl %ecx, %esi                           #  40    0x2483d  2      
  je .L_24900                               #  41    0x2483f  6      
  movl %ecx, %ecx                           #  42    0x24845  2      
  cmpl 0x10(%r15,%rcx,1), %ebx              #  43    0x24847  5      
  jl .L_24900                               #  44    0x2484c  6      
  movl %ecx, %ecx                           #  45    0x24852  2      
  movl 0x14(%r15,%rcx,1), %edi              #  46    0x24854  5      
  testq %rdi, %rdi                          #  47    0x24859  3      
  je .L_24900                               #  48    0x2485c  6      
  movq 0x10(%rsp), %rdx                     #  49    0x24862  5      
  xchgw %ax, %ax                            #  50    0x24867  3      
  movl %edi, %edi                           #  51    0x2486a  2      
  movl (%r15,%rdi,1), %eax                  #  52    0x2486c  4      
  leal 0x20(%rsp), %ebx                     #  53    0x24870  4      
  movl $0x100205f8, 0x20(%rsp)              #  54    0x24874  8      
  movb $0x1, 0x38(%rsp)                     #  55    0x2487c  5      
  movl %ebx, %esi                           #  56    0x24881  2      
  movq %rdx, 0x28(%rsp)                     #  57    0x24883  5      
  xchgw %ax, %ax                            #  58    0x24888  3      
  movq 0x18(%rsp), %rdx                     #  59    0x2488b  5      
  movl %eax, %eax                           #  60    0x24890  2      
  movl 0x20(%r15,%rax,1), %eax              #  61    0x24892  5      
  movq %rdx, 0x30(%rsp)                     #  62    0x24897  5      
  nop                                       #  63    0x2489c  1      
  andl $0xffffffe0, %eax                    #  64    0x2489d  5      
  addq %r15, %rax                           #  65    0x248a2  3      
  callq %rax                                #  66    0x248a5  2      
  movl %ebx, %edi                           #  67    0x248a7  2      
  nop                                       #  68    0x248a9  1      
  nop                                       #  69    0x248aa  1      
  callq ._ZN2pp3VarD1Ev                     #  70    0x248ab  5      
.L_24900:                                   #        0x248b0  0      
  addl $0x40, %esp                          #  71    0x248b0  3      
  addq %r15, %rsp                           #  72    0x248b3  3      
  popq %rbx                                 #  73    0x248b6  2      
  popq %r11                                 #  74    0x248b8  3      
  andl $0xffffffe0, %r11d                   #  75    0x248bb  7      
  addq %r15, %r11                           #  76    0x248c2  3      
  jmpq %r11                                 #  77    0x248c5  3      
  nop                                       #  78    0x248c8  1      
  movl %ebx, %edi                           #  79    0x248c9  2      
  movl %eax, 0x8(%rsp)                      #  80    0x248cb  4      
  nop                                       #  81    0x248cf  1      
  nop                                       #  82    0x248d0  1      
  callq ._ZN2pp3VarD1Ev                     #  83    0x248d1  5      
  movl 0x8(%rsp), %eax                      #  84    0x248d6  4      
  movl %eax, %edi                           #  85    0x248da  2      
  nop                                       #  86    0x248dc  1      
  nop                                       #  87    0x248dd  1      
  callq ._Unwind_Resume                     #  88    0x248de  5      
                                                                     
.size _ZN2pp23Messaging_HandleMessageEi6PP_Var, .-_ZN2pp23Messaging_HandleMessageEi6PP_Var

