  .text
  .globl _ZNSt8ios_base7failureC2ERKSs
  .type _ZNSt8ios_base7failureC2ERKSs, @function

#! file-offset 0x4e0c0
#! rip-offset  0x4e0c0
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  
._ZNSt8ios_base7failureC2ERKSs:    #        0x4e0c0  0      
  pushq %rbx                       #  1     0x4e0c0  2      
  movl %edi, %ebx                  #  2     0x4e0c2  2      
  movl %esi, %esi                  #  3     0x4e0c4  2      
  leal 0x4(%rbx), %edi             #  4     0x4e0c6  3      
  subl $0x10, %esp                 #  5     0x4e0c9  3      
  addq %r15, %rsp                  #  6     0x4e0cc  3      
  movl %ebx, %ebx                  #  7     0x4e0cf  2      
  movl $0x10021148, (%r15,%rbx,1)  #  8     0x4e0d1  8      
  nop                              #  9     0x4e0d9  1      
  callq ._ZNSsC1ERKSs              #  10    0x4e0da  5      
  addl $0x10, %esp                 #  11    0x4e0df  3      
  addq %r15, %rsp                  #  12    0x4e0e2  3      
  popq %rbx                        #  13    0x4e0e5  2      
  popq %r11                        #  14    0x4e0e7  3      
  andl $0xffffffe0, %r11d          #  15    0x4e0ea  7      
  addq %r15, %r11                  #  16    0x4e0f1  3      
  jmpq %r11                        #  17    0x4e0f4  3      
  nop                              #  18    0x4e0f7  1      
  movl %ebx, %edi                  #  19    0x4e0f8  2      
  movl %eax, 0x8(%rsp)             #  20    0x4e0fa  4      
  movq %rdx, (%rsp)                #  21    0x4e0fe  4      
  xchgw %ax, %ax                   #  22    0x4e102  3      
  nop                              #  23    0x4e105  1      
  callq ._ZNSt9exceptionD2Ev       #  24    0x4e106  5      
  movq (%rsp), %rdx                #  25    0x4e10b  4      
  movl 0x8(%rsp), %eax             #  26    0x4e10f  4      
  cmpq $0xffffffffffffffff, %rdx   #  27    0x4e113  4      
  je .L_4e140                      #  28    0x4e117  6      
  movl %eax, %edi                  #  29    0x4e11d  2      
  nop                              #  30    0x4e11f  1      
  callq ._Unwind_Resume            #  31    0x4e120  5      
.L_4e140:                          #        0x4e125  0      
  movl %eax, %edi                  #  32    0x4e125  2      
  nop                              #  33    0x4e127  1      
  nop                              #  34    0x4e128  1      
  callq .__cxa_call_unexpected     #  35    0x4e129  5      
                                                            
.size _ZNSt8ios_base7failureC2ERKSs, .-_ZNSt8ios_base7failureC2ERKSs

