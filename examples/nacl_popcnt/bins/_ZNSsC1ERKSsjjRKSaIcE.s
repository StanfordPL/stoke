  .text
  .globl _ZNSsC1ERKSsjjRKSaIcE
  .type _ZNSsC1ERKSsjjRKSaIcE, @function

#! file-offset 0x47880
#! rip-offset  0x47880
#! capacity    128 bytes

# Text                                                                    #  Line  RIP      Bytes  
._ZNSsC1ERKSsjjRKSaIcE:                                                   #        0x47880  0      
  pushq %rbx                                                              #  1     0x47880  2      
  movl %esi, %esi                                                         #  2     0x47882  2      
  movl %edi, %ebx                                                         #  3     0x47884  2      
  movl %r8d, %r8d                                                         #  4     0x47886  3      
  subl $0x10, %esp                                                        #  5     0x47889  3      
  addq %r15, %rsp                                                         #  6     0x4788c  3      
  movl %esi, %esi                                                         #  7     0x4788f  2      
  movl (%r15,%rsi,1), %edi                                                #  8     0x47891  4      
  leal -0xc(%rdi), %eax                                                   #  9     0x47895  3      
  movl %eax, %eax                                                         #  10    0x47898  2      
  movl (%r15,%rax,1), %esi                                                #  11    0x4789a  4      
  cmpl %esi, %edx                                                         #  12    0x4789e  2      
  nop                                                                     #  13    0x478a0  1      
  ja .L_478e0                                                             #  14    0x478a1  6      
  subl %edx, %esi                                                         #  15    0x478a7  2      
  movb $0x0, (%rsp)                                                       #  16    0x478a9  4      
  cmpl %ecx, %esi                                                         #  17    0x478ad  2      
  cmoval %ecx, %esi                                                       #  18    0x478af  3      
  addl %edx, %esi                                                         #  19    0x478b2  2      
  addl %edi, %esi                                                         #  20    0x478b4  2      
  leal (%rdx,%rdi,1), %edi                                                #  21    0x478b6  3      
  movl %r8d, %edx                                                         #  22    0x478b9  3      
  nop                                                                     #  23    0x478bc  1      
  callq ._ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag  #  24    0x478bd  5      
  movl %ebx, %ebx                                                         #  25    0x478c2  2      
  movl %eax, (%r15,%rbx,1)                                                #  26    0x478c4  4      
  addl $0x10, %esp                                                        #  27    0x478c8  3      
  addq %r15, %rsp                                                         #  28    0x478cb  3      
  popq %rbx                                                               #  29    0x478ce  2      
  popq %r11                                                               #  30    0x478d0  3      
  andl $0xffffffe0, %r11d                                                 #  31    0x478d3  7      
  addq %r15, %r11                                                         #  32    0x478da  3      
  jmpq %r11                                                               #  33    0x478dd  3      
  nop                                                                     #  34    0x478e0  1      
.L_478e0:                                                                 #        0x478e1  0      
  movl $0x100209f2, %edi                                                  #  35    0x478e1  5      
  nop                                                                     #  36    0x478e6  1      
  nop                                                                     #  37    0x478e7  1      
  callq ._ZSt20__throw_out_of_rangePKc                                    #  38    0x478e8  5      
                                                                                                   
.size _ZNSsC1ERKSsjjRKSaIcE, .-_ZNSsC1ERKSsjjRKSaIcE

