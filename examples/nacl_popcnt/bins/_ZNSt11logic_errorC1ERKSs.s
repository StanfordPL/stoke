  .text
  .globl _ZNSt11logic_errorC1ERKSs
  .type _ZNSt11logic_errorC1ERKSs, @function

#! file-offset 0x4e740
#! rip-offset  0x4e740
#! capacity    128 bytes

# Text                             #  Line  RIP      Bytes  
._ZNSt11logic_errorC1ERKSs:        #        0x4e740  0      
  pushq %rbx                       #  1     0x4e740  2      
  movl %edi, %ebx                  #  2     0x4e742  2      
  movl %esi, %esi                  #  3     0x4e744  2      
  leal 0x4(%rbx), %edi             #  4     0x4e746  3      
  subl $0x10, %esp                 #  5     0x4e749  3      
  addq %r15, %rsp                  #  6     0x4e74c  3      
  movl %ebx, %ebx                  #  7     0x4e74f  2      
  movl $0x100211b8, (%r15,%rbx,1)  #  8     0x4e751  8      
  nop                              #  9     0x4e759  1      
  callq ._ZNSsC1ERKSs              #  10    0x4e75a  5      
  addl $0x10, %esp                 #  11    0x4e75f  3      
  addq %r15, %rsp                  #  12    0x4e762  3      
  popq %rbx                        #  13    0x4e765  2      
  popq %r11                        #  14    0x4e767  3      
  andl $0xffffffe0, %r11d          #  15    0x4e76a  7      
  addq %r15, %r11                  #  16    0x4e771  3      
  jmpq %r11                        #  17    0x4e774  3      
  nop                              #  18    0x4e777  1      
  movl %ebx, %edi                  #  19    0x4e778  2      
  movl %eax, 0x8(%rsp)             #  20    0x4e77a  4      
  nop                              #  21    0x4e77e  1      
  nop                              #  22    0x4e77f  1      
  callq ._ZNSt9exceptionD2Ev       #  23    0x4e780  5      
  movl 0x8(%rsp), %eax             #  24    0x4e785  4      
  movl %eax, %edi                  #  25    0x4e789  2      
  nop                              #  26    0x4e78b  1      
  nop                              #  27    0x4e78c  1      
  callq ._Unwind_Resume            #  28    0x4e78d  5      
                                                            
.size _ZNSt11logic_errorC1ERKSs, .-_ZNSt11logic_errorC1ERKSs

