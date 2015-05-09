  .text
  .globl _ZN2pp4Core16CallOnMainThreadEiRKNS_18CompletionCallbackEi
  .type _ZN2pp4Core16CallOnMainThreadEiRKNS_18CompletionCallbackEi, @function

#! file-offset 0x306c0
#! rip-offset  0x306c0
#! capacity    64 bytes

# Text                                                        #  Line  RIP      Bytes  
._ZN2pp4Core16CallOnMainThreadEiRKNS_18CompletionCallbackEi:  #        0x306c0  0      
  movl %edi, %eax                                             #  1     0x306c0  2      
  movl %edx, %edx                                             #  2     0x306c2  2      
  movl %esi, %edi                                             #  3     0x306c4  2      
  movl %eax, %eax                                             #  4     0x306c6  2      
  movl %edx, %edx                                             #  5     0x306c8  2      
  movq (%r15,%rdx,1), %rsi                                    #  6     0x306ca  4      
  movl %eax, %eax                                             #  7     0x306ce  2      
  movl (%r15,%rax,1), %eax                                    #  8     0x306d0  4      
  movq %rsi, -0x18(%rsp)                                      #  9     0x306d4  5      
  movl %edx, %edx                                             #  10    0x306d9  2      
  movl 0x8(%r15,%rdx,1), %edx                                 #  11    0x306db  5      
  movl %eax, %eax                                             #  12    0x306e0  2      
  movl 0x10(%r15,%rax,1), %eax                                #  13    0x306e2  5      
  movl %edx, -0x10(%rsp)                                      #  14    0x306e7  4      
  andl $0xffffffe0, %eax                                      #  15    0x306eb  5      
  addq %r15, %rax                                             #  16    0x306f0  3      
  jmpq %rax                                                   #  17    0x306f3  2      
  nop                                                         #  18    0x306f5  1      
  nop                                                         #  19    0x306f6  1      
                                                                                       
.size _ZN2pp4Core16CallOnMainThreadEiRKNS_18CompletionCallbackEi, .-_ZN2pp4Core16CallOnMainThreadEiRKNS_18CompletionCallbackEi

