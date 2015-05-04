  .text
  .globl _ZNSsC1EPKcRKSaIcE
  .type _ZNSsC1EPKcRKSaIcE, @function

#! file-offset 0x47500
#! rip-offset  0x47500
#! capacity    192 bytes

# Text                                                                    #  Line  RIP      Bytes  
._ZNSsC1EPKcRKSaIcE:                                                      #        0x47500  0      
  movq %rbx, -0x18(%rsp)                                                  #  1     0x47500  5      
  movl %esi, %ebx                                                         #  2     0x47505  2      
  movq %r12, -0x10(%rsp)                                                  #  3     0x47507  5      
  movq %r13, -0x8(%rsp)                                                   #  4     0x4750c  5      
  subl $0x28, %esp                                                        #  5     0x47511  3      
  addq %r15, %rsp                                                         #  6     0x47514  3      
  testq %rbx, %rbx                                                        #  7     0x47517  3      
  movl %edi, %r12d                                                        #  8     0x4751a  3      
  movl %edx, %r13d                                                        #  9     0x4751d  3      
  movl $0xffffffff, %esi                                                  #  10    0x47520  5      
  je .L_47560                                                             #  11    0x47525  6      
  movl %ebx, %edi                                                         #  12    0x4752b  2      
  nop                                                                     #  13    0x4752d  1      
  nop                                                                     #  14    0x4752e  1      
  callq .strlen                                                           #  15    0x4752f  5      
  leal (%rax,%rbx,1), %esi                                                #  16    0x47534  3      
  nop                                                                     #  17    0x47537  1      
  nop                                                                     #  18    0x47538  1      
.L_47560:                                                                 #        0x47539  0      
  movl %r13d, %edx                                                        #  19    0x47539  3      
  movl %ebx, %edi                                                         #  20    0x4753c  2      
  movb $0x0, (%rsp)                                                       #  21    0x4753e  4      
  nop                                                                     #  22    0x47542  1      
  nop                                                                     #  23    0x47543  1      
  callq ._ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag  #  24    0x47544  5      
  movq 0x10(%rsp), %rbx                                                   #  25    0x47549  5      
  movl %r12d, %r12d                                                       #  26    0x4754e  3      
  movl %eax, (%r15,%r12,1)                                                #  27    0x47551  4      
  movq 0x20(%rsp), %r13                                                   #  28    0x47555  5      
  movq 0x18(%rsp), %r12                                                   #  29    0x4755a  5      
  addl $0x28, %esp                                                        #  30    0x4755f  3      
  addq %r15, %rsp                                                         #  31    0x47562  3      
  popq %r11                                                               #  32    0x47565  3      
  xchgw %ax, %ax                                                          #  33    0x47568  3      
  andl $0xffffffe0, %r11d                                                 #  34    0x4756b  7      
  addq %r15, %r11                                                         #  35    0x47572  3      
  jmpq %r11                                                               #  36    0x47575  3      
  nop                                                                     #  37    0x47578  1      
  nop                                                                     #  38    0x47579  1      
  nop                                                                     #  39    0x4757a  1      
  nop                                                                     #  40    0x4757b  1      
  nop                                                                     #  41    0x4757c  1      
  nop                                                                     #  42    0x4757d  1      
  nop                                                                     #  43    0x4757e  1      
  nop                                                                     #  44    0x4757f  1      
  nop                                                                     #  45    0x47580  1      
  nop                                                                     #  46    0x47581  1      
  nop                                                                     #  47    0x47582  1      
  nop                                                                     #  48    0x47583  1      
  nop                                                                     #  49    0x47584  1      
  nop                                                                     #  50    0x47585  1      
  nop                                                                     #  51    0x47586  1      
  nop                                                                     #  52    0x47587  1      
  nop                                                                     #  53    0x47588  1      
  nop                                                                     #  54    0x47589  1      
  nop                                                                     #  55    0x4758a  1      
  nop                                                                     #  56    0x4758b  1      
  nop                                                                     #  57    0x4758c  1      
  nop                                                                     #  58    0x4758d  1      
                                                                                                   
.size _ZNSsC1EPKcRKSaIcE, .-_ZNSsC1EPKcRKSaIcE

