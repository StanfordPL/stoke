  .text
  .globl _ZNSsC1ERKSsjjRKSaIcE
  .type _ZNSsC1ERKSsjjRKSaIcE, @function

#! file-offset 0x47860
#! rip-offset  0x47860
#! capacity    128 bytes

# Text                                                                    #  Line  RIP      Bytes  
._ZNSsC1ERKSsjjRKSaIcE:                                                   #        0x47860  0      
  pushq %rbx                                                              #  1     0x47860  2      
  movl %esi, %esi                                                         #  2     0x47862  2      
  movl %edi, %ebx                                                         #  3     0x47864  2      
  movl %r8d, %r8d                                                         #  4     0x47866  3      
  subl $0x10, %esp                                                        #  5     0x47869  3      
  addq %r15, %rsp                                                         #  6     0x4786c  3      
  movl %esi, %esi                                                         #  7     0x4786f  2      
  movl (%r15,%rsi,1), %edi                                                #  8     0x47871  4      
  leal -0xc(%rdi), %eax                                                   #  9     0x47875  3      
  movl %eax, %eax                                                         #  10    0x47878  2      
  movl (%r15,%rax,1), %esi                                                #  11    0x4787a  4      
  cmpl %esi, %edx                                                         #  12    0x4787e  2      
  nop                                                                     #  13    0x47880  1      
  ja .L_478c0                                                             #  14    0x47881  6      
  subl %edx, %esi                                                         #  15    0x47887  2      
  movb $0x0, (%rsp)                                                       #  16    0x47889  4      
  cmpl %ecx, %esi                                                         #  17    0x4788d  2      
  cmoval %ecx, %esi                                                       #  18    0x4788f  3      
  addl %edx, %esi                                                         #  19    0x47892  2      
  addl %edi, %esi                                                         #  20    0x47894  2      
  leal (%rdx,%rdi,1), %edi                                                #  21    0x47896  3      
  movl %r8d, %edx                                                         #  22    0x47899  3      
  nop                                                                     #  23    0x4789c  1      
  callq ._ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag  #  24    0x4789d  5      
  movl %ebx, %ebx                                                         #  25    0x478a2  2      
  movl %eax, (%r15,%rbx,1)                                                #  26    0x478a4  4      
  addl $0x10, %esp                                                        #  27    0x478a8  3      
  addq %r15, %rsp                                                         #  28    0x478ab  3      
  popq %rbx                                                               #  29    0x478ae  2      
  popq %r11                                                               #  30    0x478b0  3      
  andl $0xffffffe0, %r11d                                                 #  31    0x478b3  7      
  addq %r15, %r11                                                         #  32    0x478ba  3      
  jmpq %r11                                                               #  33    0x478bd  3      
  nop                                                                     #  34    0x478c0  1      
.L_478c0:                                                                 #        0x478c1  0      
  movl $0x100209f2, %edi                                                  #  35    0x478c1  5      
  nop                                                                     #  36    0x478c6  1      
  nop                                                                     #  37    0x478c7  1      
  callq ._ZSt20__throw_out_of_rangePKc                                    #  38    0x478c8  5      
                                                                                                   
.size _ZNSsC1ERKSsjjRKSaIcE, .-_ZNSsC1ERKSsjjRKSaIcE

