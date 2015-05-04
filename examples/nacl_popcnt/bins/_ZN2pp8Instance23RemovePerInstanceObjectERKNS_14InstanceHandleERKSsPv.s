  .text
  .globl _ZN2pp8Instance23RemovePerInstanceObjectERKNS_14InstanceHandleERKSsPv
  .type _ZN2pp8Instance23RemovePerInstanceObjectERKNS_14InstanceHandleERKSsPv, @function

#! file-offset 0x21260
#! rip-offset  0x21260
#! capacity    192 bytes

# Text                                                                   #  Line  RIP      Bytes  
._ZN2pp8Instance23RemovePerInstanceObjectERKNS_14InstanceHandleERKSsPv:  #        0x21260  0      
  movl %edi, %edi                                                        #  1     0x21260  2      
  movq %rbx, -0x18(%rsp)                                                 #  2     0x21262  5      
  movq %r12, -0x10(%rsp)                                                 #  3     0x21267  5      
  movq %r13, -0x8(%rsp)                                                  #  4     0x2126c  5      
  subl $0x18, %esp                                                       #  5     0x21271  3      
  addq %r15, %rsp                                                        #  6     0x21274  3      
  movl %edi, %edi                                                        #  7     0x21277  2      
  movl (%r15,%rdi,1), %r13d                                              #  8     0x21279  4      
  movl %esi, %ebx                                                        #  9     0x2127d  2      
  nop                                                                    #  10    0x2127f  1      
  movl %edx, %r12d                                                       #  11    0x21280  3      
  nop                                                                    #  12    0x21283  1      
  nop                                                                    #  13    0x21284  1      
  callq ._ZN2pp6Module3GetEv                                             #  14    0x21285  5      
  movl %r13d, %esi                                                       #  15    0x2128a  3      
  movl %eax, %edi                                                        #  16    0x2128d  2      
  nop                                                                    #  17    0x2128f  1      
  nop                                                                    #  18    0x21290  1      
  callq ._ZN2pp6Module21InstanceForPPInstanceEi                          #  19    0x21291  5      
  movl %eax, %edi                                                        #  20    0x21296  2      
  testq %rdi, %rdi                                                       #  21    0x21298  3      
  je .L_21300                                                            #  22    0x2129b  6      
  movl %r12d, %edx                                                       #  23    0x212a1  3      
  movl %ebx, %esi                                                        #  24    0x212a4  2      
  movq 0x8(%rsp), %r12                                                   #  25    0x212a6  5      
  movq (%rsp), %rbx                                                      #  26    0x212ab  4      
  movq 0x10(%rsp), %r13                                                  #  27    0x212af  5      
  addl $0x18, %esp                                                       #  28    0x212b4  3      
  addq %r15, %rsp                                                        #  29    0x212b7  3      
  jmpq ._ZN2pp8Instance23RemovePerInstanceObjectERKSsPv                  #  30    0x212ba  5      
  nop                                                                    #  31    0x212bf  1      
  nop                                                                    #  32    0x212c0  1      
.L_21300:                                                                #        0x212c1  0      
  movq (%rsp), %rbx                                                      #  33    0x212c1  4      
  movq 0x8(%rsp), %r12                                                   #  34    0x212c5  5      
  movq 0x10(%rsp), %r13                                                  #  35    0x212ca  5      
  addl $0x18, %esp                                                       #  36    0x212cf  3      
  addq %r15, %rsp                                                        #  37    0x212d2  3      
  popq %r11                                                              #  38    0x212d5  3      
  andl $0xffffffe0, %r11d                                                #  39    0x212d8  7      
  addq %r15, %r11                                                        #  40    0x212df  3      
  jmpq %r11                                                              #  41    0x212e2  3      
                                                                                                  
.size _ZN2pp8Instance23RemovePerInstanceObjectERKNS_14InstanceHandleERKSsPv, .-_ZN2pp8Instance23RemovePerInstanceObjectERKNS_14InstanceHandleERKSsPv

