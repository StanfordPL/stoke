  .text
  .globl _ZNSt11logic_errorC1ERKSs
  .type _ZNSt11logic_errorC1ERKSs, @function

#! file-offset 0x4e720
#! rip-offset  0x4e720
#! capacity    128 bytes

# Text                             #  Line  RIP      Bytes  
._ZNSt11logic_errorC1ERKSs:        #        0x4e720  0      
  pushq %rbx                       #  1     0x4e720  2      
  movl %edi, %ebx                  #  2     0x4e722  2      
  movl %esi, %esi                  #  3     0x4e724  2      
  leal 0x4(%rbx), %edi             #  4     0x4e726  3      
  subl $0x10, %esp                 #  5     0x4e729  3      
  addq %r15, %rsp                  #  6     0x4e72c  3      
  movl %ebx, %ebx                  #  7     0x4e72f  2      
  movl $0x100211b8, (%r15,%rbx,1)  #  8     0x4e731  8      
  nop                              #  9     0x4e739  1      
  callq ._ZNSsC1ERKSs              #  10    0x4e73a  5      
  addl $0x10, %esp                 #  11    0x4e73f  3      
  addq %r15, %rsp                  #  12    0x4e742  3      
  popq %rbx                        #  13    0x4e745  2      
  popq %r11                        #  14    0x4e747  3      
  andl $0xffffffe0, %r11d          #  15    0x4e74a  7      
  addq %r15, %r11                  #  16    0x4e751  3      
  jmpq %r11                        #  17    0x4e754  3      
  nop                              #  18    0x4e757  1      
  movl %ebx, %edi                  #  19    0x4e758  2      
  movl %eax, 0x8(%rsp)             #  20    0x4e75a  4      
  nop                              #  21    0x4e75e  1      
  nop                              #  22    0x4e75f  1      
  callq ._ZNSt9exceptionD2Ev       #  23    0x4e760  5      
  movl 0x8(%rsp), %eax             #  24    0x4e765  4      
  movl %eax, %edi                  #  25    0x4e769  2      
  nop                              #  26    0x4e76b  1      
  nop                              #  27    0x4e76c  1      
  callq ._Unwind_Resume            #  28    0x4e76d  5      
                                                            
.size _ZNSt11logic_errorC1ERKSs, .-_ZNSt11logic_errorC1ERKSs

