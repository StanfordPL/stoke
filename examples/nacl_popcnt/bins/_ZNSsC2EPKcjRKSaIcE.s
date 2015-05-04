  .text
  .globl _ZNSsC2EPKcjRKSaIcE
  .type _ZNSsC2EPKcjRKSaIcE, @function

#! file-offset 0x476c0
#! rip-offset  0x476c0
#! capacity    64 bytes

# Text                                                                    #  Line  RIP      Bytes  
._ZNSsC2EPKcjRKSaIcE:                                                     #        0x476c0  0      
  pushq %rbx                                                              #  1     0x476c0  2      
  movl %edi, %ebx                                                         #  2     0x476c2  2      
  movl %esi, %edi                                                         #  3     0x476c4  2      
  movl %ecx, %ecx                                                         #  4     0x476c6  2      
  leal (%rdx,%rdi,1), %esi                                                #  5     0x476c8  3      
  subl $0x10, %esp                                                        #  6     0x476cb  3      
  addq %r15, %rsp                                                         #  7     0x476ce  3      
  movl %ecx, %edx                                                         #  8     0x476d1  2      
  movb $0x0, (%rsp)                                                       #  9     0x476d3  4      
  nop                                                                     #  10    0x476d7  1      
  callq ._ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag  #  11    0x476d8  5      
  movl %ebx, %ebx                                                         #  12    0x476dd  2      
  movl %eax, (%r15,%rbx,1)                                                #  13    0x476df  4      
  addl $0x10, %esp                                                        #  14    0x476e3  3      
  addq %r15, %rsp                                                         #  15    0x476e6  3      
  popq %rbx                                                               #  16    0x476e9  2      
  popq %r11                                                               #  17    0x476eb  3      
  andl $0xffffffe0, %r11d                                                 #  18    0x476ee  7      
  addq %r15, %r11                                                         #  19    0x476f5  3      
  jmpq %r11                                                               #  20    0x476f8  3      
  nop                                                                     #  21    0x476fb  1      
  nop                                                                     #  22    0x476fc  1      
  nop                                                                     #  23    0x476fd  1      
  nop                                                                     #  24    0x476fe  1      
  nop                                                                     #  25    0x476ff  1      
  nop                                                                     #  26    0x47700  1      
  nop                                                                     #  27    0x47701  1      
                                                                                                   
.size _ZNSsC2EPKcjRKSaIcE, .-_ZNSsC2EPKcjRKSaIcE

