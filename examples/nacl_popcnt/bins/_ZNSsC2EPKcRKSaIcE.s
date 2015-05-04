  .text
  .globl _ZNSsC2EPKcRKSaIcE
  .type _ZNSsC2EPKcRKSaIcE, @function

#! file-offset 0x475c0
#! rip-offset  0x475c0
#! capacity    192 bytes

# Text                                                                    #  Line  RIP      Bytes  
._ZNSsC2EPKcRKSaIcE:                                                      #        0x475c0  0      
  movq %rbx, -0x18(%rsp)                                                  #  1     0x475c0  5      
  movl %esi, %ebx                                                         #  2     0x475c5  2      
  movq %r12, -0x10(%rsp)                                                  #  3     0x475c7  5      
  movq %r13, -0x8(%rsp)                                                   #  4     0x475cc  5      
  subl $0x28, %esp                                                        #  5     0x475d1  3      
  addq %r15, %rsp                                                         #  6     0x475d4  3      
  testq %rbx, %rbx                                                        #  7     0x475d7  3      
  movl %edi, %r12d                                                        #  8     0x475da  3      
  movl %edx, %r13d                                                        #  9     0x475dd  3      
  movl $0xffffffff, %esi                                                  #  10    0x475e0  5      
  je .L_47620                                                             #  11    0x475e5  6      
  movl %ebx, %edi                                                         #  12    0x475eb  2      
  nop                                                                     #  13    0x475ed  1      
  nop                                                                     #  14    0x475ee  1      
  callq .strlen                                                           #  15    0x475ef  5      
  leal (%rax,%rbx,1), %esi                                                #  16    0x475f4  3      
  nop                                                                     #  17    0x475f7  1      
  nop                                                                     #  18    0x475f8  1      
.L_47620:                                                                 #        0x475f9  0      
  movl %r13d, %edx                                                        #  19    0x475f9  3      
  movl %ebx, %edi                                                         #  20    0x475fc  2      
  movb $0x0, (%rsp)                                                       #  21    0x475fe  4      
  nop                                                                     #  22    0x47602  1      
  nop                                                                     #  23    0x47603  1      
  callq ._ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag  #  24    0x47604  5      
  movq 0x10(%rsp), %rbx                                                   #  25    0x47609  5      
  movl %r12d, %r12d                                                       #  26    0x4760e  3      
  movl %eax, (%r15,%r12,1)                                                #  27    0x47611  4      
  movq 0x20(%rsp), %r13                                                   #  28    0x47615  5      
  movq 0x18(%rsp), %r12                                                   #  29    0x4761a  5      
  addl $0x28, %esp                                                        #  30    0x4761f  3      
  addq %r15, %rsp                                                         #  31    0x47622  3      
  popq %r11                                                               #  32    0x47625  3      
  xchgw %ax, %ax                                                          #  33    0x47628  3      
  andl $0xffffffe0, %r11d                                                 #  34    0x4762b  7      
  addq %r15, %r11                                                         #  35    0x47632  3      
  jmpq %r11                                                               #  36    0x47635  3      
  nop                                                                     #  37    0x47638  1      
  nop                                                                     #  38    0x47639  1      
  nop                                                                     #  39    0x4763a  1      
  nop                                                                     #  40    0x4763b  1      
  nop                                                                     #  41    0x4763c  1      
  nop                                                                     #  42    0x4763d  1      
  nop                                                                     #  43    0x4763e  1      
  nop                                                                     #  44    0x4763f  1      
  nop                                                                     #  45    0x47640  1      
  nop                                                                     #  46    0x47641  1      
  nop                                                                     #  47    0x47642  1      
  nop                                                                     #  48    0x47643  1      
  nop                                                                     #  49    0x47644  1      
  nop                                                                     #  50    0x47645  1      
  nop                                                                     #  51    0x47646  1      
  nop                                                                     #  52    0x47647  1      
  nop                                                                     #  53    0x47648  1      
  nop                                                                     #  54    0x47649  1      
  nop                                                                     #  55    0x4764a  1      
  nop                                                                     #  56    0x4764b  1      
  nop                                                                     #  57    0x4764c  1      
  nop                                                                     #  58    0x4764d  1      
                                                                                                   
.size _ZNSsC2EPKcRKSaIcE, .-_ZNSsC2EPKcRKSaIcE

