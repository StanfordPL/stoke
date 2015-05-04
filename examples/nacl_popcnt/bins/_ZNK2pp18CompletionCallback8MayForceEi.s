  .text
  .globl _ZNK2pp18CompletionCallback8MayForceEi
  .type _ZNK2pp18CompletionCallback8MayForceEi, @function

#! file-offset 0x35ce0
#! rip-offset  0x35ce0
#! capacity    192 bytes

# Text                                                               #  Line  RIP      Bytes  
._ZNK2pp18CompletionCallback8MayForceEi:                             #        0x35ce0  0      
  pushq %rbx                                                         #  1     0x35ce0  2      
  movl %edi, %ebx                                                    #  2     0x35ce2  2      
  subl $0x10, %esp                                                   #  3     0x35ce4  3      
  addq %r15, %rsp                                                    #  4     0x35ce7  3      
  cmpl $0xffffffff, %esi                                             #  5     0x35cea  6      
  je .L_35d20                                                        #  6     0x35cf0  6      
  movl %ebx, %ebx                                                    #  7     0x35cf6  2      
  movl (%r15,%rbx,1), %eax                                           #  8     0x35cf8  4      
  testl %eax, %eax                                                   #  9     0x35cfc  2      
  je .L_35d20                                                        #  10    0x35cfe  6      
  movl %ebx, %ebx                                                    #  11    0x35d04  2      
  testb $0x1, 0x8(%r15,%rbx,1)                                       #  12    0x35d06  6      
  je .L_35d40                                                        #  13    0x35d0c  6      
  nop                                                                #  14    0x35d12  1      
  nop                                                                #  15    0x35d13  1      
.L_35d20:                                                            #        0x35d14  0      
  addl $0x10, %esp                                                   #  16    0x35d14  3      
  addq %r15, %rsp                                                    #  17    0x35d17  3      
  movl %esi, %eax                                                    #  18    0x35d1a  2      
  popq %rbx                                                          #  19    0x35d1c  2      
  popq %r11                                                          #  20    0x35d1e  3      
  andl $0xffffffe0, %r11d                                            #  21    0x35d21  7      
  addq %r15, %r11                                                    #  22    0x35d28  3      
  jmpq %r11                                                          #  23    0x35d2b  3      
  nop                                                                #  24    0x35d2e  1      
.L_35d40:                                                            #        0x35d2f  0      
  movl %esi, 0x8(%rsp)                                               #  25    0x35d2f  4      
  nop                                                                #  26    0x35d33  1      
  nop                                                                #  27    0x35d34  1      
  callq ._ZN2pp6Module3GetEv                                         #  28    0x35d35  5      
  movl 0x8(%rsp), %esi                                               #  29    0x35d3a  4      
  movl %eax, %eax                                                    #  30    0x35d3e  2      
  movl %ebx, %edx                                                    #  31    0x35d40  2      
  movl %eax, %eax                                                    #  32    0x35d42  2      
  movl 0x24(%r15,%rax,1), %edi                                       #  33    0x35d44  5      
  movl %esi, %ecx                                                    #  34    0x35d49  2      
  xorl %esi, %esi                                                    #  35    0x35d4b  2      
  nop                                                                #  36    0x35d4d  1      
  callq ._ZN2pp4Core16CallOnMainThreadEiRKNS_18CompletionCallbackEi  #  37    0x35d4e  5      
  addl $0x10, %esp                                                   #  38    0x35d53  3      
  addq %r15, %rsp                                                    #  39    0x35d56  3      
  movl $0xffffffff, %esi                                             #  40    0x35d59  5      
  popq %rbx                                                          #  41    0x35d5e  2      
  popq %r11                                                          #  42    0x35d60  3      
  movl %esi, %eax                                                    #  43    0x35d63  2      
  andl $0xffffffe0, %r11d                                            #  44    0x35d65  7      
  addq %r15, %r11                                                    #  45    0x35d6c  3      
  jmpq %r11                                                          #  46    0x35d6f  3      
  nop                                                                #  47    0x35d72  1      
  nop                                                                #  48    0x35d73  1      
  nop                                                                #  49    0x35d74  1      
  nop                                                                #  50    0x35d75  1      
  nop                                                                #  51    0x35d76  1      
  nop                                                                #  52    0x35d77  1      
                                                                                              
.size _ZNK2pp18CompletionCallback8MayForceEi, .-_ZNK2pp18CompletionCallback8MayForceEi

