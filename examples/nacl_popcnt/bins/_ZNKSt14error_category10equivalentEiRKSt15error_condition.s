  .text
  .globl _ZNKSt14error_category10equivalentEiRKSt15error_condition
  .type _ZNKSt14error_category10equivalentEiRKSt15error_condition, @function

#! file-offset 0x4ef00
#! rip-offset  0x4ef00
#! capacity    128 bytes

# Text                                                       #  Line  RIP      Bytes  
._ZNKSt14error_category10equivalentEiRKSt15error_condition:  #        0x4ef00  0      
  movl %edi, %edi                                            #  1     0x4ef00  2      
  pushq %rbx                                                 #  2     0x4ef02  2      
  movl %edx, %ebx                                            #  3     0x4ef04  2      
  movl %edi, %edi                                            #  4     0x4ef06  2      
  movl (%r15,%rdi,1), %eax                                   #  5     0x4ef08  4      
  movl %eax, %eax                                            #  6     0x4ef0c  2      
  movl 0x10(%r15,%rax,1), %eax                               #  7     0x4ef0e  5      
  nop                                                        #  8     0x4ef13  1      
  andl $0xffffffe0, %eax                                     #  9     0x4ef14  5      
  addq %r15, %rax                                            #  10    0x4ef19  3      
  callq %rax                                                 #  11    0x4ef1c  2      
  movq %rax, %rcx                                            #  12    0x4ef1e  3      
  movq %rax, %rdx                                            #  13    0x4ef21  3      
  xorl %eax, %eax                                            #  14    0x4ef24  2      
  shrq $0x20, %rcx                                           #  15    0x4ef26  4      
  movl %ebx, %ebx                                            #  16    0x4ef2a  2      
  cmpl %ecx, 0x4(%r15,%rbx,1)                                #  17    0x4ef2c  5      
  je .L_4ef60                                                #  18    0x4ef31  6      
  popq %rbx                                                  #  19    0x4ef37  2      
  popq %r11                                                  #  20    0x4ef39  3      
  nop                                                        #  21    0x4ef3c  1      
  andl $0xffffffe0, %r11d                                    #  22    0x4ef3d  7      
  addq %r15, %r11                                            #  23    0x4ef44  3      
  jmpq %r11                                                  #  24    0x4ef47  3      
  nop                                                        #  25    0x4ef4a  1      
  nop                                                        #  26    0x4ef4b  1      
.L_4ef60:                                                    #        0x4ef4c  0      
  movl %ebx, %ebx                                            #  27    0x4ef4c  2      
  cmpl %edx, (%r15,%rbx,1)                                   #  28    0x4ef4e  4      
  popq %rbx                                                  #  29    0x4ef52  2      
  popq %r11                                                  #  30    0x4ef54  3      
  sete %al                                                   #  31    0x4ef57  3      
  andl $0xffffffe0, %r11d                                    #  32    0x4ef5a  7      
  addq %r15, %r11                                            #  33    0x4ef61  3      
  jmpq %r11                                                  #  34    0x4ef64  3      
  nop                                                        #  35    0x4ef67  1      
  nop                                                        #  36    0x4ef68  1      
  nop                                                        #  37    0x4ef69  1      
  nop                                                        #  38    0x4ef6a  1      
  nop                                                        #  39    0x4ef6b  1      
  nop                                                        #  40    0x4ef6c  1      
  nop                                                        #  41    0x4ef6d  1      
  nop                                                        #  42    0x4ef6e  1      
  nop                                                        #  43    0x4ef6f  1      
  nop                                                        #  44    0x4ef70  1      
                                                                                      
.size _ZNKSt14error_category10equivalentEiRKSt15error_condition, .-_ZNKSt14error_category10equivalentEiRKSt15error_condition

