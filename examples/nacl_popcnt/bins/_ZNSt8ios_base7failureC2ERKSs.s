  .text
  .globl _ZNSt8ios_base7failureC2ERKSs
  .type _ZNSt8ios_base7failureC2ERKSs, @function

#! file-offset 0x4e140
#! rip-offset  0x4e140
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  
._ZNSt8ios_base7failureC2ERKSs:    #        0x4e140  0      
  pushq %rbx                       #  1     0x4e140  2      
  movl %edi, %ebx                  #  2     0x4e142  2      
  movl %esi, %esi                  #  3     0x4e144  2      
  leal 0x4(%rbx), %edi             #  4     0x4e146  3      
  subl $0x10, %esp                 #  5     0x4e149  3      
  addq %r15, %rsp                  #  6     0x4e14c  3      
  movl %ebx, %ebx                  #  7     0x4e14f  2      
  movl $0x10021148, (%r15,%rbx,1)  #  8     0x4e151  8      
  nop                              #  9     0x4e159  1      
  callq ._ZNSsC1ERKSs              #  10    0x4e15a  5      
  addl $0x10, %esp                 #  11    0x4e15f  3      
  addq %r15, %rsp                  #  12    0x4e162  3      
  popq %rbx                        #  13    0x4e165  2      
  popq %r11                        #  14    0x4e167  3      
  andl $0xffffffe0, %r11d          #  15    0x4e16a  7      
  addq %r15, %r11                  #  16    0x4e171  3      
  jmpq %r11                        #  17    0x4e174  3      
  nop                              #  18    0x4e177  1      
  movl %ebx, %edi                  #  19    0x4e178  2      
  movl %eax, 0x8(%rsp)             #  20    0x4e17a  4      
  movq %rdx, (%rsp)                #  21    0x4e17e  4      
  xchgw %ax, %ax                   #  22    0x4e182  3      
  nop                              #  23    0x4e185  1      
  callq ._ZNSt9exceptionD2Ev       #  24    0x4e186  5      
  movq (%rsp), %rdx                #  25    0x4e18b  4      
  movl 0x8(%rsp), %eax             #  26    0x4e18f  4      
  cmpq $0xffffffffffffffff, %rdx   #  27    0x4e193  4      
  je .L_4e1c0                      #  28    0x4e197  6      
  movl %eax, %edi                  #  29    0x4e19d  2      
  nop                              #  30    0x4e19f  1      
  callq ._Unwind_Resume            #  31    0x4e1a0  5      
.L_4e1c0:                          #        0x4e1a5  0      
  movl %eax, %edi                  #  32    0x4e1a5  2      
  nop                              #  33    0x4e1a7  1      
  nop                              #  34    0x4e1a8  1      
  callq .__cxa_call_unexpected     #  35    0x4e1a9  5      
                                                            
.size _ZNSt8ios_base7failureC2ERKSs, .-_ZNSt8ios_base7failureC2ERKSs

