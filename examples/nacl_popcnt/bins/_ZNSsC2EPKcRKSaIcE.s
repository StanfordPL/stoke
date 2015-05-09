  .text
  .globl _ZNSsC2EPKcRKSaIcE
  .type _ZNSsC2EPKcRKSaIcE, @function

#! file-offset 0x47520
#! rip-offset  0x47520
#! capacity    192 bytes

# Text                                                                    #  Line  RIP      Bytes  
._ZNSsC2EPKcRKSaIcE:                                                      #        0x47520  0      
  movq %rbx, -0x18(%rsp)                                                  #  1     0x47520  5      
  movl %esi, %ebx                                                         #  2     0x47525  2      
  movq %r12, -0x10(%rsp)                                                  #  3     0x47527  5      
  movq %r13, -0x8(%rsp)                                                   #  4     0x4752c  5      
  subl $0x28, %esp                                                        #  5     0x47531  3      
  addq %r15, %rsp                                                         #  6     0x47534  3      
  testq %rbx, %rbx                                                        #  7     0x47537  3      
  movl %edi, %r12d                                                        #  8     0x4753a  3      
  movl %edx, %r13d                                                        #  9     0x4753d  3      
  movl $0xffffffff, %esi                                                  #  10    0x47540  5      
  je .L_47580                                                             #  11    0x47545  6      
  movl %ebx, %edi                                                         #  12    0x4754b  2      
  nop                                                                     #  13    0x4754d  1      
  nop                                                                     #  14    0x4754e  1      
  callq .strlen                                                           #  15    0x4754f  5      
  leal (%rax,%rbx,1), %esi                                                #  16    0x47554  3      
  nop                                                                     #  17    0x47557  1      
  nop                                                                     #  18    0x47558  1      
.L_47580:                                                                 #        0x47559  0      
  movl %r13d, %edx                                                        #  19    0x47559  3      
  movl %ebx, %edi                                                         #  20    0x4755c  2      
  movb $0x0, (%rsp)                                                       #  21    0x4755e  4      
  nop                                                                     #  22    0x47562  1      
  nop                                                                     #  23    0x47563  1      
  callq ._ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag  #  24    0x47564  5      
  movq 0x10(%rsp), %rbx                                                   #  25    0x47569  5      
  movl %r12d, %r12d                                                       #  26    0x4756e  3      
  movl %eax, (%r15,%r12,1)                                                #  27    0x47571  4      
  movq 0x20(%rsp), %r13                                                   #  28    0x47575  5      
  movq 0x18(%rsp), %r12                                                   #  29    0x4757a  5      
  addl $0x28, %esp                                                        #  30    0x4757f  3      
  addq %r15, %rsp                                                         #  31    0x47582  3      
  popq %r11                                                               #  32    0x47585  3      
  xchgw %ax, %ax                                                          #  33    0x47588  3      
  andl $0xffffffe0, %r11d                                                 #  34    0x4758b  7      
  addq %r15, %r11                                                         #  35    0x47592  3      
  jmpq %r11                                                               #  36    0x47595  3      
  nop                                                                     #  37    0x47598  1      
  nop                                                                     #  38    0x47599  1      
  nop                                                                     #  39    0x4759a  1      
  nop                                                                     #  40    0x4759b  1      
  nop                                                                     #  41    0x4759c  1      
  nop                                                                     #  42    0x4759d  1      
  nop                                                                     #  43    0x4759e  1      
  nop                                                                     #  44    0x4759f  1      
  nop                                                                     #  45    0x475a0  1      
  nop                                                                     #  46    0x475a1  1      
  nop                                                                     #  47    0x475a2  1      
  nop                                                                     #  48    0x475a3  1      
  nop                                                                     #  49    0x475a4  1      
  nop                                                                     #  50    0x475a5  1      
  nop                                                                     #  51    0x475a6  1      
  nop                                                                     #  52    0x475a7  1      
  nop                                                                     #  53    0x475a8  1      
  nop                                                                     #  54    0x475a9  1      
  nop                                                                     #  55    0x475aa  1      
  nop                                                                     #  56    0x475ab  1      
  nop                                                                     #  57    0x475ac  1      
  nop                                                                     #  58    0x475ad  1      
                                                                                                   
.size _ZNSsC2EPKcRKSaIcE, .-_ZNSsC2EPKcRKSaIcE

