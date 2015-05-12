  .text
  .globl _ZNSs2atEj
  .type _ZNSs2atEj, @function

#! file-offset 0x48ae0
#! rip-offset  0x48ae0
#! capacity    160 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSs2atEj:                            #        0x48ae0  0      
  movq %rbx, -0x10(%rsp)                #  1     0x48ae0  5      
  movl %edi, %ebx                       #  2     0x48ae5  2      
  movq %r12, -0x8(%rsp)                 #  3     0x48ae7  5      
  subl $0x18, %esp                      #  4     0x48aec  3      
  addq %r15, %rsp                       #  5     0x48aef  3      
  movl %ebx, %ebx                       #  6     0x48af2  2      
  movl (%r15,%rbx,1), %eax              #  7     0x48af4  4      
  movl %esi, %r12d                      #  8     0x48af8  3      
  leal -0xc(%rax), %edx                 #  9     0x48afb  3      
  xchgw %ax, %ax                        #  10    0x48afe  3      
  movl %edx, %edx                       #  11    0x48b01  2      
  cmpl (%r15,%rdx,1), %esi              #  12    0x48b03  4      
  jae .L_48b60                          #  13    0x48b07  6      
  movl %edx, %edx                       #  14    0x48b0d  2      
  movl 0x8(%r15,%rdx,1), %r9d           #  15    0x48b0f  5      
  testl %r9d, %r9d                      #  16    0x48b14  3      
  js .L_48b40                           #  17    0x48b17  6      
  movl %ebx, %edi                       #  18    0x48b1d  2      
  nop                                   #  19    0x48b1f  1      
  callq ._ZNSs12_M_leak_hardEv          #  20    0x48b20  5      
  movl %ebx, %ebx                       #  21    0x48b25  2      
  movl (%r15,%rbx,1), %eax              #  22    0x48b27  4      
  nop                                   #  23    0x48b2b  1      
  nop                                   #  24    0x48b2c  1      
.L_48b40:                               #        0x48b2d  0      
  leal (%r12,%rax,1), %eax              #  25    0x48b2d  4      
  movq 0x8(%rsp), %rbx                  #  26    0x48b31  5      
  movq 0x10(%rsp), %r12                 #  27    0x48b36  5      
  addl $0x18, %esp                      #  28    0x48b3b  3      
  addq %r15, %rsp                       #  29    0x48b3e  3      
  popq %r11                             #  30    0x48b41  3      
  andl $0xffffffe0, %r11d               #  31    0x48b44  7      
  addq %r15, %r11                       #  32    0x48b4b  3      
  jmpq %r11                             #  33    0x48b4e  3      
.L_48b60:                               #        0x48b51  0      
  movl $0x100209a3, %edi                #  34    0x48b51  5      
  nop                                   #  35    0x48b56  1      
  nop                                   #  36    0x48b57  1      
  callq ._ZSt20__throw_out_of_rangePKc  #  37    0x48b58  5      
                                                                 
.size _ZNSs2atEj, .-_ZNSs2atEj

