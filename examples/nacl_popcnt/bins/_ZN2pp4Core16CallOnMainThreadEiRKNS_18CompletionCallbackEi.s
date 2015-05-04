  .text
  .globl _ZN2pp4Core16CallOnMainThreadEiRKNS_18CompletionCallbackEi
  .type _ZN2pp4Core16CallOnMainThreadEiRKNS_18CompletionCallbackEi, @function

#! file-offset 0x30760
#! rip-offset  0x30760
#! capacity    64 bytes

# Text                                                        #  Line  RIP      Bytes  
._ZN2pp4Core16CallOnMainThreadEiRKNS_18CompletionCallbackEi:  #        0x30760  0      
  movl %edi, %eax                                             #  1     0x30760  2      
  movl %edx, %edx                                             #  2     0x30762  2      
  movl %esi, %edi                                             #  3     0x30764  2      
  movl %eax, %eax                                             #  4     0x30766  2      
  movl %edx, %edx                                             #  5     0x30768  2      
  movq (%r15,%rdx,1), %rsi                                    #  6     0x3076a  4      
  movl %eax, %eax                                             #  7     0x3076e  2      
  movl (%r15,%rax,1), %eax                                    #  8     0x30770  4      
  movq %rsi, -0x18(%rsp)                                      #  9     0x30774  5      
  movl %edx, %edx                                             #  10    0x30779  2      
  movl 0x8(%r15,%rdx,1), %edx                                 #  11    0x3077b  5      
  movl %eax, %eax                                             #  12    0x30780  2      
  movl 0x10(%r15,%rax,1), %eax                                #  13    0x30782  5      
  movl %edx, -0x10(%rsp)                                      #  14    0x30787  4      
  andl $0xffffffe0, %eax                                      #  15    0x3078b  5      
  addq %r15, %rax                                             #  16    0x30790  3      
  jmpq %rax                                                   #  17    0x30793  2      
  nop                                                         #  18    0x30795  1      
  nop                                                         #  19    0x30796  1      
                                                                                       
.size _ZN2pp4Core16CallOnMainThreadEiRKNS_18CompletionCallbackEi, .-_ZN2pp4Core16CallOnMainThreadEiRKNS_18CompletionCallbackEi

