  .text
  .globl _ZNSt13runtime_errorC2ERKSs
  .type _ZNSt13runtime_errorC2ERKSs, @function

#! file-offset 0x4e5c0
#! rip-offset  0x4e5c0
#! capacity    128 bytes

# Text                             #  Line  RIP      Bytes  
._ZNSt13runtime_errorC2ERKSs:      #        0x4e5c0  0      
  pushq %rbx                       #  1     0x4e5c0  2      
  movl %edi, %ebx                  #  2     0x4e5c2  2      
  movl %esi, %esi                  #  3     0x4e5c4  2      
  leal 0x4(%rbx), %edi             #  4     0x4e5c6  3      
  subl $0x10, %esp                 #  5     0x4e5c9  3      
  addq %r15, %rsp                  #  6     0x4e5cc  3      
  movl %ebx, %ebx                  #  7     0x4e5cf  2      
  movl $0x10021198, (%r15,%rbx,1)  #  8     0x4e5d1  8      
  nop                              #  9     0x4e5d9  1      
  callq ._ZNSsC1ERKSs              #  10    0x4e5da  5      
  addl $0x10, %esp                 #  11    0x4e5df  3      
  addq %r15, %rsp                  #  12    0x4e5e2  3      
  popq %rbx                        #  13    0x4e5e5  2      
  popq %r11                        #  14    0x4e5e7  3      
  andl $0xffffffe0, %r11d          #  15    0x4e5ea  7      
  addq %r15, %r11                  #  16    0x4e5f1  3      
  jmpq %r11                        #  17    0x4e5f4  3      
  nop                              #  18    0x4e5f7  1      
  movl %ebx, %edi                  #  19    0x4e5f8  2      
  movl %eax, 0x8(%rsp)             #  20    0x4e5fa  4      
  nop                              #  21    0x4e5fe  1      
  nop                              #  22    0x4e5ff  1      
  callq ._ZNSt9exceptionD2Ev       #  23    0x4e600  5      
  movl 0x8(%rsp), %eax             #  24    0x4e605  4      
  movl %eax, %edi                  #  25    0x4e609  2      
  nop                              #  26    0x4e60b  1      
  nop                              #  27    0x4e60c  1      
  callq ._Unwind_Resume            #  28    0x4e60d  5      
                                                            
.size _ZNSt13runtime_errorC2ERKSs, .-_ZNSt13runtime_errorC2ERKSs

