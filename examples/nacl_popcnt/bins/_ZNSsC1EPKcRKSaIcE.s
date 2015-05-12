  .text
  .globl _ZNSsC1EPKcRKSaIcE
  .type _ZNSsC1EPKcRKSaIcE, @function

#! file-offset 0x47480
#! rip-offset  0x47480
#! capacity    192 bytes

# Text                                                                    #  Line  RIP      Bytes  
._ZNSsC1EPKcRKSaIcE:                                                      #        0x47480  0      
  movq %rbx, -0x18(%rsp)                                                  #  1     0x47480  5      
  movl %esi, %ebx                                                         #  2     0x47485  2      
  movq %r12, -0x10(%rsp)                                                  #  3     0x47487  5      
  movq %r13, -0x8(%rsp)                                                   #  4     0x4748c  5      
  subl $0x28, %esp                                                        #  5     0x47491  3      
  addq %r15, %rsp                                                         #  6     0x47494  3      
  testq %rbx, %rbx                                                        #  7     0x47497  3      
  movl %edi, %r12d                                                        #  8     0x4749a  3      
  movl %edx, %r13d                                                        #  9     0x4749d  3      
  movl $0xffffffff, %esi                                                  #  10    0x474a0  5      
  je .L_474e0                                                             #  11    0x474a5  6      
  movl %ebx, %edi                                                         #  12    0x474ab  2      
  nop                                                                     #  13    0x474ad  1      
  nop                                                                     #  14    0x474ae  1      
  callq .strlen                                                           #  15    0x474af  5      
  leal (%rax,%rbx,1), %esi                                                #  16    0x474b4  3      
  nop                                                                     #  17    0x474b7  1      
  nop                                                                     #  18    0x474b8  1      
.L_474e0:                                                                 #        0x474b9  0      
  movl %r13d, %edx                                                        #  19    0x474b9  3      
  movl %ebx, %edi                                                         #  20    0x474bc  2      
  movb $0x0, (%rsp)                                                       #  21    0x474be  4      
  nop                                                                     #  22    0x474c2  1      
  nop                                                                     #  23    0x474c3  1      
  callq ._ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag  #  24    0x474c4  5      
  movq 0x10(%rsp), %rbx                                                   #  25    0x474c9  5      
  movl %r12d, %r12d                                                       #  26    0x474ce  3      
  movl %eax, (%r15,%r12,1)                                                #  27    0x474d1  4      
  movq 0x20(%rsp), %r13                                                   #  28    0x474d5  5      
  movq 0x18(%rsp), %r12                                                   #  29    0x474da  5      
  addl $0x28, %esp                                                        #  30    0x474df  3      
  addq %r15, %rsp                                                         #  31    0x474e2  3      
  popq %r11                                                               #  32    0x474e5  3      
  xchgw %ax, %ax                                                          #  33    0x474e8  3      
  andl $0xffffffe0, %r11d                                                 #  34    0x474eb  7      
  addq %r15, %r11                                                         #  35    0x474f2  3      
  jmpq %r11                                                               #  36    0x474f5  3      
  nop                                                                     #  37    0x474f8  1      
  nop                                                                     #  38    0x474f9  1      
  nop                                                                     #  39    0x474fa  1      
  nop                                                                     #  40    0x474fb  1      
  nop                                                                     #  41    0x474fc  1      
  nop                                                                     #  42    0x474fd  1      
  nop                                                                     #  43    0x474fe  1      
  nop                                                                     #  44    0x474ff  1      
  nop                                                                     #  45    0x47500  1      
  nop                                                                     #  46    0x47501  1      
  nop                                                                     #  47    0x47502  1      
  nop                                                                     #  48    0x47503  1      
  nop                                                                     #  49    0x47504  1      
  nop                                                                     #  50    0x47505  1      
  nop                                                                     #  51    0x47506  1      
  nop                                                                     #  52    0x47507  1      
  nop                                                                     #  53    0x47508  1      
  nop                                                                     #  54    0x47509  1      
  nop                                                                     #  55    0x4750a  1      
  nop                                                                     #  56    0x4750b  1      
  nop                                                                     #  57    0x4750c  1      
  nop                                                                     #  58    0x4750d  1      
                                                                                                   
.size _ZNSsC1EPKcRKSaIcE, .-_ZNSsC1EPKcRKSaIcE

