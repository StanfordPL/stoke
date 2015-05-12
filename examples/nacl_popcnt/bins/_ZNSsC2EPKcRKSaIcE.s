  .text
  .globl _ZNSsC2EPKcRKSaIcE
  .type _ZNSsC2EPKcRKSaIcE, @function

#! file-offset 0x47540
#! rip-offset  0x47540
#! capacity    192 bytes

# Text                                                                    #  Line  RIP      Bytes  
._ZNSsC2EPKcRKSaIcE:                                                      #        0x47540  0      
  movq %rbx, -0x18(%rsp)                                                  #  1     0x47540  5      
  movl %esi, %ebx                                                         #  2     0x47545  2      
  movq %r12, -0x10(%rsp)                                                  #  3     0x47547  5      
  movq %r13, -0x8(%rsp)                                                   #  4     0x4754c  5      
  subl $0x28, %esp                                                        #  5     0x47551  3      
  addq %r15, %rsp                                                         #  6     0x47554  3      
  testq %rbx, %rbx                                                        #  7     0x47557  3      
  movl %edi, %r12d                                                        #  8     0x4755a  3      
  movl %edx, %r13d                                                        #  9     0x4755d  3      
  movl $0xffffffff, %esi                                                  #  10    0x47560  5      
  je .L_475a0                                                             #  11    0x47565  6      
  movl %ebx, %edi                                                         #  12    0x4756b  2      
  nop                                                                     #  13    0x4756d  1      
  nop                                                                     #  14    0x4756e  1      
  callq .strlen                                                           #  15    0x4756f  5      
  leal (%rax,%rbx,1), %esi                                                #  16    0x47574  3      
  nop                                                                     #  17    0x47577  1      
  nop                                                                     #  18    0x47578  1      
.L_475a0:                                                                 #        0x47579  0      
  movl %r13d, %edx                                                        #  19    0x47579  3      
  movl %ebx, %edi                                                         #  20    0x4757c  2      
  movb $0x0, (%rsp)                                                       #  21    0x4757e  4      
  nop                                                                     #  22    0x47582  1      
  nop                                                                     #  23    0x47583  1      
  callq ._ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag  #  24    0x47584  5      
  movq 0x10(%rsp), %rbx                                                   #  25    0x47589  5      
  movl %r12d, %r12d                                                       #  26    0x4758e  3      
  movl %eax, (%r15,%r12,1)                                                #  27    0x47591  4      
  movq 0x20(%rsp), %r13                                                   #  28    0x47595  5      
  movq 0x18(%rsp), %r12                                                   #  29    0x4759a  5      
  addl $0x28, %esp                                                        #  30    0x4759f  3      
  addq %r15, %rsp                                                         #  31    0x475a2  3      
  popq %r11                                                               #  32    0x475a5  3      
  xchgw %ax, %ax                                                          #  33    0x475a8  3      
  andl $0xffffffe0, %r11d                                                 #  34    0x475ab  7      
  addq %r15, %r11                                                         #  35    0x475b2  3      
  jmpq %r11                                                               #  36    0x475b5  3      
  nop                                                                     #  37    0x475b8  1      
  nop                                                                     #  38    0x475b9  1      
  nop                                                                     #  39    0x475ba  1      
  nop                                                                     #  40    0x475bb  1      
  nop                                                                     #  41    0x475bc  1      
  nop                                                                     #  42    0x475bd  1      
  nop                                                                     #  43    0x475be  1      
  nop                                                                     #  44    0x475bf  1      
  nop                                                                     #  45    0x475c0  1      
  nop                                                                     #  46    0x475c1  1      
  nop                                                                     #  47    0x475c2  1      
  nop                                                                     #  48    0x475c3  1      
  nop                                                                     #  49    0x475c4  1      
  nop                                                                     #  50    0x475c5  1      
  nop                                                                     #  51    0x475c6  1      
  nop                                                                     #  52    0x475c7  1      
  nop                                                                     #  53    0x475c8  1      
  nop                                                                     #  54    0x475c9  1      
  nop                                                                     #  55    0x475ca  1      
  nop                                                                     #  56    0x475cb  1      
  nop                                                                     #  57    0x475cc  1      
  nop                                                                     #  58    0x475cd  1      
                                                                                                   
.size _ZNSsC2EPKcRKSaIcE, .-_ZNSsC2EPKcRKSaIcE

