  .text
  .globl _ZNSt13runtime_errorC2ERKSs
  .type _ZNSt13runtime_errorC2ERKSs, @function

#! file-offset 0x4e520
#! rip-offset  0x4e520
#! capacity    128 bytes

# Text                             #  Line  RIP      Bytes  
._ZNSt13runtime_errorC2ERKSs:      #        0x4e520  0      
  pushq %rbx                       #  1     0x4e520  2      
  movl %edi, %ebx                  #  2     0x4e522  2      
  movl %esi, %esi                  #  3     0x4e524  2      
  leal 0x4(%rbx), %edi             #  4     0x4e526  3      
  subl $0x10, %esp                 #  5     0x4e529  3      
  addq %r15, %rsp                  #  6     0x4e52c  3      
  movl %ebx, %ebx                  #  7     0x4e52f  2      
  movl $0x10021198, (%r15,%rbx,1)  #  8     0x4e531  8      
  nop                              #  9     0x4e539  1      
  callq ._ZNSsC1ERKSs              #  10    0x4e53a  5      
  addl $0x10, %esp                 #  11    0x4e53f  3      
  addq %r15, %rsp                  #  12    0x4e542  3      
  popq %rbx                        #  13    0x4e545  2      
  popq %r11                        #  14    0x4e547  3      
  andl $0xffffffe0, %r11d          #  15    0x4e54a  7      
  addq %r15, %r11                  #  16    0x4e551  3      
  jmpq %r11                        #  17    0x4e554  3      
  nop                              #  18    0x4e557  1      
  movl %ebx, %edi                  #  19    0x4e558  2      
  movl %eax, 0x8(%rsp)             #  20    0x4e55a  4      
  nop                              #  21    0x4e55e  1      
  nop                              #  22    0x4e55f  1      
  callq ._ZNSt9exceptionD2Ev       #  23    0x4e560  5      
  movl 0x8(%rsp), %eax             #  24    0x4e565  4      
  movl %eax, %edi                  #  25    0x4e569  2      
  nop                              #  26    0x4e56b  1      
  nop                              #  27    0x4e56c  1      
  callq ._Unwind_Resume            #  28    0x4e56d  5      
                                                            
.size _ZNSt13runtime_errorC2ERKSs, .-_ZNSt13runtime_errorC2ERKSs

