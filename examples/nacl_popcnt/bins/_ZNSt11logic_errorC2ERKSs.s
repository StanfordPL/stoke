  .text
  .globl _ZNSt11logic_errorC2ERKSs
  .type _ZNSt11logic_errorC2ERKSs, @function

#! file-offset 0x4e840
#! rip-offset  0x4e840
#! capacity    128 bytes

# Text                             #  Line  RIP      Bytes  
._ZNSt11logic_errorC2ERKSs:        #        0x4e840  0      
  pushq %rbx                       #  1     0x4e840  2      
  movl %edi, %ebx                  #  2     0x4e842  2      
  movl %esi, %esi                  #  3     0x4e844  2      
  leal 0x4(%rbx), %edi             #  4     0x4e846  3      
  subl $0x10, %esp                 #  5     0x4e849  3      
  addq %r15, %rsp                  #  6     0x4e84c  3      
  movl %ebx, %ebx                  #  7     0x4e84f  2      
  movl $0x100211b8, (%r15,%rbx,1)  #  8     0x4e851  8      
  nop                              #  9     0x4e859  1      
  callq ._ZNSsC1ERKSs              #  10    0x4e85a  5      
  addl $0x10, %esp                 #  11    0x4e85f  3      
  addq %r15, %rsp                  #  12    0x4e862  3      
  popq %rbx                        #  13    0x4e865  2      
  popq %r11                        #  14    0x4e867  3      
  andl $0xffffffe0, %r11d          #  15    0x4e86a  7      
  addq %r15, %r11                  #  16    0x4e871  3      
  jmpq %r11                        #  17    0x4e874  3      
  nop                              #  18    0x4e877  1      
  movl %ebx, %edi                  #  19    0x4e878  2      
  movl %eax, 0x8(%rsp)             #  20    0x4e87a  4      
  nop                              #  21    0x4e87e  1      
  nop                              #  22    0x4e87f  1      
  callq ._ZNSt9exceptionD2Ev       #  23    0x4e880  5      
  movl 0x8(%rsp), %eax             #  24    0x4e885  4      
  movl %eax, %edi                  #  25    0x4e889  2      
  nop                              #  26    0x4e88b  1      
  nop                              #  27    0x4e88c  1      
  callq ._Unwind_Resume            #  28    0x4e88d  5      
                                                            
.size _ZNSt11logic_errorC2ERKSs, .-_ZNSt11logic_errorC2ERKSs

