  .text
  .globl _ZN2pp12_GLOBAL__N_121HandleBlockingMessageEiPvPK6PP_VarPS2_
  .type _ZN2pp12_GLOBAL__N_121HandleBlockingMessageEiPvPK6PP_VarPS2_, @function

#! file-offset 0x207e0
#! rip-offset  0x207e0
#! capacity    544 bytes

# Text                                                          #  Line  RIP      Bytes  
._ZN2pp12_GLOBAL__N_121HandleBlockingMessageEiPvPK6PP_VarPS2_:  #        0x207e0  0      
  movq %r13, -0x10(%rsp)                                        #  1     0x207e0  5      
  movl %esi, %r13d                                              #  2     0x207e5  3      
  movq %rbx, -0x20(%rsp)                                        #  3     0x207e8  5      
  movq %r12, -0x18(%rsp)                                        #  4     0x207ed  5      
  movq %r14, -0x8(%rsp)                                         #  5     0x207f2  5      
  subl $0xe8, %esp                                              #  6     0x207f7  3      
  addq %r15, %rsp                                               #  7     0x207fa  3      
  movl %r13d, %r13d                                             #  8     0x207fd  3      
  movl (%r15,%r13,1), %eax                                      #  9     0x20800  4      
  leal 0x20(%rsp), %ebx                                         #  10    0x20804  4      
  movl %edx, %esi                                               #  11    0x20808  2      
  movl %edi, 0x1c(%rsp)                                         #  12    0x2080a  4      
  movl %ecx, %r12d                                              #  13    0x2080e  3      
  movl %ebx, %edi                                               #  14    0x20811  2      
  movl %eax, %eax                                               #  15    0x20813  2      
  movl 0xc(%r15,%rax,1), %r14d                                  #  16    0x20815  5      
  nop                                                           #  17    0x2081a  1      
  nop                                                           #  18    0x2081b  1      
  nop                                                           #  19    0x2081c  1      
  callq ._ZN2pp3VarC1ERK6PP_Var                                 #  20    0x2081d  5      
  leal 0x40(%rsp), %eax                                         #  21    0x20822  4      
  movl %ebx, %ecx                                               #  22    0x20826  2      
  movl 0x1c(%rsp), %edx                                         #  23    0x20828  4      
  movl %r13d, %esi                                              #  24    0x2082c  3      
  movq %rax, 0x8(%rsp)                                          #  25    0x2082f  5      
  movl %eax, %edi                                               #  26    0x20834  2      
  xchgw %ax, %ax                                                #  27    0x20836  3      
  andl $0xffffffe0, %r14d                                       #  28    0x20839  7      
  addq %r15, %r14                                               #  29    0x20840  3      
  callq %r14                                                    #  30    0x20843  3      
  movl %ebx, %edi                                               #  31    0x20846  2      
  nop                                                           #  32    0x20848  1      
  nop                                                           #  33    0x20849  1      
  callq ._ZN2pp3VarD1Ev                                         #  34    0x2084a  5      
  movq 0x48(%rsp), %rdx                                         #  35    0x2084f  5      
  movq 0x50(%rsp), %rax                                         #  36    0x20854  5      
  movl 0x8(%rsp), %edi                                          #  37    0x20859  4      
  movq $0x0, 0xa0(%rsp)                                         #  38    0x2085d  12     
  nop                                                           #  39    0x20869  1      
  movq $0x0, 0xa8(%rsp)                                         #  40    0x2086a  12     
  movq $0x0, 0x80(%rsp)                                         #  41    0x20876  12     
  movq %rdx, 0xb0(%rsp)                                         #  42    0x20882  8      
  movq %rax, 0xb8(%rsp)                                         #  43    0x2088a  8      
  movq $0x0, 0x88(%rsp)                                         #  44    0x20892  12     
  movq $0x0, 0x70(%rsp)                                         #  45    0x2089e  9      
  nop                                                           #  46    0x208a7  1      
  movq $0x0, 0x78(%rsp)                                         #  47    0x208a8  9      
  movq $0x0, 0x48(%rsp)                                         #  48    0x208b1  9      
  movq $0x0, 0x50(%rsp)                                         #  49    0x208ba  9      
  movq %rdx, 0x60(%rsp)                                         #  50    0x208c3  5      
  movq %rax, 0x68(%rsp)                                         #  51    0x208c8  5      
  movq %rdx, 0x90(%rsp)                                         #  52    0x208cd  8      
  movq %rax, 0x98(%rsp)                                         #  53    0x208d5  8      
  movl %r12d, %r12d                                             #  54    0x208dd  3      
  movq %rdx, (%r15,%r12,1)                                      #  55    0x208e0  4      
  nop                                                           #  56    0x208e4  1      
  movl %r12d, %r12d                                             #  57    0x208e5  3      
  movq %rax, 0x8(%r15,%r12,1)                                   #  58    0x208e8  5      
  movb $0x1, 0x58(%rsp)                                         #  59    0x208ed  5      
  nop                                                           #  60    0x208f2  1      
  callq ._ZN2pp3VarD1Ev                                         #  61    0x208f3  5      
  movq 0xc8(%rsp), %rbx                                         #  62    0x208f8  8      
  movq 0xd0(%rsp), %r12                                         #  63    0x20900  8      
  movq 0xd8(%rsp), %r13                                         #  64    0x20908  8      
  movq 0xe0(%rsp), %r14                                         #  65    0x20910  8      
  addl $0xe8, %esp                                              #  66    0x20918  3      
  addq %r15, %rsp                                               #  67    0x2091b  3      
  popq %r11                                                     #  68    0x2091e  3      
  andl $0xffffffe0, %r11d                                       #  69    0x20921  7      
  addq %r15, %r11                                               #  70    0x20928  3      
  jmpq %r11                                                     #  71    0x2092b  3      
  nop                                                           #  72    0x2092e  1      
  movl %eax, %r12d                                              #  73    0x2092f  3      
  movl %ebx, %edi                                               #  74    0x20932  2      
  nop                                                           #  75    0x20934  1      
  nop                                                           #  76    0x20935  1      
  callq ._ZN2pp3VarD1Ev                                         #  77    0x20936  5      
  movl %r12d, %edi                                              #  78    0x2093b  3      
  nop                                                           #  79    0x2093e  1      
  nop                                                           #  80    0x2093f  1      
  callq ._Unwind_Resume                                         #  81    0x20940  5      
  movl 0x8(%rsp), %edi                                          #  82    0x20945  4      
  movl %eax, %r12d                                              #  83    0x20949  3      
  nop                                                           #  84    0x2094c  1      
  nop                                                           #  85    0x2094d  1      
  callq ._ZN2pp3VarD1Ev                                         #  86    0x2094e  5      
  movl %r12d, %edi                                              #  87    0x20953  3      
  nop                                                           #  88    0x20956  1      
  nop                                                           #  89    0x20957  1      
  callq ._Unwind_Resume                                         #  90    0x20958  5      
                                                                                         
.size _ZN2pp12_GLOBAL__N_121HandleBlockingMessageEiPvPK6PP_VarPS2_, .-_ZN2pp12_GLOBAL__N_121HandleBlockingMessageEiPvPK6PP_VarPS2_

