  .text
  .globl _ZNSsixEj
  .type _ZNSsixEj, @function

#! file-offset 0x48b60
#! rip-offset  0x48b60
#! capacity    128 bytes

# Text                          #  Line  RIP      Bytes  
._ZNSsixEj:                     #        0x48b60  0      
  movq %rbx, -0x10(%rsp)        #  1     0x48b60  5      
  movl %edi, %ebx               #  2     0x48b65  2      
  movq %r12, -0x8(%rsp)         #  3     0x48b67  5      
  subl $0x18, %esp              #  4     0x48b6c  3      
  addq %r15, %rsp               #  5     0x48b6f  3      
  movl %ebx, %ebx               #  6     0x48b72  2      
  movl (%r15,%rbx,1), %eax      #  7     0x48b74  4      
  movl %esi, %r12d              #  8     0x48b78  3      
  leal -0xc(%rax), %edx         #  9     0x48b7b  3      
  xchgw %ax, %ax                #  10    0x48b7e  3      
  movl %edx, %edx               #  11    0x48b81  2      
  movl 0x8(%r15,%rdx,1), %r10d  #  12    0x48b83  5      
  testl %r10d, %r10d            #  13    0x48b88  3      
  js .L_48bc0                   #  14    0x48b8b  6      
  movl %ebx, %edi               #  15    0x48b91  2      
  nop                           #  16    0x48b93  1      
  callq ._ZNSs12_M_leak_hardEv  #  17    0x48b94  5      
  movl %ebx, %ebx               #  18    0x48b99  2      
  movl (%r15,%rbx,1), %eax      #  19    0x48b9b  4      
  nop                           #  20    0x48b9f  1      
  nop                           #  21    0x48ba0  1      
.L_48bc0:                       #        0x48ba1  0      
  leal (%r12,%rax,1), %eax      #  22    0x48ba1  4      
  movq 0x8(%rsp), %rbx          #  23    0x48ba5  5      
  movq 0x10(%rsp), %r12         #  24    0x48baa  5      
  addl $0x18, %esp              #  25    0x48baf  3      
  addq %r15, %rsp               #  26    0x48bb2  3      
  popq %r11                     #  27    0x48bb5  3      
  andl $0xffffffe0, %r11d       #  28    0x48bb8  7      
  addq %r15, %r11               #  29    0x48bbf  3      
  jmpq %r11                     #  30    0x48bc2  3      
                                                         
.size _ZNSsixEj, .-_ZNSsixEj

