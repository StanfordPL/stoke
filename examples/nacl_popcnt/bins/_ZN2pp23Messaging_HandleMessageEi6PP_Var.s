  .text
  .globl _ZN2pp23Messaging_HandleMessageEi6PP_Var
  .type _ZN2pp23Messaging_HandleMessageEi6PP_Var, @function

#! file-offset 0x24840
#! rip-offset  0x24840
#! capacity    416 bytes

# Text                                      #  Line  RIP      Bytes  
._ZN2pp23Messaging_HandleMessageEi6PP_Var:  #        0x24840  0      
  pushq %rbx                                #  1     0x24840  2      
  movl %edi, %ebx                           #  2     0x24842  2      
  subl $0x40, %esp                          #  3     0x24844  3      
  addq %r15, %rsp                           #  4     0x24847  3      
  movq %rsi, 0x10(%rsp)                     #  5     0x2484a  5      
  movq %rdx, 0x18(%rsp)                     #  6     0x2484f  5      
  nop                                       #  7     0x24854  1      
  callq ._ZN2pp6Module3GetEv                #  8     0x24855  5      
  movl %eax, %eax                           #  9     0x2485a  2      
  testq %rax, %rax                          #  10    0x2485c  3      
  je .L_24980                               #  11    0x2485f  6      
  leal 0x8(%rax), %esi                      #  12    0x24865  3      
  movl %eax, %eax                           #  13    0x24868  2      
  movl 0xc(%r15,%rax,1), %eax               #  14    0x2486a  5      
  movq %rsi, %rcx                           #  15    0x2486f  3      
  testq %rax, %rax                          #  16    0x24872  3      
  nop                                       #  17    0x24875  1      
  jne .L_248e0                              #  18    0x24876  6      
  jmpq .L_24900                             #  19    0x2487c  5      
  nop                                       #  20    0x24881  1      
  nop                                       #  21    0x24882  1      
.L_248a0:                                   #        0x24883  0      
  movl %eax, %eax                           #  22    0x24883  2      
  movl 0x8(%r15,%rax,1), %edx               #  23    0x24885  5      
  movq %rax, %rcx                           #  24    0x2488a  3      
  testq %rdx, %rdx                          #  25    0x2488d  3      
  je .L_24900                               #  26    0x24890  6      
  xchgw %ax, %ax                            #  27    0x24896  3      
  nop                                       #  28    0x24899  1      
.L_248c0:                                   #        0x2489a  0      
  movq %rdx, %rax                           #  29    0x2489a  3      
  nop                                       #  30    0x2489d  1      
  nop                                       #  31    0x2489e  1      
.L_248e0:                                   #        0x2489f  0      
  movl %eax, %eax                           #  32    0x2489f  2      
  cmpl 0x10(%r15,%rax,1), %ebx              #  33    0x248a1  5      
  jle .L_248a0                              #  34    0x248a6  6      
  movl %eax, %eax                           #  35    0x248ac  2      
  movl 0xc(%r15,%rax,1), %edx               #  36    0x248ae  5      
  testq %rdx, %rdx                          #  37    0x248b3  3      
  jne .L_248c0                              #  38    0x248b6  6      
  nop                                       #  39    0x248bc  1      
.L_24900:                                   #        0x248bd  0      
  cmpl %ecx, %esi                           #  40    0x248bd  2      
  je .L_24980                               #  41    0x248bf  6      
  movl %ecx, %ecx                           #  42    0x248c5  2      
  cmpl 0x10(%r15,%rcx,1), %ebx              #  43    0x248c7  5      
  jl .L_24980                               #  44    0x248cc  6      
  movl %ecx, %ecx                           #  45    0x248d2  2      
  movl 0x14(%r15,%rcx,1), %edi              #  46    0x248d4  5      
  testq %rdi, %rdi                          #  47    0x248d9  3      
  je .L_24980                               #  48    0x248dc  6      
  movq 0x10(%rsp), %rdx                     #  49    0x248e2  5      
  xchgw %ax, %ax                            #  50    0x248e7  3      
  movl %edi, %edi                           #  51    0x248ea  2      
  movl (%r15,%rdi,1), %eax                  #  52    0x248ec  4      
  leal 0x20(%rsp), %ebx                     #  53    0x248f0  4      
  movl $0x100205f8, 0x20(%rsp)              #  54    0x248f4  8      
  movb $0x1, 0x38(%rsp)                     #  55    0x248fc  5      
  movl %ebx, %esi                           #  56    0x24901  2      
  movq %rdx, 0x28(%rsp)                     #  57    0x24903  5      
  xchgw %ax, %ax                            #  58    0x24908  3      
  movq 0x18(%rsp), %rdx                     #  59    0x2490b  5      
  movl %eax, %eax                           #  60    0x24910  2      
  movl 0x20(%r15,%rax,1), %eax              #  61    0x24912  5      
  movq %rdx, 0x30(%rsp)                     #  62    0x24917  5      
  nop                                       #  63    0x2491c  1      
  andl $0xffffffe0, %eax                    #  64    0x2491d  5      
  addq %r15, %rax                           #  65    0x24922  3      
  callq %rax                                #  66    0x24925  2      
  movl %ebx, %edi                           #  67    0x24927  2      
  nop                                       #  68    0x24929  1      
  nop                                       #  69    0x2492a  1      
  callq ._ZN2pp3VarD1Ev                     #  70    0x2492b  5      
.L_24980:                                   #        0x24930  0      
  addl $0x40, %esp                          #  71    0x24930  3      
  addq %r15, %rsp                           #  72    0x24933  3      
  popq %rbx                                 #  73    0x24936  2      
  popq %r11                                 #  74    0x24938  3      
  andl $0xffffffe0, %r11d                   #  75    0x2493b  7      
  addq %r15, %r11                           #  76    0x24942  3      
  jmpq %r11                                 #  77    0x24945  3      
  nop                                       #  78    0x24948  1      
  movl %ebx, %edi                           #  79    0x24949  2      
  movl %eax, 0x8(%rsp)                      #  80    0x2494b  4      
  nop                                       #  81    0x2494f  1      
  nop                                       #  82    0x24950  1      
  callq ._ZN2pp3VarD1Ev                     #  83    0x24951  5      
  movl 0x8(%rsp), %eax                      #  84    0x24956  4      
  movl %eax, %edi                           #  85    0x2495a  2      
  nop                                       #  86    0x2495c  1      
  nop                                       #  87    0x2495d  1      
  callq ._Unwind_Resume                     #  88    0x2495e  5      
                                                                     
.size _ZN2pp23Messaging_HandleMessageEi6PP_Var, .-_ZN2pp23Messaging_HandleMessageEi6PP_Var

