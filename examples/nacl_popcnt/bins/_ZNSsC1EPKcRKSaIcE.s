  .text
  .globl _ZNSsC1EPKcRKSaIcE
  .type _ZNSsC1EPKcRKSaIcE, @function

#! file-offset 0x47460
#! rip-offset  0x47460
#! capacity    192 bytes

# Text                                                                    #  Line  RIP      Bytes  
._ZNSsC1EPKcRKSaIcE:                                                      #        0x47460  0      
  movq %rbx, -0x18(%rsp)                                                  #  1     0x47460  5      
  movl %esi, %ebx                                                         #  2     0x47465  2      
  movq %r12, -0x10(%rsp)                                                  #  3     0x47467  5      
  movq %r13, -0x8(%rsp)                                                   #  4     0x4746c  5      
  subl $0x28, %esp                                                        #  5     0x47471  3      
  addq %r15, %rsp                                                         #  6     0x47474  3      
  testq %rbx, %rbx                                                        #  7     0x47477  3      
  movl %edi, %r12d                                                        #  8     0x4747a  3      
  movl %edx, %r13d                                                        #  9     0x4747d  3      
  movl $0xffffffff, %esi                                                  #  10    0x47480  5      
  je .L_474c0                                                             #  11    0x47485  6      
  movl %ebx, %edi                                                         #  12    0x4748b  2      
  nop                                                                     #  13    0x4748d  1      
  nop                                                                     #  14    0x4748e  1      
  callq .strlen                                                           #  15    0x4748f  5      
  leal (%rax,%rbx,1), %esi                                                #  16    0x47494  3      
  nop                                                                     #  17    0x47497  1      
  nop                                                                     #  18    0x47498  1      
.L_474c0:                                                                 #        0x47499  0      
  movl %r13d, %edx                                                        #  19    0x47499  3      
  movl %ebx, %edi                                                         #  20    0x4749c  2      
  movb $0x0, (%rsp)                                                       #  21    0x4749e  4      
  nop                                                                     #  22    0x474a2  1      
  nop                                                                     #  23    0x474a3  1      
  callq ._ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag  #  24    0x474a4  5      
  movq 0x10(%rsp), %rbx                                                   #  25    0x474a9  5      
  movl %r12d, %r12d                                                       #  26    0x474ae  3      
  movl %eax, (%r15,%r12,1)                                                #  27    0x474b1  4      
  movq 0x20(%rsp), %r13                                                   #  28    0x474b5  5      
  movq 0x18(%rsp), %r12                                                   #  29    0x474ba  5      
  addl $0x28, %esp                                                        #  30    0x474bf  3      
  addq %r15, %rsp                                                         #  31    0x474c2  3      
  popq %r11                                                               #  32    0x474c5  3      
  xchgw %ax, %ax                                                          #  33    0x474c8  3      
  andl $0xffffffe0, %r11d                                                 #  34    0x474cb  7      
  addq %r15, %r11                                                         #  35    0x474d2  3      
  jmpq %r11                                                               #  36    0x474d5  3      
  nop                                                                     #  37    0x474d8  1      
  nop                                                                     #  38    0x474d9  1      
  nop                                                                     #  39    0x474da  1      
  nop                                                                     #  40    0x474db  1      
  nop                                                                     #  41    0x474dc  1      
  nop                                                                     #  42    0x474dd  1      
  nop                                                                     #  43    0x474de  1      
  nop                                                                     #  44    0x474df  1      
  nop                                                                     #  45    0x474e0  1      
  nop                                                                     #  46    0x474e1  1      
  nop                                                                     #  47    0x474e2  1      
  nop                                                                     #  48    0x474e3  1      
  nop                                                                     #  49    0x474e4  1      
  nop                                                                     #  50    0x474e5  1      
  nop                                                                     #  51    0x474e6  1      
  nop                                                                     #  52    0x474e7  1      
  nop                                                                     #  53    0x474e8  1      
  nop                                                                     #  54    0x474e9  1      
  nop                                                                     #  55    0x474ea  1      
  nop                                                                     #  56    0x474eb  1      
  nop                                                                     #  57    0x474ec  1      
  nop                                                                     #  58    0x474ed  1      
                                                                                                   
.size _ZNSsC1EPKcRKSaIcE, .-_ZNSsC1EPKcRKSaIcE

