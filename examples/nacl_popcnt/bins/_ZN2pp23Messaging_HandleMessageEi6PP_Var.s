  .text
  .globl _ZN2pp23Messaging_HandleMessageEi6PP_Var
  .type _ZN2pp23Messaging_HandleMessageEi6PP_Var, @function

#! file-offset 0x247a0
#! rip-offset  0x247a0
#! capacity    416 bytes

# Text                                      #  Line  RIP      Bytes  
._ZN2pp23Messaging_HandleMessageEi6PP_Var:  #        0x247a0  0      
  pushq %rbx                                #  1     0x247a0  2      
  movl %edi, %ebx                           #  2     0x247a2  2      
  subl $0x40, %esp                          #  3     0x247a4  3      
  addq %r15, %rsp                           #  4     0x247a7  3      
  movq %rsi, 0x10(%rsp)                     #  5     0x247aa  5      
  movq %rdx, 0x18(%rsp)                     #  6     0x247af  5      
  nop                                       #  7     0x247b4  1      
  callq ._ZN2pp6Module3GetEv                #  8     0x247b5  5      
  movl %eax, %eax                           #  9     0x247ba  2      
  testq %rax, %rax                          #  10    0x247bc  3      
  je .L_248e0                               #  11    0x247bf  6      
  leal 0x8(%rax), %esi                      #  12    0x247c5  3      
  movl %eax, %eax                           #  13    0x247c8  2      
  movl 0xc(%r15,%rax,1), %eax               #  14    0x247ca  5      
  movq %rsi, %rcx                           #  15    0x247cf  3      
  testq %rax, %rax                          #  16    0x247d2  3      
  nop                                       #  17    0x247d5  1      
  jne .L_24840                              #  18    0x247d6  6      
  jmpq .L_24860                             #  19    0x247dc  5      
  nop                                       #  20    0x247e1  1      
  nop                                       #  21    0x247e2  1      
.L_24800:                                   #        0x247e3  0      
  movl %eax, %eax                           #  22    0x247e3  2      
  movl 0x8(%r15,%rax,1), %edx               #  23    0x247e5  5      
  movq %rax, %rcx                           #  24    0x247ea  3      
  testq %rdx, %rdx                          #  25    0x247ed  3      
  je .L_24860                               #  26    0x247f0  6      
  xchgw %ax, %ax                            #  27    0x247f6  3      
  nop                                       #  28    0x247f9  1      
.L_24820:                                   #        0x247fa  0      
  movq %rdx, %rax                           #  29    0x247fa  3      
  nop                                       #  30    0x247fd  1      
  nop                                       #  31    0x247fe  1      
.L_24840:                                   #        0x247ff  0      
  movl %eax, %eax                           #  32    0x247ff  2      
  cmpl 0x10(%r15,%rax,1), %ebx              #  33    0x24801  5      
  jle .L_24800                              #  34    0x24806  6      
  movl %eax, %eax                           #  35    0x2480c  2      
  movl 0xc(%r15,%rax,1), %edx               #  36    0x2480e  5      
  testq %rdx, %rdx                          #  37    0x24813  3      
  jne .L_24820                              #  38    0x24816  6      
  nop                                       #  39    0x2481c  1      
.L_24860:                                   #        0x2481d  0      
  cmpl %ecx, %esi                           #  40    0x2481d  2      
  je .L_248e0                               #  41    0x2481f  6      
  movl %ecx, %ecx                           #  42    0x24825  2      
  cmpl 0x10(%r15,%rcx,1), %ebx              #  43    0x24827  5      
  jl .L_248e0                               #  44    0x2482c  6      
  movl %ecx, %ecx                           #  45    0x24832  2      
  movl 0x14(%r15,%rcx,1), %edi              #  46    0x24834  5      
  testq %rdi, %rdi                          #  47    0x24839  3      
  je .L_248e0                               #  48    0x2483c  6      
  movq 0x10(%rsp), %rdx                     #  49    0x24842  5      
  xchgw %ax, %ax                            #  50    0x24847  3      
  movl %edi, %edi                           #  51    0x2484a  2      
  movl (%r15,%rdi,1), %eax                  #  52    0x2484c  4      
  leal 0x20(%rsp), %ebx                     #  53    0x24850  4      
  movl $0x100205f8, 0x20(%rsp)              #  54    0x24854  8      
  movb $0x1, 0x38(%rsp)                     #  55    0x2485c  5      
  movl %ebx, %esi                           #  56    0x24861  2      
  movq %rdx, 0x28(%rsp)                     #  57    0x24863  5      
  xchgw %ax, %ax                            #  58    0x24868  3      
  movq 0x18(%rsp), %rdx                     #  59    0x2486b  5      
  movl %eax, %eax                           #  60    0x24870  2      
  movl 0x20(%r15,%rax,1), %eax              #  61    0x24872  5      
  movq %rdx, 0x30(%rsp)                     #  62    0x24877  5      
  nop                                       #  63    0x2487c  1      
  andl $0xffffffe0, %eax                    #  64    0x2487d  5      
  addq %r15, %rax                           #  65    0x24882  3      
  callq %rax                                #  66    0x24885  2      
  movl %ebx, %edi                           #  67    0x24887  2      
  nop                                       #  68    0x24889  1      
  nop                                       #  69    0x2488a  1      
  callq ._ZN2pp3VarD1Ev                     #  70    0x2488b  5      
.L_248e0:                                   #        0x24890  0      
  addl $0x40, %esp                          #  71    0x24890  3      
  addq %r15, %rsp                           #  72    0x24893  3      
  popq %rbx                                 #  73    0x24896  2      
  popq %r11                                 #  74    0x24898  3      
  andl $0xffffffe0, %r11d                   #  75    0x2489b  7      
  addq %r15, %r11                           #  76    0x248a2  3      
  jmpq %r11                                 #  77    0x248a5  3      
  nop                                       #  78    0x248a8  1      
  movl %ebx, %edi                           #  79    0x248a9  2      
  movl %eax, 0x8(%rsp)                      #  80    0x248ab  4      
  nop                                       #  81    0x248af  1      
  nop                                       #  82    0x248b0  1      
  callq ._ZN2pp3VarD1Ev                     #  83    0x248b1  5      
  movl 0x8(%rsp), %eax                      #  84    0x248b6  4      
  movl %eax, %edi                           #  85    0x248ba  2      
  nop                                       #  86    0x248bc  1      
  nop                                       #  87    0x248bd  1      
  callq ._Unwind_Resume                     #  88    0x248be  5      
                                                                     
.size _ZN2pp23Messaging_HandleMessageEi6PP_Var, .-_ZN2pp23Messaging_HandleMessageEi6PP_Var

