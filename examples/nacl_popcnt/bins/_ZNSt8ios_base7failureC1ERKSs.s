  .text
  .globl _ZNSt8ios_base7failureC1ERKSs
  .type _ZNSt8ios_base7failureC1ERKSs, @function

#! file-offset 0x4e000
#! rip-offset  0x4e000
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  
._ZNSt8ios_base7failureC1ERKSs:    #        0x4e000  0      
  pushq %rbx                       #  1     0x4e000  2      
  movl %edi, %ebx                  #  2     0x4e002  2      
  movl %esi, %esi                  #  3     0x4e004  2      
  leal 0x4(%rbx), %edi             #  4     0x4e006  3      
  subl $0x10, %esp                 #  5     0x4e009  3      
  addq %r15, %rsp                  #  6     0x4e00c  3      
  movl %ebx, %ebx                  #  7     0x4e00f  2      
  movl $0x10021148, (%r15,%rbx,1)  #  8     0x4e011  8      
  nop                              #  9     0x4e019  1      
  callq ._ZNSsC1ERKSs              #  10    0x4e01a  5      
  addl $0x10, %esp                 #  11    0x4e01f  3      
  addq %r15, %rsp                  #  12    0x4e022  3      
  popq %rbx                        #  13    0x4e025  2      
  popq %r11                        #  14    0x4e027  3      
  andl $0xffffffe0, %r11d          #  15    0x4e02a  7      
  addq %r15, %r11                  #  16    0x4e031  3      
  jmpq %r11                        #  17    0x4e034  3      
  nop                              #  18    0x4e037  1      
  movl %ebx, %edi                  #  19    0x4e038  2      
  movl %eax, 0x8(%rsp)             #  20    0x4e03a  4      
  movq %rdx, (%rsp)                #  21    0x4e03e  4      
  xchgw %ax, %ax                   #  22    0x4e042  3      
  nop                              #  23    0x4e045  1      
  callq ._ZNSt9exceptionD2Ev       #  24    0x4e046  5      
  movq (%rsp), %rdx                #  25    0x4e04b  4      
  movl 0x8(%rsp), %eax             #  26    0x4e04f  4      
  cmpq $0xffffffffffffffff, %rdx   #  27    0x4e053  4      
  je .L_4e080                      #  28    0x4e057  6      
  movl %eax, %edi                  #  29    0x4e05d  2      
  nop                              #  30    0x4e05f  1      
  callq ._Unwind_Resume            #  31    0x4e060  5      
.L_4e080:                          #        0x4e065  0      
  movl %eax, %edi                  #  32    0x4e065  2      
  nop                              #  33    0x4e067  1      
  nop                              #  34    0x4e068  1      
  callq .__cxa_call_unexpected     #  35    0x4e069  5      
                                                            
.size _ZNSt8ios_base7failureC1ERKSs, .-_ZNSt8ios_base7failureC1ERKSs

