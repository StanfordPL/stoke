  .text
  .globl _ZNSt13runtime_errorC2ERKSs
  .type _ZNSt13runtime_errorC2ERKSs, @function

#! file-offset 0x4e540
#! rip-offset  0x4e540
#! capacity    128 bytes

# Text                             #  Line  RIP      Bytes  
._ZNSt13runtime_errorC2ERKSs:      #        0x4e540  0      
  pushq %rbx                       #  1     0x4e540  2      
  movl %edi, %ebx                  #  2     0x4e542  2      
  movl %esi, %esi                  #  3     0x4e544  2      
  leal 0x4(%rbx), %edi             #  4     0x4e546  3      
  subl $0x10, %esp                 #  5     0x4e549  3      
  addq %r15, %rsp                  #  6     0x4e54c  3      
  movl %ebx, %ebx                  #  7     0x4e54f  2      
  movl $0x10021198, (%r15,%rbx,1)  #  8     0x4e551  8      
  nop                              #  9     0x4e559  1      
  callq ._ZNSsC1ERKSs              #  10    0x4e55a  5      
  addl $0x10, %esp                 #  11    0x4e55f  3      
  addq %r15, %rsp                  #  12    0x4e562  3      
  popq %rbx                        #  13    0x4e565  2      
  popq %r11                        #  14    0x4e567  3      
  andl $0xffffffe0, %r11d          #  15    0x4e56a  7      
  addq %r15, %r11                  #  16    0x4e571  3      
  jmpq %r11                        #  17    0x4e574  3      
  nop                              #  18    0x4e577  1      
  movl %ebx, %edi                  #  19    0x4e578  2      
  movl %eax, 0x8(%rsp)             #  20    0x4e57a  4      
  nop                              #  21    0x4e57e  1      
  nop                              #  22    0x4e57f  1      
  callq ._ZNSt9exceptionD2Ev       #  23    0x4e580  5      
  movl 0x8(%rsp), %eax             #  24    0x4e585  4      
  movl %eax, %edi                  #  25    0x4e589  2      
  nop                              #  26    0x4e58b  1      
  nop                              #  27    0x4e58c  1      
  callq ._Unwind_Resume            #  28    0x4e58d  5      
                                                            
.size _ZNSt13runtime_errorC2ERKSs, .-_ZNSt13runtime_errorC2ERKSs

