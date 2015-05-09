  .text
  .globl _ZN2pp12_GLOBAL__N_121HandleBlockingMessageEiPvPK6PP_VarPS2_
  .type _ZN2pp12_GLOBAL__N_121HandleBlockingMessageEiPvPK6PP_VarPS2_, @function

#! file-offset 0x207c0
#! rip-offset  0x207c0
#! capacity    544 bytes

# Text                                                          #  Line  RIP      Bytes  
._ZN2pp12_GLOBAL__N_121HandleBlockingMessageEiPvPK6PP_VarPS2_:  #        0x207c0  0      
  movq %r13, -0x10(%rsp)                                        #  1     0x207c0  5      
  movl %esi, %r13d                                              #  2     0x207c5  3      
  movq %rbx, -0x20(%rsp)                                        #  3     0x207c8  5      
  movq %r12, -0x18(%rsp)                                        #  4     0x207cd  5      
  movq %r14, -0x8(%rsp)                                         #  5     0x207d2  5      
  subl $0xe8, %esp                                              #  6     0x207d7  3      
  addq %r15, %rsp                                               #  7     0x207da  3      
  movl %r13d, %r13d                                             #  8     0x207dd  3      
  movl (%r15,%r13,1), %eax                                      #  9     0x207e0  4      
  leal 0x20(%rsp), %ebx                                         #  10    0x207e4  4      
  movl %edx, %esi                                               #  11    0x207e8  2      
  movl %edi, 0x1c(%rsp)                                         #  12    0x207ea  4      
  movl %ecx, %r12d                                              #  13    0x207ee  3      
  movl %ebx, %edi                                               #  14    0x207f1  2      
  movl %eax, %eax                                               #  15    0x207f3  2      
  movl 0xc(%r15,%rax,1), %r14d                                  #  16    0x207f5  5      
  nop                                                           #  17    0x207fa  1      
  nop                                                           #  18    0x207fb  1      
  nop                                                           #  19    0x207fc  1      
  callq ._ZN2pp3VarC1ERK6PP_Var                                 #  20    0x207fd  5      
  leal 0x40(%rsp), %eax                                         #  21    0x20802  4      
  movl %ebx, %ecx                                               #  22    0x20806  2      
  movl 0x1c(%rsp), %edx                                         #  23    0x20808  4      
  movl %r13d, %esi                                              #  24    0x2080c  3      
  movq %rax, 0x8(%rsp)                                          #  25    0x2080f  5      
  movl %eax, %edi                                               #  26    0x20814  2      
  xchgw %ax, %ax                                                #  27    0x20816  3      
  andl $0xffffffe0, %r14d                                       #  28    0x20819  7      
  addq %r15, %r14                                               #  29    0x20820  3      
  callq %r14                                                    #  30    0x20823  3      
  movl %ebx, %edi                                               #  31    0x20826  2      
  nop                                                           #  32    0x20828  1      
  nop                                                           #  33    0x20829  1      
  callq ._ZN2pp3VarD1Ev                                         #  34    0x2082a  5      
  movq 0x48(%rsp), %rdx                                         #  35    0x2082f  5      
  movq 0x50(%rsp), %rax                                         #  36    0x20834  5      
  movl 0x8(%rsp), %edi                                          #  37    0x20839  4      
  movq $0x0, 0xa0(%rsp)                                         #  38    0x2083d  12     
  nop                                                           #  39    0x20849  1      
  movq $0x0, 0xa8(%rsp)                                         #  40    0x2084a  12     
  movq $0x0, 0x80(%rsp)                                         #  41    0x20856  12     
  movq %rdx, 0xb0(%rsp)                                         #  42    0x20862  8      
  movq %rax, 0xb8(%rsp)                                         #  43    0x2086a  8      
  movq $0x0, 0x88(%rsp)                                         #  44    0x20872  12     
  movq $0x0, 0x70(%rsp)                                         #  45    0x2087e  9      
  nop                                                           #  46    0x20887  1      
  movq $0x0, 0x78(%rsp)                                         #  47    0x20888  9      
  movq $0x0, 0x48(%rsp)                                         #  48    0x20891  9      
  movq $0x0, 0x50(%rsp)                                         #  49    0x2089a  9      
  movq %rdx, 0x60(%rsp)                                         #  50    0x208a3  5      
  movq %rax, 0x68(%rsp)                                         #  51    0x208a8  5      
  movq %rdx, 0x90(%rsp)                                         #  52    0x208ad  8      
  movq %rax, 0x98(%rsp)                                         #  53    0x208b5  8      
  movl %r12d, %r12d                                             #  54    0x208bd  3      
  movq %rdx, (%r15,%r12,1)                                      #  55    0x208c0  4      
  nop                                                           #  56    0x208c4  1      
  movl %r12d, %r12d                                             #  57    0x208c5  3      
  movq %rax, 0x8(%r15,%r12,1)                                   #  58    0x208c8  5      
  movb $0x1, 0x58(%rsp)                                         #  59    0x208cd  5      
  nop                                                           #  60    0x208d2  1      
  callq ._ZN2pp3VarD1Ev                                         #  61    0x208d3  5      
  movq 0xc8(%rsp), %rbx                                         #  62    0x208d8  8      
  movq 0xd0(%rsp), %r12                                         #  63    0x208e0  8      
  movq 0xd8(%rsp), %r13                                         #  64    0x208e8  8      
  movq 0xe0(%rsp), %r14                                         #  65    0x208f0  8      
  addl $0xe8, %esp                                              #  66    0x208f8  3      
  addq %r15, %rsp                                               #  67    0x208fb  3      
  popq %r11                                                     #  68    0x208fe  3      
  andl $0xffffffe0, %r11d                                       #  69    0x20901  7      
  addq %r15, %r11                                               #  70    0x20908  3      
  jmpq %r11                                                     #  71    0x2090b  3      
  nop                                                           #  72    0x2090e  1      
  movl %eax, %r12d                                              #  73    0x2090f  3      
  movl %ebx, %edi                                               #  74    0x20912  2      
  nop                                                           #  75    0x20914  1      
  nop                                                           #  76    0x20915  1      
  callq ._ZN2pp3VarD1Ev                                         #  77    0x20916  5      
  movl %r12d, %edi                                              #  78    0x2091b  3      
  nop                                                           #  79    0x2091e  1      
  nop                                                           #  80    0x2091f  1      
  callq ._Unwind_Resume                                         #  81    0x20920  5      
  movl 0x8(%rsp), %edi                                          #  82    0x20925  4      
  movl %eax, %r12d                                              #  83    0x20929  3      
  nop                                                           #  84    0x2092c  1      
  nop                                                           #  85    0x2092d  1      
  callq ._ZN2pp3VarD1Ev                                         #  86    0x2092e  5      
  movl %r12d, %edi                                              #  87    0x20933  3      
  nop                                                           #  88    0x20936  1      
  nop                                                           #  89    0x20937  1      
  callq ._Unwind_Resume                                         #  90    0x20938  5      
                                                                                         
.size _ZN2pp12_GLOBAL__N_121HandleBlockingMessageEiPvPK6PP_VarPS2_, .-_ZN2pp12_GLOBAL__N_121HandleBlockingMessageEiPvPK6PP_VarPS2_

