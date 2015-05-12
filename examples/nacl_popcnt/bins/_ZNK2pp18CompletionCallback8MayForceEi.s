  .text
  .globl _ZNK2pp18CompletionCallback8MayForceEi
  .type _ZNK2pp18CompletionCallback8MayForceEi, @function

#! file-offset 0x35c60
#! rip-offset  0x35c60
#! capacity    192 bytes

# Text                                                               #  Line  RIP      Bytes  
._ZNK2pp18CompletionCallback8MayForceEi:                             #        0x35c60  0      
  pushq %rbx                                                         #  1     0x35c60  2      
  movl %edi, %ebx                                                    #  2     0x35c62  2      
  subl $0x10, %esp                                                   #  3     0x35c64  3      
  addq %r15, %rsp                                                    #  4     0x35c67  3      
  cmpl $0xffffffff, %esi                                             #  5     0x35c6a  6      
  je .L_35ca0                                                        #  6     0x35c70  6      
  movl %ebx, %ebx                                                    #  7     0x35c76  2      
  movl (%r15,%rbx,1), %eax                                           #  8     0x35c78  4      
  testl %eax, %eax                                                   #  9     0x35c7c  2      
  je .L_35ca0                                                        #  10    0x35c7e  6      
  movl %ebx, %ebx                                                    #  11    0x35c84  2      
  testb $0x1, 0x8(%r15,%rbx,1)                                       #  12    0x35c86  6      
  je .L_35cc0                                                        #  13    0x35c8c  6      
  nop                                                                #  14    0x35c92  1      
  nop                                                                #  15    0x35c93  1      
.L_35ca0:                                                            #        0x35c94  0      
  addl $0x10, %esp                                                   #  16    0x35c94  3      
  addq %r15, %rsp                                                    #  17    0x35c97  3      
  movl %esi, %eax                                                    #  18    0x35c9a  2      
  popq %rbx                                                          #  19    0x35c9c  2      
  popq %r11                                                          #  20    0x35c9e  3      
  andl $0xffffffe0, %r11d                                            #  21    0x35ca1  7      
  addq %r15, %r11                                                    #  22    0x35ca8  3      
  jmpq %r11                                                          #  23    0x35cab  3      
  nop                                                                #  24    0x35cae  1      
.L_35cc0:                                                            #        0x35caf  0      
  movl %esi, 0x8(%rsp)                                               #  25    0x35caf  4      
  nop                                                                #  26    0x35cb3  1      
  nop                                                                #  27    0x35cb4  1      
  callq ._ZN2pp6Module3GetEv                                         #  28    0x35cb5  5      
  movl 0x8(%rsp), %esi                                               #  29    0x35cba  4      
  movl %eax, %eax                                                    #  30    0x35cbe  2      
  movl %ebx, %edx                                                    #  31    0x35cc0  2      
  movl %eax, %eax                                                    #  32    0x35cc2  2      
  movl 0x24(%r15,%rax,1), %edi                                       #  33    0x35cc4  5      
  movl %esi, %ecx                                                    #  34    0x35cc9  2      
  xorl %esi, %esi                                                    #  35    0x35ccb  2      
  nop                                                                #  36    0x35ccd  1      
  callq ._ZN2pp4Core16CallOnMainThreadEiRKNS_18CompletionCallbackEi  #  37    0x35cce  5      
  addl $0x10, %esp                                                   #  38    0x35cd3  3      
  addq %r15, %rsp                                                    #  39    0x35cd6  3      
  movl $0xffffffff, %esi                                             #  40    0x35cd9  5      
  popq %rbx                                                          #  41    0x35cde  2      
  popq %r11                                                          #  42    0x35ce0  3      
  movl %esi, %eax                                                    #  43    0x35ce3  2      
  andl $0xffffffe0, %r11d                                            #  44    0x35ce5  7      
  addq %r15, %r11                                                    #  45    0x35cec  3      
  jmpq %r11                                                          #  46    0x35cef  3      
  nop                                                                #  47    0x35cf2  1      
  nop                                                                #  48    0x35cf3  1      
  nop                                                                #  49    0x35cf4  1      
  nop                                                                #  50    0x35cf5  1      
  nop                                                                #  51    0x35cf6  1      
  nop                                                                #  52    0x35cf7  1      
                                                                                              
.size _ZNK2pp18CompletionCallback8MayForceEi, .-_ZNK2pp18CompletionCallback8MayForceEi

