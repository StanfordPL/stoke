  .text
  .globl _ZNSs2atEj
  .type _ZNSs2atEj, @function

#! file-offset 0x48b60
#! rip-offset  0x48b60
#! capacity    160 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSs2atEj:                            #        0x48b60  0      
  movq %rbx, -0x10(%rsp)                #  1     0x48b60  5      
  movl %edi, %ebx                       #  2     0x48b65  2      
  movq %r12, -0x8(%rsp)                 #  3     0x48b67  5      
  subl $0x18, %esp                      #  4     0x48b6c  3      
  addq %r15, %rsp                       #  5     0x48b6f  3      
  movl %ebx, %ebx                       #  6     0x48b72  2      
  movl (%r15,%rbx,1), %eax              #  7     0x48b74  4      
  movl %esi, %r12d                      #  8     0x48b78  3      
  leal -0xc(%rax), %edx                 #  9     0x48b7b  3      
  xchgw %ax, %ax                        #  10    0x48b7e  3      
  movl %edx, %edx                       #  11    0x48b81  2      
  cmpl (%r15,%rdx,1), %esi              #  12    0x48b83  4      
  jae .L_48be0                          #  13    0x48b87  6      
  movl %edx, %edx                       #  14    0x48b8d  2      
  movl 0x8(%r15,%rdx,1), %r9d           #  15    0x48b8f  5      
  testl %r9d, %r9d                      #  16    0x48b94  3      
  js .L_48bc0                           #  17    0x48b97  6      
  movl %ebx, %edi                       #  18    0x48b9d  2      
  nop                                   #  19    0x48b9f  1      
  callq ._ZNSs12_M_leak_hardEv          #  20    0x48ba0  5      
  movl %ebx, %ebx                       #  21    0x48ba5  2      
  movl (%r15,%rbx,1), %eax              #  22    0x48ba7  4      
  nop                                   #  23    0x48bab  1      
  nop                                   #  24    0x48bac  1      
.L_48bc0:                               #        0x48bad  0      
  leal (%r12,%rax,1), %eax              #  25    0x48bad  4      
  movq 0x8(%rsp), %rbx                  #  26    0x48bb1  5      
  movq 0x10(%rsp), %r12                 #  27    0x48bb6  5      
  addl $0x18, %esp                      #  28    0x48bbb  3      
  addq %r15, %rsp                       #  29    0x48bbe  3      
  popq %r11                             #  30    0x48bc1  3      
  andl $0xffffffe0, %r11d               #  31    0x48bc4  7      
  addq %r15, %r11                       #  32    0x48bcb  3      
  jmpq %r11                             #  33    0x48bce  3      
.L_48be0:                               #        0x48bd1  0      
  movl $0x100209a3, %edi                #  34    0x48bd1  5      
  nop                                   #  35    0x48bd6  1      
  nop                                   #  36    0x48bd7  1      
  callq ._ZSt20__throw_out_of_rangePKc  #  37    0x48bd8  5      
                                                                 
.size _ZNSs2atEj, .-_ZNSs2atEj

