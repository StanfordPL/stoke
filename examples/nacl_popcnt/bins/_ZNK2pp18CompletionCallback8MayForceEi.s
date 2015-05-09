  .text
  .globl _ZNK2pp18CompletionCallback8MayForceEi
  .type _ZNK2pp18CompletionCallback8MayForceEi, @function

#! file-offset 0x35c40
#! rip-offset  0x35c40
#! capacity    192 bytes

# Text                                                               #  Line  RIP      Bytes  
._ZNK2pp18CompletionCallback8MayForceEi:                             #        0x35c40  0      
  pushq %rbx                                                         #  1     0x35c40  2      
  movl %edi, %ebx                                                    #  2     0x35c42  2      
  subl $0x10, %esp                                                   #  3     0x35c44  3      
  addq %r15, %rsp                                                    #  4     0x35c47  3      
  cmpl $0xffffffff, %esi                                             #  5     0x35c4a  6      
  je .L_35c80                                                        #  6     0x35c50  6      
  movl %ebx, %ebx                                                    #  7     0x35c56  2      
  movl (%r15,%rbx,1), %eax                                           #  8     0x35c58  4      
  testl %eax, %eax                                                   #  9     0x35c5c  2      
  je .L_35c80                                                        #  10    0x35c5e  6      
  movl %ebx, %ebx                                                    #  11    0x35c64  2      
  testb $0x1, 0x8(%r15,%rbx,1)                                       #  12    0x35c66  6      
  je .L_35ca0                                                        #  13    0x35c6c  6      
  nop                                                                #  14    0x35c72  1      
  nop                                                                #  15    0x35c73  1      
.L_35c80:                                                            #        0x35c74  0      
  addl $0x10, %esp                                                   #  16    0x35c74  3      
  addq %r15, %rsp                                                    #  17    0x35c77  3      
  movl %esi, %eax                                                    #  18    0x35c7a  2      
  popq %rbx                                                          #  19    0x35c7c  2      
  popq %r11                                                          #  20    0x35c7e  3      
  andl $0xffffffe0, %r11d                                            #  21    0x35c81  7      
  addq %r15, %r11                                                    #  22    0x35c88  3      
  jmpq %r11                                                          #  23    0x35c8b  3      
  nop                                                                #  24    0x35c8e  1      
.L_35ca0:                                                            #        0x35c8f  0      
  movl %esi, 0x8(%rsp)                                               #  25    0x35c8f  4      
  nop                                                                #  26    0x35c93  1      
  nop                                                                #  27    0x35c94  1      
  callq ._ZN2pp6Module3GetEv                                         #  28    0x35c95  5      
  movl 0x8(%rsp), %esi                                               #  29    0x35c9a  4      
  movl %eax, %eax                                                    #  30    0x35c9e  2      
  movl %ebx, %edx                                                    #  31    0x35ca0  2      
  movl %eax, %eax                                                    #  32    0x35ca2  2      
  movl 0x24(%r15,%rax,1), %edi                                       #  33    0x35ca4  5      
  movl %esi, %ecx                                                    #  34    0x35ca9  2      
  xorl %esi, %esi                                                    #  35    0x35cab  2      
  nop                                                                #  36    0x35cad  1      
  callq ._ZN2pp4Core16CallOnMainThreadEiRKNS_18CompletionCallbackEi  #  37    0x35cae  5      
  addl $0x10, %esp                                                   #  38    0x35cb3  3      
  addq %r15, %rsp                                                    #  39    0x35cb6  3      
  movl $0xffffffff, %esi                                             #  40    0x35cb9  5      
  popq %rbx                                                          #  41    0x35cbe  2      
  popq %r11                                                          #  42    0x35cc0  3      
  movl %esi, %eax                                                    #  43    0x35cc3  2      
  andl $0xffffffe0, %r11d                                            #  44    0x35cc5  7      
  addq %r15, %r11                                                    #  45    0x35ccc  3      
  jmpq %r11                                                          #  46    0x35ccf  3      
  nop                                                                #  47    0x35cd2  1      
  nop                                                                #  48    0x35cd3  1      
  nop                                                                #  49    0x35cd4  1      
  nop                                                                #  50    0x35cd5  1      
  nop                                                                #  51    0x35cd6  1      
  nop                                                                #  52    0x35cd7  1      
                                                                                              
.size _ZNK2pp18CompletionCallback8MayForceEi, .-_ZNK2pp18CompletionCallback8MayForceEi

