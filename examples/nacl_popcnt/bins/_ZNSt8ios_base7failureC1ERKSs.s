  .text
  .globl _ZNSt8ios_base7failureC1ERKSs
  .type _ZNSt8ios_base7failureC1ERKSs, @function

#! file-offset 0x4e0a0
#! rip-offset  0x4e0a0
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  
._ZNSt8ios_base7failureC1ERKSs:    #        0x4e0a0  0      
  pushq %rbx                       #  1     0x4e0a0  2      
  movl %edi, %ebx                  #  2     0x4e0a2  2      
  movl %esi, %esi                  #  3     0x4e0a4  2      
  leal 0x4(%rbx), %edi             #  4     0x4e0a6  3      
  subl $0x10, %esp                 #  5     0x4e0a9  3      
  addq %r15, %rsp                  #  6     0x4e0ac  3      
  movl %ebx, %ebx                  #  7     0x4e0af  2      
  movl $0x10021148, (%r15,%rbx,1)  #  8     0x4e0b1  8      
  nop                              #  9     0x4e0b9  1      
  callq ._ZNSsC1ERKSs              #  10    0x4e0ba  5      
  addl $0x10, %esp                 #  11    0x4e0bf  3      
  addq %r15, %rsp                  #  12    0x4e0c2  3      
  popq %rbx                        #  13    0x4e0c5  2      
  popq %r11                        #  14    0x4e0c7  3      
  andl $0xffffffe0, %r11d          #  15    0x4e0ca  7      
  addq %r15, %r11                  #  16    0x4e0d1  3      
  jmpq %r11                        #  17    0x4e0d4  3      
  nop                              #  18    0x4e0d7  1      
  movl %ebx, %edi                  #  19    0x4e0d8  2      
  movl %eax, 0x8(%rsp)             #  20    0x4e0da  4      
  movq %rdx, (%rsp)                #  21    0x4e0de  4      
  xchgw %ax, %ax                   #  22    0x4e0e2  3      
  nop                              #  23    0x4e0e5  1      
  callq ._ZNSt9exceptionD2Ev       #  24    0x4e0e6  5      
  movq (%rsp), %rdx                #  25    0x4e0eb  4      
  movl 0x8(%rsp), %eax             #  26    0x4e0ef  4      
  cmpq $0xffffffffffffffff, %rdx   #  27    0x4e0f3  4      
  je .L_4e120                      #  28    0x4e0f7  6      
  movl %eax, %edi                  #  29    0x4e0fd  2      
  nop                              #  30    0x4e0ff  1      
  callq ._Unwind_Resume            #  31    0x4e100  5      
.L_4e120:                          #        0x4e105  0      
  movl %eax, %edi                  #  32    0x4e105  2      
  nop                              #  33    0x4e107  1      
  nop                              #  34    0x4e108  1      
  callq .__cxa_call_unexpected     #  35    0x4e109  5      
                                                            
.size _ZNSt8ios_base7failureC1ERKSs, .-_ZNSt8ios_base7failureC1ERKSs

