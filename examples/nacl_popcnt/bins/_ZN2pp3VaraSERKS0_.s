  .text
  .globl _ZN2pp3VaraSERKS0_
  .type _ZN2pp3VaraSERKS0_, @function

#! file-offset 0x2d1c0
#! rip-offset  0x2d1c0
#! capacity    288 bytes

# Text                                                  #  Line  RIP      Bytes  
._ZN2pp3VaraSERKS0_:                                    #        0x2d1c0  0      
  movq %rbx, -0x18(%rsp)                                #  1     0x2d1c0  5      
  movq %r12, -0x10(%rsp)                                #  2     0x2d1c5  5      
  movl %edi, %ebx                                       #  3     0x2d1ca  2      
  movl %esi, %r12d                                      #  4     0x2d1cc  3      
  movq %r13, -0x8(%rsp)                                 #  5     0x2d1cf  5      
  subl $0x18, %esp                                      #  6     0x2d1d4  3      
  addq %r15, %rsp                                       #  7     0x2d1d7  3      
  cmpl %r12d, %ebx                                      #  8     0x2d1da  3      
  nop                                                   #  9     0x2d1dd  1      
  je .L_2d260                                           #  10    0x2d1de  6      
  movl %r12d, %r12d                                     #  11    0x2d1e4  3      
  cmpl $0x4, 0x8(%r15,%r12,1)                           #  12    0x2d1e7  6      
  movl %ebx, %ebx                                       #  13    0x2d1ed  2      
  movzbl 0x18(%r15,%rbx,1), %r13d                       #  14    0x2d1ef  6      
  movl %ebx, %ebx                                       #  15    0x2d1f5  2      
  movb $0x1, 0x18(%r15,%rbx,1)                          #  16    0x2d1f7  6      
  nop                                                   #  17    0x2d1fd  1      
  jg .L_2d2a0                                           #  18    0x2d1fe  6      
  nop                                                   #  19    0x2d204  1      
  nop                                                   #  20    0x2d205  1      
.L_2d220:                                               #        0x2d206  0      
  movl %ebx, %ebx                                       #  21    0x2d206  2      
  cmpl $0x4, 0x8(%r15,%rbx,1)                           #  22    0x2d208  6      
  jle .L_2d240                                          #  23    0x2d20e  6      
  testb %r13b, %r13b                                    #  24    0x2d214  3      
  je .L_2d240                                           #  25    0x2d217  6      
  leal 0x8(%rbx), %edi                                  #  26    0x2d21d  3      
  nop                                                   #  27    0x2d220  1      
  callq ._ZN2pp12_GLOBAL__N_113ReleaseHelperERK6PP_Var  #  28    0x2d221  5      
.L_2d240:                                               #        0x2d226  0      
  movl %r12d, %r12d                                     #  29    0x2d226  3      
  movq 0x8(%r15,%r12,1), %rax                           #  30    0x2d229  5      
  movl %ebx, %ebx                                       #  31    0x2d22e  2      
  movq %rax, 0x8(%r15,%rbx,1)                           #  32    0x2d230  5      
  movl %r12d, %r12d                                     #  33    0x2d235  3      
  movq 0x10(%r15,%r12,1), %rax                          #  34    0x2d238  5      
  movl %ebx, %ebx                                       #  35    0x2d23d  2      
  movq %rax, 0x10(%r15,%rbx,1)                          #  36    0x2d23f  5      
  xchgw %ax, %ax                                        #  37    0x2d244  3      
.L_2d260:                                               #        0x2d247  0      
  movl %ebx, %eax                                       #  38    0x2d247  2      
  movq 0x8(%rsp), %r12                                  #  39    0x2d249  5      
  movq (%rsp), %rbx                                     #  40    0x2d24e  4      
  movq 0x10(%rsp), %r13                                 #  41    0x2d252  5      
  addl $0x18, %esp                                      #  42    0x2d257  3      
  addq %r15, %rsp                                       #  43    0x2d25a  3      
  popq %r11                                             #  44    0x2d25d  3      
  nop                                                   #  45    0x2d260  1      
  andl $0xffffffe0, %r11d                               #  46    0x2d261  7      
  addq %r15, %r11                                       #  47    0x2d268  3      
  jmpq %r11                                             #  48    0x2d26b  3      
  nop                                                   #  49    0x2d26e  1      
  nop                                                   #  50    0x2d26f  1      
.L_2d2a0:                                               #        0x2d270  0      
  leal 0x8(%r12), %edi                                  #  51    0x2d270  5      
  nop                                                   #  52    0x2d275  1      
  nop                                                   #  53    0x2d276  1      
  callq ._ZN2pp12_GLOBAL__N_112AddRefHelperERK6PP_Var   #  54    0x2d277  5      
  jmpq .L_2d220                                         #  55    0x2d27c  5      
  nop                                                   #  56    0x2d281  1      
  nop                                                   #  57    0x2d282  1      
  nop                                                   #  58    0x2d283  1      
                                                                                 
.size _ZN2pp3VaraSERKS0_, .-_ZN2pp3VaraSERKS0_

