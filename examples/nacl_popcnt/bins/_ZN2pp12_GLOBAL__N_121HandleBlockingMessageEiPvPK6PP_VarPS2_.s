  .text
  .globl _ZN2pp12_GLOBAL__N_121HandleBlockingMessageEiPvPK6PP_VarPS2_
  .type _ZN2pp12_GLOBAL__N_121HandleBlockingMessageEiPvPK6PP_VarPS2_, @function

#! file-offset 0x20860
#! rip-offset  0x20860
#! capacity    544 bytes

# Text                                                          #  Line  RIP      Bytes  
._ZN2pp12_GLOBAL__N_121HandleBlockingMessageEiPvPK6PP_VarPS2_:  #        0x20860  0      
  movq %r13, -0x10(%rsp)                                        #  1     0x20860  5      
  movl %esi, %r13d                                              #  2     0x20865  3      
  movq %rbx, -0x20(%rsp)                                        #  3     0x20868  5      
  movq %r12, -0x18(%rsp)                                        #  4     0x2086d  5      
  movq %r14, -0x8(%rsp)                                         #  5     0x20872  5      
  subl $0xe8, %esp                                              #  6     0x20877  3      
  addq %r15, %rsp                                               #  7     0x2087a  3      
  movl %r13d, %r13d                                             #  8     0x2087d  3      
  movl (%r15,%r13,1), %eax                                      #  9     0x20880  4      
  leal 0x20(%rsp), %ebx                                         #  10    0x20884  4      
  movl %edx, %esi                                               #  11    0x20888  2      
  movl %edi, 0x1c(%rsp)                                         #  12    0x2088a  4      
  movl %ecx, %r12d                                              #  13    0x2088e  3      
  movl %ebx, %edi                                               #  14    0x20891  2      
  movl %eax, %eax                                               #  15    0x20893  2      
  movl 0xc(%r15,%rax,1), %r14d                                  #  16    0x20895  5      
  nop                                                           #  17    0x2089a  1      
  nop                                                           #  18    0x2089b  1      
  nop                                                           #  19    0x2089c  1      
  callq ._ZN2pp3VarC1ERK6PP_Var                                 #  20    0x2089d  5      
  leal 0x40(%rsp), %eax                                         #  21    0x208a2  4      
  movl %ebx, %ecx                                               #  22    0x208a6  2      
  movl 0x1c(%rsp), %edx                                         #  23    0x208a8  4      
  movl %r13d, %esi                                              #  24    0x208ac  3      
  movq %rax, 0x8(%rsp)                                          #  25    0x208af  5      
  movl %eax, %edi                                               #  26    0x208b4  2      
  xchgw %ax, %ax                                                #  27    0x208b6  3      
  andl $0xffffffe0, %r14d                                       #  28    0x208b9  7      
  addq %r15, %r14                                               #  29    0x208c0  3      
  callq %r14                                                    #  30    0x208c3  3      
  movl %ebx, %edi                                               #  31    0x208c6  2      
  nop                                                           #  32    0x208c8  1      
  nop                                                           #  33    0x208c9  1      
  callq ._ZN2pp3VarD1Ev                                         #  34    0x208ca  5      
  movq 0x48(%rsp), %rdx                                         #  35    0x208cf  5      
  movq 0x50(%rsp), %rax                                         #  36    0x208d4  5      
  movl 0x8(%rsp), %edi                                          #  37    0x208d9  4      
  movq $0x0, 0xa0(%rsp)                                         #  38    0x208dd  12     
  nop                                                           #  39    0x208e9  1      
  movq $0x0, 0xa8(%rsp)                                         #  40    0x208ea  12     
  movq $0x0, 0x80(%rsp)                                         #  41    0x208f6  12     
  movq %rdx, 0xb0(%rsp)                                         #  42    0x20902  8      
  movq %rax, 0xb8(%rsp)                                         #  43    0x2090a  8      
  movq $0x0, 0x88(%rsp)                                         #  44    0x20912  12     
  movq $0x0, 0x70(%rsp)                                         #  45    0x2091e  9      
  nop                                                           #  46    0x20927  1      
  movq $0x0, 0x78(%rsp)                                         #  47    0x20928  9      
  movq $0x0, 0x48(%rsp)                                         #  48    0x20931  9      
  movq $0x0, 0x50(%rsp)                                         #  49    0x2093a  9      
  movq %rdx, 0x60(%rsp)                                         #  50    0x20943  5      
  movq %rax, 0x68(%rsp)                                         #  51    0x20948  5      
  movq %rdx, 0x90(%rsp)                                         #  52    0x2094d  8      
  movq %rax, 0x98(%rsp)                                         #  53    0x20955  8      
  movl %r12d, %r12d                                             #  54    0x2095d  3      
  movq %rdx, (%r15,%r12,1)                                      #  55    0x20960  4      
  nop                                                           #  56    0x20964  1      
  movl %r12d, %r12d                                             #  57    0x20965  3      
  movq %rax, 0x8(%r15,%r12,1)                                   #  58    0x20968  5      
  movb $0x1, 0x58(%rsp)                                         #  59    0x2096d  5      
  nop                                                           #  60    0x20972  1      
  callq ._ZN2pp3VarD1Ev                                         #  61    0x20973  5      
  movq 0xc8(%rsp), %rbx                                         #  62    0x20978  8      
  movq 0xd0(%rsp), %r12                                         #  63    0x20980  8      
  movq 0xd8(%rsp), %r13                                         #  64    0x20988  8      
  movq 0xe0(%rsp), %r14                                         #  65    0x20990  8      
  addl $0xe8, %esp                                              #  66    0x20998  3      
  addq %r15, %rsp                                               #  67    0x2099b  3      
  popq %r11                                                     #  68    0x2099e  3      
  andl $0xffffffe0, %r11d                                       #  69    0x209a1  7      
  addq %r15, %r11                                               #  70    0x209a8  3      
  jmpq %r11                                                     #  71    0x209ab  3      
  nop                                                           #  72    0x209ae  1      
  movl %eax, %r12d                                              #  73    0x209af  3      
  movl %ebx, %edi                                               #  74    0x209b2  2      
  nop                                                           #  75    0x209b4  1      
  nop                                                           #  76    0x209b5  1      
  callq ._ZN2pp3VarD1Ev                                         #  77    0x209b6  5      
  movl %r12d, %edi                                              #  78    0x209bb  3      
  nop                                                           #  79    0x209be  1      
  nop                                                           #  80    0x209bf  1      
  callq ._Unwind_Resume                                         #  81    0x209c0  5      
  movl 0x8(%rsp), %edi                                          #  82    0x209c5  4      
  movl %eax, %r12d                                              #  83    0x209c9  3      
  nop                                                           #  84    0x209cc  1      
  nop                                                           #  85    0x209cd  1      
  callq ._ZN2pp3VarD1Ev                                         #  86    0x209ce  5      
  movl %r12d, %edi                                              #  87    0x209d3  3      
  nop                                                           #  88    0x209d6  1      
  nop                                                           #  89    0x209d7  1      
  callq ._Unwind_Resume                                         #  90    0x209d8  5      
                                                                                         
.size _ZN2pp12_GLOBAL__N_121HandleBlockingMessageEiPvPK6PP_VarPS2_, .-_ZN2pp12_GLOBAL__N_121HandleBlockingMessageEiPvPK6PP_VarPS2_

