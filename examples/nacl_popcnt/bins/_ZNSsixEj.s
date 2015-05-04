  .text
  .globl _ZNSsixEj
  .type _ZNSsixEj, @function

#! file-offset 0x48c00
#! rip-offset  0x48c00
#! capacity    128 bytes

# Text                          #  Line  RIP      Bytes  
._ZNSsixEj:                     #        0x48c00  0      
  movq %rbx, -0x10(%rsp)        #  1     0x48c00  5      
  movl %edi, %ebx               #  2     0x48c05  2      
  movq %r12, -0x8(%rsp)         #  3     0x48c07  5      
  subl $0x18, %esp              #  4     0x48c0c  3      
  addq %r15, %rsp               #  5     0x48c0f  3      
  movl %ebx, %ebx               #  6     0x48c12  2      
  movl (%r15,%rbx,1), %eax      #  7     0x48c14  4      
  movl %esi, %r12d              #  8     0x48c18  3      
  leal -0xc(%rax), %edx         #  9     0x48c1b  3      
  xchgw %ax, %ax                #  10    0x48c1e  3      
  movl %edx, %edx               #  11    0x48c21  2      
  movl 0x8(%r15,%rdx,1), %r10d  #  12    0x48c23  5      
  testl %r10d, %r10d            #  13    0x48c28  3      
  js .L_48c60                   #  14    0x48c2b  6      
  movl %ebx, %edi               #  15    0x48c31  2      
  nop                           #  16    0x48c33  1      
  callq ._ZNSs12_M_leak_hardEv  #  17    0x48c34  5      
  movl %ebx, %ebx               #  18    0x48c39  2      
  movl (%r15,%rbx,1), %eax      #  19    0x48c3b  4      
  nop                           #  20    0x48c3f  1      
  nop                           #  21    0x48c40  1      
.L_48c60:                       #        0x48c41  0      
  leal (%r12,%rax,1), %eax      #  22    0x48c41  4      
  movq 0x8(%rsp), %rbx          #  23    0x48c45  5      
  movq 0x10(%rsp), %r12         #  24    0x48c4a  5      
  addl $0x18, %esp              #  25    0x48c4f  3      
  addq %r15, %rsp               #  26    0x48c52  3      
  popq %r11                     #  27    0x48c55  3      
  andl $0xffffffe0, %r11d       #  28    0x48c58  7      
  addq %r15, %r11               #  29    0x48c5f  3      
  jmpq %r11                     #  30    0x48c62  3      
                                                         
.size _ZNSsixEj, .-_ZNSsixEj

