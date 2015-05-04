  .text
  .globl _ZNKSt14error_category10equivalentEiRKSt15error_condition
  .type _ZNKSt14error_category10equivalentEiRKSt15error_condition, @function

#! file-offset 0x4ef80
#! rip-offset  0x4ef80
#! capacity    128 bytes

# Text                                                       #  Line  RIP      Bytes  
._ZNKSt14error_category10equivalentEiRKSt15error_condition:  #        0x4ef80  0      
  movl %edi, %edi                                            #  1     0x4ef80  2      
  pushq %rbx                                                 #  2     0x4ef82  2      
  movl %edx, %ebx                                            #  3     0x4ef84  2      
  movl %edi, %edi                                            #  4     0x4ef86  2      
  movl (%r15,%rdi,1), %eax                                   #  5     0x4ef88  4      
  movl %eax, %eax                                            #  6     0x4ef8c  2      
  movl 0x10(%r15,%rax,1), %eax                               #  7     0x4ef8e  5      
  nop                                                        #  8     0x4ef93  1      
  andl $0xffffffe0, %eax                                     #  9     0x4ef94  5      
  addq %r15, %rax                                            #  10    0x4ef99  3      
  callq %rax                                                 #  11    0x4ef9c  2      
  movq %rax, %rcx                                            #  12    0x4ef9e  3      
  movq %rax, %rdx                                            #  13    0x4efa1  3      
  xorl %eax, %eax                                            #  14    0x4efa4  2      
  shrq $0x20, %rcx                                           #  15    0x4efa6  4      
  movl %ebx, %ebx                                            #  16    0x4efaa  2      
  cmpl %ecx, 0x4(%r15,%rbx,1)                                #  17    0x4efac  5      
  je .L_4efe0                                                #  18    0x4efb1  6      
  popq %rbx                                                  #  19    0x4efb7  2      
  popq %r11                                                  #  20    0x4efb9  3      
  nop                                                        #  21    0x4efbc  1      
  andl $0xffffffe0, %r11d                                    #  22    0x4efbd  7      
  addq %r15, %r11                                            #  23    0x4efc4  3      
  jmpq %r11                                                  #  24    0x4efc7  3      
  nop                                                        #  25    0x4efca  1      
  nop                                                        #  26    0x4efcb  1      
.L_4efe0:                                                    #        0x4efcc  0      
  movl %ebx, %ebx                                            #  27    0x4efcc  2      
  cmpl %edx, (%r15,%rbx,1)                                   #  28    0x4efce  4      
  popq %rbx                                                  #  29    0x4efd2  2      
  popq %r11                                                  #  30    0x4efd4  3      
  sete %al                                                   #  31    0x4efd7  3      
  andl $0xffffffe0, %r11d                                    #  32    0x4efda  7      
  addq %r15, %r11                                            #  33    0x4efe1  3      
  jmpq %r11                                                  #  34    0x4efe4  3      
  nop                                                        #  35    0x4efe7  1      
  nop                                                        #  36    0x4efe8  1      
  nop                                                        #  37    0x4efe9  1      
  nop                                                        #  38    0x4efea  1      
  nop                                                        #  39    0x4efeb  1      
  nop                                                        #  40    0x4efec  1      
  nop                                                        #  41    0x4efed  1      
  nop                                                        #  42    0x4efee  1      
  nop                                                        #  43    0x4efef  1      
  nop                                                        #  44    0x4eff0  1      
                                                                                      
.size _ZNKSt14error_category10equivalentEiRKSt15error_condition, .-_ZNKSt14error_category10equivalentEiRKSt15error_condition

